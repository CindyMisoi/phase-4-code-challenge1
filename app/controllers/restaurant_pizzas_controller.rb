class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas
    end
    def create
        restaurant = RestaurantPizza.create!(price: params[:price], pizza_id: params[:pizza_id], restaurant_id: params[:restaurant_id])
        render json: restaurant, status: :created
    end

    # private
    private
    def render_unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
