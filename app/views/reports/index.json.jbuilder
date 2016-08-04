json.array!(@reports) do |report|
  json.extract! report, :id, :tipo_reporte, :fecha_inicial, :fecha_final
  json.url report_url(report, format: :json)
end
