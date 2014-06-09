json.array!(@orden_produccions) do |orden_produccion|
  json.extract! orden_produccion, :id, :fecha, :fecha_entrega, :no, :tipo, :estado, :priridad, :cantidad, :unidades_pleneadas, :unidades_real, :empresa_id, :articulo_id
  json.url orden_produccion_url(orden_produccion, format: :json)
end
