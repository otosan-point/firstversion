class KidsController < ApplicationController
  before_action :header_menu

    def index
        @kids = current_user.kids
    end
    
    def show
        @kid = Kid.find(params[:id])
    end
    
    def new
        @kid = Kid.new
    end
    
    def create
        Kid.create(create_params)
        redirect_to kids_path(current_user) and return
    end
    
    def edit
        @kid = Kid.find(params[:id])
    end

    def update
        @kid = Kid.find(params[:id])
        @kid.update(update_params)
        redirect_to kids_path(current_user) and return
    end

    def header_menu
        @kids = current_user.kids
    end

    private
    def create_params
        params.require(:kid).permit(:name, :description, :image).merge(user_id: current_user.id)
    end
  
    def update_params
        params.require(:kid).permit(:description, :image)
    end
end
