ActiveAdmin.register Userexam do

	# sidebar :help do
 #    "Need help? Email us at help@example.com"
 #  end

 config.per_page = 20

  actions :all, :except => [:new, :edit]
  menu :priority => 8, :label => "Results", :parent => "Exams"

  filter :exam
  filter :name
  filter :sum_point
  filter :note
  filter :created_at
  filter :updated_at
  
  index do 
    selectable_column                           
    column :name
    column "Exam" do |userexam|
      exam = link_to userexam.exam.name, admin_exam_path(userexam.exam)
      exam += " - "
      exam += link_to "Go to exam", "/" + userexam.exam.hashid.to_s
      exam
    end            
    column :password
    #column "Password" do |userexam|
    #  :password
    #end
    column "Email" do |userexam|
      content = userexam.password + "-" + "localhost:3000/" + userexam.exam.hashid.to_s
      form do |f|
        #f.input :id => "id_name"
        f.input :class => "id_name", :label => content
        #f.hidden :id => "h_name", :value => "Passssss"
      end
    end
    column "Point", :sum_point
    column :note   
    column "Actions" do |userexam|
      if userexam.tmp_point != nil && userexam.sum_point == nil
        link = link_to "Grade", admin_userexam_path(userexam)
        
      else
        link = "<span>Grade</span>".html_safe
      end
      link += "&nbsp;&nbsp;".html_safe
      link += link_to "Show", '/admin/userexams/detail/' + userexam.id.to_s
      link += "&nbsp;&nbsp;".html_safe
      link += link_to "Delete", admin_userexam_path(userexam), :method => :delete, :data => { confirm: "Are you sure?" }
    end              
  end

  collection_action :index, :method => :get do
      scope = Userexam.getByLastExam

      @collection = scope.page(params[:page]).per(20) if params[:q].blank?
      @search = scope.metasearch(clean_search_params(params[:q]))
      @search.exam_id_eq = Exam.last.id if params[:q].blank?

      # respond_to do |format|
      #   format.html {
      #     render "my/own/template" # or "active_admin/resource/index"
      #   }
      # end
  end

  show do
  	render "show"
  end

  controller do
    def show
      @point = Userexam.find(params[:id])
      if @point.sum_point == nil
      @arr_urs_answer = Userexam.joins(:tmpanswers => {:question => :answers})
          .select("tmpanswers.question_id, questions.content, tmpanswers.con_answer, answers.content as answer")
          .where("userexams.id = ?", params[:id])
      else
        redirect_to '/admin/userexams', :notice => 'This user have been finished.'
      end
    end

    def get_sum
      posts = request.POST
      posts.shift
      posts.shift
      posts.delete('commit')
      id = posts['id']
      point = posts['point'].to_i
      posts.delete('id')
      posts.delete('point')

      posts.each do |key, value|
        if value.to_i == 1
          @question = Question.select("mark").where("id = ?", key)
          point += @question[0].mark
        end
      end
      userexam = Userexam.find(id)
      if userexam.update_attributes({ "sum_point" => point })
        @tmpanswer = Tmpanswer.where("userexam_id = ?", id)
        @tmpanswer.each do |t|
        	t.destroy
        end
        redirect_to '/admin/userexams', :notice => 'This user have been finished.'
      end
    end

    def detail
    	@userexam = Userexam.find(params[:id])
    end
  end
end
