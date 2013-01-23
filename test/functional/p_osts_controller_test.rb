require 'test_helper'

class POstsControllerTest < ActionController::TestCase
  setup do
    @p_ost = p_osts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_osts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_ost" do
    assert_difference('POst.count') do
      post :create, p_ost: { content: @p_ost.content, name: @p_ost.name, title: @p_ost.title }
    end

    assert_redirected_to p_ost_path(assigns(:p_ost))
  end

  test "should show p_ost" do
    get :show, id: @p_ost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_ost
    assert_response :success
  end

  test "should update p_ost" do
    put :update, id: @p_ost, p_ost: { content: @p_ost.content, name: @p_ost.name, title: @p_ost.title }
    assert_redirected_to p_ost_path(assigns(:p_ost))
  end

  test "should destroy p_ost" do
    assert_difference('POst.count', -1) do
      delete :destroy, id: @p_ost
    end

    assert_redirected_to p_osts_path
  end
end
