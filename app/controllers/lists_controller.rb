class ListsController < ApplicationController
  before_action :move_to_top 


  def index
  end
  
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_tasks_path(@list.id)
    else
      render :new
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to root_path
  end
  
  def move_to_top
    redirect_to tops_path unless user_signed_in?
  end


  private

  def list_params
    params.require(:list).permit(:name).merge(user_id: current_user.id)
  end
end
