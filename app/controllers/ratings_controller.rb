class RatingsController < ApplicationController
  before_filter :set_restaurant

  def create
    @rating = @restaurant.ratings.new :value => params[:rating][:value]
    if @rating.save
      redirect_to restaurant_path(@restaurant), :notice => "Rating successful."
    else
      redirect_to restaurant_path(@restaurant), :notice => "Something went wrong."
    end
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute :value, params[:value]
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
