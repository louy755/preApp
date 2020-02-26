class RemoveFullPaymentFromPeople < ActiveRecord::Migration[6.0]
  def change

    remove_column :people, :full_payment, :boolean
  end
end
