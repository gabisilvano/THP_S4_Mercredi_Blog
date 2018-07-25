class User < ApplicationRecord
  has_many :articles
  has_many :comentaires
  has_many :likes
end
