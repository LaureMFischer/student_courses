bob = Student.create!(name: 'bob')
alice = Student.create!(name: 'alice')
tom = Student.create!(name: 'tom')
david = Student.create!(name: 'david')

wdi_spring = Course.create(name: 'wdi_spring')

bob.memberships.create(course: wdi_spring, final_grade: 90)

