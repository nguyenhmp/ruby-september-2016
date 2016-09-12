class Message < ApplicationRecord
	validates :message, presence: true, length: { minimum: 15 }
  belongs_to :post
  belongs_to :user
	has_many :comments, as: :commentable
end
