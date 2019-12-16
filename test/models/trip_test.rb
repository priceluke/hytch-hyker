require 'test_helper'

class TripTest < ActiveSupport::TestCase
  setup do
    @trip = trips(:valid)
  end
  test "valid trip" do
    assert @trip.valid?
  end
   test "invalid trip desc" do
     @trip.description = "hi"
     refute @trip.valid?
     assert_not_nil @trip.errors[:name]
   end
  test "invalid trip when" do
    @trip.when = "2012-10-28 20:47:08"
    refute @trip.valid?
    assert_not_nil @trip.errors[:when]
  end
  test "invalid trip pc" do
    @trip.petrolcost = "22222"
    refute @trip.valid?
    assert_not_nil @trip.errors[:petrolcost]
  end
  test "invalid trip pc to small" do
    @trip.petrolcost = "1"
    refute @trip.valid?
    assert_not_nil @trip.errors[:petrolcost]
  end
end
