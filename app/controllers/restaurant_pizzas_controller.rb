class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index 
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas
    end
    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza, status: :created
    end

    private 
    def render_unprocessable_entity
        render json: {errors: "Validation errors"}, status: :unprocessable_entity
    end
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end

