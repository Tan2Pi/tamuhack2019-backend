class TimersController < ApplicationController
  def create
    puts(params)
    @timer = Timer.create!(
      started_time: Time.now.utc,
      duration_seconds: params[:duration_seconds] || 600
    )
    render json: @timer
  end

  def show
    @time = Timer.all.last.time_remaining
    render json: { 'remaining_seconds': @time }
  end
end
