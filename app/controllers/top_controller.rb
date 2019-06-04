class TopController < ApplicationController

  def index
    @promises = current_user.kid_id.page(params[:page]).per(5).order("created_at DESC")
  end


end
