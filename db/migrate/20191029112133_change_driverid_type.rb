class ChangeDriveridType < ActiveRecord::Migration[5.2]
  def change
    change_column :trip_users, :PassengerID, :string

    change_column :trips, :driver_id, :string
  end
end
