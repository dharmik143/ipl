require 'test_helper'

class IplsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ipl = ipls(:one)
  end

  test "should get index" do
    get ipls_url
    assert_response :success
  end

  test "should get new" do
    get new_ipl_url
    assert_response :success
  end

  test "should create ipl" do
    assert_difference('Ipl.count') do
      post ipls_url, params: { ipl: { p_name: @ipl.p_name, price: @ipl.price, ptype: @ipl.ptype } }
    end

    assert_redirected_to ipl_url(Ipl.last)
  end

  test "should show ipl" do
    get ipl_url(@ipl)
    assert_response :success
  end

  test "should get edit" do
    get edit_ipl_url(@ipl)
    assert_response :success
  end

  test "should update ipl" do
    patch ipl_url(@ipl), params: { ipl: { p_name: @ipl.p_name, price: @ipl.price, ptype: @ipl.ptype } }
    assert_redirected_to ipl_url(@ipl)
  end

  test "should destroy ipl" do
    assert_difference('Ipl.count', -1) do
      delete ipl_url(@ipl)
    end

    assert_redirected_to ipls_url
  end
end
