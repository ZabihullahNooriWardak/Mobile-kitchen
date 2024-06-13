class ApplicationController < ActionController::Base
    before_action :set_foods

    private
  
    def set_foods
      @foods = Food.all  # Example: Fetch all foods
    end
end
