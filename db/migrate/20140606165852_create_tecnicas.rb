class CreateTecnicas < ActiveRecord::Migration
  def change
    create_table :tecnicas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
