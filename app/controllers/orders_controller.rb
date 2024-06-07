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

  def edit
    @order = current_user.orders.find(params[:id])
  end

  def update
    @order = current_user.orders.find(params[:id])
    if @order.update(order_params)
      redirect_to order_path(@order), notice: 'Order updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @order = current_user.orders.find(params[:id])
    @order.destroy
    redirect_to orders_path, notice: 'Order canceled.'
  end

  private

  def order_params
    params.require(:order).permit(:address, :guests_number, :date, :description)
  end
end
