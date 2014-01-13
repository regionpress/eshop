class Admin::ProductsController < ApplicationController

def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new params[:product].permit(
      :name, 
      :price, 
      :description, 
      :image_url)

    if @product.save
      redirect_to admin_products_url
    else
      render :new
    end
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @post = Product.find params[:id]

    if @product.update params[:product].permit(
      :name, 
      :price, 
      :description, 
      :image_url)
      redirect_to admin_products_url
    else
      render :edit
    end

  end

end
