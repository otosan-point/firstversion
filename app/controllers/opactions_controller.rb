class OpactionsController < ApplicationController

   # def create
   #      Opaction.create(create_params)
   #     redirect_to user_path(current_user) and return
   #end
    
    def create
        Opaction.create(comment: params[:text], promise_id: params[:promise_id], kid_id: params[:kid_id])
            if params[:kid_id] == "0"
                redirect_to "/users/#{current_user.id}" and return
            else
                redirect_to "/top/#{params[:kid_id]}" and return
            end
    end 

    def update
        opaction = Opaction.find(params[:id])
        opaction.update(approve: 1)
        redirect_to "/users/#{current_user.id}" and return
    end


  #private
  #def create_params
  #  params.require(:opaction).permit(:comment)
  #end

end
