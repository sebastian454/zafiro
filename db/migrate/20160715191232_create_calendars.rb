class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :users_id
      t.string :alertas
      t.string :observaciones
      t.datetime :fecha_cita
      t.string :servicio
      t.integer :consultorio_id
      t.integer :profesional_id

      t.timestamps null: false
    end
  end
end
