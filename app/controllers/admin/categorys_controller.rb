class Admin::CategorysController < ApplicationController
 
  def index
    @categorys = Category.all
  end
  

  def create 
    @product = Product.new(product_params) 
    @product.category_id = params[:category_id] 
    respond_to do |format| 
    if @product.save 
       render home
    else 
        render new
    end 
   end 
 end
    
end
