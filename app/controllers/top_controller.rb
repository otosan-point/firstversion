class TopController < ApplicationController

  def index
    @promises = Promise.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end


end
