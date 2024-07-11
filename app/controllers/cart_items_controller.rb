class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @food = Food.find_by(id: params[:food_id])
    
    if @food.nil?
      redirect_to foods_path, alert: 'The food item you are trying to add does not exist.'
      return
    end

    @cart = current_user.cart || current_user.create_cart
    @cart_item = @cart.cart_items.find_or_initialize_by(food_id: params[:food_id])

    if @cart_item.new_record?
      @cart_item.save
      redirect_to foods_path, notice: 'Item added to cart.'
    else
      redirect_to foods_path, notice: 'Item is already in your cart.'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path, notice: 'Item removed from cart.'
  end
end
