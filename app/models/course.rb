class Course < ActiveRecord::Base
  has_many :memberships
  has_many :students, through: :memberships

  # students that can be added.
  # don't want to add student more than once
  def students_to_add
    Student.all - self.students
  end

  def can_add_students?
    !self.students_to_add.empty?
  end
end
