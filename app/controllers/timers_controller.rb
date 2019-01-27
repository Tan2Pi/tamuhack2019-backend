class TimersController < ApplicationController
  def manager_create
    timer_last = Timer.last
    if timer_last.time_remaining > 0
      @current_timer = timer_last
      @progress_percent = Task.progress_percent
    else
      @current_timer = nil
      @progress_percent = 0
    end
    puts(@current_timer)

    @timer = Timer.new
    render 'manager_create'
  end

  def create
    duration_seconds = Integer(params[:date][:duration_minute])*60 + Integer(params[:date][:duration_second])
    @timer = Timer.create(
      started_time: Time.now.utc,
      duration_seconds: duration_seconds
    )
    respond_to do |format|
      format.html { redirect_to timers_path }
      format.js   { render json: @timer }
    end
  end

  def show
    @time = Timer.all.last.time_remaining
    render json: { 'remaining_seconds': @time }
  end
end
