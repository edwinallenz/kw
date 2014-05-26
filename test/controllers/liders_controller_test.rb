require 'test_helper'

class LidersControllerTest < ActionController::TestCase
  setup do
    @lider = liders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lider" do
    assert_difference('Lider.count') do
      post :create, lider: { direccion: @lider.direccion, empresa_id: @lider.empresa_id, nombre: @lider.nombre, telefono: @lider.telefono }
    end

    assert_redirected_to lider_path(assigns(:lider))
  end

  test "should show lider" do
    get :show, id: @lider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lider
    assert_response :success
  end

  test "should update lider" do
    patch :update, id: @lider, lider: { direccion: @lider.direccion, empresa_id: @lider.empresa_id, nombre: @lider.nombre, telefono: @lider.telefono }
    assert_redirected_to lider_path(assigns(:lider))
  end

  test "should destroy lider" do
    assert_difference('Lider.count', -1) do
      delete :destroy, id: @lider
    end

    assert_redirected_to liders_path
  end
end
