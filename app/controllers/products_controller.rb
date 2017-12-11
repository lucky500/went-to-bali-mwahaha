class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]
  # before_filter :authorize_admin, only: :create
  before_action :find_products, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = "Product has been added."
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = "Product was deleted!"
    redirect_to products_path
    # respond_to do |format|
    #   format.html { redirect_to products_path }
    #   format.js
    # end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :product_img)
  end

  def find_products
    @product = Product.find(params[:id])
  end
end
