--retiring_per_department
SELECT 
	d.dept_name,
	retiring_employees.count
INTO retiring_per_department
FROM departments as d
INNER JOIN retiring_employees 
ON (retiring_employees.dept_no = d.dept_no)
ORDER BY d.dept_name;


--mentorship_per_department
SELECT d.dept_name, COUNT(d.dept_name)
INTO mentorship_per_department	
FROM mentorship_eligibility as me
INNER JOIN dept_emp as de_e
ON (me.emp_no = de_e.emp_no)
INNER JOIN departments as d
ON (de_e.dept_no = d.dept_no)
GROUP BY d.dept_name
ORDER BY d.dept_name;

