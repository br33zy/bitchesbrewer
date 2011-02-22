require 'test_helper'

class BrewSheetsControllerTest < ActionController::TestCase
  setup do
    @brew_sheet = brew_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brew_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brew_sheet" do
    assert_difference('BrewSheet.count') do
      post :create, :brew_sheet => @brew_sheet.attributes
    end

    assert_redirected_to brew_sheet_path(assigns(:brew_sheet))
  end

  test "should show brew_sheet" do
    get :show, :id => @brew_sheet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @brew_sheet.to_param
    assert_response :success
  end

  test "should update brew_sheet" do
    put :update, :id => @brew_sheet.to_param, :brew_sheet => @brew_sheet.attributes
    assert_redirected_to brew_sheet_path(assigns(:brew_sheet))
  end

  test "should destroy brew_sheet" do
    assert_difference('BrewSheet.count', -1) do
      delete :destroy, :id => @brew_sheet.to_param
    end

    assert_redirected_to brew_sheets_path
  end
end
