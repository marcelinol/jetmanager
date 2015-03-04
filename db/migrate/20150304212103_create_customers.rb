class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :cellphone
      t.string :phone
      t.string :address
      t.integer :rg
      t.datetime :rg_date
      t.integer :cpf
      t.string :mother

      t.timestamps null: false
    end
  end
end
