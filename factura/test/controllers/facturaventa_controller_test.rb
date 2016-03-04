require 'test_helper'

class FacturaventaControllerTest < ActionController::TestCase
  setup do
    @facturaventum = facturaventa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturaventa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facturaventum" do
    assert_difference('Facturaventum.count') do
      post :create, facturaventum: { cedula: @facturaventum.cedula, direccion: @facturaventum.direccion, fecha: @facturaventum.fecha, iva: @facturaventum.iva, nit: @facturaventum.nit, nombre_cliente: @facturaventum.nombre_cliente, nombre_producto: @facturaventum.nombre_producto, subtotal: @facturaventum.subtotal, telefono: @facturaventum.telefono, total: @facturaventum.total }
    end

    assert_redirected_to facturaventum_path(assigns(:facturaventum))
  end

  test "should show facturaventum" do
    get :show, id: @facturaventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facturaventum
    assert_response :success
  end

  test "should update facturaventum" do
    patch :update, id: @facturaventum, facturaventum: { cedula: @facturaventum.cedula, direccion: @facturaventum.direccion, fecha: @facturaventum.fecha, iva: @facturaventum.iva, nit: @facturaventum.nit, nombre_cliente: @facturaventum.nombre_cliente, nombre_producto: @facturaventum.nombre_producto, subtotal: @facturaventum.subtotal, telefono: @facturaventum.telefono, total: @facturaventum.total }
    assert_redirected_to facturaventum_path(assigns(:facturaventum))
  end

  test "should destroy facturaventum" do
    assert_difference('Facturaventum.count', -1) do
      delete :destroy, id: @facturaventum
    end

    assert_redirected_to facturaventa_path
  end
end
