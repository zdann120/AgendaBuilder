class AddScheduleToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :recurrence_rule, :text
  end
end
