class Admin::CategorysController < ApplicationController
 
  def index
    @categorys = Category.all
  end
  

  def create 
    @category = Category.new(product_params) 
    @category.category_id = params[:category_id] 
    respond_to do |format| 
    if @category.save 
       render @category
    else 
        render new
    end 
   end 
 end
    
 def update
  @category = Category.params.require(:product_id).permit(:admin, :users)

 end

 def destroy
  @category = Category.params[:category_id] 
  @category.destroy
 end
end
