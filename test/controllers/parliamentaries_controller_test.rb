require 'test_helper'

class ParliamentariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parliamentary = parliamentaries(:one)
  end

  test "should get index" do
    get parliamentaries_url
    assert_response :success
  end

  test "should get new" do
    get new_parliamentary_url
    assert_response :success
  end

  test "should create parliamentary" do
    assert_difference('Parliamentary.count') do
      post parliamentaries_url, params: { parliamentary: { birthdate: @parliamentary.birthdate, district_id: @parliamentary.district_id, name: @parliamentary.name, political_party: @parliamentary.political_party } }
    end

    assert_redirected_to parliamentary_url(Parliamentary.last)
  end

  test "should show parliamentary" do
    get parliamentary_url(@parliamentary)
    assert_response :success
  end

  test "should get edit" do
    get edit_parliamentary_url(@parliamentary)
    assert_response :success
  end

  test "should update parliamentary" do
    patch parliamentary_url(@parliamentary), params: { parliamentary: { birthdate: @parliamentary.birthdate, district_id: @parliamentary.district_id, name: @parliamentary.name, political_party: @parliamentary.political_party } }
    assert_redirected_to parliamentary_url(@parliamentary)
  end

  test "should destroy parliamentary" do
    assert_difference('Parliamentary.count', -1) do
      delete parliamentary_url(@parliamentary)
    end

    assert_redirected_to parliamentaries_url
  end
end
