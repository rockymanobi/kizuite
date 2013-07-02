class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize
  before_filter :login_required

  def authorize
    if session[:group_id]
      @current_group = Group.find_by_id(session[:group_id])
      if @current_group
      else
        session.delete(:group_id)
      end
    end
  end

  def login_required
    unless logged_in?
      redirect_to controller: :sessions, action: :new
    end
  end

  def logged_in?
    !!@current_group
  end
end
