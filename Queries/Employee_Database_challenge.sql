--
SELECT  e.emp_no, 
e.first_name, 
e.last_name,
t.title,
t.from_date,
t.to_date
INTO unique_titles
FROM employees e
INNER JOIN titles t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
 
-- drop table unique_titles;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,e.last_name,
t.title
INTO unique_titles
FROM employees e
INNER JOIN titles t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;


--select * from unique_titles

-- Employee count by department number
select count(emp_no), title
INTO retiring_titles
from unique_titles
group by title
order by count(emp_no) desc;

--select * from retiring_titles;

-- Deliverable 2--
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,e.last_name,e.birth_date,
de.from_date,
de.to_date,
t.title
INTO Mentorship_Eligibility
FROM employees e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no ;

-- Deliverable 3
-- Deliverable from the two analysis, deliverable for 3 
-- Use Dictinct with Orderby to remove duplicate rows,
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name,e.last_name,e.birth_date,
de.from_date,
de.to_date,
t.title,
dt.dept_name
INTO Ready_retire
FROM employees e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles t
ON e.emp_no = t.emp_no
INNER JOIN departments dt
ON dt.dept_no=de.dept_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no DESC;


select count(emp_no), dept_name
INTO newgeneration_titles
from Ready_retire
group by dept_name
order by count(emp_no) desc;









