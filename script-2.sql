/*
Напишите скрипт создания таблицы с параметрами:
название таблицы — ORDERS;
содержит в себе 4 столбца — id, date, customer_id,product_name, amount;
поле id будет первичным ключом, который инкрементируется каждый раз при создании заказа;
внешним ключом на поле id таблицы пользователей будет customer_id.
*/

create table ORDERS(
    id serial,
    date timestamp not null default current_timestamp,
    customer_id integer not null,
    product_name varchar(255) not null,
    amount integer not null,
    primary key (id),
    foreign key (customer_id) references customers (id),
    constraint orders_amount_check check (amount > 0)
);

/*
insert into ORDERS 
    (customer_id, product_name, amount)
values
    (1, 'Первый товар', 10),
    (1, 'Второй товар', 20),
    (2, 'Третий товар', 30),
    (2, 'Четвертый товар', 40),
    (3, 'Пятый товар', 50);
*/
