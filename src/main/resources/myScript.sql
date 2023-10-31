select o.product_name, c.name from my_table.orders o inner join my_table.customers c on o.customer_id = c.id
where lower(name) = :name;