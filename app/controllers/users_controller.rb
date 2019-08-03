class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @kids = current_user.kids
        #@comment_kid = Action.where(kid_id: params[:id])  #子供のコメント
        
        @promises = @user.promises
        @opactions = Opaction.all.order(created_at: :desc).where(created_at: 1.week.ago.beginning_of_day..Time.zone.now.end_of_day)
        @opaction = Opaction.new
        

    end
    

end
