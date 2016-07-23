class SessionsController < ApplicationController
before_action :authenticate_tutor!

  def index
    @sessions = Session.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
