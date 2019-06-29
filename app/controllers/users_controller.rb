class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @kids = current_user.kids
        #@comment_kid = Action.where(kid_id: params[:id])  #子供のコメント
        
        @promises = @user.promises
        @opactions = Opaction.all.order(created_at: :desc)
        @opaction = Opaction.new
        
        #@actions = @user.actions
        
        #@promises = []
        #@kids.each do |n| 
        #    promises = Promise.where(kid_id: n.id)
        #    @promises.push(promises)
        #end
        
        #binding.pry
        
        #@actions = []
        #@kids.each do |n| 
        #    actions = Action.where(kid_id: n.id)
        #    @actions.push(actions)
        #end
        
        
        #@actions = []
        #@promises.each do |n| 
        #    actions = Action.where(promise_id: n.id)
        #    @actions.push(actions)
        #end
        #binding.pry
        
        # @actions = Action.includes(:promise)
    end
    



end
