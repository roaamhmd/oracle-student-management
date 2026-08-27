# Simple University Students Management System (Oracle SQL & PL/SQL)

A lightweight Oracle Database project designed to manage university students, course enrollments, and calculate student averages using PL/SQL functions with exception handling.

## Features
- **Database Schema**: Relational design with `students` and `enrollments` tables.
- **Data Queries**: SQL JOIN queries to retrieve formatted enrollment records.
- **PL/SQL Function**: `get_student_average` function to calculate and return average grades.
- **Exception Handling**: Handles missing enrollments and execution errors gracefully.

## Files Included
1. `01_schema.sql` - Table creation DDL statements.
2. `02_data.sql` - Sample data insertion.
3. `03_queries.sql` - Relational JOIN query.
4. `04_function.sql` - Function creation and test suite.

## How to Run
1. Open **Oracle Live SQL** or **Oracle SQL Developer**.
2. Run `01_schema.sql` to create tables.
3. Run `02_data.sql` to insert sample data.
4. Run `03_queries.sql` to test the JOIN query.
5. Run `04_function.sql` and check **DBMS_OUTPUT** for function logs.