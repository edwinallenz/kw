json.array!(@liders) do |lider|
  json.extract! lider, :id, :nombre, :direccion, :telefono, :empresa_id
  json.url lider_url(lider, format: :json)
end
