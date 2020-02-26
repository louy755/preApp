class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.integer :qnt, default: "0"
      t.string :item
      t.decimal :price, default: "0.0"
      t.text :description
      t.string :vendor
      t.decimal :subtotal, default: "0.0"
      t.decimal :tax, default: "0.0"
      t.decimal :cost, default: "0.0"
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
