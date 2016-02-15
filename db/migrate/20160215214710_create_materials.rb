class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :nombre
      t.references :trabajo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
