require 'test_helper'

class MamanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get maman_index_url
    assert_response :success
  end

end
