create table my_table.orders(
    id serial primary key,
    date varchar,
    product_name varchar,
    amount integer
);

insert into my_table.orders(date, product_name, amount)
VALUES ('23.10.23', 'Sword', 10);
insert into my_table.orders(date, product_name, amount)
VALUES ('18.10.23', 'Shield', 4);
insert into my_table.orders(date, product_name, amount)
VALUES ('08.10.23', 'Spear', 8);

alter table my_table.orders add column customer_id serial;

alter table my_table.orders
    add constraint fk1
        foreign key (customer_id)
            references my_table.customers(id);


select * from my_table.orders o;

drop table my_table.orders