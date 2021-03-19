class Admin::AdminsController < ApplicationController
 def index
    @users = User.all
    @products = Product.all
    @categories = Category.all
 end  
end
