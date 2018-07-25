class Article < ApplicationRecord
  belongs_to :user
  belongs_to :categorie
  has_many :comentaires
  has_many :likes
end
