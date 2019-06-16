class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        #@kids = @user.kids
        @kids = current_user.kids
        @comment_kid = Action.where(kid_id: current_user.last_access_kid)  #子供のコメント
        
        # @promises = Promise.where(user_id: @user.id)
        # @actions = Action.includes(:promise)
    end
    
end
