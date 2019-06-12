class TopController < ApplicationController
  
  def index
    
    kids = current_user.actions.includes(:kid_id)
    @approves = kids.includes(:approve)
    #現在ログインしているユーザーの子供の合計ポイントをViewに渡す
    
    #@promises = Promise.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

end
