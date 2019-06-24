class OpactionsController < ApplicationController

   # def create
   #      Opaction.create(create_params)
   #     redirect_to user_path(current_user) and return
   #end
    
    def create
    Opaction.create(comment: params[:text], promise_id: params[:promise_id], kid_id: params[:kid_id])
    redirect_to :root and return
    end 



  private
  def create_params
    params.require(:opaction).permit(:comment)

  end

end
