class RemoveStatusCompleteFromCustomers < ActiveRecord::Migration
  def change
    remove_column :customers, :status_complete, :boolean
  end
end
