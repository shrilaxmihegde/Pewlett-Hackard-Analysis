# Overview of the project:
This analysis  helps to upcomming ***silver tsunami***. Pewlett-Hackard-Analysis detailed information on the number of future retires from all departments currently working at the company to be able to prepare a 
plan to hire new staff members and also to prepare mentorship initiative.Its based on the birth dates ranging from (1952-01-01' to 1955-12-31)
and employees whose birth dates are between January 1, 1965 and December 31, 1965.

# Results:
Below the ERD(Entity Relationship Diagram) used to visualize the relationship between the different data sources within the company emplyees database.

![employee_DB_ERD)](/Resources/employee_DB_ERD.png)

 ## Summary of employees about to retire:
 The number of employees about to retire is 72,458. Below table list the employees about to retire by their most recent job title.
1. The majority of employees that will be retiring soon are in Senior positions.
2. Only 2 managers are due to retire.

![unique_title](/Resources/unique_titles.png)

![retiring_titles](/Resources/retiring_titles1.png)

# Mentorship eligibility table :
 This resultset created in this module as a reference from SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
![Mentorship_Eligibility](/Resources/Mentorship_Eligibility.png)

# Summary:
1. Totaly ***72,458***roles need to be filled as the result of "silver tsunami".

![Ready To Retite](/Resources/ready_retire.png)

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

No, there are only 1,940 employees who are eligible to participate in a mentorship program. Breakup of 1,940 employees by their department is shown below.
![Department wise summary)](/Resources/image3_1.png)

3. As the company is preparing for the upcoming ***silver tsunami*** a good planning is essential, especially when such a large number of the employees are involved. Reports above give a good insight about the number of the employees that are about to retire and hold specific title and how much position to be filled along with how many employees can mentor incoming new employees.

# Resources:
***Data Sources:*** departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv

***Software:*** SQL, PostgreSQL, pgAdmin4
