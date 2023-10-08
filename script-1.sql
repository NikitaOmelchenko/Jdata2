/*
Напишите скрипт создания таблицы с параметрами:
название таблицы — CUSTOMERS;
содержит в себе 5 столбцов — id, name, surname, age, phone_number;
поле id будет первичным ключом, который инкрементируется каждый раз при создании пользователя.
*/

create table CUSTOMERS(
    id serial,
    name varchar(255) not null,
    surname varchar(255),
    age smallint,
    phone_number varchar(30),
    primary key (id),
    constraint customers_age_check check (age >= 0) 
);

/*
insert into customers
    (name)
values
    ('Alexey'),
    ('Boris'),
    ('Vitaly');
*/
