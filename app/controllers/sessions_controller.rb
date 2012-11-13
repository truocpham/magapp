class SessionsController < HomeController
  skip_before_filter :authorize

  def new
    if session[:username] != nil && params[:hashid] != nil
      redirect_to '/test/' + params[:hashid]
    end
    
    @exam = Exam.find_by_hashid(params[:hashid])
    
    if @exam.nil?
      redirect_to "/public/404.html"
    end
  end

  def create
    @userexam = Userexam.find_by_password(params[:password])

    if params[:name] == "" || @userexam == nil || @userexam.exam.hashid != params[:hashid]
  		flash.now[:alert] = "Invalid Name/Password"
      render 'new'
    else
      if @userexam.name == nil
        @userexam.name = params[:name]
        @userexam.time_start = Time.now
        @userexam.save
      else 
        @userexam.update_attributes("name" => params[:name])
      end

      if @userexam.tmp_point != nil
        flash.now[:alert] = "You have completed this test!"
        render 'new'
      else
        session[:username] = @userexam.name
        session[:password] = params[:password]
        redirect_to "/test/" + params[:hashid]
      end
    end
  end

  def destroy
    session[:username] = nil
    redirect_to "/" + params[:id], :alert => "Logout"
  end

end
