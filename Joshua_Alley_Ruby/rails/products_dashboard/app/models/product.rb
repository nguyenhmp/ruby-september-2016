class Product < ActiveRecord::Base
	has_many :comments
	validates :name, :description, :price, :category, presence: true
end
