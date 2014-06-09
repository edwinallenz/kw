require 'test_helper'

class ControlCalidadsControllerTest < ActionController::TestCase
  setup do
    @control_calidad = control_calidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:control_calidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create control_calidad" do
    assert_difference('ControlCalidad.count') do
      post :create, control_calidad: { articulo_id: @control_calidad.articulo_id, articulos_buenos: @control_calidad.articulos_buenos, articulos_defetuosos: @control_calidad.articulos_defetuosos, fecha: @control_calidad.fecha, iteracion: @control_calidad.iteracion, no_articulos: @control_calidad.no_articulos, orden_produccion_id: @control_calidad.orden_produccion_id, participante_id: @control_calidad.participante_id, status: @control_calidad.status, tecnico_id: @control_calidad.tecnico_id }
    end

    assert_redirected_to control_calidad_path(assigns(:control_calidad))
  end

  test "should show control_calidad" do
    get :show, id: @control_calidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @control_calidad
    assert_response :success
  end

  test "should update control_calidad" do
    patch :update, id: @control_calidad, control_calidad: { articulo_id: @control_calidad.articulo_id, articulos_buenos: @control_calidad.articulos_buenos, articulos_defetuosos: @control_calidad.articulos_defetuosos, fecha: @control_calidad.fecha, iteracion: @control_calidad.iteracion, no_articulos: @control_calidad.no_articulos, orden_produccion_id: @control_calidad.orden_produccion_id, participante_id: @control_calidad.participante_id, status: @control_calidad.status, tecnico_id: @control_calidad.tecnico_id }
    assert_redirected_to control_calidad_path(assigns(:control_calidad))
  end

  test "should destroy control_calidad" do
    assert_difference('ControlCalidad.count', -1) do
      delete :destroy, id: @control_calidad
    end

    assert_redirected_to control_calidads_path
  end
end
