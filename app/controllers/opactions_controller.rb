class OpactionsController < ApplicationController

    def create
        Opaction.create(create_params)
        redirect_to user_path(current_user) and return
    end


  private
  def create_params
    params.require(:opaction).permit(:comment)

  end

end
