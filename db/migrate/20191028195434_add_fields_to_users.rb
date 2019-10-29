class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :dob, :datetime
    add_column :users, :contactNumber, :string
    add_column :users, :vehicleCapacity, :integer
    add_column :users, :postcode, :string
    add_column :users, :numberPlate, :string
  end
end
