require 'test_helper'

class ComplaintsControllerTest < ActionController::TestCase
  setup do
    @complaint = complaints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complaints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complaint" do
    assert_difference('Complaint.count') do
      post :create, complaint: { brand: @complaint.brand, brand_code: @complaint.brand_code, city: @complaint.city, coding_level2: @complaint.coding_level2, date: @complaint.date, duplicate: @complaint.duplicate, notes: @complaint.notes, ownership_type: @complaint.ownership_type, product: @complaint.product, reason: @complaint.reason, state: @complaint.state, store_name: @complaint.store_name, store_number: @complaint.store_number, synopsis: @complaint.synopsis }
    end

    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should show complaint" do
    get :show, id: @complaint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complaint
    assert_response :success
  end

  test "should update complaint" do
    patch :update, id: @complaint, complaint: { brand: @complaint.brand, brand_code: @complaint.brand_code, city: @complaint.city, coding_level2: @complaint.coding_level2, date: @complaint.date, duplicate: @complaint.duplicate, notes: @complaint.notes, ownership_type: @complaint.ownership_type, product: @complaint.product, reason: @complaint.reason, state: @complaint.state, store_name: @complaint.store_name, store_number: @complaint.store_number, synopsis: @complaint.synopsis }
    assert_redirected_to complaint_path(assigns(:complaint))
  end

  test "should destroy complaint" do
    assert_difference('Complaint.count', -1) do
      delete :destroy, id: @complaint
    end

    assert_redirected_to complaints_path
  end
end
