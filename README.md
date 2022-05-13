# JOB06 PLSQL Triggers

-  **Example 1.** Trigger `new_employee` that inserts a record into the table seniority each time a record is inserted into the employee table. The years column will be set to 0. It would fire, for example, on command:
```
INSERT employee VALUES (7,'hagsdhgsd','111',20);
```
- **Example 2.** Trigger `delete_old` that deletes the record from the table seniority when the corresponding record is deleted from the employee table. It would fire after for instance:
```
DELETE FROM employee command WHERE employeeid = 5;
```
- **Example 3.** Trigger `update_employee` that increases the employee's salary employed by 50 each time the number of years of employment is increased by 1 antiquity. IF THE UPDATE DOES NOT INCREASE BY 1 THE UPDATE IS NOT PERFORMED.
```
UPDATE seniority SET years = years + 1 WHERE employeeid = 5;
```
- **Example 4.** Create a trigger called `update_item` that subtracts from the stock column of the item table the quantities that have been sold of that item. Therefore, it must be done every time a record is inserted in the sales table.
```
INSERT INTO order sale VALUES (null, 1, 3);
```
- **Example 5.** Create the trigger `record_history` that every time a record is deleted from the article table record that record in the article_history table (id, name, user who performed the deletion and the date and time of the deletion). For the trigger to be activated, you would have to do something like this:
```
DELETE FROM item WHERE price < 20;
DELETE FROM article WHERE id = 2;
DELETE FROM item;
```
- **Example 6.** Create a trigger called `after_delete` that inserts a record into the audit table with all the information of the record deleted from the table t1.
