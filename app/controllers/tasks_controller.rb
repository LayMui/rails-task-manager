class TasksController < ApplicationController
  def task
    @tasks = Task.all
  end

  def task_details
    @task = Task.find(params[:id])
  end
end
