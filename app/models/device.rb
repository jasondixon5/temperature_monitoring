class Device < ApplicationRecord
  belongs_to :location
  has_many :readings
end
