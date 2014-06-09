class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
