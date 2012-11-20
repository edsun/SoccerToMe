class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  # Remove repeating code to get the ID from only these actions
  before_filter :load_product_by_id, :only => [:show, :edit, :update, :destroy]
  
  # Require authentication except on the index and show
  before_filter :require_sudo, :except => [:index, :show]
  
  def index
    @products = Product.includes(:reviews).order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.includes(:reviews).find(params[:id])
    @review = @product.reviews.build
  end

  # GET /products/new
  # GET /products/new.json
  # Show an empty form to create a new product
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    #@product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        redirect_to :action => :show, :id => @product
      else
        render :action => :new
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    #@product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
  
  protected
  
  def load_product_by_id
    @product = Product.includes(:reviews).find(params[:id])
  end
end
