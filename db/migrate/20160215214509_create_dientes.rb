class CreateDientes < ActiveRecord::Migration
  def change
    create_table :dientes do |t|
      t.string :numero

      t.timestamps null: false
    end
  end
end
