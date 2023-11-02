create table my_table.ORDERS(
    id serial primary key,
    date varchar,
    product_name varchar,
    amount integer,
    customer_id integer
);

insert into my_table.ORDERS(date, product_name, amount, customer_id)
VALUES ('23.10.23', 'Sword', 10, 1);
insert into my_table.ORDERS(date, product_name, amount, customer_id)
VALUES ('18.10.23', 'Shield', 4, 2);
insert into my_table.ORDERS(date, product_name, amount, customer_id)
VALUES ('08.10.23', 'Spear', 8, 3);

alter table my_table.ORDERS
add constraint fk
foreign key (customer_id)
references my_table.customers(id);

select * from my_table.ORDERS o;