class Survey < ActiveRecord::Base
    LOCATIONS = %w[Seattle California Washington Chicago]
    LANGUAGES = %w[Ruby Javascript Python PHP]
    validates :location, inclusion: { :in => LOCATIONS }
    validates :language, inclusion: { :in => LANGUAGES }
    validates :username, :comment, presence:true
end
