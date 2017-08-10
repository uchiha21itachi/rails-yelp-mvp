class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
      if @review.save
        redirect_to restaurant_path(@review.restaurant)
      else
        @restaurant = Restaurant.find(params[:restaurant_id])
        render 'new'
      end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant)

  end

  private

    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
