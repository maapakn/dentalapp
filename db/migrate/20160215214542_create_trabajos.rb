class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
