class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :codigo
      t.string :nombre
      t.references :tecnica, index: true

      t.timestamps
    end
  end
end
