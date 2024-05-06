# sql-challenge
## Repo for Challenge 9

# Usage
the data is provided in the CSV files stored in the 'Starter_Code' folder.  The Entity Relationship Diagram (ERD), and SQL files with the code are stored in the 'EmployeeSQL' folder.  

# Data Modeling
After inspecting the provided CSV files, I found that the 'dept_emp', 'dept_manager', and 'salaries' CSV files have a relationship to the 'employees' CSV 'emp_no' column.  The 'dept_manager' and 'dept_emp' CSV files have a relationship to the 'departments' CSV file.  The 'titles' CSV has a relationship to the 'employees' CSV.  

After determining which columns were the Primary and Foreign Keys based on the data in the CSV files, I sketched an Entity Relationship Diagram (ERD) using Draw.io to illustrate the relationships.  

# Data Engineering
After creating the Database 'EMPLOYEES_DB' I created two .sql files to achieve the assignment objectives.  The 'Create_Tables_Import_CSV.sql' file contains the code I wrote to create the tables for each CSV file, import the data from the corresponding CSV files, and alter the tables to add the Foreign Keys.

The 'employees', 'dept_emp', 'dept_manager', and 'salaries' tables have both Primary Keys and Foreign Keys.  The 'dept_manager' and dept_emp' tables both utilize a Composite Primary Key.  The tables, 'departments' and 'titles', only have a Primary Key.  The 'employees' and 'departments' tables have 'many to one' relationships and 'employees' and 'titles' have a 'one to one' relationship.  

# Data Anlysis
The 'Data Analysis.sql' file contains my code to answer the 8 queries from the assignment.  I used SELECT statements, JOIN, WHERE, GROUP BY, and ORDER BY clauses to gather the data requested in each query.  In this file, you will need to highlight the commands beneath each --commented query to run them individually to see the results. 

# Conclusion
The Pewlett Hackard Company hired over 36,000 employees in 1986 alone, out of 255 employees named 'Hercules' only 20 of them had a last name beginning with the letter 'B'.  They also had a high frequency of employees with the same last names except for 1 employee named 'Foolsday, April'.  