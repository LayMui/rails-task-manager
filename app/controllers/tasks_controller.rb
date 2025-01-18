class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def task_details
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
end

def show
  @task = task.find(params[:id])
end

private

def task_params
  params.require(:task).permit(:title, :details)
end
