# Decisions I made and why

I used `menu_items`, `students`, `orders` and `order_items` to keep the menu, people, order dates and individual choices separate.
The first three tables have an `id` primary key, while `order_items` uses `(order_id, student_id, menu_item_id)` as its primary key so the same person's item cannot be entered twice in one order; extra pieces go in `quantity`.
Foreign keys connect each order item to an existing order, student and menu item, and required columns are `NOT NULL` with positive quantities and prices.
I used `DATE` for order dates and `NUMERIC(8,2)` for money, and saved the price at ordering time in `unit_price` so later menu price changes do not change old bills.
I deliberately do not store each person's bill or an order total because both can be calculated with `SUM(quantity * unit_price)`.
