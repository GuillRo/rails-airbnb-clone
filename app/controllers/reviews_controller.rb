class ReviewsController < ApplicationController
  def index
    @flat = Flat.find(params[:id])
    @reviews = Review.where(flat_id: @flat.id)
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.flat = Flat.find(params[:flat_id])
    @review.save
    redirect_to flat_path(params[:flat_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :score)
  end
end
