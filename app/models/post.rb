class Post < ApplicationRecord
  belongs_to :user

  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  # liked_usersによって投稿が誰にいいねされているのかを簡単に取得
end
