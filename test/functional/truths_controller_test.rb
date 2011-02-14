require 'test_helper'

class TruthsControllerTest < ActionController::TestCase
  setup do
    @truth = truths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:truths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create truth" do
    assert_difference('Truth.count') do
      post :create, :truth => @truth.attributes
    end

    assert_redirected_to truth_path(assigns(:truth))
  end

  test "should show truth" do
    get :show, :id => @truth.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @truth.to_param
    assert_response :success
  end

  test "should update truth" do
    put :update, :id => @truth.to_param, :truth => @truth.attributes
    assert_redirected_to truth_path(assigns(:truth))
  end

  test "should destroy truth" do
    assert_difference('Truth.count', -1) do
      delete :destroy, :id => @truth.to_param
    end

    assert_redirected_to truths_path
  end
end
