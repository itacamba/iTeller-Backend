class AddTTypeToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :t_type, :string
  end
end
