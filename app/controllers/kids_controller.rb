class KidsController < ApplicationController
    
    def show
        @kids = current_user.kids
    end
    
    def new
        @kids = current_user.kids
        @kid = Kid.new
    end
    
    def create
        Kid.create(create_params)
        redirect_to kid_path(current_user) and return
    end


  private
  def create_params
    params.require(:kid).permit(:name).merge(user_id: current_user.id)

  end
    
end
