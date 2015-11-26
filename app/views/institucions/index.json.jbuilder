json.array!(@institucions) do |institucion|
  json.extract! institucion, :id, :tienda
  json.url institucion_url(institucion, format: :json)
end
