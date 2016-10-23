require 'test_helper'

class MonthlyPowerConsumptionsControllerTest < ActionController::TestCase
  setup do
    @monthly_power_consumption = monthly_power_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monthly_power_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monthly_power_consumption" do
    assert_difference('MonthlyPowerConsumption.count') do
      post :create, monthly_power_consumption: { consumer_id: @monthly_power_consumption.consumer_id, kwhpm: @monthly_power_consumption.kwhpm, month_int: @monthly_power_consumption.month_int, year: @monthly_power_consumption.year }
    end

    assert_redirected_to monthly_power_consumption_path(assigns(:monthly_power_consumption))
  end

  test "should show monthly_power_consumption" do
    get :show, id: @monthly_power_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monthly_power_consumption
    assert_response :success
  end

  test "should update monthly_power_consumption" do
    patch :update, id: @monthly_power_consumption, monthly_power_consumption: { consumer_id: @monthly_power_consumption.consumer_id, kwhpm: @monthly_power_consumption.kwhpm, month_int: @monthly_power_consumption.month_int, year: @monthly_power_consumption.year }
    assert_redirected_to monthly_power_consumption_path(assigns(:monthly_power_consumption))
  end

  test "should destroy monthly_power_consumption" do
    assert_difference('MonthlyPowerConsumption.count', -1) do
      delete :destroy, id: @monthly_power_consumption
    end

    assert_redirected_to monthly_power_consumptions_path
  end
end
