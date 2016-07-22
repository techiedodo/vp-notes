class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params.require(:student).permit(:name))
    @student.user = current_user
    if @student.save
      flash[:notice] = "Student was created sucessfully."
      redirect_to @student
    else
      flash[:error] = "There was an error saving the student. Please try again."
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params.require(:student).permit(:name))
      flash[:notice] = "Student name updated."
      redirect_to @student
    else
      flash[:error] = "We were not able to update the name. Please try again."
      render :edit
    end
  end
end
