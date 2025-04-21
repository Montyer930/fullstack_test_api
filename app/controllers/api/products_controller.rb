class Api::ProductsController < ApplicationController
    def index
      products = Product.all
      render json: products
    end
  
    def create
      product = @current_user.products.build(product_params)
      if product.save
        render json: product, status: :created
      else
        render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
  end
  