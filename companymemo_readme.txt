companymemo_readme.txt

This was an assignment for my Linux & Unix Shell Programming class at Foothill College that I took in Summer 2012. 
The assignment description is as follows: 

Statement of problem: 
This is a continuation of the previous assignment using awk, cut, sed, and tr. You are to write a shell script that uses data from an old text message to generate a new message that can be sent via email (you don't have to send the message). 

Background: 
Two years ago, the H.R. department of Big Comp sent a notice to all employees to attend a meeting. The notice was hand delivered to the 300 employees. Now they want to call a similar meeting but deliver the notice using their server's mail program. 

Task:
We have the old memo and the company's employee database. We are to change the contents of the old memo file to produce a similar but updated memo that can be electronically mailed to those current employees in the company database. This can be done entirely using awk, cut, sed, and tr. 

1. The old memo that was hand-delivered looks like this:

July 4, 2009
The monthly employee firing/layoff meeting is in the banquet hall at 2:00. 
...
...
...
Regretta Pinkslip
(Note: Lines 3 through 6 represent content that will remain unchanged, but could be many pages.)


2. The mail program requires a "To:", "Fr:", and "Date:" line using the full name of each employee and a script generated date. The new file should look like this:

To: Zeberiah Z. Zziz
Fr: Regretta Pinkslip
DATE: 04/29/12

The monthly employee firing/layoff meeting is in the coffee shop at 4:30. 
Our President Pauper P. Poormouth will discuss the state of the company. 
...
...
...
...
Regretta Pinkslip
(Note: The script should produce the date the script is to be run - no "hard-coded" date to be used i.e. every day the script runs it produces a different date.)


3. Following are the contents of the employee database (we only need a few lines for this exercise):
Aaron A. Aardvark, 1235 Anystreet, Somecity, State1, 11111
...
Mut M. Mama, 235 Thestreet, Thecity, StateX, XXXXX
...
#Shirley S. Softsoap, 3456 Thisstreet, Thiscity, StateY, YYYYY
...
...
#...
Zeberiah Z. Zziz, 4567 Thatstreet, Anothercity, StateN, NNNNN
(Note: Lines starting with a hash mark "#" indicate employees no longer with the company and should be excluded from the recipients of the mailings.)
