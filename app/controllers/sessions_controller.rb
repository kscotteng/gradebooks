class SessionsController < ApplicationController


  def login
    teacher = Teacher.find_by_email(params[:email])
    if teacher.authenticate(params[:password])
      session[:id] = teacher.id
      session[:user_type] = "Teacher"
      redirect_to teachers_path
    else
      redirect_to sessions_login_path
    end
  end

  def logout
  end
end
