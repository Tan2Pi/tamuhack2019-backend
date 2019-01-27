class Task < ApplicationRecord
  has_many :user_tasks
  has_many :users, through: :user_tasks

  scope :completed, -> { where(completed: true) }
  scope :uncompleted, -> { where(completed: false) }

  scope :progress_percent, -> { (uncompleted.count / completed.size) * 100 }

  default_scope { order(:completed) }
end
