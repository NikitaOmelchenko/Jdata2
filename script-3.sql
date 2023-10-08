/*
Напишите скрипт, который будет возвращать из таблиц поля product_name для пользователей с именем alexey независимо от регистра ввода имени.
*/

select o.product_name
from ORDERS o
join customers c on o.customer_id = c.id
where lower(c."name")='alexey';

-- альтернативный вариант:

select product_name 
from ORDERS
where customer_id in (
    select id from customers where lower(name)='alexey'
);


/*
product_name
------------
Первый товар
Второй товар
*/
