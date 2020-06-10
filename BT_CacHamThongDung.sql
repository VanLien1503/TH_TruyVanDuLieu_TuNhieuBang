create database code_gym;
use code_gym;
create table student(
    ID int,
    Ten nvarchar(50),
    Tuoi int,
    KhoaHoc nvarchar(50),
    SoTien double
);
insert into student value (1,'Hoang',21,'CNTT',400000);
insert into student value (2,'Viet',19,'CNTT',320000);
insert into student value (3,'Thanh',18,'CNTT',400000);
insert into student value (4,'Nhan',19,'CNTT',450000);
insert into student value (5,'Huong',20,'CNTT',500000);
insert into student value (5,'Huong',20,'CNTT',200000);

/*
 Viết câu lệnh
 hiện thị tất cả các dòng
 có tên là Huong
 */
 select *
from student
where Ten like 'Huong';

/*
 iết câu lệnh
 lấy ra tổng số tiền của Huong
 */
 select sum(SoTien)
from student
where Ten like 'Huong';
/*
  Viết câu lệnh lấy ra
  tên danh sách của tất cả học viên,
  không trùng lặp
 */
select Ten
from student
order by Ten;