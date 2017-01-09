class Worker < ApplicationRecord
    has_many :shift
     validates :first_name, presence: true
     validates :price_per_shift, presence: true
     validates :category, presence: true, inclusion: { in: %w(medic interne interim),
    message: "%{value} is not a valid category" }
end
