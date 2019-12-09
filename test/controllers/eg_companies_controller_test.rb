require 'test_helper'

class EgCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eg_company = eg_companies(:one)
  end

  test "should get index" do
    get eg_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_eg_company_url
    assert_response :success
  end

  test "should create eg_company" do
    assert_difference('EgCompany.count') do
      post eg_companies_url, params: { eg_company: { name: @eg_company.name, note: @eg_company.note } }
    end

    assert_redirected_to eg_company_url(EgCompany.last)
  end

  test "should show eg_company" do
    get eg_company_url(@eg_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_eg_company_url(@eg_company)
    assert_response :success
  end

  test "should update eg_company" do
    patch eg_company_url(@eg_company), params: { eg_company: { name: @eg_company.name, note: @eg_company.note } }
    assert_redirected_to eg_company_url(@eg_company)
  end

  test "should destroy eg_company" do
    assert_difference('EgCompany.count', -1) do
      delete eg_company_url(@eg_company)
    end

    assert_redirected_to eg_companies_url
  end
end
