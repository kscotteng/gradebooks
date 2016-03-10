class Student < ActiveRecord::Base
  has_many :parents
  has_many :grades
  belongs_to :teachers
end
