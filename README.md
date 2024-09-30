# Average_Transaction_Amount

### Question:
Write a SQL query to find the average transaction amount for each account, but only for those accounts where the average transaction amount exceeds the overall average transaction amount across all accounts. Also, include the account name in the result set.

### Answer Logic:
Step 1: Insert some values into the Database called "Bank" and a table called "Transaction". (100 records in my case)

Step 2: The transaction table can contain columns like Account_name, Account_Transaction,

Step 3: Get the average of all transactions using the AVG(column_name) function and store it in its variable.

Step 4: Compare Individual Transactions to the AVG(column_name) value with only those whose average transaction amount exceeds overall average.

### The issue I faced while solving:
I thought that a variable made up while an query could be stored and used in other queries as well just as in other programming languages. However it's not the case with SQL, we need to have a SET function assigned to get a variable to store a value fetched via a query. If you are using MySQL, you can assign the result to a user-defined variable and then use that variable in your query

### WHAT I TRIED:
-- SELECT AVG(Average_Transaction) AS average_values FROM Transaction;
-- select Average_Transaction from Transaction where Average_Transaction >= average_val

### WHAT I SHOULD HAVE DONE:
-- SET @average_values = (SELECT AVG(Average_Transaction) FROM Transaction);
-- SELECT Account_name,Average_Transaction 
-- FROM Transaction 
-- WHERE Average_Transaction >= @average_values;

### OUTPUT:
![image](https://github.com/user-attachments/assets/e0d03d5c-3aa9-442d-9e44-d54901c507e2)
