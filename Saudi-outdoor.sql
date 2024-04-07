create schema stage9;
use stage9;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `activity` (
  `Activity_ID` int(11) NOT NULL,
  `Activity_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `activity` (`Activity_ID`, `Activity_name`) VALUES
(1, 'Hiking'),
(2, 'Camping'),
(3, 'car trip'),
(4, 'Sightseeng'),
(5, 'Photographing'),
(6, 'Biking'),
(7, 'Archey');

select * from activity;


CREATE TABLE `region` (
  `Region_Number` int(11) NOT NULL,
  `Region_Name` varchar(30) NOT NULL,
  `climate` varchar(30) NOT NULL,
  `compass` varchar(45) NOT NULL,
  `nature` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `region` (`Region_Number`, `Region_Name`, `climate`, `compass`, `nature`) VALUES
(1, 'Central', 'Continental Dry', 'Central', 'Dessert'),
(2, 'Eastern', 'Humid', 'East', 'Grassland'),
(3, 'Southern', 'Dry and Cool', 'South', 'Hill Range'),
(4, 'Western', 'Mixed', 'West', 'Hill Range and Coast Side'),
(5, 'Northan', 'Dry and Freezy', 'North', 'Hill Range');

select * from region;


CREATE TABLE `sights` (
  `Sight_Number` int(11) NOT NULL,
  `Sight_Type` varchar(15) DEFAULT NULL,
  `Sight_Name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `About` varchar(20) DEFAULT NULL,
  `SR_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `sights` (`Sight_Number`, `Sight_Type`, `Sight_Name`, `About`, `SR_no`) VALUES
(1, 'cave', 'كهف العقرب الاسود', 'depth: 500 m ', 5),
(2, 'valley', 'وادي ابا القور', 'lenght: 180 km', 5),
(3, 'mountain', 'جبل اجا و سلمى', 'height: 1350 m', 5),
(4, 'mountain', 'جبل قيرينس', NULL, 5),
(5, 'mountain', 'جبل سمراء', NULL, 5),
(6, 'mountain', 'جبل محجة', 'height: 100 m ', 5),
(7, 'mountain', 'جبل الجرهدي', 'height: 4530 m', 5),
(8, 'mountain', 'جبل حلوان', 'height: 1228 m', 5),
(9, 'mountain', 'قارة المزاد', NULL, 5),
(10, 'mountain', 'جبل لس', 'height: 1121 m', 5),
(11, 'mountain', 'جبل طوقة', 'height: 1039 m', 5),
(12, 'mountain', 'جبل راف', 'height: 979 m', 5),
(13, 'plateau', 'هضبة الحجرة', 'height: 502 m', 5),
(14, 'mountain', 'جبل منيفة', 'height: 1125 m', 5),
(15, 'mountain', 'جبل اللوز', 'height: 2580 m', 5),
(16, 'mountain', 'صخرة الفيل', 'height: 52 m', 5),
(17, 'mountain', 'مدائن شعيب', NULL, 5),
(18, 'plateau', 'هضاب قرية بجدة', 'height: 750 m', 5),
(19, 'mountain', 'جبل نعيج', 'height: 1023 m', 5),
(20, 'mountain', 'جبل عكمة', NULL, 5),
(21, 'plain', 'غراميل العلا', NULL, 5),
(22, 'mountain', 'جبل قارة', 'height: 70 m', 2),
(23, 'mountain', 'جبل الشعبة', 'height: 2000 m', 2),
(24, 'mountain', 'الجبل الاحمر', 'height: 2536 m', 2),
(25, 'cave', 'كهف المستودون', NULL, 2),
(26, 'mountain', 'جبل ابو  حصيص', 'height: 100 m', 2),
(27, 'mountain', 'جبل التثليم', 'height: 230 m', 2),
(28, 'plateau', 'هضبة الصمان', 'height: 1000 m', 2),
(29, 'mountain', 'جبل المريكبات', 'height: 30 m ', 2),
(30, 'cave', 'كهوف جبل قارة', 'square meter: 1400 m', 2),
(31, 'cave', 'كهف المفاجأة', NULL, 2),
(34, 'forest', 'غابة رغدان', 'height: 1700 m', 3),
(35, 'mountain', 'الجبل الاخضر', NULL, 3),
(36, 'mountain', 'جبل حزنة', 'height: 389 m', 3),
(37, 'mountain', 'عقبة حميدة', 'lenght: 6 km', 3),
(38, 'forest', 'غابة القندل', NULL, 3),
(39, 'mountain', 'جبال فيفا', 'height: 3000 m', 3),
(40, 'village', 'رجال ابمع', 'height: 1976 m', 3),
(41, 'mountain', 'جبال عسير', 'height: 3980 m', 3),
(42, 'valley', 'ذي عين', 'height: 1985 m', 3),
(43, 'mountain', 'جبل نهران', 'height: 2837 m ', 3),
(44, 'mountain', 'جبل المجاز', 'height: 2902 m', 3),
(45, 'mountain', 'سد الجنابين', 'lenght: 180 m', 3),
(46, 'mountain', 'جبل السودة', 'height: 2999 m ', 3),
(47, 'mountain', 'جبل مرير', 'height: 2712 m', 3),
(48, 'valley', 'وادي نجران', 'lenght: 180 km', 3),
(49, 'mountain', 'مزرعة الزيتونة', 'square meter: 49', 3),
(50, 'mountain', 'الجبل الاسود', 'height: 3015 m', 3),
(51, 'forest', 'غابة خيرة', 'square meter: 20000', 3),
(52, 'mountain', 'عقبة غيثان', 'lenght: 5 km', 3),
(53, 'valley', 'وادي عياء', 'lenght: 60 km', 3),
(55, 'cave', 'كهف عين هيت', NULL, 1),
(56, 'vally', 'وادي الغموض', NULL, 1),
(57, 'plain', 'روضة الخفس الجنوبية', NULL, 1),
(58, 'plain', 'روضة خريم', NULL, 1),
(59, 'mountain', 'جبل اشيقر', 'height:749 m', 1),
(60, 'mountain', 'جبل طويق', 'height: 190 m', 1),
(61, 'mountain', 'حافة العالم', 'height: 200 m', 1),
(62, 'vally', 'وادي حنيفة', NULL, 1),
(64, 'village', 'الدرعية', NULL, 1),
(65, 'mountain', 'جبل اذقان', 'height: 2953 m ', 1),
(66, 'mountain', 'جبل احامر', 'height: 1139 m ', 1),
(67, 'mountain', 'جبل ساق', 'height: 912 m', 1),
(68, 'mountain', 'جبل ثور', 'height: 728 m', 2),
(69, 'mountain', ' جبل دكا', 'height: 2650 m', 2),
(70, 'mountain', 'جبل الهدا', 'height: 1897 m', 2),
(71, 'plain', ' منتزه سيسد', 'square meter: 44', 2),
(72, 'mountain', 'تورجينا', 'height: 1500-2600 m', 2),
(73, 'mountain', 'حرة الرحا', 'square km: 3600', 2);

drop table tourist;

CREATE TABLE `tourist` (
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nationality` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `tourist` (`Fname`, `Lname`, `age`, `gender`, `email`, `nationality`) VALUES
();


CREATE TABLE `visit` (
  `day_of_arrival` date DEFAULT NULL,
  `days_in` int(11) DEFAULT NULL,
  `VT_ID` int(11) NOT NULL,
  `VR_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `visit` (`day_of_arrival`, `days_in`, `VT_ID`, `VR_no`) VALUES
('2021-09-11',4,44921,2),
('2021-011-03',12,20041,1),
('2021-12-13',8,999123,1),
('2022-01-22',23,111922,5),
('2022-04-05',1,625122,4);

select * from visit;

create table `chose`(
`T_ID` int(11) NOT NULL ,
`A_ID` int(11) NOT NULL
);

INSERT INTO `chose` (`T_ID`, `A_ID`) VALUES
(44921,2),
(20041,4),
(999123,3),
(111922,1),
(625122,1);

select * from chose;

ALTER TABLE `sights`
 ADD PRIMARY KEY (`Sight_Number`),
  ADD FOREIGN KEY (`SR_no`) REFERENCES `region` (`Region_Number`);

ALTER TABLE `chose`
ADD FOREIGN KEY (`T_ID`) REFERENCES `tourist` (`Tourist_ID`),
ADD FOREIGN KEY (`A_ID`) REFERENCES `activity` (`Activity_ID`);

ALTER TABLE `activity`
  ADD PRIMARY KEY (`Activity_ID`),
  ADD UNIQUE KEY `Activity_name` (`Activity_name`);

ALTER TABLE `region`
  ADD PRIMARY KEY (`Region_Number`),ADD UNIQUE KEY `Region_Name` (`Region_Name`);

ALTER TABLE `tourist`
  ADD PRIMARY KEY (`Tourist_ID`), ADD UNIQUE KEY `email` (`email`);

ALTER TABLE `visit`
ADD FOREIGN KEY (`VT_ID`) REFERENCES `tourist` (`Tourist_ID`),
ADD FOREIGN KEY (`VR_no`) REFERENCES `tourist` (`Region_Number`);


