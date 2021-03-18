class Admin::ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
      params[:products][:user_id] = current_user.id
      @products = products.new(products_params)
  end

  def edit
    @products = Product.find(params[:id])
  end

  def update
    @products = Products.find(params[:id])
    @products.update_attributes!(products_params)
    flash[:notice] = "#{@products.name} has been succesfully updated."
    redirect_to root_path
  end

  def destroy
    @products = Product.find(params[:id])
    @products.destroy
    flash[:notice] = "Your product '#{@products.name}' has been deleted."
    redirect_to root_path
  end

  def show
    @products = Product.find(params[:id])
  end

end
