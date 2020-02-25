require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { address: @person.address, address2: @person.address2, city: @person.city, email: @person.email, full_payment: @person.full_payment, name: @person.name, phone: @person.phone, state: @person.state, subtotal: @person.subtotal, tax: @person.tax, total: @person.total, user_id: @person.user_id, zip: @person.zip } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { address: @person.address, address2: @person.address2, city: @person.city, email: @person.email, full_payment: @person.full_payment, name: @person.name, phone: @person.phone, state: @person.state, subtotal: @person.subtotal, tax: @person.tax, total: @person.total, user_id: @person.user_id, zip: @person.zip } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
