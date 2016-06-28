class AddColumnToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :mtype, :string
  end
end
