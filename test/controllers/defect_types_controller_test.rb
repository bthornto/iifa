require 'test_helper'

class DefectTypesControllerTest < ActionController::TestCase
  setup do
    @defect_type = defect_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:defect_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create defect_type" do
    assert_difference('DefectType.count') do
      post :create, defect_type: { sbuxid: @defect_type.sbuxid, type: @defect_type.type }
    end

    assert_redirected_to defect_type_path(assigns(:defect_type))
  end

  test "should show defect_type" do
    get :show, id: @defect_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @defect_type
    assert_response :success
  end

  test "should update defect_type" do
    patch :update, id: @defect_type, defect_type: { sbuxid: @defect_type.sbuxid, type: @defect_type.type }
    assert_redirected_to defect_type_path(assigns(:defect_type))
  end

  test "should destroy defect_type" do
    assert_difference('DefectType.count', -1) do
      delete :destroy, id: @defect_type
    end

    assert_redirected_to defect_types_path
  end
end
