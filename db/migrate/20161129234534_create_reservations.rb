class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :slot, foreign_key: true
      t.string :confirmation_code

      t.timestamps
    end
    add_index :reservations, :confirmation_code, unique: true
  end
end
