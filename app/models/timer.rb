class Timer < ApplicationRecord
  def time_remaining
    [duration_seconds.seconds - start_difference_seconds, 0].max
  end

  def start_difference_seconds
    Time.now - started_time
  end
end
