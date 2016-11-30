class AddTimeToSlots < ActiveRecord::Migration[5.0]
  def change
    add_column :slots, :start_time, :datetime
    add_column :slots, :end_time, :datetime
  end
end
