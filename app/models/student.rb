class Student < ActiveRecord::Base
  attr_accessible :classdiscussion, :final, :lab, :name, :nickname, :project, :student_id, :total
  attr_accessible :lab1, :lab2, :lab3, :lab4, :lab5, :lab6, :lab7
  attr_accessible :project1, :project2, :project3, :classdiscussion1, :classdiscussion2, :classdiscussion3
  attr_accessible :classdiscussion4, :classdiscussion5, :classdiscussion6, :classdiscussion7, :classdiscussion8, :classdiscussion9, :classdiscussion10, :classdiscussion11

  validates :student_id, presence: true, uniqueness: true, length: {is: 10}

  has_many :labs, :dependent => :destroy
  has_many :projects, :dependent => :destroy
  has_many :discussions, :dependent => :destroy

  validates :classdiscussion, numericality: {greater_than_or_equal_to: 0}
  validates :final, numericality: {greater_than_or_equal_to: 0}
  validates :lab, numericality: {greater_than_or_equal_to: 0}
  validates :project, numericality: {greater_than_or_equal_to: 0}


  def calc_total
    self.lab = (self.lab1 + self.lab2 + self.lab3 + self.lab4 + self.lab5 + self.lab6 + self.lab7) / 7 * 0.1
    self.classdiscussion = (self.classdiscussion1 + self.classdiscussion2 + self.classdiscussion3 + self.classdiscussion4 + self.classdiscussion5 + self.classdiscussion6 + self.classdiscussion7 + self.classdiscussion8 + self.classdiscussion9 + self.classdiscussion10 + self.classdiscussion11) / 11 * 0.1
    self.project = (self.project1 + self.project2 + self.project3) / 3 * 0.4
    self.final = self.final * 0.4
    self.total = self.final + self.lab + self.classdiscussion + self.project
  end
end
