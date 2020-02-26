class AddCostToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :cost, :decimal, default: "0.0"
  end
end
