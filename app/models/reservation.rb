class Reservation < ApplicationRecord
  attribute :uid, :string
  attribute :email, :string
  belongs_to :user
  belongs_to :slot
  has_secure_token :confirmation_code
end
