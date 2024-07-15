# app/controllers/reviews_controller.rb
class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:create]
  # before_action :set_order  
  def index
@reviews= Review.all
  end

  def create
    @review = @order.build_review(review_params.merge(user: current_user))

    if @review.save
      redirect_to orders_path, notice: 'Thank you for your feedback!'
    else
      render 'orders/rate'
    end
  end

  private

  # def set_order
  #   @order = Order.find(params[:order_id])
  # end

  def review_params
    params.require(:review).permit(:rating, :feedback, :suggestion)
  end

  def set_order
    @order = Order.find(params[:order_id])
  end
end
