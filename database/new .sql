create database hostel;
------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS admin(
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  username varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(300) NOT NULL,
  reg_date varchar(255)NOT NULL,
  updation_date varchar(255) NOT NULL);
----------------------------------------------------------------------------------------------------

INSERT INTO admin values
(1, 'admin', 'code.lpu1@gmail.com', 'Test@1234', '2016-04-04', '2016-04-17');
---------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS adminlog (
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  adminid int NOT NULL,
  ip varbinary(16) NOT NULL,
  logintime varchar(255));
---------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS courses (
  id int(11) AUTO_INCREMENT NOT NULL primary key,
  course_code varchar(255) NOT NULL,
  course_sn varchar(255) NOT NULL,
  course_fn varchar(255) NOT NULL,
  posting_date varchar(255)NOT NULL
);
----------------------------------------------------------------------------------------
INSERT INTO courses VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2016-04-11');
---------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS registration(
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  roomno int(11)NOT NULL,
  seater int(11) NOT NULL,
  feespm int(11) NOT NULL,
  foodstatus int NOT NULL,
  stayfrom date NOT NULL,
  duration int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  regno int NOT NULL,
  firstName varchar(500) NOT NULL,
  middleName varchar(500) NOT NULL,
  lastName varchar(500) NOT NULL,
  gender varchar(250) NOT NULL,
  contactno bigint(11) NOT NULL,
  emailid varchar(500) NOT NULL,
  egycontactno bigint(11) NOT NULL,
  guardianName varchar(500) NOT NULL,
  guardianRelation varchar(500) NOT NULL,
  guardianContactno bigint(11) NOT NULL,
  corresAddress varchar(500) NOT NULL,
  corresCIty varchar(500) NOT NULL,
  corresState varchar(500) NOT NULL,
  corresPincode int(11) NOT NULL,
  pmntAddress varchar(500) NOT NULL,
  pmntCity varchar(500) NOT NULL,
  pmnatetState varchar(500) NOT NULL,
  pmntPincode int(11) NOT NULL,
  postingDate varchar(255),
  updationDate varchar(500) NOT NULL
);





INSERT INTO registration VALUES
(6, 100, 5, 8000, 0, '2016-04-22', 5, 'Bachelor  of Technology', 10806121, 'code', '', 'projects', 'male', 8285703354, 'code.lpu1@gmail.com', 0, 'XYZ', 'Mother', 8285703354, 'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass', 'Aligarh', 'EPE', 202001, 'H n0 18/1 Bihari Puram Phase-1 Melrose Bye Pass', 'Aligarh', 'EPE', 202001, '2016-04-16 08:24:09', ''),
(7, 100, 5, 8000, 1, '2016-06-17', 4, 'Bachelor of Engineering', 108061211, 'code', 'test', 'projects', 'male', 8467067344, 'test@gmail.com', 8285703354, 'test', 'test', 9999857868, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, '2016-06-23 11:54:35', ''),
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(9, 132, 5, 2000, 1, '2016-06-28', 6, 'Bachelor of Engineering', 586952, 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', 8285703354, 'demo', 'demo', 8285703354, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, '2016-06-26 16:40:07', ''); 
-----------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS rooms (
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  seater int(11) NOT NULL,
  room_no int(11) NOT NULL,
  fees int(11) NOT NULL,
  posting_date varchar(255)
);
-----------------------------------------------------------
INSERT INTO rooms VALUES
(1, 5, 100, 8000, '2016-04-11'),
(2, 2, 201, 6000, '2016-04-12'),
(3, 2, 200, 6000, '2016-04-12'),
(4, 3, 112, 4000, '2016-04-12'),
(5, 5, 132, 2000, '2016-04-12'); 
------------------------------------------------
CREATE TABLE IF NOT EXISTS states(
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  State varchar(150)
);





INSERT INTO states VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'EPE'),
(36, 'West Bengal');
----------------------
CREATE TABLE IF NOT EXISTS userlog(
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  userId int(11) NOT NULL,
  userEmail varchar(255) NOT NULL,
  userIp varbinary(16) NOT NULL,
  city varchar(255) NOT NULL,
  country varchar(255) NOT NULL,
  loginTime varchar(255) NOT NULL
);
INSERT INTO userlog VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26'),
(6, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2016-06-26');
-----------------------------------------------
CREATE TABLE IF NOT EXISTS userregistration(
  id int(11)AUTO_INCREMENT NOT NULL primary key,
  regNo varchar(255) NOT NULL,
  firstName varchar(255) NOT NULL,
  middleName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  gender varchar(255) NOT NULL,
  contactNo bigint(20) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  regDate varchar(255),
  updationDate varchar(45) NOT NULL,
  passUdateDate varchar(45) NOT NULL
);

INSERT INTO userregistration VALUES
(10, '108061211', 'code', 'test', 'projects', 'male', 8467067344, 'test@gmail.com', 'Test@123', '2016-06-22 04:21:33', '23-06-2016 11:04:15', '22-06-2016 05:16:49'),
(19, '102355', 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', '6786786786', '2016-06-26 16:33:36', '', ''),
(20, '586952', 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', '8596185625', '2016-06-26 16:40:07', '', '');

--




--------------------------------------------------
