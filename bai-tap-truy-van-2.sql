use quanlybanhang;

 insert into Customer
 values (1, 'Minh Quan', 10),
 (2, 'Ngoc Oanh', 20),
 (3, 'Hong Ha', 50);
 
 insert into CusOrder
 values (1, 1, '2006-03-21', null),
 (2, 2, '2006-03-23' , null),
 (1, 3, '2006-03-16', null);
 
 insert into Product
 values (1, 'May Giat', 3),
  (2, 'Tu Lanh', 5),
  (3, 'Dieu Hoa', 7),
 (4, 'Quat', 1),
 (5, 'Bep Dien', 2);
 
insert into orderdetail
values (1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select oID, oDate, oTotalPrice
from cusOrder;

select CusOrder.oID, Customer.cName, Product.pName, OrderDetail.odQTY
from CusOrder join customer on customer.cID = Cusorder.cID
join orderdetail on orderdetail.oID = Cusorder.oID
join product on product.pID = orderdetail.pID;

select cID, cName
from customer 
where cID not in (select cID from cusorder);

select co.oID, co.oDate, sum(od.odqty * p.pPrice)
from cusOrder co join orderDetail od on (co.oID = od.oID) 
join product p on p.pID = od.pID
group by oID;