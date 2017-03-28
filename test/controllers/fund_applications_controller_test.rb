require 'test_helper'

class FundApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fund_application = fund_applications(:one)
  end

  test "should get index" do
    get fund_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_fund_application_url
    assert_response :success
  end

  test "should create fund_application" do
    assert_difference('FundApplication.count') do
      post fund_applications_url, params: { fund_application: { initialInvestment: @fund_application.initialInvestment, interestRate: @fund_application.interestRate, isStatic: @fund_application.isStatic, monthlyInvestment: @fund_application.monthlyInvestment, projectedTime: @fund_application.projectedTime } }
    end

    assert_redirected_to fund_application_url(FundApplication.last)
  end

  test "should show fund_application" do
    get fund_application_url(@fund_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_fund_application_url(@fund_application)
    assert_response :success
  end

  test "should update fund_application" do
    patch fund_application_url(@fund_application), params: { fund_application: { initialInvestment: @fund_application.initialInvestment, interestRate: @fund_application.interestRate, isStatic: @fund_application.isStatic, monthlyInvestment: @fund_application.monthlyInvestment, projectedTime: @fund_application.projectedTime } }
    assert_redirected_to fund_application_url(@fund_application)
  end

  test "should destroy fund_application" do
    assert_difference('FundApplication.count', -1) do
      delete fund_application_url(@fund_application)
    end

    assert_redirected_to fund_applications_url
  end
end
