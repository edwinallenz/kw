json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :direccion, :comunidad, :municipio
  json.url empresa_url(empresa, format: :json)
end
