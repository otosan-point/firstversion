class TopController < ApplicationController
  
  def index
    @kids = current_user.kids
  end
 
 def show 
   @kids = current_user.kids
   @kid = Kid.find_by(id: params[:id])
   @points = Opaction.where(kid_id: params[:id]).count
   @promises = Promise.where(kid_id: params[:id])
 end
 
end