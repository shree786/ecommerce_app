class Admin::ProductsController < ApplicationController
  @categories = Category.all.map{|c| [ c.name, c.id ] }
end
