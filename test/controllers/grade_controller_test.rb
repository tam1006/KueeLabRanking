require "test_helper"

class GradeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get grade_new_url
    assert_response :success
  end
end
