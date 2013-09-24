CMS
===

Church Management System


BBudget is a simple church management system for small organizations to manage church members, offerings and sunday 
school attendance. It also has limited reporting capabilities. This started as a hobby to replace the paper forms used 
to record offerings at my church. It slowly evolved and features were added such as an address book, simple reporting 
and sunday school attendance tracking.

Screenshots can be found <a href="https://github.com/noelesp/BBudget-v2.0/wiki/Screenshots">Here</a>

The code is quick'n'dirty and crude. It's definitely not up to best practices and could use some clean up!

Languages Used: PHP, MySQL, JavaScript, HTML, Linux
 

SQL Database Overview:

Database Name: bbudget 

Table name & description:

audit - The audit table adds a new record for every add,login, delete, and modify action (only Login is currently working). 
        It's capturing the username, ip, a timestamp an action (login, delete, modify,add) and summary description
        Every login, delete, add or modify action needs to be captured

bbudget_ex - Table for capturing expenses
bbudget_in  - table for capturing offerings
bbudget_type - Table for adding different categories for offerings/expenses
person - address book table 
users - users table(BBudget administrators)

church_attendance - table for capturing church's total members attendance for a given date
ed_attendance - table for capturing member's attendance for sunday school
ed_classes - table for adding or removing classes for sunday school
ed_registry - table for students
ed_teachers - table for teachers (teachers are assigned to a class)
