class TopController < ApplicationController
  
  def index

    @kids = current_user.kids
    @kid = Kid.find(current_user.last_access_kid)
    @points = Action.where(kid_id: current_user.last_access_kid).count
    #@promises = Promise.includes(:user).page(params[:page]).per(5).order("created_at DESC")
    @promises = Promise.where(kid_id: current_user.last_access_kid)

  end
 
end