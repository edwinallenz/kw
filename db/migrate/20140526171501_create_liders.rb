class CreateLiders < ActiveRecord::Migration
  def change
    create_table :liders do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
