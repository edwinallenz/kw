json.array!(@tecnicas) do |tecnica|
  json.extract! tecnica, :id, :nombre
  json.url tecnica_url(tecnica, format: :json)
end
