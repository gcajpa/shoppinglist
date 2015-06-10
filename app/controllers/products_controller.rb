class ProductsController < ApplicationController
  before_action :set_product, only: [:update, :destroy]
  before_action :init_product, only: [:create]

  def create
    if @product.update_attributes(product_params)
      redirect_to root_path, notice: "Produto salvo com sucesso."
    else
      redirect_to root_path, alert: "Erro ao tentar salvar o produto."
    end
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render 'edit', notice: "Erro ao tentar editar a produto."
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Produto excluído.'
  end

  private

  def set_product
    @product = Product.find_by_id(params[:id])
  end

  def init_product
    @product = Product.new
  end

  def product_params
    params.require(:product).permit(
      :name
    )
  end

end
