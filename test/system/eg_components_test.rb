require "application_system_test_case"

class EgComponentsTest < ApplicationSystemTestCase
  setup do
    @eg_component = eg_components(:one)
  end

  test "visiting the index" do
    visit eg_components_url
    assert_selector "h1", text: "Eg Components"
  end

  test "creating a Eg component" do
    visit eg_components_url
    click_on "New Eg Component"

    fill_in "Company", with: @eg_component.company_id
    fill_in "Country of origin", with: @eg_component.country_of_origin
    fill_in "Currency", with: @eg_component.currency
    fill_in "Currency exchange", with: @eg_component.currency_exchange
    fill_in "Currency rounding", with: @eg_component.currency_rounding
    fill_in "Custom tariff number", with: @eg_component.custom_tariff_number
    fill_in "Description", with: @eg_component.description
    fill_in "Discount rounding", with: @eg_component.discount_rounding
    fill_in "Name", with: @eg_component.name
    fill_in "Net weight", with: @eg_component.net_weight
    fill_in "Service life", with: @eg_component.service_life
    fill_in "Shelf life", with: @eg_component.shelf_life
    fill_in "Supplier discount", with: @eg_component.supplier_discount
    fill_in "Supplier price list", with: @eg_component.supplier_price_list
    fill_in "Supplier price list expiration date", with: @eg_component.supplier_price_list_expiration_date
    click_on "Create Eg component"

    assert_text "Eg component was successfully created"
    click_on "Back"
  end

  test "updating a Eg component" do
    visit eg_components_url
    click_on "Edit", match: :first

    fill_in "Company", with: @eg_component.company_id
    fill_in "Country of origin", with: @eg_component.country_of_origin
    fill_in "Currency", with: @eg_component.currency
    fill_in "Currency exchange", with: @eg_component.currency_exchange
    fill_in "Currency rounding", with: @eg_component.currency_rounding
    fill_in "Custom tariff number", with: @eg_component.custom_tariff_number
    fill_in "Description", with: @eg_component.description
    fill_in "Discount rounding", with: @eg_component.discount_rounding
    fill_in "Name", with: @eg_component.name
    fill_in "Net weight", with: @eg_component.net_weight
    fill_in "Service life", with: @eg_component.service_life
    fill_in "Shelf life", with: @eg_component.shelf_life
    fill_in "Supplier discount", with: @eg_component.supplier_discount
    fill_in "Supplier price list", with: @eg_component.supplier_price_list
    fill_in "Supplier price list expiration date", with: @eg_component.supplier_price_list_expiration_date
    click_on "Update Eg component"

    assert_text "Eg component was successfully updated"
    click_on "Back"
  end

  test "destroying a Eg component" do
    visit eg_components_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eg component was successfully destroyed"
  end
end
