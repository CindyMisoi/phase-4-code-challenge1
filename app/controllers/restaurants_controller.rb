class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        restaurants = Restaurant.all
        render json: restaurants, include: ['restaurant_pizzas']
    end
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end
    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: restaurant
        head :no_content
    end

    # private => strong params
    private
    def render_not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found
    end
    
end
