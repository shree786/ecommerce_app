class HomeController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
    if params[:category_id]
      @products = Product.where(category_id: params[:category_id])
    else
      @products = Product.all
    end
  end
end
