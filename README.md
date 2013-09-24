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

<strong>audit</strong> - The audit table adds a new record for every add,login, delete, and modify action (only Login is currently working). 
        It's capturing the username, ip, a timestamp an action (login, delete, modify,add) and summary description
        Every login, delete, add or modify action needs to be captured<br>

<strong>bbudget_ex</strong> - Table for capturing expenses<br>
<strong>bbudget_in</strong>  - table for capturing offerings<br>
<strong>bbudget_type</strong> - Table for adding different categories for offerings/expenses<br>
<strong>person</strong> - address book table <br>
<strong>users</strong> - users table(BBudget administrators)<br>

<strong>church_attendance</strong> - table for capturing church's total members attendance for a given date<br>
<strong>ed_attendance</strong> - table for capturing member's attendance for sunday school<br>
<strong>ed_classes</strong> - table for adding or removing classes for sunday school<br>
<strong>ed_registry</strong> - table for students<br>
<strong>ed_teachers</strong> - table for teachers (teachers are assigned to a class)<br>
