class UserTasksController < ApplicationController
  def create
    @user_task = UserTask.where(user_id: params[:user_id], task_id: params[:task_id]).first || UserTask.create!(
      user: User.find(params[:user_id]),
      task: Task.find(params[:task_id])
    )
  end
end
