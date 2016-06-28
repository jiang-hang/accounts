class CreateFcat2s < ActiveRecord::Migration
  def change
    create_table :fcat2s do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
