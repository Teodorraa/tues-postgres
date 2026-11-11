# pgAdmin basics homework

Database: `librarydb`; topic: books and readers.

The screenshots show the four homework tasks from the basics handout:

- `01-update-delete.png`: update The Hobbit to 21.90 and delete book 6 using WHERE.
- `02-order-by.png`: all five remaining books sorted by publication date.
- `03-where-text.png`: filter by the Cyrillic author name Иван Вазов.
- `04-where-number.png`: books priced below 20.
- `05-second-table.png`: create readers and insert three rows.
- `06-drop-table.png`: drop readers and verify it no longer exists.
- `07-timestamp.png`: store date, time, seconds and milliseconds.

Yes, PostgreSQL can store date and time with milliseconds using `TIMESTAMP(3)`, for example `2026-10-08 14:30:15.123`.
The precision `(3)` keeps three fractional digits of a second; plain `TIMESTAMP` supports up to six.
Source: [PostgreSQL date/time documentation](https://www.postgresql.org/docs/current/datatype-datetime.html).
