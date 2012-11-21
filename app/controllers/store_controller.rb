class StoreController < ApplicationController
  def index
    @products = Product.includes(:reviews).order('created_at DESC').limit(4)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.includes(:reviews).find(params[:id])
    @review = @product.reviews.build
  end
  
  # There is a associated view for this action
  def search
  end
  
  def search_results
    @keyword = params[:keyword]
    
    @products = Product.where("Name LIKE ?", "%#{@keyword}%")
  end
end
