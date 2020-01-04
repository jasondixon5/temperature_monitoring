require 'test_helper'

class ReadingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "sample test equality" do
    assert_equal 1,1
  end

  #test "fail on purpose" do
  #  assert_equal 1, 2
  #end

  test "record saves" do 
    reading = Reading.new(
      device_id: devices(:two).id,
      temperature: 67.9
    )
    assert reading.save
    end
 
  test "record saves with int temperature" do 
    reading = Reading.new(
      device_id: devices(:two).id,
      temperature: 67
    )
    assert reading.save
    end
  
  test "record does not save without parameters" do
    reading = Reading.new()
    assert_not reading.save
  end

  test "record does not save with nil device id" do 
    reading = Reading.new(
      device_id: nil,
      temperature: 68.2
    )
    assert_not reading.save
  end

  test "record does not save with nil temperature" do 
    reading = Reading.new(
      device_id: devices(:two).id,
      temperature: nil
    )
    assert_not reading.save
  end

  test "record does not save with missing temperature parameter" do 
    reading = Reading.new(
      device_id: devices(:two).id,
    )
    assert_not reading.save
  end
end
