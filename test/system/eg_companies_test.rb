require "application_system_test_case"

class EgCompaniesTest < ApplicationSystemTestCase
  setup do
    @eg_company = eg_companies(:one)
  end

  test "visiting the index" do
    visit eg_companies_url
    assert_selector "h1", text: "Eg Companies"
  end

  test "creating a Eg company" do
    visit eg_companies_url
    click_on "New Eg Company"

    fill_in "Name", with: @eg_company.name
    fill_in "Note", with: @eg_company.note
    click_on "Create Eg company"

    assert_text "Eg company was successfully created"
    click_on "Back"
  end

  test "updating a Eg company" do
    visit eg_companies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @eg_company.name
    fill_in "Note", with: @eg_company.note
    click_on "Update Eg company"

    assert_text "Eg company was successfully updated"
    click_on "Back"
  end

  test "destroying a Eg company" do
    visit eg_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eg company was successfully destroyed"
  end
end
