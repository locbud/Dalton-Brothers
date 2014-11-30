require 'test_helper'

class WhatShouldAvoidsControllerTest < ActionController::TestCase
  setup do
    @what_should_avoid = what_should_avoids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:what_should_avoids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create what_should_avoid" do
    assert_difference('WhatShouldAvoid.count') do
      post :create, what_should_avoid: { content: @what_should_avoid.content }
    end

    assert_redirected_to what_should_avoid_path(assigns(:what_should_avoid))
  end

  test "should show what_should_avoid" do
    get :show, id: @what_should_avoid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @what_should_avoid
    assert_response :success
  end

  test "should update what_should_avoid" do
    patch :update, id: @what_should_avoid, what_should_avoid: { content: @what_should_avoid.content }
    assert_redirected_to what_should_avoid_path(assigns(:what_should_avoid))
  end

  test "should destroy what_should_avoid" do
    assert_difference('WhatShouldAvoid.count', -1) do
      delete :destroy, id: @what_should_avoid
    end

    assert_redirected_to what_should_avoids_path
  end
end
