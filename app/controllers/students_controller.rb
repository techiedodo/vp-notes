class StudentsController < ApplicationController
before_action :authenticate_tutor!

  def index
    @students = policy_scope(Student)
  end

  def show
    @student = Student.find(params[:id])
    @sessions = @student.tutoring_sessions
    authorize @student
  end

  def new
    @student = Student.new
    authorize @student
  end

  def create
    @student = Student.new(params.require(:student).permit(:name, :grade, :biography))
    @student.tutor = current_tutor
    authorize @student
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
    authorize @student
  end

  def update
    @student = Student.find(params[:id])
    authorize @student
    if @student.update_attributes(params.require(:student).permit(:name, :grade, :biography))
      flash[:notice] = "Student name updated."
      redirect_to @student
    else
      flash[:error] = "We were not able to update the name. Please try again."
      render :edit
    end
  end

  def destroy
    @student = Student.find(params[:id])

    authorize @student
    if @student.destroy
      flash[:notice] = "\"#{@student.name}\" was deleted successfully."
      redirect_to students_path
    else
      flash[:error] = "There was an error deleting the student."
      render :show
    end
  end
  
end
