json.array!(@stories) do |story|
  json.extract! story, :id, :users_id, :motivo_consulta, :enfermedad_actual, :examen_fisico, :diagnostico, :analisis, :plan_mejora
  json.url story_url(story, format: :json)
end
