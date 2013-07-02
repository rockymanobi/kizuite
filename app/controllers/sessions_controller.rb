class SessionsController < ApplicationController
  layout 'login' 
  skip_before_filter :login_required


  def new
  end

  def create
    session.delete(:group_id)
    shop = Group.authenticate(params[:login_id],params[:password])

    if shop
      session[:group_id] = shop.id
      redirect_to params[:from] || :root
    else
      render :new
    end
  end

  def destroy
    session.delete(:group_id)
    redirect_to  :root
  end
end
