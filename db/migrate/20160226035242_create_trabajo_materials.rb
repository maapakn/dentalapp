class CreateTrabajoMaterials < ActiveRecord::Migration
  def change
    create_table :trabajo_materials do |t|
      t.references :trabajo, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
    end
  end
end
