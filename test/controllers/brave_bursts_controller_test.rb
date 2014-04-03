require 'test_helper'

class BraveBurstsControllerTest < ActionController::TestCase
  setup do
    @brave_burst = brave_bursts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brave_bursts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brave_burst" do
    assert_difference('BraveBurst.count') do
      post :create, brave_burst: { element: @brave_burst.element, name: @brave_burst.name, num_hits: @brave_burst.num_hits }
    end

    assert_redirected_to brave_burst_path(assigns(:brave_burst))
  end

  test "should show brave_burst" do
    get :show, id: @brave_burst
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brave_burst
    assert_response :success
  end

  test "should update brave_burst" do
    patch :update, id: @brave_burst, brave_burst: { element: @brave_burst.element, name: @brave_burst.name, num_hits: @brave_burst.num_hits }
    assert_redirected_to brave_burst_path(assigns(:brave_burst))
  end

  test "should destroy brave_burst" do
    assert_difference('BraveBurst.count', -1) do
      delete :destroy, id: @brave_burst
    end

    assert_redirected_to brave_bursts_path
  end
end
