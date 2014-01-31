## Create a rails app that will
Allow a user to manage students to in a course, _not don't use the name 'class' here!_. A student may be in many courses and the courses may have many students. 

Each student *MAY* have a final grade for the course. And the course will have an average final grade.

In the view for a specific course:

* The user can view all students in that course.
* The user can add students.  
* The user can remove each student.  
* The user can give a student a final grade.  
* The average grade for all the students is displayed at the top of the page.  
	
	
	
### Implementation
We need to have a relationship between students and courses. This will be a has_many through rails associations. The relationship is named membership and each membership will contain a final grade.

#### You will need:  

	* Student resource, (migration, model, controller, routes and views).
	* Course resource, (migration, model, controller, routes and views).
	* Membership resource, (migration, model, controller, routes and views).
	
	