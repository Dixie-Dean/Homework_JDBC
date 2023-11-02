select c.name, c.surname, o.product_name, o.amount from my_table.customers c
join my_table.orders o on c.id = o.customer_id
where lower(c.name) = :name