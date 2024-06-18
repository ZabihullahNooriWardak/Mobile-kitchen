class PrebuiltMenusController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!, except: [:index, :show]
    before_action :set_prebuilt_menu, only: [:show, :edit, :update, :destroy]
  
    def index
      @prebuilt_menus = PrebuiltMenu.all
    end
  
    def show
    end
  
    def new
      @prebuilt_menu = PrebuiltMenu.new
    end
  
    def create
      @prebuilt_menu = PrebuiltMenu.new(prebuilt_menu_params)
      if @prebuilt_menu.save
        redirect_to @prebuilt_menu, notice: 'Prebuilt menu was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def update
      if @prebuilt_menu.update(prebuilt_menu_params)
        redirect_to @prebuilt_menu, notice: 'Prebuilt menu was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @prebuilt_menu.destroy
      redirect_to prebuilt_menus_url, notice: 'Prebuilt menu was successfully destroyed.'
    end
  
    private
  
    def set_prebuilt_menu
      @prebuilt_menu = PrebuiltMenu.find(params[:id])
    end
  
    def prebuilt_menu_params
      params.require(:prebuilt_menu).permit(:name, :cost, :image, food_ids: [])
    end
  
    def authorize_admin!
      redirect_to root_path, alert: 'You are not authorized to perform this action.' unless current_user.user_detail&.is_admin
    end
  end
  