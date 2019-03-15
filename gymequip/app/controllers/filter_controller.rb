class FilterController < ApplicationController
  def index
  end

  def results
    if params[:query_status][:product_status_id].empty?
      @products = Product.all
    else
      product_status = ProductStatus.find(params[:query_status][:product_status_id])
      @products = product_status.products.where(product_status_id: product_status)

      @name = @products.first.product_status.name
    end
  end
end
