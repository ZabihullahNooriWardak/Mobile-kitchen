class DashboardController < ApplicationController
    before_action :authenticate_user!
  
    def index
      if current_user.user_detail&.is_admin
        admin_dashboard
      else
        user_dashboard
      end
    end
  
    private
  
    def admin_dashboard
      @total_orders = Order.count
      @total_users = User.count
      @new_orders_last_30_days = Order.where("created_at >= ?", 30.days.ago).count
  
      # Prepare data for the graph (e.g., daily new orders in the last 30 days)
      @orders_by_day = Order.group_by_day(:created_at, last: 30).count
  
      render "admin_dashboard"
    end
  
    def user_dashboard
      @total_orders = current_user.orders.count
      @cart_items_count = current_user.cart.items.count
  
      # Prepare data for the user's graph
      @orders_by_prebuilt_menu = current_user.orders.group(:prebuilt_menu_id).count
  
      render "user_dashboard"
    end
  end
  