class ApplicationController < ActionController::Base
    before_action :set_cart_and_orders
  
    before_action :set_locale

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
  
    # Ensure the locale parameter is added to all URLs
    def default_url_options
      { locale: I18n.locale }
    end
    private
  
    def set_cart_and_orders
      if user_signed_in?
        @admin_order_n=Order.all.count
        @cart = current_user.cart
        @order_count = current_user.orders.count
      end

    end
  end
  