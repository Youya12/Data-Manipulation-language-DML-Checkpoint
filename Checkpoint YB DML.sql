create table customer (
customer_id varchar (20) primary key, 
customer_name varchar (20), 
customer_tel integer);

create table product (
product_id varchar (20) primary key, 
product_name varchar(30), 
category varchar (30), 
price decimal);

create table orders (
customer_id varchar (20),
product_id varchar (20),
constraint FK1 foreign key (customer_id) references customer (customer_id),
constraint FK2 foreign key (product_id) references product (product_id),
order_date date, 
quantity integer, 
total_amount decimal
);

insert into customer (customer_id, customer_name, customer_tel) values 
('C01','ALI',71321009),
('C02','ASMA',77345823);

insert into  product (product_id, product_name, category, price) values
('P01','Samsung Galaxy S20','Smartphone',3299),
('P02','ASUS Notebook','PC',4599);

insert into orders (customer_id, product_id, order_date, quantity, total_amount) values
('C01','P02',NULL,2,9198),
('C02','P01','2020-05-28',1,3299);