class Student < ActiveRecord::Base
  attr_accessible :classdiscussion, :final, :lab, :name, :nickname, :project, :student_id, :total
  validates :student_id, presence: true, uniqueness: true, length: {is: 10}

  validates :classdiscussion, numericality: {greater_than: 0, less_than_or_equal_to: 10}
  validates :final, numericality: {greater_than: 0, less_than_or_equal_to: 40}
  validates :lab, numericality: {greater_than: 0, less_than_or_equal_to: 10}
  validates :project, numericality: {greater_than: 0, less_than_or_equal_to: 40}

  def calc_total
    self.total = self.final + self.lab + self.classdiscussion + self.project
  end
end
