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
      @prebuilt_menus = PrebuiltMenu.where("cost >= ? AND cost <= ?", min_price, max_price)
    elsif min_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost >= ?", min_price)
    elsif max_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost <= ?", max_price)
    end

    if @prebuilt_menus.any?
      render :new
    else
      flash[:alert] = "No menu found for the specified price. Please enter valid minimum and maximum values."
      redirect_to recommendations_path
    end
  end
end
