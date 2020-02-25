class AddSaleRepToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :sale_rep, :string
  end
end
