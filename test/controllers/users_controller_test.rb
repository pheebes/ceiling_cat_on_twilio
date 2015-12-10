require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:user_one)
  end

  test "should get index" do
    get :index, store_id: @user.store_id
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new, store_id: @user.store_id
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { first_name: @user.first_name, last_name: @user.last_name, phone_number: @user.phone_number, store_id: @user.store_id }
    end

    assert_redirected_to store_user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user, store_id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { first_name: @user.first_name, last_name: @user.last_name, phone_number: @user.phone_number, store_id: @user.store_id }
    assert_redirected_to store_user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to store_users_path
  end
end
