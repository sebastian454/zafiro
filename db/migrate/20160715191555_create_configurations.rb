class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|
      t.string :profesional
      t.string :especialidad_profesional
      t.integer :rango_profesional
      t.string :consultorio
      t.integer :rango_consutorio

      t.timestamps null: false
    end
  end
end
