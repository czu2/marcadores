class AddKindIdToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :kind, foreign_key: true
  end
end
