require 'test_helper'

class FacebuuksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facebuuk = facebuuks(:one)
  end

  test "should get index" do
    get facebuuks_url
    assert_response :success
  end

  test "should get new" do
    get new_facebuuk_url
    assert_response :success
  end

  test "should create facebuuk" do
    assert_difference('Facebuuk.count') do
      post facebuuks_url, params: { facebuuk: { faceboak: @facebuuk.faceboak } }
    end

    assert_redirected_to facebuuk_url(Facebuuk.last)
  end

  test "should show facebuuk" do
    get facebuuk_url(@facebuuk)
    assert_response :success
  end

  test "should get edit" do
    get edit_facebuuk_url(@facebuuk)
    assert_response :success
  end

  test "should update facebuuk" do
    patch facebuuk_url(@facebuuk), params: { facebuuk: { faceboak: @facebuuk.faceboak } }
    assert_redirected_to facebuuk_url(@facebuuk)
  end

  test "should destroy facebuuk" do
    assert_difference('Facebuuk.count', -1) do
      delete facebuuk_url(@facebuuk)
    end

    assert_redirected_to facebuuks_url
  end
end
