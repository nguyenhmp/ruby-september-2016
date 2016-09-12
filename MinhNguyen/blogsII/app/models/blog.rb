class Blog < ApplicationRecord
	validates :name, :description, presence: true
	has_many :posts, :dependent => :delete_all
	has_many :messages, :through => :posts
	has_many :users, :through => :owners, :dependent => :delete_all
	has_many :owners
	has_many :comments, as: :commentable
end
