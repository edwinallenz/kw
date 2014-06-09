class CreateControlCalidads < ActiveRecord::Migration
  def change
    create_table :control_calidads do |t|
      t.date :fecha
      t.string :status
      t.integer :no_articulos
      t.integer :articulos_buenos
      t.string :articulos_defetuosos
      t.integer :iteracion
      t.references :participante, index: true
      t.references :orden_produccion, index: true
      t.references :articulo, index: true
      t.references :tecnico, index: true

      t.timestamps
    end
  end
end
