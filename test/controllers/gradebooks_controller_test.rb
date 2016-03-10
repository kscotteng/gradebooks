require 'test_helper'

class GradebooksControllerTest < ActionController::TestCase
  setup do
    @gradebook = gradebooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gradebooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gradebook" do
    assert_difference('Gradebook.count') do
      post :create, gradebook: { assignment_name: @gradebook.assignment_name, date: @gradebook.date, grade: @gradebook.grade, student_id: @gradebook.student_id }
    end

    assert_redirected_to gradebook_path(assigns(:gradebook))
  end

  test "should show gradebook" do
    get :show, id: @gradebook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gradebook
    assert_response :success
  end

  test "should update gradebook" do
    patch :update, id: @gradebook, gradebook: { assignment_name: @gradebook.assignment_name, date: @gradebook.date, grade: @gradebook.grade, student_id: @gradebook.student_id }
    assert_redirected_to gradebook_path(assigns(:gradebook))
  end

  test "should destroy gradebook" do
    assert_difference('Gradebook.count', -1) do
      delete :destroy, id: @gradebook
    end

    assert_redirected_to gradebooks_path
  end
end
