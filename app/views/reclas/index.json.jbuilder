json.array!(@reclas) do |recla|
  json.extract! recla, :id, :reclamo, :tienda, :cliente_id
  json.url recla_url(recla, format: :json)
end
