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
  end
end
