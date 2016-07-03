class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.date :date
      t.text :note

      t.timestamps null: false
    end
  end
end
