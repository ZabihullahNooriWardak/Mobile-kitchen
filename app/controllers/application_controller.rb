class ApplicationController < ActionController::Base
    before_action :set_cart_and_orders
  
    private
  
    def set_cart_and_orders
      if user_signed_in?
        @cart = current_user.cart
        @order_count = current_user.orders.count
      end
    end
  end
  