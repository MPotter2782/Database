require 'test_helper'

class PartNamesControllerTest < ActionController::TestCase
  setup do
    @part_name = part_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_name" do
    assert_difference('PartName.count') do
      post :create, part_name: { name: @part_name.name, part-type_id: @part_name.part-type_id }
    end

    assert_redirected_to part_name_path(assigns(:part_name))
  end

  test "should show part_name" do
    get :show, id: @part_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_name
    assert_response :success
  end

  test "should update part_name" do
    patch :update, id: @part_name, part_name: { name: @part_name.name, part-type_id: @part_name.part-type_id }
    assert_redirected_to part_name_path(assigns(:part_name))
  end

  test "should destroy part_name" do
    assert_difference('PartName.count', -1) do
      delete :destroy, id: @part_name
    end

    assert_redirected_to part_names_path
  end
end
