require 'test_helper'

class RegistrersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registrer = registrers(:one)
  end

  test "should get index" do
    get registrers_url
    assert_response :success
  end

  test "should get new" do
    get new_registrer_url
    assert_response :success
  end

  test "should create registrer" do
    assert_difference('Registrer.count') do
      post registrers_url, params: { registrer: { course: @registrer.course, date_of_registration: @registrer.date_of_registration, module: @registrer.module, name: @registrer.name, registration: @registrer.registration } }
    end

    assert_redirected_to registrer_url(Registrer.last)
  end

  test "should show registrer" do
    get registrer_url(@registrer)
    assert_response :success
  end

  test "should get edit" do
    get edit_registrer_url(@registrer)
    assert_response :success
  end

  test "should update registrer" do
    patch registrer_url(@registrer), params: { registrer: { course: @registrer.course, date_of_registration: @registrer.date_of_registration, module: @registrer.module, name: @registrer.name, registration: @registrer.registration } }
    assert_redirected_to registrer_url(@registrer)
  end

  test "should destroy registrer" do
    assert_difference('Registrer.count', -1) do
      delete registrer_url(@registrer)
    end

    assert_redirected_to registrers_url
  end
end
