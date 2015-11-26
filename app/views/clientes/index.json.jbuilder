json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :apellido, :telefono, :correo
  json.url cliente_url(cliente, format: :json)
end
