class CreateTimers < ActiveRecord::Migration[5.2]
  def change
    create_table :timers do |t|
      t.timestamp :started_time
      t.integer :duration_seconds
    end
  end
end
