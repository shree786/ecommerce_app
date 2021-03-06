class Admin::CategorysController < AdminsController
 
  def index
    @categories = Category.all
  end
  
  def new
    @category = Category.new
  end
  
  def create 
    @category = Category.new(product_params) 
    # @category.category_id = params[:category_id] 
    if @category.save 
       render @category
    else 
        render new
    end 
  end 
    
  def update
    @category = Category.params.require(:product_id).permit(:admin, :users)

  end

  def destroy
    @category = Category.params[:category_id] 
    @category.destroy
  end

 private
 
 def product_params
    params.require(:Category).permit(:category_id, :category_name)
 end
end
