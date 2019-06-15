class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @kids = @user.kids
        # @promises = Promise.where(user_id: @user.id)
        # @actions = Action.includes(:promise)
    end
    
end
