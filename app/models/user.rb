class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :follows, dependent: :destroy
  has_many :follower_relationships, foreign_key: :following_id, class_name: "Follow", dependent: :destroy
  has_many :followers, through: :follower_relationships, source: :follower, dependent: :destroy
  has_many :following_relationships, foreign_key: :user_id, class_name: "Follow", dependent: :destroy
  has_many :following, through: :follower_relationships, source: :following, dependent: :destroy

  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :replies, dependent: :destroy

end
