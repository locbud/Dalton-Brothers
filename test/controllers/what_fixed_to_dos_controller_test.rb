require 'test_helper'

class WhatFixedToDosControllerTest < ActionController::TestCase
  setup do
    @what_fixed_to_do = what_fixed_to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:what_fixed_to_dos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create what_fixed_to_do" do
    assert_difference('WhatFixedToDo.count') do
      post :create, what_fixed_to_do: { choice_count: @what_fixed_to_do.choice_count, description: @what_fixed_to_do.description, scheduled_time: @what_fixed_to_do.scheduled_time, title: @what_fixed_to_do.title }
    end

    assert_redirected_to what_fixed_to_do_path(assigns(:what_fixed_to_do))
  end

  test "should show what_fixed_to_do" do
    get :show, id: @what_fixed_to_do
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @what_fixed_to_do
    assert_response :success
  end

  test "should update what_fixed_to_do" do
    patch :update, id: @what_fixed_to_do, what_fixed_to_do: { choice_count: @what_fixed_to_do.choice_count, description: @what_fixed_to_do.description, scheduled_time: @what_fixed_to_do.scheduled_time, title: @what_fixed_to_do.title }
    assert_redirected_to what_fixed_to_do_path(assigns(:what_fixed_to_do))
  end

  test "should destroy what_fixed_to_do" do
    assert_difference('WhatFixedToDo.count', -1) do
      delete :destroy, id: @what_fixed_to_do
    end

    assert_redirected_to what_fixed_to_dos_path
  end
end
