class ListsController < ApplicationController

  def new
    @lists =List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to tasks_path
    else
      render :new
    end
  end
end
