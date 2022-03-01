class Article < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :featured_image

  validates :title, presence: true
  validates :content, presence: true
end
