require 'test_helper'

class FudEntriesControllerTest < ActionController::TestCase
  setup do
    @fud_entry = fud_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fud_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fud_entry" do
    assert_difference('FudEntry.count') do
      post :create, fud_entry: { anonymous: @fud_entry.anonymous, fud: @fud_entry.fud }
    end

    assert_redirected_to fud_entry_path(assigns(:fud_entry))
  end

  test "should show fud_entry" do
    get :show, id: @fud_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fud_entry
    assert_response :success
  end

  test "should update fud_entry" do
    patch :update, id: @fud_entry, fud_entry: { anonymous: @fud_entry.anonymous, fud: @fud_entry.fud }
    assert_redirected_to fud_entry_path(assigns(:fud_entry))
  end

  test "should destroy fud_entry" do
    assert_difference('FudEntry.count', -1) do
      delete :destroy, id: @fud_entry
    end

    assert_redirected_to fud_entries_path
  end
end
