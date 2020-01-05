require 'test_helper'

class ReadingsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "guaranteed success" do
    assert_equal 1, 1
  end

  test "should get new reading page" do 
    get new_reading_path

    assert_response :success
  end

  test "should create new reading and redirect with flash" do
    @device_id = devices(:one).id
    post readings_path, params: { reading: { device_id: @device_id,
                                             temperature: 85
                                            }
  }

    assert_redirected_to reading_path(Reading.last)
    assert_equal 'Reading was successfully created.', flash[:notice]
  end

end
