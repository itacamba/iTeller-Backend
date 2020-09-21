class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :name
      t.string :account_type
      t.integer :balance

      t.timestamps
    end
  end
end
