class Post < ApplicationRecord
  belongs_to :blog
  belongs_to :user
  has_many :messages, :dependent => :delete_all
	has_many :comments, as: :commentable
  validates :title, :content, presence: true
	validates :title, length: { minimum: 7 }
end
