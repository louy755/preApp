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
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
