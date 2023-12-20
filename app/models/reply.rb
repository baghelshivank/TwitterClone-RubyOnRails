class Reply < ApplicationRecord
    belongs_to :user
    belongs_to :post
    # has_many :likes, dependent: :destroy
    has_many :likes, as: :likeable, dependent: :destroy

end
