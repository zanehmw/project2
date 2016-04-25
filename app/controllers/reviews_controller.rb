class ReviewsController < ApplicationController
  def create
    cleaned_params = params.require(:review).permit(:comment, :restaurant_id)
    @review = Review.create(cleaned_params)
    redirect_to @review.restaurant
  end

  def edit
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    cleaned_params = params.require(:review).permit(:comment, :post_id)
    @review = Review.find(params[:id])
    if @review.update(cleaned_params)
      redirect_to @review.restaurant
    else
      render :edit
    end
  end

  def destroy
    # @post = Post.find(params[:post_id])
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.restaurant
  end

  private
    def comment_params
      params.require(:comment).permit(:post_id, :comment)
    end

end
