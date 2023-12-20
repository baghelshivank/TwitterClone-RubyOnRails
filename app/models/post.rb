class Post < ApplicationRecord
    belongs_to :user
    has_many :replies, dependent: :destroy
    # has_many :likes, dependent: :destroy
    has_many :likes, as: :likeable, dependent: :destroy


end
