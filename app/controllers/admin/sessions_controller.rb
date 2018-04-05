class Admin::SessionsController < ApplicationController
  before_action :require_admin_login, only: [:index, :destroy]
  before_action :redirect_if_logged_in, except: [:index, :destroy]

  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_path
    else
      render_login_error
    end
  end

  def destroy
  end
end
