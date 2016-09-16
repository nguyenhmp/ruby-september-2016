class Product < ActiveRecord::Base
	belongs_to :category
	has_many :comments
	before_destroy :destroy_comments
private
	def destroy_comments
		self.comments.destroy_all
	end
end
