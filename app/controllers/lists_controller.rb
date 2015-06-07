class ListsController < ApplicationController
  def index
    @lists = List.order(:created_at)
  end
end
