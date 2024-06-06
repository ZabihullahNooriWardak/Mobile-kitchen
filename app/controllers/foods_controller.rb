# app/controllers/foods_controller.rb
class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit update destroy]
  before_action :authenticate_user!
  before_action :authorize_admin!, only: %i[new create edit update destroy]

  # GET /foods
  def index
    @foods = Food.all
  end

  # GET /foods/1
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to @food, notice: 'Food was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foods/1
  def update
    if @food.update(food_params)
      redirect_to @food, notice: 'Food was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /foods/1
  def destroy
    @food.destroy
    redirect_to foods_url, notice: 'Food was successfully destroyed.'
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :category, :price, :image)
  end

  def authorize_admin!
    redirect_to root_path, alert: 'You are not authorized to perform this action.' unless current_user.user_detail&.is_admin
  end
end
