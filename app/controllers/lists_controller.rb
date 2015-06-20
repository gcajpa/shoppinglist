class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :init_list, only: [:new, :create]

  def index
    @lists = List.order(:created_at)
  end

  def show
  end

  def new
  end

  def create
    if @list.update_attributes(list_params)
      Mailer.send_list("gcajpa@gmail.com", @list).deliver_later
      redirect_to @list
    else
      render 'new', notice: "Erro ao tentar salvar a lista"
    end
  end

  def edit
  end

  def update
    if @list.update_attributes(list_params)
      redirect_to @list
    else
      render 'edit', notice: "Erro ao tentar editar a lista"
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path, notice: 'Lista excluída.'
  end

  private

  def set_list
    @list = List.find_by_id(params[:id])
  end

  def init_list
    @list = List.new
  end

  def list_params
    params.require(:list).permit(
      :supermarket,
      orders_attributes: [:id, :price, :qt, :product_id, :_destroy]
    )
  end

end
