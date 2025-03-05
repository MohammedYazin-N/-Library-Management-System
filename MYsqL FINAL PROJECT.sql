## Library Management System

create database Library;
use Library;

## CREATION OF  DIFFERENT TABLES 

create table Branch
( Branch_no int primary key,Manager_Id int,Branch_address varchar (30),
contact_no char (10) unique  ) ;

create table Employee
( emp_id int primary key,emp_name varchar (30) not null, position varchar (20),
Salary float ,Branch_no int,
foreign key (Branch_no) references Branch(branch_no) on delete cascade ) ;

create table Books
( ISBN int primary key, Book_Title varchar (30),category varchar (30),
rental_price int, Status varchar (5) not null , Author varchar (20),
 Publisher varchar(30));
 
 create table customer
( Customer_id int primary key,Customer_name varchar(40),
Customer_address varchar (50), Reg_date date ) ;

 create table Issue_status
( Issue_id int primary key,Issued_cust int , 
foreign key (Issued_cust) references Customer(Customer_id),issued_book_name varchar(30),
issue_date date ,isbn_book int, foreign key (isbn_book) references books(isbn));

 create table Return_status
( return_id int primary key,return_cust int , 
return_book_name varchar(30),return_date date ,
isbn_book2 int, foreign key (isbn_book2) references books(isbn));


## INSERTION OF VALUES IN EACH TABLES 

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, contact_no) VALUES
(1, 101, 'MG Road, Bangalore', '9876543210'),
(2, 102, 'Anna Nagar, Chennai', '8765432109'),
(3, 103, 'Park Street, Kolkata', '7654321098'),
(4, 104, 'Connaught Place, Delhi', '6543210987'),
(5, 105, 'Shivaji Nagar, Pune', '5432109876'),
(6, 106, 'Banjara Hills, Hyderabad', '4321098765'),
(7, 107, 'Marine Drive, Mumbai', '3210987654'),
(8, 108, 'Sector 17, Chandigarh', '2109876543'),
(9, 109, 'Hazratganj, Lucknow', '1098765432'),
(10, 110, 'Raja Park, Jaipur', '1987654321');
select * from Branch ;


INSERT INTO Employee (emp_id, emp_name, position, Salary, Branch_no) VALUES
(101,'Rahul Sharma', 'Manager', 75000.00, 1),
(102, 'Aisha Khan', 'Assistant', 45000.00, 2),
(103, 'John Mathew', 'Clerk', 30000.00, 3),
(104, 'Neha Verma', 'Librarian', 50000.00, 4),
(105, 'Sandeep Roy', 'Technician', 40000.00, 5),
(106, 'Priya Das', 'Assistant', 42000.00, 6),
(107, 'Amit Gupta', 'Manager', 72000.00, 7),
(108, 'Sneha Iyer', 'Clerk', 32000.00, 8),
(109, 'Vikram Singh', 'Technician', 41000.00, 9),
(1010, 'Ramesh Nair', 'Librarian', 53000.00, 10);
select * from employee ;



INSERT INTO Books (ISBN, Book_Title, Category, Rental_Price, Status, Author, Publisher) VALUES
(1001, 'The Alchemist', 'Fiction', 50, 'Yes', 'Paulo Coelho', 'HarperCollins'),
(1002, '1984', 'Dystopian', 60, 'Yes', 'George Orwell', 'Secker & Warburg'),
(1003, 'Inferno', 'Thriller', 70, 'No', 'Dan Brown', 'Doubleday'),
(1004, 'A Brief History of Time', 'Science', 80, 'Yes', 'Stephen Hawking', 'Bantam'),
(1005, 'The Great Gatsby', 'Classic', 55, 'No', 'F. Scott Fitzgerald', 'Scribner'),
(1006, 'Rich Dad Poor Dad', 'Finance', 90, 'Yes', 'Robert Kiyosaki', 'Warner Books'),
(1007, 'To Kill a Mockingbird', 'Classic', 65, 'Yes', 'Harper Lee', 'J.B. Lippincott'),
(1008, 'Sapiens', 'History', 85, 'No', 'Yuval Noah Harari', 'Harper'),
(1009, 'Think and Grow Rich', 'Self-Help', 75, 'Yes', 'Napoleon Hill', 'The Ralston Society'),
(1010, 'Atomic Habits', 'Self-Help', 95, 'No', 'James Clear', 'Penguin');
select * from books;

