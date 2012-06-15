require 'test_helper'

class FinalDummiesControllerTest < ActionController::TestCase
  setup do
    @final_dummy = final_dummies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:final_dummies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create final_dummy" do
    assert_difference('FinalDummy.count') do
      post :create, final_dummy: { text: @final_dummy.text }
    end

    assert_redirected_to final_dummy_path(assigns(:final_dummy))
  end

  test "should show final_dummy" do
    get :show, id: @final_dummy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @final_dummy
    assert_response :success
  end

  test "should update final_dummy" do
    put :update, id: @final_dummy, final_dummy: { text: @final_dummy.text }
    assert_redirected_to final_dummy_path(assigns(:final_dummy))
  end

  test "should destroy final_dummy" do
    assert_difference('FinalDummy.count', -1) do
      delete :destroy, id: @final_dummy
    end

    assert_redirected_to final_dummies_path
  end
end
