class Discussion < ActiveRecord::Base
  attr_accessible :score, :student_id
  belongs_to :student
end
