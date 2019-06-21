class ActionsController < ApplicationController
  
    def create
        Action.create(create_params)
        redirect_to user_path(current_user) and return
    end


  private
  def create_params
    params.require(:action).permit(:comment)

  end
  
end
  
