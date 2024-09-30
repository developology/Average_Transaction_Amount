show databases;
create database Bank;

-- create table 
create table Transaction(
Account_Number int Primary Key,
Account_Name Varchar(30)
);

-- to add a new column into table
ALTER TABLE Transaction
ADD COLUMN Average_Transaction BigInt;

-- insert values into table
INSERT INTO Transaction (Account_Number, Account_Name, Average_Transaction)
VALUES
(1, 'User_1', 15000),
(2, 'User_2', 16000),
(3, 'User_3', 17000),
(4, 'User_4', 18000),
(5, 'User_5', 19000),
(6, 'User_6', 20000),
(7, 'User_7', 21000),
(8, 'User_8', 22000),
(9, 'User_9', 23000),
(10, 'User_10', 24000),
(11, 'User_11', 25000),
(12, 'User_12', 26000),
(13, 'User_13', 27000),
(14, 'User_14', 28000),
(15, 'User_15', 29000),
(16, 'User_16', 30000),
(17, 'User_17', 31000),
(18, 'User_18', 32000),
(19, 'User_19', 33000),
(20, 'User_20', 34000),
(21, 'User_21', 35000),
(22, 'User_22', 36000),
(23, 'User_23', 37000),
(24, 'User_24', 38000),
(25, 'User_25', 39000),
(26, 'User_26', 40000),
(27, 'User_27', 41000),
(28, 'User_28', 42000),
(29, 'User_29', 43000),
(30, 'User_30', 44000),
(31, 'User_31', 45000),
(32, 'User_32', 46000),
(33, 'User_33', 47000),
(34, 'User_34', 48000),
(35, 'User_35', 49000),
(36, 'User_36', 50000),
(37, 'User_37', 51000),
(38, 'User_38', 52000),
(39, 'User_39', 53000),
(40, 'User_40', 54000),
(41, 'User_41', 55000),
(42, 'User_42', 56000),
(43, 'User_43', 57000),
(44, 'User_44', 58000),
(45, 'User_45', 59000),
(46, 'User_46', 60000),
(47, 'User_47', 61000),
(48, 'User_48', 62000),
(49, 'User_49', 63000),
(50, 'User_50', 64000),
(51, 'User_51', 65000),
(52, 'User_52', 66000),
(53, 'User_53', 67000),
(54, 'User_54', 68000),
(55, 'User_55', 69000),
(56, 'User_56', 70000),
(57, 'User_57', 71000),
(58, 'User_58', 72000),
(59, 'User_59', 73000),
(60, 'User_60', 74000),
(61, 'User_61', 75000),
(62, 'User_62', 76000),
(63, 'User_63', 77000),
(64, 'User_64', 78000),
(65, 'User_65', 79000),
(66, 'User_66', 80000),
(67, 'User_67', 81000),
(68, 'User_68', 82000),
(69, 'User_69', 83000),
(70, 'User_70', 84000),
(71, 'User_71', 85000),
(72, 'User_72', 86000),
(73, 'User_73', 87000),
(74, 'User_74', 88000),
(75, 'User_75', 89000),
(76, 'User_76', 90000),
(77, 'User_77', 91000),
(78, 'User_78', 92000),
(79, 'User_79', 93000),
(80, 'User_80', 94000),
(81, 'User_81', 95000),
(82, 'User_82', 96000),
(83, 'User_83', 97000),
(84, 'User_84', 98000),
(85, 'User_85', 99000),
(86, 'User_86', 100000),
(87, 'User_87', 101000),
(88, 'User_88', 102000),
(89, 'User_89', 103000),
(90, 'User_90', 104000),
(91, 'User_91', 105000),
(92, 'User_92', 106000),
(93, 'User_93', 107000),
(94, 'User_94', 108000),
(95, 'User_95', 109000),
(96, 'User_96', 110000),
(97, 'User_97', 111000),
(98, 'User_98', 112000),
(99, 'User_99', 113000),
(100, 'User_100', 114000);

-- to see the table and its values
select * from Transaction;

-- we cannot use a variable directly in SQL

-- SELECT AVG(Average_Transaction) AS average_values FROM Transaction;
-- select Average_Transaction from Transaction where Average_Transaction >= average_values from Transaction;

-- Assigning a Variable in MySQL
-- If you are using MySQL, you can assign the result to a 
-- user-defined variable and then use that variable in your query:

SET @average_values = (SELECT AVG(Average_Transaction) FROM Transaction);

SELECT Account_name,Average_Transaction 
FROM Transaction 
WHERE Average_Transaction >= @average_values;
