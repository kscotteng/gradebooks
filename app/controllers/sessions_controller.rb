class SessionsController < ApplicationController


  def login
    teacher = Teacher.find_by(email: params[:email])
    student = Student.find_by(email: params[:email])
    parent = Parent.find_by(email: params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:id] = teacher.id
      session[:user_type] = "Teacher"
      redirect_to teachers_path
    elsif student && student.authenticate(params[:password])
      session[:id] = student.id
      session[:user_type] = "Student"
      redirect_to students_path
    elsif parent && parent.authenticate(params[:password])
      session[:id] = parent.id
      session[:user_type] = "Parent"
      redirect_to parent_path



    else
      # redirect_to sessions_login_path
      flash[:notice] = "Incorrect Email/Password"
    end
  end

  def logout
  end
end
