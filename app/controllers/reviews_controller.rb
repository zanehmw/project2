class ReviewsController < ApplicationController
  def create
    cleaned_params = params.require(:review).permit(:comment, :restaurant_id)
    @review = Review.create(cleaned_params)
    # it'd be really nice if you took advantage of your user auth here to
    # do something like below so that reviews belonged to a user:
    # @review.user = current_user
    # You'd have to update your DB to include a user_id column on reviews of course
    redirect_to @review.restaurant
  end

  def edit
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    # just like the comment_params below, this seems to be incorrect and pulled
    # from another example, as it references a 'post_id'
    cleaned_params = params.require(:review).permit(:comment, :post_id)
    @review = Review.find(params[:id])
    if @review.update(cleaned_params)
      redirect_to @review.restaurant
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.restaurant
  end

  private
    # you defined this method but then never use it! Also, it seems to be copied
    # from some other app / context that doesn't quite apply here. Be careful
    # blindly copying code without thinking about how it works and what it's doing!
    def comment_params
      params.require(:comment).permit(:post_id, :comment)
    end

end
