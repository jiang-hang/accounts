class DropTableFunds < ActiveRecord::Migration
  def change
      drop_table :funds
  end
end
