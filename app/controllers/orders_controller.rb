# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy, :rate]
  before_action :check_order_status, only: [:edit, :update, :destroy]
  before_action :check_cart_source, only: [:new]
  before_action :check_cart_presence, only: [:new]

  def index
    @orders = current_user.orders
  end

  def show
    @prebuilt_menu = @order.prebuilt_menu if @order.prebuilt_menu.present?
  end

  def new
    @order = Order.new
    @prebuilt_menu = PrebuiltMenu.find(params[:prebuilt_menu_id]) if params[:prebuilt_menu_id].present?
  end

  def create
    @order = current_user.orders.new(order_params)
    @order.status = 'pending'

    if @order.save
      if @order.prebuilt_menu.present?
        @order.prebuilt_menu.foods.each do |food|
          @order.order_items.create(food: food)
        end
      else
        current_user.cart.cart_items.each do |item|
          @order.order_items.create(food: item.food)
        end
        current_user.cart.cart_items.destroy_all
      end
      redirect_to orders_path, notice: t('order_placed_successfully')
    else
      render :new
    end
  end

  def edit
    # @order is already set by the set_order before_action
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order), notice: t('order_updated_successfully')
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_path, notice: t('order_canceled')
  end


# app/controllers/orders_controller.rb
def rate
  @order = Order.find(params[:id])
  @review = @order.build_review
  @review.rating ||= 0
end



  private

  def order_params
    params.require(:order).permit(:address, :guests_number, :date, :description, :full_name, :phone_number, :prebuilt_menu_id)
  end

  def set_order
    @order = current_user.orders.includes(:order_items, { order_items: :food }).find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = t('order_not_found')
    redirect_to orders_path
  end

  def check_order_status
    if @order.status != 'pending'
      flash[:alert] = t('order_no_longer_editable')
      redirect_to orders_path
    end
  end

  def check_cart_source
    unless params[:from_cart] || params[:prebuilt_menu_id]
      redirect_to cart_path, alert: t('please_proceed_from_cart_or_select_menu')
    end
  end

  def check_cart_presence
    if (current_user.cart.nil? || current_user.cart.foods.empty?) && params[:prebuilt_menu_id].nil?
      redirect_to cart_path, alert: t('your_cart_is_empty')
    end
  end
end
