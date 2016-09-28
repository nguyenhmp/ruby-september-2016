class User < ActiveRecord::Base
	validates :first_name, presence:true, length: { in: 2..20 }
	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
   	validates :email_address, presence:true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
