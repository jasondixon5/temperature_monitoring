require 'test_helper'

class DevicesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  #test "guaranteed failure" do
  #  assert_equal 1, 2
  #end
  test "guaranteed success" do
    assert_equal 1, 1
  end

  test "should get new device page" do 
    get new_device_path

    assert_response :success
  end

  test "should create new device and redirect with flash" do
    @location_id = locations(:one).id
    post devices_path, params: { device: { location_id: @location_id}
  }

    assert_redirected_to device_path(Device.last)
    assert_equal 'Device was successfully created.', flash[:notice]
  end
end
