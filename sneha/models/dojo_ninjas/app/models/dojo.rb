class Dojo < ActiveRecord::Base
	has_many :ninjas 
	 validates :name, :city, presence: true, length: { in: 2..20 }
	 validates :state, presence: true, length: {in: 2..2}
end
