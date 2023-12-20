class Like < ApplicationRecord
    # belongs_to :user
    # belongs_to :post
    # belongs_to :reply

    belongs_to :user
    belongs_to :likeable, polymorphic: true

    #A scoped uniqueness validation can be added too if you want some error feedback or another layer of validation to stop unnecessary database queries if/when your website becomes super popular.
    validates :user_id, uniqueness: { scope: %i[likeable_id likeable_type] }
end
