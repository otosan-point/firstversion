class PromisesController < ApplicationController
  before_action :header_menu

  def new
    @kid = Kid.find_by(id: params[:kid_id])

  end

  def create
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
    @opactions = Opaction.where(promise_id: params[:id])
    @kid = @promise.kid
  end
  
  def header_menu
      @kids = current_user.kids
  end

  private
  def create_params
    params.permit(:text)
  end

end
