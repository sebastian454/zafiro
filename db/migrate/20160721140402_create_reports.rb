class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :tipo_reporte
      t.date :fecha_inicial
      t.date :fecha_final

      t.timestamps null: false
    end
  end
end
