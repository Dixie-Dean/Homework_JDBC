create schema my_table;

create table my_table.CUSTOMERS(
    id serial primary key,
    name varchar,
    surname varchar,
    age integer,
    phone_number varchar
);

insert into my_table.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Grettir', 'Asmundson', 25, '789235');
insert into my_table.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Egil', 'Skallagrímsson', 37, '739856');
insert into my_table.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Alexey', 'Orlov', 49, '794374');

select* from my_table.CUSTOMERS c;