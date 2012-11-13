ActiveAdmin.register Exam do
  config.per_page = 20
  # form do |f|                         
  #   f.inputs "Exam Details" do     
  #     f.input :category, :prompt => "Select Category"  
  #     f.input :name                  
  #     f.input :description
  #   end                               
  #   f.buttons                         
  # end
  index do           
    selectable_column                 
    column :name                     
    column :description
    column "Link of exam" do |exam|
      link_to "Go to exam", "/" + exam.hashid.to_s
    end           
    column :time_exam             
    default_actions                   
  end

  menu :priority => 6
  
  form :partial => "form"

  filter :category
  filter :name
  filter :description
  filter :time_exam 
  filter :created_at
  filter :updated_at

  show do
    @exam = Exam.find(params[:id])
    render 'show'
  end

  controller do

    def update
      @exam = Exam.find(params[:id])
      @exam.on_answer = @exam.m_answer = @exam.o_answer = @exam.q_user = 1
      

      if @exam.update_attributes(params[:exam])
        redirect_to '/admin/exams', notice: 'Exam was successfully updated.'
      else
        render 'edit'
      end
    end

    def create
      @exam = Exam.new(params[:exam])

      if @exam.valid?
    
      # create random questions
        question1 = Question.select("id").order("RAND()").limit(@exam.on_answer).where("type_question = ? AND category_id = ?", "One correct answer", @exam.category_id);
        question2 = Question.select("id").order("RAND()").limit(@exam.m_answer).where("type_question = ? AND category_id = ?", "More correct answers", @exam.category_id);
        question3 = Question.select("id").order("RAND()").limit(@exam.o_answer).where("type_question = ? AND category_id = ?", "Open answer", @exam.category_id);

        @questions = question1 + question2 + question3

        respond_to do |format|
          @exam.save

          # create record examquestion
          0.upto(@questions.length - 1) do |i|
            @examquestion = Examquestion.new
            @examquestion.exam_id = @exam.id
            @exam.update_attributes({"hashid" => Digest::SHA1.hexdigest(@exam.id.to_s)})
            @examquestion.question_id = @questions[i].id
            @examquestion.save
          end

          @exam.q_user.to_i.times do 
            @userexam = Userexam.new
            @userexam.password = generate(6)
            @userexam.exam_id = @exam.id
            @userexam.save

          end

          format.html { redirect_to '/admin/exams/' + @exam.id.to_s, notice: 'Exam was successfully created.' }
          format.json { render json: @exam, status: :created, location: @exam }
          
        end
      else
        render 'new'
      end
    end

    def edit
      @exam = Exam.find(params[:id])
      fields = Subject.joins(:categories => :exams).select("subjects.id, subjects.name").where("exams.id = ?", params[:id])
      @subject = fields[0]
      @categories_sub = Category.joins(:subject).select("categories.id, categories.name").where("subjects.id = ?", @subject.id) 
    end

    private

    def generate(length)
      chars = [*'a'..'z', *'0'..'9']
      r = ''
      length.times { r << chars[rand(36)] }
      r
    end

  end
end