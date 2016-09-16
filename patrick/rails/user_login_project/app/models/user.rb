class User < ActiveRecord::Base
    validates :first_name, :last_name, presence:true, length: { in: 2..256}
    validates :email_address, presence:true
    validates :age , presence:true, numericality: { only_integer:true, greater_than:9, less_than:150 }
end
