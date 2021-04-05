class Type < ApplicationRecord
    belongs_to :bookmark, optional: true 
end