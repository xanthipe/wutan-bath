require 'test_helper'

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get gallery_url
    assert_response :success
  end
end
