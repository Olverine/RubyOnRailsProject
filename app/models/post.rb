class Post < ApplicationRecord

  validates :user, presence: true
  validates :title, presence: true
  validates :post, presence: true

	has_and_belongs_to_many :categories
	#has_many :categories, :through => :categories_posts
end
