class AddColumnToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :net, :float
  end
end
