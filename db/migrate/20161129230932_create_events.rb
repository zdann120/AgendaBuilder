class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :token
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description

      t.timestamps
    end
    add_index :events, :token, unique: true
  end
end
