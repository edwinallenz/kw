json.array!(@participantes) do |participante|
  json.extract! participante, :id, :nombre, :direccion, :telefono, :empresa_id
  json.url participante_url(participante, format: :json)
end
