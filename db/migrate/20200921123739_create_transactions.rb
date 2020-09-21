class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.string :name
      t.integer :amount
      t.string :category
      t.datetime :date
      t.string :vendor
      t.text :note

      t.timestamps
    end
  end
end
