ActiveAdmin.register Question do

  config.per_page = 20

  index do     
    selectable_column                       
    column :content do |q|
      strip_tags(q.content)
    end                  
    column :mark        
    column :type_question           
    default_actions                   
  end

  menu :priority => 5  

  collection_action :index, :method => :get do
      scope = Question.getByLastCategory

      @collection = scope.page(params[:page]).per(20) if params[:q].blank?
      @search = scope.metasearch(clean_search_params(params[:q]))
      @search.category_id_eq = Category.last.id if params[:q].blank?

      # respond_to do |format|
      #   format.html {
      #     render "my/own/template" # or "active_admin/resource/index"
      #   }
      # end
  end

  show do
      @question = Question.find(params[:id])
      render 'show'
  end

	controller do

		def new
			@question = Question.new(:mark => 1)
			@answer = Answer.new			
		end

    def edit
      @question = Question.find(params[:id])
      @subject = Subject.joins(:categories => :questions).select("subjects.name, subjects.id")
          .where("questions.id = ?", params[:id]).first
    end

    def create

      @question = Question.new(params[:question])
      save_question = 0

      answer_arr = Array.new

      i = 0
      params[:answer].each do |a|
        a.each do |key, value|
          answer_arr[i] = value
          i += 1
        end
      end
      if params[:answer_rad] != nil
        params[:answer_rad].each do |ar|
          ar.each do |key, value|
            answer_arr[i] = value
            i += 1  
          end
        end
      end

      respond_to do |format|

        n = params[:answer].length
        for j in 0 ... n
          @answer = Answer.new
          @answer.answer_arr = answer_arr + [@question.type_question]
          @answer.content = answer_arr[j]
          if answer_arr[j + n] != nil
            @answer.mark_type = answer_arr[j + n]
          else
            @answer.mark_type = 1
          end

          # save question and answers
          if @question.valid? && @answer.valid?
            @question.save if save_question == 0
            save_question += 1
            @answer.question_id = @question.id
            @answer.save

            format.html { redirect_to '/admin/questions/' + @question.id.to_s, notice: 'Question was successfully created.' }
          else
            format.html { render action: "new" }
            format.json { render json: [@question.errors, @answer.errors], status: :unprocessable_entity }
          end
        end
      end

    end

    def update
      @question = Question.find(params[:id])
      save_question = 0

      answer_arr = Array.new

      i = 0
      params[:answer].each do |a|
        a.each do |key, value|
          answer_arr[i] = value
          i += 1
        end
      end

      if params[:answer_rad] != nil
        params[:answer_rad].each do |ar|
          ar.each do |key, value|
            answer_arr[i] = value
            i += 1  
          end
        end
      end

      respond_to do |format|
        n = params[:answer].length
        for j in 0 ... n
          @answer = (@question.answers)[j]
          @answer.answer_arr = answer_arr + [@question.type_question]
          @answer.content = answer_arr[j]
          if answer_arr[j + n] != nil
            @answer.mark_type = answer_arr[j + n]
          else
            @answer.mark_type = 1
          end

          data = {
            "content" => @answer.content,
            "mark_type" => @answer.mark_type
          }

          # save question and answers
          if @question.valid? && @answer.valid?
            @question.update_attributes(params[:question]) if save_question == 0
            save_question += 1
            @answer.question_id = @question.id
            @answer.update_attributes(data)

            format.html { redirect_to '/admin/questions/' + @question.id.to_s, notice: 'Question was successfully created.' }
          else
            format.html { render action: "new" }
            format.json { render json: [@question.errors, @answer.errors], status: :unprocessable_entity }
          end
        end
      end

    end

	end

  action_item :only => :show do
    link_to "New Question", new_admin_question_path
  end

  form :partial => "form"
end
