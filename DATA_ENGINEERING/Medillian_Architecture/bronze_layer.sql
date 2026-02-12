--- creating the source tables --- 
create table retail (
    order_id varchar(30),
    order_timestamp	datetime,
    order_status varchar(30),
    customer_id	varchar(30),
    customer_name	varchar(30),
    customer_email	varchar(30),
    customer_phone	varchar(30),
    customer_city	varchar(30),
    customer_state	varchar(30),
    product_id	varchar(30),
    product_name	varchar(30),
    product_category varchar(30),	
    store_id	varchar(30),
    store_city	varchar(30),	
    store_state	varchar(30),	
    store_region	varchar(30),			
    quantity	int,
    unit_price	int,
    discount_amount	int,	
    payment_type varchar(30),		
    record_created_at	datetime,
    record_updated_at	datetime				
); 

create table payment_type_look_up(
    payment_type varchar(30),
    is_digital varchar(1)
);

create table product_category(
    product_category varchar(30),
    category_description varchar(50)
);
create table store_region_lookup(
    store_region varchar(20),
    region_head varchar(20)
);
--- source tables created -------------------------------------------------

---inserting the data into the tables ---

INSERT INTO retail VALUES
-- O1001
('O1001','2023-06-01 10:15:00','COMPLETED',
 'C001','Rahul Sharma','rahul.sharma@gmail.com','9876543210','Mumbai','MH',
 'P101','iPhone 14','Electronics',
 'S01','Mumbai','MH','West',
 1,70000.00,2000.00,'CARD',
 '2023-06-01 10:15:05','2023-06-01 10:15:05'),

-- O1002
('O1002','2023-06-01 10:45:00','COMPLETED',
 'C001','Rahul Sharma','rahul.sharma@gmail.com','9876543210','Mumbai','MH',
 'P102','AirPods','Electronics',
 'S01','Mumbai','MH','West',
 2,15000.00,0.00,'UPI',
 '2023-06-01 10:45:03','2023-06-01 10:45:03'),

-- O1003
('O1003','2023-06-02 11:30:00','CANCELLED',
 'C002','Anita Mehta','anita.mehta@yahoo.com','9123456789','Bangalore','KA',
 'P103','Office Chair','Furniture',
 'S02','Bangalore','KA','South',
 1,12000.00,1000.00,'CARD',
 '2023-06-02 11:30:02','2023-06-02 11:30:02'),

-- O1004
('O1004','2023-06-03 09:20:00','COMPLETED',
 'C003','John Dsouza','john.ds@gmail.com','9988776655','Delhi','DL',
 'P104','Running Shoes','Fashion',
 'S03','Delhi','DL','North',
 1,5000.00,500.00,'NETBANKING',
 '2023-06-03 09:20:04','2023-06-03 09:20:04'),

-- O1005
('O1005','2023-06-03 21:10:00','FAILED',
 'C002','Anita Mehta','anita.mehta@yahoo.com','9123456789','Bangalore','KA',
 'P101','iPhone 14','Electronics',
 'S02','Bangalore','KA','South',
 1,70000.00,0.00,'CARD',
 '2023-06-03 21:10:01','2023-06-03 21:10:01'),

-- O1006 (SCD – email changed)
('O1006','2023-06-04 08:05:00','COMPLETED',
 'C001','Rahul Sharma','rahul.new@gmail.com','9876543210','Pune','MH',
 'P105','Study Table','Furniture',
 'S04','Pune','MH','West',
 1,18000.00,2000.00,'UPI',
 '2023-06-04 08:05:03','2023-06-04 08:05:03'),

-- O1007 (late arriving record)
('O1007','2023-05-28 19:30:00','COMPLETED',
 'C004','Priya Iyer','priya.iyer@gmail.com','9001122334','Chennai','TN',
 'P106','Smart Watch','Electronics',
 'S05','Chennai','TN','South',
 1,22000.00,1000.00,'CARD',
 '2023-06-05 09:00:00','2023-06-05 09:00:00'),

-- Duplicate order_id (DQ issue)
('O1004','2023-06-03 09:20:00','COMPLETED',
 'C003','John Dsouza','john.ds@gmail.com','9988776655','Delhi','DL',
 'P104','Running Shoes','Fashion',
 'S03','Delhi','DL','North',
 1,5000.00,500.00,'NETBANKING',
 '2023-06-03 10:00:00','2023-06-03 10:00:00');


INSERT INTO product_category values
    ('Electron','Electronic'),
    ('Furniture','Home and Office'),
    ('Fashion','Clothing');

INSERT INTO payment_type_look_up
VALUES
('CARD','Y'),
('UPI','Y'),
('NETBANKING','Y'),
('COD','N');

INSERT INTO store_region_lookup
(store_region, region_head)
VALUES
('West',  'West Zone'),
('South', 'South Zone'),
('North', 'North Zone');

-----------------------------------------------00------------------------------