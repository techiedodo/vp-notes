class TutoringSessionsController < ApplicationController
  before_action :authenticate_tutor!

  def index
    @sessions = TutoringSession.all
  end

  def show
    @session = TutoringSession.find(params[:id])
    @notes = @session.notes
  end

  def new
    @session = TutoringSession.new
    @student = Student.find(params[:student_id])
  end

  def create
    @session = TutoringSession.new(params.require(:tutoring_session).permit(:session_date, :student_id))
    if @session.save
      flash[:notice] = "Session was created sucessfully."
      redirect_to @session
    else
      flash[:error] = "There was an error saving the Session. Please try again."
      render :new
    end
  end

  def edit
    @session = TutoringSession.find(params[:id])
  end

  def update
    @session = TutoringSession.find(params[:id])
    if @session.update_attributes(params.require(:tutoring_session).permit(:session_date, :student_id))
      flash[:notice] = "Session updated."
      redirect_to @session
    else
      flash[:error] = "We were not able to update the session. Please try again."
      render :edit
    end
  end

  def destroy
    @session = TutoringSession.find(params[:id])
    if @session.destroy
      flash[:notice] = "\"#{@session.session_date}\" was deleted successfully."
      redirect_to @session.student
    else
      flash[:error] = "There was an error deleting the session. Please try again."
      render :show
    end
  end

end
