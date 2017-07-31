class AddPaperclipToItems < ActiveRecord::Migration[5.1]
  def change
    add_attachment :items, :image
  end
end
