class TasksController < ApplicationController
  def index
    @task = Task.new
    #@list = List.find(params[:list_id])
    
  end

  def create
    
    @list = List.find(params[:list_id])
    @task = @list.tasks.new(task_params)
    if @task.save
      redirect_to list_tasks_path(@list)
    else
      
      render :index
    end
  end

  private

  def task_params
    params.require(:task).permit(:content).merge(user_id: current_user.id, list_id: params[:list_id])
  end
end
