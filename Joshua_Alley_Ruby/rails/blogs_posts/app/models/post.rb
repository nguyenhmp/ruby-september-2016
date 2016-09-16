class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :messages, :dependent => :destroy
  validates :title, presence: true, length: { in: 7..255 }
  validates :content, presence: true
end
