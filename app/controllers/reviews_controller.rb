class ReviewsController < ApplicationController

  def index
    @flat = Flat.find(params[:id])
    @reviews = Review.where(flat_id: @flat.id)
  end

  def edit
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    @review.save
  end
end
