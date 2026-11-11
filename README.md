# college-library-management-System
A college library management system using MySQL with database queries, joins , stored procedures, triggers , and ER diagrams




C15– Library management recommendations
The following recommendations are based on the supplied records and the results of C4 (most borrowed books), C6 (currently unreturned books), C7–C8 (late returns and fines), and C12 (zero-copy books with pending issues).
1. Which books should the library buy more copies of?
The library should give priority to books that have no available copies and still have pending issues. From C12, these are:
Python Crash Course (book_id 2) – 4 borrowing records; 0 copies available and a pending issue.
Database System Concepts (book_id 4) – 5 borrowing records; 0 copies available and pending issues.
Data Communications (book_id 8) – 2 borrowing records; 0 copies available and pending issues.
Database System Concepts is especially important because it is among the most borrowed titles in C4 and has no copies available. The library should also monitor Computer Networks (book_id 7), which has only 1 available copy and an unreturned issue.
2. Which members should get a reminder?
C6 shows 11 issues that have not yet been returned. As of 11 November 2026, the following three are overdue and should receive an immediate overdue reminder:
Member
Book
Due date
Status on 11-Nov-2026

Rohan Verma
Data Communications
2026-11-02
Overdue

Sneha Patil
Data Communications
2026-11-09
Overdue

Vikram Singh
Database System Concepts
2026-11-05
Overdue

The remaining members with unreturned books should receive advance due-date reminders. Their records are:
Member
Book
Due date

Priya Nair
Python Crash Course
2026-11-13

Dr. Meera Iyer
Database System Concepts
2026-11-14

Aarav Sharma
SQL in 10 Minutes
2026-11-16

Kiran Rao
Computer Networks
2026-11-17

Kiran Rao
Wings of Fire
2026-11-18

Prof. Suresh Kumar
Operating System Concepts
2026-11-19

Arjun Reddy
Higher Engineering Mathematics
2026-11-19

3. What would you suggest to reduce late returns?
Send SMS or email reminders a few days before each due date.
Send immediate overdue notifications when a book passes its due date.
Apply the stated late fine of Rs. 2 per late day consistently.
Allow renewals when no other member has reserved the book.
Show the issue date and due date clearly on receipts and in member accounts.
Track repeated late returns and send stronger or earlier reminders to those members.
Maintain accurate issue and return records so that overdue reports can be generated regularly.
Conclusion
The library should purchase more copies of high-demand books that have zero stock and pending issues, especially Database System Concepts, Python Crash Course and Data Communications. It should immediately remind the three overdue members, send advance reminders for upcoming due dates, and use automated notifications and consistent fines to reduce late returns.