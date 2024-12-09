```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```
This revised query explicitly handles NULL values using the `IS NULL` operator.  It correctly includes employees with NULL salaries in the results if they belong to the 'Sales' department.  Alternatively, if you want to exclude employees with NULL salaries, you can use:
```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```