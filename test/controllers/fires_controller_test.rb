require 'test_helper'

class FiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fire = fires(:one)
  end

  test "should get index" do
    get fires_url, as: :json
    assert_response :success
  end

  test "should create fire" do
    assert_difference('Fire.count') do
      post fires_url, params: { fire: { building_name: @fire.building_name, date: @fire.date, latitude: @fire.latitude, longitude: @fire.longitude, street_address: @fire.street_address } }, as: :json
    end

    assert_response 201
  end

  test "should show fire" do
    get fire_url(@fire), as: :json
    assert_response :success
  end

  test "should update fire" do
    patch fire_url(@fire), params: { fire: { building_name: @fire.building_name, date: @fire.date, latitude: @fire.latitude, longitude: @fire.longitude, street_address: @fire.street_address } }, as: :json
    assert_response 200
  end

  test "should destroy fire" do
    assert_difference('Fire.count', -1) do
      delete fire_url(@fire), as: :json
    end

    assert_response 204
  end
end
