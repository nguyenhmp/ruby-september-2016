class Blog < ActiveRecord::Base
  # has_and_belongs_to_many :users
  has_many :owners
  has_many :posts

  has_many :users, through: :owners
  # has_many :users, through: :posts

end
