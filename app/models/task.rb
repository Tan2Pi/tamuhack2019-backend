class Task < ApplicationRecord
  has_many :user_tasks
  has_many :users, through: :user_tasks

  scope :completed, -> { where(completed: true) }
  scope :uncompleted, -> { where(completed: false) }

  default_scope { order(:completed) }

  def self.progress_percent
    ((completed.count.to_f / uncompleted.count.to_f) * 100).to_i
  end
end
