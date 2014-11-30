require 'test_helper'

class WhatOptionalToDosControllerTest < ActionController::TestCase
  setup do
    @what_optional_to_do = what_optional_to_dos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:what_optional_to_dos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create what_optional_to_do" do
    assert_difference('WhatOptionalToDo.count') do
      post :create, what_optional_to_do: { description: @what_optional_to_do.description, funtionalities: @what_optional_to_do.funtionalities, title: @what_optional_to_do.title }
    end

    assert_redirected_to what_optional_to_do_path(assigns(:what_optional_to_do))
  end

  test "should show what_optional_to_do" do
    get :show, id: @what_optional_to_do
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @what_optional_to_do
    assert_response :success
  end

  test "should update what_optional_to_do" do
    patch :update, id: @what_optional_to_do, what_optional_to_do: { description: @what_optional_to_do.description, funtionalities: @what_optional_to_do.funtionalities, title: @what_optional_to_do.title }
    assert_redirected_to what_optional_to_do_path(assigns(:what_optional_to_do))
  end

  test "should destroy what_optional_to_do" do
    assert_difference('WhatOptionalToDo.count', -1) do
      delete :destroy, id: @what_optional_to_do
    end

    assert_redirected_to what_optional_to_dos_path
  end
end
