class Actor < ApplicationRecord
    has_and_belongs_to_many :tv_shows, dependent: :destroy
    has_one_attached :image
end
