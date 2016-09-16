class Dojo < ActiveRecord::Base
  has_many :ninja
  validates :name, :city, :state, presence: true, length: {true, 2}
end
