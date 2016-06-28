class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.float :value
      t.string :provider
      t.text :note

      t.timestamps null: false
    end
  end
end
