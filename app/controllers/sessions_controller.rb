class SessionsController < ApplicationController
  skip_before_filter :login_required


  def new
  end
end
