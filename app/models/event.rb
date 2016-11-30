class Event < ApplicationRecord
  has_secure_token
  has_many :slots

  def schedule
    IceCube::Schedule.new(start_time, end_time: end_time) do |s|
      s.add_recurrence_rule(RecurringSelect.dirty_hash_to_rule(recurrence_rule))
    end
  end
end
