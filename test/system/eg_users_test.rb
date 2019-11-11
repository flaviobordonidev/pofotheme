require "application_system_test_case"

class EgUsersTest < ApplicationSystemTestCase
  setup do
    @eg_user = eg_users(:one)
  end

  test "visiting the index" do
    visit eg_users_url
    assert_selector "h1", text: "Eg Users"
  end

  test "creating a Eg user" do
    visit eg_users_url
    click_on "New Eg User"

    fill_in "Email", with: @eg_user.email
    fill_in "Encrypted password", with: @eg_user.encrypted_password
    fill_in "Name", with: @eg_user.name
    click_on "Create Eg user"

    assert_text "Eg user was successfully created"
    click_on "Back"
  end

  test "updating a Eg user" do
    visit eg_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @eg_user.email
    fill_in "Encrypted password", with: @eg_user.encrypted_password
    fill_in "Name", with: @eg_user.name
    click_on "Update Eg user"

    assert_text "Eg user was successfully updated"
    click_on "Back"
  end

  test "destroying a Eg user" do
    visit eg_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eg user was successfully destroyed"
  end
end
