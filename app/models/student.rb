class Student < ActiveRecord::Base
  has_many :memberships
  has_many :courses, through: :memberships
end
