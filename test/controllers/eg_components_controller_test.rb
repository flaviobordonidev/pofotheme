require 'test_helper'

class EgComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eg_component = eg_components(:one)
  end

  test "should get index" do
    get eg_components_url
    assert_response :success
  end

  test "should get new" do
    get new_eg_component_url
    assert_response :success
  end

  test "should create eg_component" do
    assert_difference('EgComponent.count') do
      post eg_components_url, params: { eg_component: { company_id: @eg_component.company_id, country_of_origin: @eg_component.country_of_origin, currency: @eg_component.currency, currency_exchange: @eg_component.currency_exchange, currency_rounding: @eg_component.currency_rounding, custom_tariff_number: @eg_component.custom_tariff_number, description: @eg_component.description, discount_rounding: @eg_component.discount_rounding, name: @eg_component.name, net_weight: @eg_component.net_weight, service_life: @eg_component.service_life, shelf_life: @eg_component.shelf_life, supplier_discount: @eg_component.supplier_discount, supplier_price_list: @eg_component.supplier_price_list, supplier_price_list_expiration_date: @eg_component.supplier_price_list_expiration_date } }
    end

    assert_redirected_to eg_component_url(EgComponent.last)
  end

  test "should show eg_component" do
    get eg_component_url(@eg_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_eg_component_url(@eg_component)
    assert_response :success
  end

  test "should update eg_component" do
    patch eg_component_url(@eg_component), params: { eg_component: { company_id: @eg_component.company_id, country_of_origin: @eg_component.country_of_origin, currency: @eg_component.currency, currency_exchange: @eg_component.currency_exchange, currency_rounding: @eg_component.currency_rounding, custom_tariff_number: @eg_component.custom_tariff_number, description: @eg_component.description, discount_rounding: @eg_component.discount_rounding, name: @eg_component.name, net_weight: @eg_component.net_weight, service_life: @eg_component.service_life, shelf_life: @eg_component.shelf_life, supplier_discount: @eg_component.supplier_discount, supplier_price_list: @eg_component.supplier_price_list, supplier_price_list_expiration_date: @eg_component.supplier_price_list_expiration_date } }
    assert_redirected_to eg_component_url(@eg_component)
  end

  test "should destroy eg_component" do
    assert_difference('EgComponent.count', -1) do
      delete eg_component_url(@eg_component)
    end

    assert_redirected_to eg_components_url
  end
end
