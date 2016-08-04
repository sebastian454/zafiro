json.array!(@configurations) do |configuration|
  json.extract! configuration, :id, :profesional, :especialidad_profesional, :rango_profesional, :consultorio, :rango_consutorio
  json.url configuration_url(configuration, format: :json)
end
