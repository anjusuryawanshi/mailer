require 'test_helper'

class SmailsControllerTest < ActionController::TestCase
  setup do
    @smail = smails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smails)
  end

  test "should create smail" do
    assert_difference('Smail.count') do
      post :create, smail: @smail.attributes
    end

    assert_redirected_to smail_path(assigns(:smail))
  end

  test "should show smail" do
    get :show, id: @smail.to_param
    assert_response :success
  end
end
