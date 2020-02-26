class AddFinanceToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :finance, :boolean, default: false
  end
end
