require 'test_helper'

class TecnicasControllerTest < ActionController::TestCase
  setup do
    @tecnica = tecnicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tecnicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tecnica" do
    assert_difference('Tecnica.count') do
      post :create, tecnica: { nombre: @tecnica.nombre }
    end

    assert_redirected_to tecnica_path(assigns(:tecnica))
  end

  test "should show tecnica" do
    get :show, id: @tecnica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tecnica
    assert_response :success
  end

  test "should update tecnica" do
    patch :update, id: @tecnica, tecnica: { nombre: @tecnica.nombre }
    assert_redirected_to tecnica_path(assigns(:tecnica))
  end

  test "should destroy tecnica" do
    assert_difference('Tecnica.count', -1) do
      delete :destroy, id: @tecnica
    end

    assert_redirected_to tecnicas_path
  end
end
