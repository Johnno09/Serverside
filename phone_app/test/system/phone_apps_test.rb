require "application_system_test_case"

class PhoneAppsTest < ApplicationSystemTestCase
  setup do
    @phone_app = phone_apps(:one)
  end

  test "visiting the index" do
    visit phone_apps_url
    assert_selector "h1", text: "Phone Apps"
  end

  test "creating a Phone app" do
    visit phone_apps_url
    click_on "New Phone App"

    fill_in "Brand", with: @phone_app.brand
    fill_in "Details", with: @phone_app.details
    fill_in "Model", with: @phone_app.model
    fill_in "Price", with: @phone_app.price
    click_on "Create Phone app"

    assert_text "Phone app was successfully created"
    click_on "Back"
  end

  test "updating a Phone app" do
    visit phone_apps_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @phone_app.brand
    fill_in "Details", with: @phone_app.details
    fill_in "Model", with: @phone_app.model
    fill_in "Price", with: @phone_app.price
    click_on "Update Phone app"

    assert_text "Phone app was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone app" do
    visit phone_apps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone app was successfully destroyed"
  end
end
