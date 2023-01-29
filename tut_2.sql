select ("Hey there");


/* Practice questions
Branch(address, city, manager_name, opening_hours, has_atm) (1)
Customer(first_name, last_name, address, date_joined) (2)
Loan(loan_id, amount, date, term) (3)

Give candidate keys:
(1)  - [Adress, City], [Address, City, Manager_name] 
(2)  - [First Name, last_name, address, date_joined]
(3)  - [Loan_id], [loan_id, amount]

Give primary keys:
(1)  - add a branch_id
(2)  - add a customer_id
(3)  - loan_id

add a relation to represent an account:
account(*account_id, customer_id, branch_id, amount);

Amend the schema to allow users to know which customer borrowed money

customer(*first_name, last_name, address, date_joined, **loan)
Loan(*loan_id, amount, date, term, **customer)

* = primary key, ** = foreign key

*/

--Practice

create table branch (
    address_ TEXT, 
    city TEXT, 
    manager_name TEXT, 
    hrs TEXT, 
    has_atm BIT,
    branch_id INT, 
    primary key (branch_id)
);

create table customer (
    first_name TEXT, 
    last_name Text, 
    address_ text, 
    date_joined DATE,
    customer_id INT,
    loan_id INT,
    primary key(customer_id),
    FOREIGN KEY (loan_id)
        REFERENCES loan (loan_id)
);

create table loan(
    loan_id INT,
    amount INT,
    date_made DATE,
    term Date,
    customer_id INT,
    foreign key (customer_id)
        REFERENCES customer (customer_id)
);

create table account(
    account_id INT,
    customer_id INT,
    branch_id INT,
    amount INT,
    loan_id INT,
    PRIMARY KEY (account_id),
    FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id),
    FOREIGN KEY (loan_id)
        REFERENCES loan (loan_id),
    FOREIGN KEY (branch_id)
        references branch (branch_id)
);

insert into branch(city, manager_name, hrs, branch_id)
    values("Vancouver", "Jonas Hill", "10 hrs", 001);

insert into loan(loan_id, amount, date_made, customer_id)
    values (001, 2000, "01-01-2022", 005),
  (001, 2000, "01-01-2022", 003),
  (003, 500, "01-01-2022", 002),
  (003, 300, "01-01-2022", 005);

insert into customer(first_name, last_name, customer_id, loan_id)
    values("Anita", "Borg", 005, 001),
            ("Karl", "Lucas", 002,000);

/* Queries:  
Names of all brand Managers in Vancouver:*/
Select manager_name from branch
    where city = "Vancouver";

Select("----------");

/*Dates of all loans by customers with the name Anita Borg*/
Select date_made from loan,customer 
  where loan.customer_id == customer.customer_id 
  AND 
  customer.first_name ="Anita" and customer.last_name = "Borg";

/* Names of all people with loans more than 500*/
select * from loan, customer
  where loan.amount >500 
  and loan.customer_id = customer.customer_id
