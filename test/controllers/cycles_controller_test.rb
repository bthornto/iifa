require 'test_helper'

class CyclesControllerTest < ActionController::TestCase
  setup do
    @cycle = cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cycle" do
    assert_difference('Cycle.count') do
      post :create, cycle: { cavity_number: @cycle.cavity_number, date: @cycle.date, defect_type_id: @cycle.defect_type_id, flavor_id: @cycle.flavor_id, job_number: @cycle.job_number, location_id: @cycle.location_id, quantity: @cycle.quantity, shift: @cycle.shift, size_id: @cycle.size_id, user_id: @cycle.user_id }
    end

    assert_redirected_to cycle_path(assigns(:cycle))
  end

  test "should show cycle" do
    get :show, id: @cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cycle
    assert_response :success
  end

  test "should update cycle" do
    patch :update, id: @cycle, cycle: { cavity_number: @cycle.cavity_number, date: @cycle.date, defect_type_id: @cycle.defect_type_id, flavor_id: @cycle.flavor_id, job_number: @cycle.job_number, location_id: @cycle.location_id, quantity: @cycle.quantity, shift: @cycle.shift, size_id: @cycle.size_id, user_id: @cycle.user_id }
    assert_redirected_to cycle_path(assigns(:cycle))
  end

  test "should destroy cycle" do
    assert_difference('Cycle.count', -1) do
      delete :destroy, id: @cycle
    end

    assert_redirected_to cycles_path
  end
end
