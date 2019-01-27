class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.includes(:users).find(params[:task_id])
  end

  def update
    @task = Task.find(params[:task_id])
    @task.toggle!(:completed)
  end

  def count
    render json: { 'progress_percent': Task.all.progress_percent }
  end
end
