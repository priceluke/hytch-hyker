class CreateTripUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :trip_users do |t|
      t.integer :TripID
      t.string :PassengerID
      t.text :message

      t.timestamps
    end
  end
end
