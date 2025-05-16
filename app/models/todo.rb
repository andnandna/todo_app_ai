class Todo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: ['pending', 'in_progress', 'completed'] }
end
