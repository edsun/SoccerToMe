class StoreController < ApplicationController
  def index
    @products = Product.includes(:reviews).order('created_at DESC').limit(4)
    @sale = Product.where("sale_price > 0.00")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.includes(:reviews).find(params[:id])
    @review = @product.reviews.build
    @images = @product.images.build
  end
  
  # There is a associated view for this action
  def search
  end
  
  # All Products
  def all
    @products = Product.includes(:reviews).order('created_at DESC')
  end
  
  def search_results
    @keyword = params[:keyword]
    
    @products = Product.where("Name LIKE ?", "%#{@keyword}%")
  end
  
  def boots
    #@products = Categories.includes(:products)
    
    @products = Product.where(:category_id => '1')
  end
  
  def kits
    @products = Product.where(:category_id => '2')
  end
  
  # About view
  def about
  end
  
  def contact
  end
end
