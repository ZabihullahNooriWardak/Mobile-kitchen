# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :check_order_status, only: [:edit, :update, :destroy]
  before_action :check_cart_source, only: [:new]
  before_action :check_cart_presence, only: [:new]

  def index
    @orders = current_user.orders
  end

  def show
    @order = current_user.orders.includes(:order_items, { order_items: :food }).find(params[:id])
    @prebuilt_menu = @order.prebuilt_menu if @order.prebuilt_menu.present?
  end


  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.status = 'pending'

    if @order.save
      if params[:order][:prebuilt_menu_id].present?
        prebuilt_menu = PrebuiltMenu.find(params[:order][:prebuilt_menu_id])
        @order.update(prebuilt_menu_id: prebuilt_menu.id)
        prebuilt_menu.foods.each do |food|
          @order.order_items.create(food: food)
        end
      else
        current_user.cart.cart_items.each do |item|
          @order.order_items.create(food: item.food)
        end
        current_user.cart.cart_items.destroy_all
      end
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
    params.require(:order).permit(:address, :guests_number, :date, :description, :full_name, :phone_number, :prebuilt_menu_id)
  end

  def set_order
    @order = Order.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Order not found."
    redirect_to orders_path
  end

  def check_order_status
    if @order.status != 'pending'
      flash[:alert] = "Order can no longer be edited or canceled."
      redirect_to orders_path
    end
  end

  def check_cart_source
    unless params[:from_cart] || params[:prebuilt_menu_id]
      redirect_to cart_path, alert: "Please proceed from the cart page or select a prebuilt menu."
    end
  end

  def check_cart_presence
    if current_user.cart.foods.empty? && params[:prebuilt_menu_id].nil?
      redirect_to cart_path, alert: "Your cart is empty. Please add items before proceeding to checkout."
    end
  end
end
