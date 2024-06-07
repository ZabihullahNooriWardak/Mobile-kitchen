class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.status = 'pending'

    if @order.save
      current_user.cart.cart_items.each do |item|
        @order.order_items.create(food: item.food)
      end

      current_user.cart.cart_items.destroy_all
      redirect_to orders_path, notice: 'Order placed successfully.'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:address, :guests_number, :date, :description)
  end
end
