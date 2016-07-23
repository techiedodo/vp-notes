class TutoringSessionsController < ApplicationController
  before_action :authenticate_tutor!

  def index
    @sessions = TutoringSession.all
  end

  def show
    @session = TutoringSession.find(params[:id])
  end

  def new
  end

  def edit
  end
end
