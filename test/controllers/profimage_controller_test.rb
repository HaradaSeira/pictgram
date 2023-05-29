require 'test_helper'

class ProfimageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profimage_new_url
    assert_response :success
  end

end
