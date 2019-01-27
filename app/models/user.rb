class User < ApplicationRecord
  has_many :user_tasks
  has_many :tasks, through: :user_tasks

  scope :completed?, -> { all?(tasks.map(&:completed?)) }
  scope :all_awaiting, -> { where(awaiting: true) }
end
