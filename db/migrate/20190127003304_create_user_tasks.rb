class CreateUserTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tasks do |t|
      t.belongs_to :user
      t.belongs_to :task
      t.timestamps
    end
  end
end
