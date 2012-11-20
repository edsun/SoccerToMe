class StoreController < ApplicationController
  def index
    @products = Product.includes(:reviews).order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.includes(:reviews).find(params[:id])
    @review = @product.reviews.build
  end
end
