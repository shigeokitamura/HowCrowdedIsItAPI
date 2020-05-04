module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        params.permit(:restaurant_id)
        @restaurant = Restaurant.find_by(restaurant_id: params[:restaurant_id])
        render json: @restaurant
      end

      def show
        @restaurant = Restaurant.find(params[:id])
        render json: @restaurant
      end
    end
  end
end
