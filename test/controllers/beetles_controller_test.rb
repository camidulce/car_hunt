require 'test_helper'

class BeetlesControllerTest < ActionController::TestCase
  setup do
    @beetle = beetles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beetles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beetle" do
    assert_difference('Beetle.count') do
      post :create, beetle: { color: @beetle.color, engine: @beetle.engine, interior: @beetle.interior, nickname: @beetle.nickname, picture: @beetle.picture, type: @beetle.type, year: @beetle.year, zip: @beetle.zip }
    end

    assert_redirected_to beetle_path(assigns(:beetle))
  end

  test "should show beetle" do
    get :show, id: @beetle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beetle
    assert_response :success
  end

  test "should update beetle" do
    patch :update, id: @beetle, beetle: { color: @beetle.color, engine: @beetle.engine, interior: @beetle.interior, nickname: @beetle.nickname, picture: @beetle.picture, type: @beetle.type, year: @beetle.year, zip: @beetle.zip }
    assert_redirected_to beetle_path(assigns(:beetle))
  end

  test "should destroy beetle" do
    assert_difference('Beetle.count', -1) do
      delete :destroy, id: @beetle
    end

    assert_redirected_to beetles_path
  end
end
