# app/controllers/recommendations_controller.rb
class RecommendationsController < ApplicationController
  def new
    @prebuilt_menus = [] # Ensure the variable is initialized to avoid errors in the view
  end

  def create
    min_price = params[:min_price].to_f
    max_price = params[:max_price].to_f

    # Validation checks
    if min_price.zero? && max_price.zero?
      flash.now[:alert] = "Please fill out the values for minimum and maximum prices."
      render :new and return
    end

    if min_price.positive? && max_price.positive? && min_price > max_price
      flash.now[:alert] = "Minimum price cannot be greater than maximum price."
      render :new and return
    end

    # Find menus based on the provided values
    if min_price.positive? && max_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost >= ? AND cost <= ?", min_price, max_price)
    elsif min_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost >= ?", min_price)
    elsif max_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost <= ?", max_price)
    else
      @prebuilt_menus = []
    end

    if @prebuilt_menus.empty?
      if min_price.positive? && max_price.positive?
        flash.now[:alert] = "No menu found in the specified price range. Please enter both minimum and maximum values within the 150-1300 range."
      elsif min_price.positive? || max_price.positive?
        flash.now[:alert] = "No menu found for the specified price. Please enter both minimum and maximum values."
      else
        flash.now[:alert] = "Please enter both minimum and maximum values."
      end
    end

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          'prebuilt_menus_list',
          partial: 'prebuilt_menus_list',
          locals: { prebuilt_menus: @prebuilt_menus }
        )
      end
      format.html { render :new }
    end
  end
end
