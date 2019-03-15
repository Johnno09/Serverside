require 'test_helper'

class PhoneAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_app = phone_apps(:one)
  end

  test "should get index" do
    get phone_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_app_url
    assert_response :success
  end

  test "should create phone_app" do
    assert_difference('PhoneApp.count') do
      post phone_apps_url, params: { phone_app: { brand: @phone_app.brand, details: @phone_app.details, model: @phone_app.model, price: @phone_app.price } }
    end

    assert_redirected_to phone_app_url(PhoneApp.last)
  end

  test "should show phone_app" do
    get phone_app_url(@phone_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_app_url(@phone_app)
    assert_response :success
  end

  test "should update phone_app" do
    patch phone_app_url(@phone_app), params: { phone_app: { brand: @phone_app.brand, details: @phone_app.details, model: @phone_app.model, price: @phone_app.price } }
    assert_redirected_to phone_app_url(@phone_app)
  end

  test "should destroy phone_app" do
    assert_difference('PhoneApp.count', -1) do
      delete phone_app_url(@phone_app)
    end

    assert_redirected_to phone_apps_url
  end
end
