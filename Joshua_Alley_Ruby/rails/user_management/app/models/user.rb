
class User < ActiveRecord::Base
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	validates :first_name, :last_name, presence: true, length: { in: 2..20}
	validates :password, presence:true, length: { in: 8..20}
	validates :email, presence: true, uniqueness: {case_senstive: false}, format: { with: EMAIL_REGEX }
	before_save do
		self.email.downcase!
	end
end
