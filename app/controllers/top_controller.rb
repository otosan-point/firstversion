class TopController < ApplicationController
  before_action :authenticate_user! 
  def index
    @points = Action.where(approve: '2').count
    @promises = Promise.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

end
