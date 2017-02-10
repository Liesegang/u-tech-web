require 'test_helper'

class SeminarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seminar_index_url
    assert_response :success
  end

  test "should get create" do
    get seminar_create_url
    assert_response :success
  end

end
