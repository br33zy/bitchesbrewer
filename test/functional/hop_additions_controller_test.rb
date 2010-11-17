require 'test_helper'

class HopAdditionsControllerTest < ActionController::TestCase
  setup do
    @hop_addition = hop_additions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hop_additions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hop_addition" do
    assert_difference('HopAddition.count') do
      post :create, :hop_addition => @hop_addition.attributes
    end

    assert_redirected_to hop_addition_path(assigns(:hop_addition))
  end

  test "should show hop_addition" do
    get :show, :id => @hop_addition.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hop_addition.to_param
    assert_response :success
  end

  test "should update hop_addition" do
    put :update, :id => @hop_addition.to_param, :hop_addition => @hop_addition.attributes
    assert_redirected_to hop_addition_path(assigns(:hop_addition))
  end

  test "should destroy hop_addition" do
    assert_difference('HopAddition.count', -1) do
      delete :destroy, :id => @hop_addition.to_param
    end

    assert_redirected_to hop_additions_path
  end
end
