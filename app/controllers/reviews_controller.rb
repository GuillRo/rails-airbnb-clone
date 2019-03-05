class ReviewsController < ApplicationController
  def index
    @flat = Flat.find(params[:id])
    @reviews = Review.where(flat_id: @flat.id)
  end

  def new
    @review = Review.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @review = Review.new(review_params)
    @flat = Flat.find(params[:flat_id])
    @review.flat_id = @flat.id
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :score)
  end
end
