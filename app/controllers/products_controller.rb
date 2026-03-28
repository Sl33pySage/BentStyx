class ProductsController < ApplicationController
  def show # This matches the 'show' page for your fishing rods
    @product = Product.find(params[:id])
  end
end
