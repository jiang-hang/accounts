class AddImgColumnToDocuments < ActiveRecord::Migration
  def change
     add_attachment :documents, :img
  end
end
