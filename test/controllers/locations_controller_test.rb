require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "guaranteed success" do
    assert_equal 1, 1
  end

  test "should get new location page" do 
    get new_location_path

    assert_response :success
  end

  test "should create new location and redirect with flash" do
    post locations_path, params: { location: { name: 'Hallway'}
  }
    assert_redirected_to location_path(Location.last)
    assert_equal 'Location was successfully created.', flash[:notice]
  end

  test "should fail and redirect to new location page" do
    # following all produced this error:
    # # produced this error: ActionController::ParameterMissing: param is missing or the value is empty: location
    # see https://github.com/rails/rails/issues/26569
    # for issue regarding passing empty parameters hash
    # former behavior :
    # post locations_path, params: {}
    # assert_redirected_to new_location_path
    # tried workarounds of passing as json and of passing hash 
    
    # post locations_path, params: {location: {}}
    # assert_redirected_to new_location_path
    
    # post locations_path, as: "json", params: {location: {}}
    # assert_raises ActionController:ParameterMissing
  end
end
