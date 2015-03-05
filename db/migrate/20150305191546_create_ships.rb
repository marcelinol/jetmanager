class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.references :customer
      t.string :name
      t.string :kind
      t.string :registration_number
      t.datetime :insurance_due_date
      t.datetime :registration_due_date

      t.timestamps null: false
    end
  end
end
