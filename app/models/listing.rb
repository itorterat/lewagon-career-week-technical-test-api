class Listing < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reservations, dependent: :destroy

  validates :num_rooms, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
