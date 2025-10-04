> The complete address data is not available for the property. You need to use `LIKE` operator to find the correct property for update.

> If the database is running in safe mode, it will only allow you to update data by `PRIMARY KEY`. You can check whether it is enabled by the command `SELECT @@sql_safe_updates;` If it is enabled you will get **1** as a response, do not forget to disable it using `SET SQL_SAFE_UPDATES = 0;` command.
