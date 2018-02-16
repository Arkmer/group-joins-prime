--#1
select * from customers
join addresses on customers.id = addresses.customer_id;

--#2
select * from orders
join line_items on orders.id = line_items.order_id;

--#3
select * from warehouse_product
join products on warehouse_product.product_id = products.id
join warehouse on warehouse_product.warehouse_id = warehouse.id
where products.description = 'cheetos';

--#4
select * from warehouse_product
join products on warehouse_product.product_id = products.id
join warehouse on warehouse_product.warehouse_id = warehouse.id
where products.description = 'diet pepsi';

--#5
select count(orders.address_id), addresses.customer_id from addresses
join orders on orders.address_id = addresses.id
join customers on addresses.customer_id = customers.id
group by addresses.customer_id;

--#6
select count(customers.id) from customers;

--#7
select count(products.id) from products;

--#8
select sum(warehouse_product.on_hand), products.description from warehouse_product
join products on products.id = warehouse_product.product_id
where products.description = 'diet pepsi'
group by products.description;