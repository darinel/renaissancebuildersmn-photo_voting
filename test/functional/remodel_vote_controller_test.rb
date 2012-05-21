require 'test_helper'

class RemodelVoteControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get vote" do
    get :vote
    assert_response :success
  end

end
