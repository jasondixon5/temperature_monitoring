require 'test_helper'

class LocationTest < ActiveSupport::TestCase
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
    location = Location.new(
      name: "LocationFoo"
    )
    assert location.save
    end
  
  test "record does not save without name" do
    location = Location.new()
    assert_not location.save
  end

  test "record does not save with nil location id" do 
    location = Location.new(
      name: nil
    )
    assert_not location.save
  end
end
