class CreateFcat1s < ActiveRecord::Migration
  def change
    create_table :fcat1s do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
