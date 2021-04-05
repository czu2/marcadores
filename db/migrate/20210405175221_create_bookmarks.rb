class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.integer :status

      t.timestamps
    end
  end
end
