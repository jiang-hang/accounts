class CreateFunds < ActiveRecord::Migration
  def change
    create_table :funds do |t|
      t.string :name
      t.date :date
      t.float :value
      t.float :share
      t.text :note

      t.timestamps null: false
    end
  end
end
