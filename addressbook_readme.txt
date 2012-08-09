addressbook_readme.txt

This was my final assignment for my Linux & Unix Shell Programming class at Foothill College that I took in Summer 2012. 
The assignment description is as follows:

Write a script that allows one to construct an address book with the following features: 
* Search for entries
* Add entries
* Remove/edit entries
* Display a record/records

Upon startup, the script displays a menu requesting user to enter 1 of the following letters:
a) to add a record
d) to display one or more records
e) to edit a record
r) to remove a single record
s) to search for records

At the end, use a "here" document that includes comments before quitting the application.

Each record should be of the following construct: "Last name,first name,email address,phone number".

Prepare a small database using Excel, Scalc, gnumeric, etc. and save it as a .csv record to test 
formation of a database. 

Explanations for the action letters follow:

a)dd - Input the data (Last name,first name,email address,phone number) - no spaces.

d)isplay - User will input a name or names. The script will search the phone book and display records matching the 
last names of the request. If no record is found for the requested search an error message is to be printed. 

e)dit - Rewrite the record with the new data or replace the entire record with the newly formatted field data.

r)emove - Script will remove the record from the address book.

s)earch - The script will search for all records matching the search string input (as "grep" does). The difference 
between "display" and "search" is that "display" keys on names only. "Search" behaves in the same manner as grep in 
that the search string is not limited to names. 

Script to be written using "case" statements.