class Blog < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  # validates :description, presence:true
  # validates :name presence: true
end
