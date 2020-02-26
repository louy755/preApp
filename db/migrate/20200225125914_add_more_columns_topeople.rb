class AddMoreColumnsTopeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :delivery_fee, :decimal, default: "0.0"
    add_column :people, :fee, :decimal, default: "0.0"
    add_column :people, :discount, :decimal, default: "0.0"

  end
end
