module ApplicationHelper
   def final_grade(membership)
    membership.final_grade ? membership.final_grade : 'N/A'
  end
end
