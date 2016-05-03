require 'test_helper'

class NameratorsControllerTest < ActionController::TestCase
  setup do
    @namerator = namerators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:namerators)
  end

  test "should create namerator" do
    assert_difference('Namerator.count') do
      post :create, namerator: {  }
    end

    assert_response 201
  end

  test "should show namerator" do
    get :show, id: @namerator
    assert_response :success
  end

  test "should update namerator" do
    put :update, id: @namerator, namerator: {  }
    assert_response 204
  end

  test "should destroy namerator" do
    assert_difference('Namerator.count', -1) do
      delete :destroy, id: @namerator
    end

    assert_response 204
  end
end
