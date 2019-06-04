class PromisesController < ApplicationController

  def new
  end

  def create
    Promise.create(text: promise_params[:text], user_id: current_user.id)
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
  def promise_params
    params.permit(:text)
  end

end
