class Category < ApplicationRecord
    belongs_to :bookmark
    belongs_to :kind
    belongs_to :subcategory
end
