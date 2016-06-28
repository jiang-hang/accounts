class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :sub
      t.float :value
      t.date :date
      t.text :note

      t.timestamps null: false
    end
  end
end
