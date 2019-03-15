class CategoriesController < ApplicationController
  def show
    id = Category.find(params[:id])
    @products = id.products
  end
end
