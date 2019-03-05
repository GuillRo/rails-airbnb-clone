class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @reviews = Review.new
  end
end
