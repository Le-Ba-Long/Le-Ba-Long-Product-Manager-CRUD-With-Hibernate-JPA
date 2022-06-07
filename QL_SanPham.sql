CREATE DATABASE `ql_sanpham`;
use ql_sanpham;

/* Bảng Product*/
CREATE TABLE `product` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `price` DECIMAL(15,2) NOT NULL,
  `size`  int NOT NULL,
  `imageUrl` varchar(200) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Bảng Oder*/
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL PRIMARY KEY  AUTO_INCREMENT,
  `buydate` varchar(100) NOT NULL,
  `custommername` varchar(100) NOT NULL,
  `custommerphone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Bảng OrderDetail*/
CREATE TABLE `OrderDetail` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ProductId` int(11) NOT NULL,
  `NumberOfProduct` int NOT NULL,
  `OrderId` int(11) NOT NULL,
   CONSTRAINT fk_ProductId FOREIGN KEY(ProductId) REFERENCES product(id),
   CONSTRAINT fk_OrderId FOREIGN KEY(OrderId) REFERENCES orders(OrderId)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SELECT * FROM ql_sanpham.orders;
SELECT * FROM ql_sanpham.orderdetail;

 SELECT *
FROM OrderDetail
INNER JOIN product 
ON OrderDetail.ProductId=product.id;

Insert into product(name,provider,price,size,imageUrl,description)
 values(N'QUẦN SHORT HIIT HEAT.RDY DESIGNED 4 TRAINING',N'Adidas',1500000,30,'https://s1.storage.5giay.vn/image/2018/06/20180610_b823ccd81bb1fe87da24d26e7689529e_1528610651.jpeg',N'Quần Áo Thể Thao');
 
Insert into product(name,provider,price,size,imageUrl,description)
 values(N'Áo',N'Adidas',15000,29,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/496ed38dc2f4453e8b7badad00869b63_9366/Quan_Short_Tennis_Graphic_Club_Xam_HB9085_21_model.jpg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'FI BP2 WVJK',N'Adidas',2100000,32,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e13ec4a95aaf4d1ab1baadf801135337_9366/FI_BP2_WVJK_DJen_HE7428_21_model.jpg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'ÁO THUN BADGE OF SPORT FUTURE ICON',N'Adidas',750000,28,'https://s1.storage.5giay.vn/image/2018/06/20180610_b823ccd81bb1fe87da24d26e7689529e_1528610651.jpeg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'ÁO KHOÁC THỂ THAO ADICOLOR CLASSICS PRIMEBLUE SST',N'Adidas',2100000,30,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/b0ceddccf4b24d49966aab8a00d4d1b0_9366/Ao_khoac_the_thao_Adicolor_Classics_Primeblue_SST_DJen_GF0198_01_laydown.jpg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'ÁO THUN DISNEY MICKEY AND FRIENDS',N'Adidas',950000,30,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/489f5db79d2b49dc90fbad8f00a904e3_9366/Ao_Thun_Disney_Mickey_and_Friends_trang_HD0827_21_model.jpg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'QUẦN DỆT KIM 3 SỌC FUTURE ICONS',N'Adidas',1500000,30,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/fbead6af028e4409a4bbadd1004b03e0_9366/Quan_Det_Kim_3_Soc_Future_Icons_DJen_HE7445_21_model.jpg',N'Quần Áo Thể Thao');
 
 Insert into product(name,provider,price,size,imageUrl,description)
 values(N'SWIMSHORT',N'Adidas',95000,30,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/1f10fbff5cf14bbe9098ae6d010665f0_9366/SWIMSHORT_Hong_HR7903_21_model.jpg',N'Quần Áo Thể Thao');
