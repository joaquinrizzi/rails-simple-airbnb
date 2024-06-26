class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.integer :nb_people
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
