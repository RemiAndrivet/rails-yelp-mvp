class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end  
  
  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.restaurant_id = params[:id]
    @review.save!
    redirect_to restaurant_path(@restaurant)
  end

  private
  
  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
