class User < ActiveRecord::Base
  has_many :owners
  has_many :messages
  has_many :posts  
  # has_and_belongs_to_many :blogs
  has_many :blogs, through: :owners
end
