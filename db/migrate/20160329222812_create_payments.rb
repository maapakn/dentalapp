class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :email
      t.string :ip
      t.string :status
      t.decimal :fee, precision: 6, scale: 2
      t.string :paypal_id
      t.decimal :total, precision: 6, scale: 2
      t.timestamps null: false
      t.references :pedido, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
