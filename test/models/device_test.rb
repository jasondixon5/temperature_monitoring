require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "sample test always true" do
    assert true
  end

  test "sample test equality" do
    assert_equal 1,1
  end

  test "record saves" do 
  device = Device.new(
    location_id: locations(:one).id,
  )
  assert device.save
  end

  test "record does not save without location id" do
  device = Device.new()
  assert_not device.save
  end

  #test "fail on purpose" do
  #  assert_equal 1, 2
  #end

  test "record does not save with nil location id" do 
    device = Device.new(
      location_id: nil
    )
    assert_not device.save
  end
end
