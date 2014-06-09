class CreateOrdenProduccions < ActiveRecord::Migration
  def change
    create_table :orden_produccions do |t|
      t.date :fecha
      t.date :fecha_entrega
      t.string :no
      t.string :tipo
      t.string :estado
      t.string :priridad
      t.integer :cantidad
      t.integer :unidades_pleneadas
      t.integer :unidades_real
      t.references :empresa, index: true
      t.references :articulo, index: true

      t.timestamps
    end
  end
end
