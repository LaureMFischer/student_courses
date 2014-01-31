module CoursesHelper
 def avg_grade(course)
  html = ""
  if !course.memberships.empty? && !course.memberships.map(&:final_grade).compact.empty?
    html << '<strong>Average Grade</strong> '
    html << ('%3.2f' % course.memberships.average(:final_grade))
  end
  html.html_safe
 end

end