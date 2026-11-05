# Lab 15: Indexes and Adding a Row

**Name:** Sahil Raza  
**Roll No:** 2410303422 
**Student ID:** BCS2024382  
**Course:** BCS552 - DBMS & SQL Lab  
**University:** Invertis University, Bareilly (B.Tech CSE)

## Aim
Create an index on a column, read rows by that column, and add a row.

## Theory
- An **index** is a separate structure that helps the DBMS find rows quickly, like the index at the end of a book. Without it, the DBMS may have to read every row.
- `CREATE INDEX idx_city ON customer (city)` creates an index on the city column.
- Indexes make **searching** (WHERE, JOIN, ORDER BY) faster, but they use extra space and make INSERT, UPDATE and DELETE a little slower.
- **PRIMARY KEY** makes a column unique and not NULL, and the DBMS indexes it automatically. **NOT NULL** means the column must always have a value.
- Adding customer 5 works because 5 is not already used as a customer_id. A repeated primary key would give an error.

## Files in this folder
- `assignment15.sql`: set-up and the SQL statements of every task.
- `output.txt`: the result of running the file.

## Tasks and results
### Task 1
Create an index named idx_city on the city column of the customer table.

```sql
CREATE INDEX idx_city ON customer (city);
```

Result: statement executed successfully (no rows to show).

### Task 2
Show the name of the customers who live in Delhi, sorted by name.

```sql
SELECT name FROM customer WHERE city = 'Delhi' ORDER BY name;
```

Result:
```
name
------
Asha
Deepak
```

### Task 3
Add a customer with customer_id 5, name Arjun and city Pune with one INSERT.

```sql
INSERT INTO customer (customer_id, name, city) VALUES (5, 'Arjun', 'Pune');
SELECT * FROM customer;
```

Result:
```
customer_id  name    city
-----------  ------  ------
          1  Kiran   Kochi
          2  Deepak  Delhi
          3  Lata    Mumbai
          4  Asha    Delhi
          5  Arjun   Pune
```

## How to run
Open `assignment15.sql` in MySQL Workbench (or any SQL tool) and run it. Take a screenshot of each task's result and save it in this folder.
