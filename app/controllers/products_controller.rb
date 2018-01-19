class ProductsController < ApplicationController

  before_action :set_product, only: [:update, :edit, :show, :destroy]

  def index
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path , success: "Produit modifié avec succès"
    else
      render 'edit'
    end
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)

    if product.valid?
      product.save
      redirect_to root_path, success: "Produit créé avec succès"
    else
      @product = product
      render 'new'
    end

  end

  def destroy
    @product.destroy
    redirect_to root_path, success: "Produit détruit avec succès"
  end

  private

    def product_params
      params.require(:product).permit(:name,:description,:slug, :category_id,:online)
    end

    def set_product
      @product = Product.find(params[:id])
    end

end
