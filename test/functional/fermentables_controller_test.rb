require 'test_helper'

class FermentablesControllerTest < ActionController::TestCase
  setup do
    @fermentable = fermentables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fermentables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fermentable" do
    assert_difference('Fermentable.count') do
      post :create, :fermentable => @fermentable.attributes
    end

    assert_redirected_to fermentable_path(assigns(:fermentable))
  end

  test "should show fermentable" do
    get :show, :id => @fermentable.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fermentable.to_param
    assert_response :success
  end

  test "should update fermentable" do
    put :update, :id => @fermentable.to_param, :fermentable => @fermentable.attributes
    assert_redirected_to fermentable_path(assigns(:fermentable))
  end

  test "should destroy fermentable" do
    assert_difference('Fermentable.count', -1) do
      delete :destroy, :id => @fermentable.to_param
    end

    assert_redirected_to fermentables_path
  end
end
