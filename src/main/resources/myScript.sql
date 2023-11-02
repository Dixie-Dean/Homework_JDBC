select o.product_name from my_table.customers c
join my_table.orders o on c.id = o.customer_id
where c.name = :name