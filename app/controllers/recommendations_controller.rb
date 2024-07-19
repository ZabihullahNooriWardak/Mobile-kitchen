# app/controllers/recommendations_controller.rb
class RecommendationsController < ApplicationController
  def new
    @prebuilt_menus = []
  end

  def create
    min_price = params[:min_price].to_f
    max_price = params[:max_price].to_f

    # Validation checks
    if min_price.zero? && max_price.zero?
      flash.now[:alert] = "Please fill out the values for minimum and maximum prices."
      render turbo_stream: turbo_stream.update("flash", partial: "layouts/flash") and return
    end

    if min_price.positive? && max_price.positive? && min_price > max_price
      flash.now[:alert] = "Minimum price cannot be greater than maximum price."
      render turbo_stream: turbo_stream.update("flash", partial: "layouts/flash") and return
    end

    # Find menus based on the provided values
    if min_price.positive? && max_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost >= ? AND cost <= ?", min_price, max_price)
    elsif min_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost >= ?", min_price)
    elsif max_price.positive?
      @prebuilt_menus = PrebuiltMenu.where("cost <= ?", max_price)
    end

    if @prebuilt_menus.present?
      render turbo_stream: turbo_stream.update("menus", partial: "recommendations/menus", locals: { prebuilt_menus: @prebuilt_menus })
    else
      flash.now[:alert] = "No menu found for the specified price range."
      render turbo_stream: turbo_stream.update("flash", partial: "layouts/flash")
    end
  end
end
