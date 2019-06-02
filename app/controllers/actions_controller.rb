class ActionsController < ApplicationController
  
  def new
    @promise = Promise.find(params[:promise_id])
    @action = Action.new
    @action.promise_id = @promise.id
  end
  
  def create
    @action = Action.create(create_params)
  end

  private
  def create_params
    params.require(:action).permit(:promise_id, :text).merge(user_id: current_user.id)
  end
end
  