INSERT INTO Customer (Customer_id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'Rahul Sharma', 'Delhi, India', '2024-01-10'),
(2, 'Aisha Khan', 'Mumbai, India', '2024-02-15'),
(3, 'John Mathew', 'Bangalore, India', '2024-01-22'),
(4, 'Neha Verma', 'Kolkata, India', '2024-03-05'),
(5, 'Sandeep Roy', 'Chennai, India', '2024-02-28'),
(6, 'Priya Das', 'Pune, India', '2024-03-10'),
(7, 'Amit Gupta', 'Hyderabad, India', '2024-01-18'),
(8, 'Sneha Iyer', 'Ahmedabad, India', '2024-02-05'),
(9, 'Vikram Singh', 'Jaipur, India', '2024-03-02'),
(10, 'Ramesh Nair', 'Cochin, India', '2024-02-20');
select * from Customer;


INSERT INTO Issue_status (Issue_id, Issued_cust, issued_book_name, issue_date, isbn_book) VALUES
(101, 1, 'The Alchemist', '2024-02-01', 1001),
(202, 2, '1984', '2024-02-05', 1002),
(303, 3, 'Inferno', '2024-02-10', 1003),
(404, 4, 'A Brief History of Time', '2024-02-15', 1004),
(505, 5, 'The Great Gatsby', '2024-02-18', 1005),
(606, 6, 'Rich Dad Poor Dad', '2024-02-22', 1006),
(707, 7, 'To Kill a Mockingbird', '2024-02-25', 1007),
(808, 8, 'Sapiens', '2024-02-28', 1008),
(909, 9, 'Think and Grow Rich', '2024-03-01', 1009),
(1000, 10, 'Atomic Habits', '2024-03-05', 1010);
select * from issue_status;


INSERT INTO Return_status (return_id, return_cust, return_book_name, return_date, isbn_book2) VALUES
(1, 1, 'The Alchemist', '2024-02-10', 1001),
(2, 2, '1984', '2024-02-12', 1002),
(3, 3, 'Inferno', '2024-02-20', 1003),
(4, 4, 'A Brief History of Time', '2024-02-25', 1004),
(5, 5, 'The Great Gatsby', '2024-02-28', 1005),
(6, 6, 'Rich Dad Poor Dad', '2024-03-02', 1006),
(7, 7, 'To Kill a Mockingbird', '2024-03-05', 1007),
(8, 8, 'Sapiens', '2024-03-08', 1008),
(9, 9, 'Think and Grow Rich', '2024-03-12', 1009),
(10, 10, 'Atomic Habits', '2024-03-15', 1010);
select * from Return_status;


## Retrieve the book title, category, and rental price of all available books

select book_title, category,rental_price from books;  

## List the employee names and their respective salaries in descending order of salary

select emp_name,salary from employee order by salary desc;

## Retrieve the book titles and the corresponding customers who have issued those books. 

select book_title,customer_name from issue_status inner join books on isbn_book= ISBN 
join customer on issued_cust = customer_id; 

## Display the total count of books in each category. 
select count(book_title) as 'total count of books',category from books group by category; 


## Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000 

select emp_name,position from employee where salary > 50000;


##  List the customer names who registered before 2022-01-01 and have not issued any books yet

select customer_name from customer left join issue_status on customer_id = issued_cust where customer.reg_date < '2022-01-01'
 and issue_status.issued_cust is null;


## Display the branch numbers and the total count of employees in each branch.

select branch_no, count(emp_id) as employeee_count from employee group by branch_no ;

## Display the names of customers who have issued books in the month of June 2023

select customer_name  from customer left join issue_status on customer_id=issued_cust
 where   issue_date Between '2023-06-01' And '2023-06-30';
 
 # Retrieve book_title from book table containing history.
 
 select book_title from books where category = 'history';


## Retrieve the branch numbers along with the count of employees for branches having more than 5 employees

 select branch_no, count(emp_id) AS total_employees  from employee  group by branch_no
 having  count(emp_id) > 5;
 
 
 ## Retrieve the names of employees who manage branches and their respective branch addresses.
 
Select  emp_name AS Manager_Name, Branch_address 
From Branch  inner join Employee E On Manager_Id = emp_id ;
 
 
 
 
 ## Display the names of customers who have issued books with a rental price higher than Rs. 25
 
 select customer_name from customer join  issue_status on customer_id = issued_cust
 join books on isbn_book = isbn where rental_price > 25 ;
 
 
 
                                   ### FINISH 
 
 
 
 
 
 