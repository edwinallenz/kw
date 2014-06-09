json.array!(@control_calidads) do |control_calidad|
  json.extract! control_calidad, :id, :fecha, :status, :no_articulos, :articulos_buenos, :articulos_defetuosos, :iteracion, :participante_id, :orden_produccion_id, :articulo_id, :tecnico_id
  json.url control_calidad_url(control_calidad, format: :json)
end
