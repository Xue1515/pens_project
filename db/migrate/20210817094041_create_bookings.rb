class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :start_date
      t.integer :end_date
      t.references :user
      t.references :item

      t.timestamps
    end
  end
end
