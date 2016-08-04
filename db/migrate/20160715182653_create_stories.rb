class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :users_id
      t.string :motivo_consulta
      t.string :enfermedad_actual
      t.string :examen_fisico
      t.string :diagnostico
      t.string :analisis
      t.string :plan_mejora

      t.timestamps null: false
    end
  end
end
