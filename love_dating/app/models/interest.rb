class Interest < ActiveRecord::Base
  has_many :user_interests
  has_many :profiles, :through => :user_interests
end
