class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:order_menu, :create_menu]

  def index
    @prebuilt_menus = PrebuiltMenu.all
  end

  def order_menu
    # Order menu logic
  end

  def create_menu
    # Create menu logic
  end
end