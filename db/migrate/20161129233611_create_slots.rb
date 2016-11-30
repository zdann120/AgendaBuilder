class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.string :uid
      t.references :event, foreign_key: true
      t.string :title

      t.timestamps
    end
    add_index :slots, :uid, unique: true
  end
end
