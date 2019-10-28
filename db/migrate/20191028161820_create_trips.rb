class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :driver_id
      t.integer :trip_id
      t.datetime :when
      t.string :destination
      t.string :source
      t.integer :petrolcost
      t.text :description

      t.timestamps
    end
  end
end
