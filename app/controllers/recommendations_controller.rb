# app/controllers/recommendations_controller.rb
class RecommendationsController < ApplicationController
    def new
    end
  
    def create
      min_price = params[:min_price].to_f
      max_price = params[:max_price].to_f
  
      # Validation checks
      if min_price.zero? && max_price.zero?
        flash[:alert] = "Please fill out the values for minimum and maximum prices."
        redirect_to recommendations_path and return
      end
  
      if min_price.positive? && max_price.positive? && min_price > max_price
        flash[:alert] = "Minimum price cannot be greater than maximum price."
        redirect_to recommendations_path and return
      end
  
      # Find menu based on the provided values
      if min_price.positive? && max_price.positive?
        @prebuilt_menu = PrebuiltMenu.where("cost >= ? AND cost <= ?", min_price, max_price).first
      elsif min_price.positive?
        @prebuilt_menu = PrebuiltMenu.where("cost >= ?", min_price).first
      elsif max_price.positive?
        @prebuilt_menu = PrebuiltMenu.where("cost <= ?", max_price).first
      end
  
      if @prebuilt_menu
        redirect_to prebuilt_menu_path(@prebuilt_menu)
      else
        if min_price.positive? && max_price.positive?
          flash[:alert] = "No menu found in the specified price range. Please enter both minimum and maximum values within the 150-1300 range."
        elsif min_price.positive? || max_price.positive?
          flash[:alert] = "No menu found for the specified price. Please enter both minimum and maximum values."
        else
          flash[:alert] = "Please enter both minimum and maximum values."
        end
        redirect_to recommendations_path
      end
    end
  end
  