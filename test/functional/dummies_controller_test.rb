require 'test_helper'

class DummiesControllerTest < ActionController::TestCase
  setup do
    @dummy = dummies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dummies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dummy" do
    assert_difference('Dummy.count') do
      post :create, dummy: { name: @dummy.name, title: @dummy.title }
    end

    assert_redirected_to dummy_path(assigns(:dummy))
  end

  test "should show dummy" do
    get :show, id: @dummy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dummy
    assert_response :success
  end

  test "should update dummy" do
    put :update, id: @dummy, dummy: { name: @dummy.name, title: @dummy.title }
    assert_redirected_to dummy_path(assigns(:dummy))
  end

  test "should destroy dummy" do
    assert_difference('Dummy.count', -1) do
      delete :destroy, id: @dummy
    end

    assert_redirected_to dummies_path
  end
end
