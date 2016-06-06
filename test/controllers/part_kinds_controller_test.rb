require 'test_helper'

class PartKindsControllerTest < ActionController::TestCase
  setup do
    @part_kind = part_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_kind" do
    assert_difference('PartKind.count') do
      post :create, part_kind: { kind: @part_kind.kind }
    end

    assert_redirected_to part_kind_path(assigns(:part_kind))
  end

  test "should show part_kind" do
    get :show, id: @part_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_kind
    assert_response :success
  end

  test "should update part_kind" do
    patch :update, id: @part_kind, part_kind: { kind: @part_kind.kind }
    assert_redirected_to part_kind_path(assigns(:part_kind))
  end

  test "should destroy part_kind" do
    assert_difference('PartKind.count', -1) do
      delete :destroy, id: @part_kind
    end

    assert_redirected_to part_kinds_path
  end
end
