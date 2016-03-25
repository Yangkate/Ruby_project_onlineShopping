require 'test_helper'

class ShoppingMallsControllerTest < ActionController::TestCase
  setup do
    @shopping_mall = shopping_malls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_malls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_mall" do
    assert_difference('ShoppingMall.count') do
      post :create, shopping_mall: { City_id: @shopping_mall.City_id, Country_id: @shopping_mall.Country_id, address: @shopping_mall.address, certification: @shopping_mall.certification, contact_email: @shopping_mall.contact_email, contact_name: @shopping_mall.contact_name, contanct_phone_number: @shopping_mall.contanct_phone_number, phone_number: @shopping_mall.phone_number, shopping_mall_name: @shopping_mall.shopping_mall_name }
    end

    assert_redirected_to shopping_mall_path(assigns(:shopping_mall))
  end

  test "should show shopping_mall" do
    get :show, id: @shopping_mall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_mall
    assert_response :success
  end

  test "should update shopping_mall" do
    patch :update, id: @shopping_mall, shopping_mall: { City_id: @shopping_mall.City_id, Country_id: @shopping_mall.Country_id, address: @shopping_mall.address, certification: @shopping_mall.certification, contact_email: @shopping_mall.contact_email, contact_name: @shopping_mall.contact_name, contanct_phone_number: @shopping_mall.contanct_phone_number, phone_number: @shopping_mall.phone_number, shopping_mall_name: @shopping_mall.shopping_mall_name }
    assert_redirected_to shopping_mall_path(assigns(:shopping_mall))
  end

  test "should destroy shopping_mall" do
    assert_difference('ShoppingMall.count', -1) do
      delete :destroy, id: @shopping_mall
    end

    assert_redirected_to shopping_malls_path
  end
end
