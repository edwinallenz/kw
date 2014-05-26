class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :direccion
      t.string :comunidad
      t.string :municipio

      t.timestamps
    end
  end
end
