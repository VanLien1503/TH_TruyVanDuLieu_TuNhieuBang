/*
Sử dụng csdl classicmodels
để thực hiện các truy vấn với các hàm tập hợp
kết hợp với mệnh đề group by, having.
 */
 select status from orders;
select status
from orders
group by status;
/*
 đơn đặt hàng trong mỗi trạng thái,
 chúng ta có thể sử dụng hàm
 COUNT với mệnh đề GROUP BY như sau:
 */
 select status,COUNT(*) 'So Luong Status'
from orders
group by status;

/*
  Sử dụng group by
  với hàm tập hợp truy vấn trên hai bảng.
  orders và orderdetails.

  tính tổng số tiền
  của các đơn hàng theo trạng thái đặt hàng.

  sử dụng lệnh inner join
  để kết nối 2 bảng và
  sử dụng hàm sum để tính tổng số tiền,
  nhóm theo trường status.
 */

 select status,sum(quantityOrdered*priceEach)as amount
from orders
inner join orderdetails o on orders.orderNumber = o.orderNumber
group by status;

/*
  tính tổng tiền
  của từng đơn hàng,
  thực hiện lệnh truy vấn sau:
 */
 select orderNumber,sum(quantityOrdered*priceEach)as total
from orderdetails
group by orderNumber;

/*
 Để lọc các nhóm được trả về bởi mệnh đề GROUP BY,
 chúng ta sử dụng mệnh đề HAVING.
 Truy vấn sau đây sử dụng mệnh đề HAVING
 để bao gồm tổng doanh thu
 của những năm lớn hơn năm 2003.
 */

 select year(orderDate) as year , sum(quantityOrdered*priceEach) as total
from orders
inner join orderdetails o on orders.orderNumber = o.orderNumber
where status = 'shipped'
group by year
having year>2003;

