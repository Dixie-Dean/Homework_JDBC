create schema my_table;

create table my_table.CUSTOMERS(
    id serial primary key,
    name varchar,
    surname varchar,
    age integer,
    phone_number varchar,
    date varchar,
    product_name varchar,
    amount integer
);

insert into my_table.CUSTOMERS(name, surname, age, phone_number, date, product_name, amount)
VALUES ('Grettir', 'Asmundson', 25, '789235', '23.10.23', 'Sword', 10);
insert into my_table.CUSTOMERS(name, surname, age, phone_number, date, product_name, amount)
VALUES ('Egil', 'Skallagrímsson', 37, '739856', '18.10.23', 'Shield', 4);
insert into my_table.CUSTOMERS(name, surname, age, phone_number, date, product_name, amount)
VALUES ('Alexey', 'Orlov', 49, '794374', '08.10.23', 'Spear', 8);

select * from my_table.CUSTOMERS;