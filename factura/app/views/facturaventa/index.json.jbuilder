json.array!(@facturaventa) do |facturaventum|
  json.extract! facturaventum, :id, :nombre_cliente, :nombre_producto, :nit, :cedula, :subtotal, :total, :direccion, :iva, :fecha, :telefono
  json.url facturaventum_url(facturaventum, format: :json)
end
