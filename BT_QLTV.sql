create database quanlythuvien;
use quanlythuvien;
create table books(
    book_id int not null ,
    book_id_category int not null ,
    book_name nvarchar(50) not null,
    constraint pk_book primary key (book_id)
);
create table category(
    category_id int,
    category_name nvarchar(50),
    constraint FK_category foreign key(category_id)references books(book_id)
);

create table student(
    student_id int,
    student_name nvarchar(50),
    student_address nvarchar(255),
    student_mail nvarchar(255),
    constraint PK_student primary key (student_id)
);
create table librarian(
    librarian_id int,
    librarian_name nvarchar(50),
    librarian_phone int,
    constraint PK_librarian primary key (librarian_id)
);

create table borrow_order(
    borrow_order_id int,
    borrow_date date,
    student_id int,
    librarian_id int,
    constraint FK_student_id foreign key (student_id)references student(student_id),
    constraint FK_librarian_id foreign key (librarian_id)references librarian(librarian_id),
    constraint PK_borrow_order primary key (borrow_order_id)

);