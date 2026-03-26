class ProoductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end
  # other actions
end
