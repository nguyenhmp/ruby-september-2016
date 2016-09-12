class Blog < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    has_many :owners, dependent: :destroy
    validates :name, :description, presence: true
end
