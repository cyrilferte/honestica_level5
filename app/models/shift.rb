class Shift < ApplicationRecord
  belongs_to :worker
  validates :planning_id, presence: true
  validates :worker_id, presence: true
  validates :start_date, presence: true
end
