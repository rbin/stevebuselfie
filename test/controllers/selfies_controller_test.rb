require 'test_helper'

class SelfiesControllerTest < ActionController::TestCase
  setup do
    @selfy = selfies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:selfies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create selfy" do
    assert_difference('Selfy.count') do
      post :create, selfy: { email: @selfy.email, pic: @selfy.pic }
    end

    assert_redirected_to selfy_path(assigns(:selfy))
  end

  test "should show selfy" do
    get :show, id: @selfy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @selfy
    assert_response :success
  end

  test "should update selfy" do
    patch :update, id: @selfy, selfy: { email: @selfy.email, pic: @selfy.pic }
    assert_redirected_to selfy_path(assigns(:selfy))
  end

  test "should destroy selfy" do
    assert_difference('Selfy.count', -1) do
      delete :destroy, id: @selfy
    end

    assert_redirected_to selfies_path
  end
end
