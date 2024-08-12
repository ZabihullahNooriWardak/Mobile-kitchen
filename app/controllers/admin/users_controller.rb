class Admin::UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin
  
    def index
      @users = User.all
    end
  
    # Add other actions if needed, like show, edit, update, destroy
  
    private
  
    def ensure_admin
      if current_user.nil?
        redirect_to new_user_session_path, alert: 'Please log in to access this page.'
      elsif !current_user.user_detail || !current_user.user_detail.is_admin
        redirect_to root_path, alert: 'Access denied.'
      end
    end
  end
  