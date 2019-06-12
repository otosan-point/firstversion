class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @kids = @user.kids

    end
    
end
