class Bookmark < ApplicationRecord
    has_many :categories, dependent: :delete_all
    enum status: [:Privado, :Publico]
    validates :status, presence: true
end
