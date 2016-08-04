json.array!(@users) do |user|
  json.extract! user, :id, :nombres, :apellidos, :tipo_documento, :no_documento, :edad, :genero, :direccion, :municipio, :telefono, :aseguradora, :tipo_afiliacion, :antecedentes
  json.url user_url(user, format: :json)
end
