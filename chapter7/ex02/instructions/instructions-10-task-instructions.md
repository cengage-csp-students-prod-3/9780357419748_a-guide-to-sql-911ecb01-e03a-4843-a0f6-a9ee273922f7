To complete Tasks 10 - 18, run the following command to explicitly create the user accounts.

```sql
CREATE USER 'OLIVER', 'CRANDALL', 'PEREZ', 'JOHNSON', 'KLEIN', 'ADAMS';
```

> This environment is running MySQL 8.0+, which no longer supports implicitly creating users via the `GRANT` command.
