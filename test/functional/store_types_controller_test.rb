require 'test_helper'

class StoreTypesControllerTest < ActionController::TestCase
  setup do
    @store_type = store_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_type" do
    assert_difference('StoreType.count') do
      post :create, store_type: { code: @store_type.code, name: @store_type.name }
    end

    assert_redirected_to store_type_path(assigns(:store_type))
  end

  test "should show store_type" do
    get :show, id: @store_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_type
    assert_response :success
  end

  test "should update store_type" do
    put :update, id: @store_type, store_type: { code: @store_type.code, name: @store_type.name }
    assert_redirected_to store_type_path(assigns(:store_type))
  end

  test "should destroy store_type" do
    assert_difference('StoreType.count', -1) do
      delete :destroy, id: @store_type
    end

    assert_redirected_to store_types_path
  end
end
