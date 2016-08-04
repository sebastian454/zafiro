class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombres
      t.string :apellidos
      t.string :tipo_documento
      t.string :no_documento
      t.integer :edad
      t.string :genero
      t.string :direccion
      t.string :municipio
      t.string :telefono
      t.string :aseguradora
      t.string :tipo_afiliacion
      t.string :antecedentes

      t.timestamps null: false
    end
  end
end
