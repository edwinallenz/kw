json.array!(@articulos) do |articulo|
  json.extract! articulo, :id, :codigo, :nombre, :tecnica_id
  json.url articulo_url(articulo, format: :json)
end
