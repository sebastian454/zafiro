json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :users_id, :alertas, :observaciones, :fecha_cita, :servicio, :consultorio_id, :profesional_id
  json.url calendar_url(calendar, format: :json)
end
