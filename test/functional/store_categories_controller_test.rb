require 'test_helper'

class StoreCategoriesControllerTest < ActionController::TestCase
  setup do
    @store_category = store_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_category" do
    assert_difference('StoreCategory.count') do
      post :create, store_category: { code: @store_category.code, name: @store_category.name }
    end

    assert_redirected_to store_category_path(assigns(:store_category))
  end

  test "should show store_category" do
    get :show, id: @store_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_category
    assert_response :success
  end

  test "should update store_category" do
    put :update, id: @store_category, store_category: { code: @store_category.code, name: @store_category.name }
    assert_redirected_to store_category_path(assigns(:store_category))
  end

  test "should destroy store_category" do
    assert_difference('StoreCategory.count', -1) do
      delete :destroy, id: @store_category
    end

    assert_redirected_to store_categories_path
  end
end
