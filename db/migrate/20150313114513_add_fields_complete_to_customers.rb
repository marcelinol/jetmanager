class AddFieldsCompleteToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :fields_complete, :boolean
  end
end
