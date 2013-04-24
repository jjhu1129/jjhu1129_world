class Article < ActiveRecord::Base
	belongs_to :category

	validates_presence :title, :content

	scope :active, where('article.active = ?', true)
  	scope :alphabetical, order('title')
end
