require 'test_helper'

class WhatLoveToDosControllerTest < ActionController::TestCase
  setup do
    @what_love_to_do = what_love_to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:what_love_to_dos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create what_love_to_do" do
    assert_difference('WhatLoveToDo.count') do
      post :create, what_love_to_do: { deadline: @what_love_to_do.deadline, description: @what_love_to_do.description, number_of_items: @what_love_to_do.number_of_items, title: @what_love_to_do.title, user_estimated_time: @what_love_to_do.user_estimated_time }
    end

    assert_redirected_to what_love_to_do_path(assigns(:what_love_to_do))
  end

  test "should show what_love_to_do" do
    get :show, id: @what_love_to_do
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @what_love_to_do
    assert_response :success
  end

  test "should update what_love_to_do" do
    patch :update, id: @what_love_to_do, what_love_to_do: { deadline: @what_love_to_do.deadline, description: @what_love_to_do.description, number_of_items: @what_love_to_do.number_of_items, title: @what_love_to_do.title, user_estimated_time: @what_love_to_do.user_estimated_time }
    assert_redirected_to what_love_to_do_path(assigns(:what_love_to_do))
  end

  test "should destroy what_love_to_do" do
    assert_difference('WhatLoveToDo.count', -1) do
      delete :destroy, id: @what_love_to_do
    end

    assert_redirected_to what_love_to_dos_path
  end
end
