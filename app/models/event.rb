class Event < ApplicationRecord
  has_secure_token
  has_many :slots
end
