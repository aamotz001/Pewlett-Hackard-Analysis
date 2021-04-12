-- Create retirement by titles table
SELECT e.emp_no,
e.first_name,
e.last_name,
ti.title,
ti.from_date,
ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
ti.title
INTO unique_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date between '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC,ti.to_date DESC;

-- Create table counting retirees by title type
SELECT COUNT(ut.title), title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count DESC;

-- Determine employees eligible for mentorship
SELECT DISTINCT ON (emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.to_date,
de.from_date,
ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date between '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;