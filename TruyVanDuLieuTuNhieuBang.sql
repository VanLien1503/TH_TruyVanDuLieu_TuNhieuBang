use classicmodels;
/*
 lấy customerNumber,
 customerName,
 phone,
 paymentDate,
 amount
 từ hai bảng customers và payments
 với điều kiện là các khách hàng sống ở thành phố
 Las Vegas
 thực hiện truy vấn sau:
 */

 select customers.customerNumber,customerName,phone,paymentDate,amount,city
from  customers
inner join payments p on customers.customerNumber = p.customerNumber
where city='Las Vegas';

/*
Sử dụng left join để lấy dữ liệu từ hai bảng:

tìm tất cả các đơn hàng thuộc từng khách hàng,
 */

 select customers.customerNumber, customers.customerNumber, orders.orderNumber,orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber;

/*
 Để tìm tất cả khách hàng
 chưa đặt hàng bất kỳ sản phẩm nào,
 Ta có thể sử dụng truy vấn sau:
 */
select customers.customerNumber,customers.customerName,orders.orderNumber,orders.status
from customers
left join orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;
