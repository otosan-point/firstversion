class MessageboardsController < ApplicationController
    before_action :header_menu
    
    def header_menu
        @kids = current_user.kids
    end
    
    def show
        @messageboard = Messageboard.find(params[:id])
    end
    
    def new
        @messageboard = Messageboard.new
    end
    
    def create
        Messageboard.create(create_params)
        redirect_to root_path and return
    end
    
    def edit
        @messageboard = Messageboard.find_by(user_id: current_user.id)
    end

    def update
        @messageboard = Messageboard.find_by(user_id: current_user.id)
        @messageboard.update(update_params)
        redirect_to root_path and return
    end

    private
    def create_params
        params.require(:messageboard).permit(:rule).merge(user_id: current_user.id)
    end
  
    def update_params
        params.require(:messageboard).permit(:rule, :message)
    end
    
end
