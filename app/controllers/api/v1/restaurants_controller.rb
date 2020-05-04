module Api
  module V1
    class RestaurantsController < ApplicationController
      def index
        params.permit(:restaurant_name, :category)
        if params[:category]
          @restaurants = Restaurant.where(main_cat: params[:category])
        end
        if params[:restaurant_name]
          restaurants = @restaurants || Restaurant
          @restaurants = restaurants.where("restaurant_name LIKE ?", "%#{params[:restaurant_name]}%")
        end
        render json: @restaurants&.map(&:detail)
      end

      def show
        @restaurant = Restaurant.find_by(restaurant_id: params[:restaurant_id])
        render json: @restaurant.detail
      end

      def update
        params.permit(:congestion, :comment)
        @restaurant = Restaurant.find_by(restaurant_id: params[:restaurant_id])
        if @restaurant
          if params[:congestion]
            @congestion = Congestion.create(restaurant: @restaurant, degree: params[:congestion])
          end
          if params[:comment]
            @comment = Comment.create(restaurant: @restaurant, text: params[:comment])
          end
          render json: @restaurant.detail
        else
          render json: @restaurant.errors
        end
      end
    end
  end
end
