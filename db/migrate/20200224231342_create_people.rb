class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :full_payment
      t.decimal :subtotal, default: "0.0"
      t.decimal :tax, default: "0.0"
      t.decimal :total, default: "0.0"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
