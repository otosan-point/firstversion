class PromisesController < ApplicationController

  def new
    @kids = current_user.kids
    @kid = Kid.find_by(id: params[:kid_id])

  end

  def create
    @kids = current_user.kids
    @kid = Kid.find_by(id: params[:kid_id])
    Promise.create(promise: params[:text], kid_id: params[:kid_id])
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
    params.permit(:text)
  end

end
