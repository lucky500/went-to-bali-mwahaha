class ProductsController < ApplicationController
  # before_filter :authorize, except: [:index, :show]
  before_action :find_products, only: [:edit, :update, :destroy]

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
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :product_img)
  end

  def find_products
    @product = Product.find(params[:id])
  end
end
