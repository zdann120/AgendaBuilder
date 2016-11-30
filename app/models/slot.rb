class Slot < ApplicationRecord
  belongs_to :event
  has_many :reservations
  has_many :users, through: :reservations
  has_secure_token :uid
end
