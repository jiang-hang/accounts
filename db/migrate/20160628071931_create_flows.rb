class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.date :date
      t.references :fcat1
      t.references :fcat2
      t.string :mtype
      t.float :value
      t.text :note

      t.timestamps null: false
    end
  end
end
