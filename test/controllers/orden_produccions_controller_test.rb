require 'test_helper'

class OrdenProduccionsControllerTest < ActionController::TestCase
  setup do
    @orden_produccion = orden_produccions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orden_produccions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_produccion" do
    assert_difference('OrdenProduccion.count') do
      post :create, orden_produccion: { articulo_id: @orden_produccion.articulo_id, cantidad: @orden_produccion.cantidad, empresa_id: @orden_produccion.empresa_id, estado: @orden_produccion.estado, fecha: @orden_produccion.fecha, fecha_entrega: @orden_produccion.fecha_entrega, no: @orden_produccion.no, priridad: @orden_produccion.priridad, tipo: @orden_produccion.tipo, unidades_pleneadas: @orden_produccion.unidades_pleneadas, unidades_real: @orden_produccion.unidades_real }
    end

    assert_redirected_to orden_produccion_path(assigns(:orden_produccion))
  end

  test "should show orden_produccion" do
    get :show, id: @orden_produccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_produccion
    assert_response :success
  end

  test "should update orden_produccion" do
    patch :update, id: @orden_produccion, orden_produccion: { articulo_id: @orden_produccion.articulo_id, cantidad: @orden_produccion.cantidad, empresa_id: @orden_produccion.empresa_id, estado: @orden_produccion.estado, fecha: @orden_produccion.fecha, fecha_entrega: @orden_produccion.fecha_entrega, no: @orden_produccion.no, priridad: @orden_produccion.priridad, tipo: @orden_produccion.tipo, unidades_pleneadas: @orden_produccion.unidades_pleneadas, unidades_real: @orden_produccion.unidades_real }
    assert_redirected_to orden_produccion_path(assigns(:orden_produccion))
  end

  test "should destroy orden_produccion" do
    assert_difference('OrdenProduccion.count', -1) do
      delete :destroy, id: @orden_produccion
    end

    assert_redirected_to orden_produccions_path
  end
end
