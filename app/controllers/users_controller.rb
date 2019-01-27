class UsersController < ApplicationController
  def show
    @user = User.includes(:tasks).find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    @user.toggle!(:awaiting)
  end

  def needs_help
    user = User.find(params[:user_id])
    @task_to_share = user.tasks.uncompleted.first
    user_to_give_task_to = User.all_awaiting.first

    if @task_to_share.blank?
      render json: { 'message': "You don't have any uncompleted tasks." }
    elsif user_to_give_task_to.blank?
      render json: { 'message': "No users available to help. Sorry." }
    else
      unless user_to_give_task_to.tasks.include? @task_to_share
        user_to_give_task_to.tasks << @task_to_share
        user_to_give_task_to.toggle!(:awaiting)
      end
    end
  end
end
