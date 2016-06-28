class DropFlows < ActiveRecord::Migration
  def change
     drop_table :flows
  end
end
