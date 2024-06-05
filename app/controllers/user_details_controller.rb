class UserDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_detail, only: [:edit, :update, :show]

  def new
    if current_user.user_detail.present?
      redirect_to edit_user_detail_path, notice: 'You already have user details. You can edit them.'
    else
      @user_detail = current_user.build_user_detail
    end
  end

  def create
    if current_user.user_detail.present?
      redirect_to edit_user_detail_path, alert: 'You already have user details. You can edit them.'
    else
      @user_detail = current_user.build_user_detail(user_detail_params)
      if @user_detail.save
        redirect_to @user_detail, notice: 'User details were successfully created.'
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @user_detail.update(user_detail_params)
      redirect_to @user_detail, notice: 'User details were successfully updated.'
    else
      render :edit
    end
  end

  def show
  end

  private

  def set_user_detail
    @user_detail = current_user.user_detail
  end

  def user_detail_params
    params.require(:user_detail).permit(:phone_number, :name, :last_name)
  end
end
