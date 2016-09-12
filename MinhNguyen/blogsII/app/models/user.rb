class User < ApplicationRecord
	has_many :blogs, :through => :owners
	has_many :owners, :dependent => :delete_all
	has_many :posts
	has_many :messages
end
