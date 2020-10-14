class TasksController < ApplicationController
  def index
    @task = Task.new
    @list = List.find(params[:list_id])
    @tasks = @list.tasks
    
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_tasks_path(@list)
    else
      @tasks = @list.tasks
      render :index
    end
  end

  def destroy
    
    list = List.find(params[:list_id])
    
    task = Task.find(params[:id])
    task.destroy
    redirect_to list_tasks_path(list.id)
  end

  private

  def task_params
    params.require(:task).permit(:content).merge(user_id: current_user.id, list_id: params[:list_id])
  end
end
