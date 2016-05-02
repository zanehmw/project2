class RatingsController < ApplicationController
  before_filter :set_restaurant

  def create
    # The line below isn't wrong, but it's not really written using modern ruby
    # style... here's how I'd write it:
    # @rating = @restaurant.ratings.new(value: params[:rating][:value])

    @rating = @restaurant.ratings.new :value => params[:rating][:value]
    if @rating.save
      redirect_to restaurant_path(@restaurant), :notice => "Rating successful."
    else
      redirect_to restaurant_path(@restaurant), :notice => "Something went wrong."
    end
  end

  # there's no interface to update a rating as far as I can tell... I don't think
  # this should be necessary.
  def update
    @rating = Rating.find(params[:id])
    @rating.update_attribute :value, params[:value]
  end

  private
    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
