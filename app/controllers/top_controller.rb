class TopController < ApplicationController
  before_action :header_menu
  
  def index
      @messageboard = Messageboard.find_by(user_id: current_user.id)
        if @messageboard == nil
            redirect_to new_messageboard_path and return
        end
  end
 
 def show 
   @kid = Kid.find_by(id: params[:id])
   @points = Opaction.where(kid_id: params[:id], approve: 1).count
   @promises = Promise.where(kid_id: params[:id])
   @opactions = Opaction.order(created_at: :desc)
 end
 
 def header_menu
    @kids = current_user.kids
 end
 
end