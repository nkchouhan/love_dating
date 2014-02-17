class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :user_interests
  has_many :interests, :through => :user_interests
  accepts_nested_attributes_for :user_interests
end
