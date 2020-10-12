class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_tasks_path(:list_id)
    else
      render :new
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to list_tasks_path(:list_id)
  end
  

  private

  def list_params
    params.require(:list).permit(:name).merge(user_id: current_user.id)
  end
end
