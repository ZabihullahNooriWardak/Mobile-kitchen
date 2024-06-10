class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_admin
  rescue_from ActiveRecord::RecordNotFound, with: :order_not_found
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to admin_order_path(@order), notice: 'Order status updated.'
    else
      render :show
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admin_orders_path, notice: 'Order deleted.'
  end

  private

  def ensure_admin
    redirect_to root_path, alert: 'Access denied.' unless current_user.user_detail.is_admin
  end

  def order_params
    params.require(:order).permit(:status)
  end
  def order_not_found
    flash[:alert] = "Order not found."
    redirect_to admin_orders_path
  end
end
