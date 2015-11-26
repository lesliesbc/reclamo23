json.array!(@recla_institucions) do |recla_institucion|
  json.extract! recla_institucion, :id, :recla_id, :institucion_id
  json.url recla_institucion_url(recla_institucion, format: :json)
end
