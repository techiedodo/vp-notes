class NotesController < ApplicationController
  def index
  end

  def new
    @note = Note.new
    @session = TutoringSession.find(params[:tutoring_session_id])
  end

  def create
    @note = Note.new(params.require(:note).permit(:summary, :achievement, :what_next, :recommendation, :rate, :date_session, :tm_start, :tm_end, :tutoring_session_id))
    if @note.save
      flash[:notice] = "Note was created sucessfully."
      redirect_to @note
    else
      flash[:error] = "There was an issue creating the note. Please try again."
      render :new
    end
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(params.require(:note).permit(:summary, :achievement, :what_next, :recommendation, :rate, :date_session, :tm_start, :tm_end, :tutoring_session_id))
      flash[:notice] = "Note was updated sucessfully."
      redirect_to @note
    else
      flash[:error] = "There was an issue updating the note. Please try again."
      render :new
    end
  end
end
