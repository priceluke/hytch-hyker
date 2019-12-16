require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end
  test "valid user" do
    assert @user.valid?
  end
  test "invalid number" do
    @user.contactNumber = "FAIL"
    refute @user.valid?
  end
  test "invalid vehicleCapacity" do
    @user.vehicleCapacity = 0.3
    refute @user.valid?
  end
  test "invalid name" do
    @user.name = 0.3
    refute @user.valid?
  end
  test "invalid postcode" do
    @user.postcode = "HELLO"
    refute @user.valid?
  end
  test "invalid numberplate" do
    @user.numberPlate = "H3LL!!!!?(*&^%$O"
    refute @user.valid?
  end
  #validates :contactNumber, format: { with: /\d[0-9]\)*\z/, message: ": Please enter a UK number"}
  #validates :vehicleCapacity, numericality: { only_integer: true }
  #validates :name, format: { with: /\A[a-z A-Z]+\z/, message: "only allows letters" }, length: { maximum: 255, too_long: "%{count} characters is the maximum allowed" }
  #validate  :postcode_valid
  #validate  :numberplate_valid
end
