class Follow < ApplicationRecord
    belongs_to :follower, foreign_key: "user_id", class_name: "User"
    belongs_to :following, foreing_key: "following_id", class_name: "User"
end
