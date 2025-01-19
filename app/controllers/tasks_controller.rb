class TasksController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def new
    @task = Task.new
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path(@task)
  end


  def destroy
    @task.destroy
    redirect_to tasks_path,  status: :see_other
  end


  private
  def set_task
    @task = Task.find(params[:id])
    @name = "Laymui"
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
