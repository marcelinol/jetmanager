class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :emailÇstring
      t.string :phone
      t.string :address
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
