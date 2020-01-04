class Reading < ApplicationRecord
  belongs_to :device
  validates :temperature, presence: true
end
