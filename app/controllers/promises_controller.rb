class PromisesController < ApplicationController

  def new
    @kids = current_user.kids

  end

  def create
    @kids = current_user.kids
    @kid = Kid.where(id: current_user.last_access_kid)
    Promise.create(promise: create_params[:promise], kid_id: current_user.last_access_kid)
  end

  def destroy
    promise = Promise.find(params[:id])
    promise.destroy if promise.user_id == current_user.id
  end

  def update
    promise = Promise.find(params[:id])
    if promise.user_id == current_user.id
       promise.update(promise_params)
    end
  end
  
  def edit
    @promise = Promise.find(params[:id])
  end

  def show 
    @promise = Promise.find(params[:id])
    @comments = @promise.comments.includes(:user)
  end
  
  private
  def create_params
    params.permit(:promise)
  end

end
