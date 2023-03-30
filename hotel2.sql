-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 06:28 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `account_id` varchar(30) NOT NULL,
  `account_number` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `role` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `account_id`, `account_number`, `name`, `dob`, `role`, `status`) VALUES
(1, 'account_001', '123', 'ddd', '2021-06-16', 'Kitchen', 'Active'),
(2, 'account_002', '', 'nithya', '2021-06-18', 'Table', 'Active'),
(3, 'account_003', '', 'nithya', '2021-06-18', 'Table', 'Active'),
(4, 'account_004', '', 'nithya', '2021-06-11', 'Counter', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add account', 7, 'add_account'),
(26, 'Can change account', 7, 'change_account'),
(27, 'Can delete account', 7, 'delete_account'),
(28, 'Can view account', 7, 'view_account'),
(29, 'Can add complaint', 8, 'add_complaint'),
(30, 'Can change complaint', 8, 'change_complaint'),
(31, 'Can delete complaint', 8, 'delete_complaint'),
(32, 'Can view complaint', 8, 'view_complaint'),
(33, 'Can add login', 9, 'add_login'),
(34, 'Can change login', 9, 'change_login'),
(35, 'Can delete login', 9, 'delete_login'),
(36, 'Can view login', 9, 'view_login'),
(37, 'Can add menu', 10, 'add_menu'),
(38, 'Can change menu', 10, 'change_menu'),
(39, 'Can delete menu', 10, 'delete_menu'),
(40, 'Can view menu', 10, 'view_menu'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order_details', 12, 'add_order_details'),
(46, 'Can change order_details', 12, 'change_order_details'),
(47, 'Can delete order_details', 12, 'delete_order_details'),
(48, 'Can view order_details', 12, 'view_order_details'),
(49, 'Can add review', 13, 'add_review'),
(50, 'Can change review', 13, 'change_review'),
(51, 'Can delete review', 13, 'delete_review'),
(52, 'Can view review', 13, 'view_review'),
(53, 'Can add table', 14, 'add_table'),
(54, 'Can change table', 14, 'change_table'),
(55, 'Can delete table', 14, 'delete_table'),
(56, 'Can view table', 14, 'view_table'),
(57, 'Can add bill', 15, 'add_bill'),
(58, 'Can change bill', 15, 'change_bill'),
(59, 'Can delete bill', 15, 'delete_bill'),
(60, 'Can view bill', 15, 'view_bill'),
(61, 'Can add bill_details', 16, 'add_bill_details'),
(62, 'Can change bill_details', 16, 'change_bill_details'),
(63, 'Can delete bill_details', 16, 'delete_bill_details'),
(64, 'Can view bill_details', 16, 'view_bill_details'),
(65, 'Can add payment', 17, 'add_payment'),
(66, 'Can change payment', 17, 'change_payment'),
(67, 'Can delete payment', 17, 'delete_payment'),
(68, 'Can view payment', 17, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(40) NOT NULL,
  `order_id` varchar(30) NOT NULL,
  `table_id` varchar(30) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_time` time(6) NOT NULL,
  `bill_amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `bill_no`, `order_id`, `table_id`, `bill_date`, `bill_time`, `bill_amount`, `status`) VALUES
(1, 'bill_001', 'order_002', 'account_002', '2021-06-25', '15:56:55.515382', '46', 'Paid'),
(2, 'bill_004', 'order_005', 'table_003', '2021-06-29', '13:40:51.709348', '46', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL,
  `bill_detail_id` varchar(40) NOT NULL,
  `bill_no` varchar(40) NOT NULL,
  `item_id` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `price` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_detail_id`, `bill_no`, `item_id`, `name`, `qty`, `price`, `amount`) VALUES
(1, 'bill_detail_001', 'bill_001', 'menu_001', 'xxx', '2', '23', '46'),
(2, 'bill_detail_002', 'bill_001', 'menu_001', 'xxx', '2', '23', '46'),
(3, 'bill_detail_003', 'bill_001', 'menu_001', 'xxx', '2', '23', '46'),
(4, 'bill_detail_004', 'bill_004', 'menu_001', 'xxx', '2', '23', '46');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_id` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `complaint` varchar(220) NOT NULL,
  `complaint_date` date NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app1', 'account'),
(15, 'app1', 'bill'),
(16, 'app1', 'bill_details'),
(8, 'app1', 'complaint'),
(9, 'app1', 'login'),
(10, 'app1', 'menu'),
(11, 'app1', 'order'),
(12, 'app1', 'order_details'),
(17, 'app1', 'payment'),
(13, 'app1', 'review'),
(14, 'app1', 'table'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-14 23:23:11.720718'),
(2, 'auth', '0001_initial', '2021-06-14 23:23:16.052685'),
(3, 'admin', '0001_initial', '2021-06-14 23:23:23.136847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-14 23:23:24.796557'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-14 23:23:24.874760'),
(6, 'app1', '0001_initial', '2021-06-14 23:23:25.159753'),
(7, 'app1', '0002_complaint_login_menu_order_order_details_review_table', '2021-06-14 23:23:27.003609'),
(8, 'app1', '0003_order_details_total_amount', '2021-06-14 23:23:27.566478'),
(9, 'app1', '0004_order_bill_amount', '2021-06-14 23:23:28.140588'),
(10, 'app1', '0005_auto_20210212_2032', '2021-06-14 23:23:29.824526'),
(11, 'app1', '0006_bill_bill_detail', '2021-06-14 23:23:30.302191'),
(12, 'app1', '0007_auto_20210216_1612', '2021-06-14 23:23:31.133881'),
(13, 'app1', '0008_payment', '2021-06-14 23:23:31.378246'),
(14, 'app1', '0009_complaint_name', '2021-06-14 23:23:32.028468'),
(15, 'contenttypes', '0002_remove_content_type_name', '2021-06-14 23:23:32.923595'),
(16, 'auth', '0002_alter_permission_name_max_length', '2021-06-14 23:23:34.039063'),
(17, 'auth', '0003_alter_user_email_max_length', '2021-06-14 23:23:34.924849'),
(18, 'auth', '0004_alter_user_username_opts', '2021-06-14 23:23:35.072832'),
(19, 'auth', '0005_alter_user_last_login_null', '2021-06-14 23:23:35.541851'),
(20, 'auth', '0006_require_contenttypes_0002', '2021-06-14 23:23:35.809062'),
(21, 'auth', '0007_alter_validators_add_error_messages', '2021-06-14 23:23:36.048130'),
(22, 'auth', '0008_alter_user_username_max_length', '2021-06-14 23:23:37.483873'),
(23, 'auth', '0009_alter_user_last_name_max_length', '2021-06-14 23:23:38.358669'),
(24, 'auth', '0010_alter_group_name_max_length', '2021-06-14 23:23:38.994261'),
(25, 'auth', '0011_update_proxy_permissions', '2021-06-14 23:23:39.087109'),
(26, 'auth', '0012_alter_user_first_name_max_length', '2021-06-14 23:23:40.077917'),
(27, 'sessions', '0001_initial', '2021-06-14 23:23:41.452547'),
(28, 'app1', '0010_table_status', '2021-06-29 05:53:47.145316'),
(29, 'app1', '0011_table_password', '2021-06-29 08:06:51.733895');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('74gp8nmb6jobntabusoentgllgeuywb7', 'eyJ1aWQiOiJhY2NvdW50XzAwMSJ9:1lvmgZ:XOtziHHoQeThFv-P9kIGy08EyD5MHyiMl8mBEHLRBKA', '2021-07-06 20:07:51.599418'),
('aq2bdj4ty8ftq1eoloqajgcv4np29w3n', 'eyJ1aWQiOiJhY2NvdW50XzAwNCJ9:1ly8so:qHYd5SILRey4o_mooup2LdtyS5zWS9sdZnzC5oR7gu0', '2021-07-13 08:14:14.153475'),
('tlicg9a4gs80dy9k1nd3ujdcii9e6vru', 'eyJ1aWQiOiJhZG1pbiJ9:1lsw77:NT2ljQWnLJAKroP7qSgs3OlA7ewU6cOT8nYcA2ndSzc', '2021-06-28 23:35:29.082632'),
('yutvu8widvtgb0u8q6dxxg7ept2fmoyb', 'eyJ1aWQiOiJhY2NvdW50XzAwMiIsIm9pZCI6Im9yZGVyXzAwMSJ9:1lw4oy:e_x-EZumw4DQKr15eGBGadDlboOzb_V7kIK-D09YR-A', '2021-07-07 15:29:44.205985');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `category`) VALUES
(1, 'admin', 'admin', 'Admin'),
(2, 'account_001', '234', 'Kitchen'),
(3, 'account_002', '234', 'Table'),
(4, 'account_003', '234', 'Table'),
(5, 'account_004', '123', 'Counter'),
(6, 'table_002', '2222', 'table'),
(7, 'table_003', '1111', 'Table');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_id` varchar(30) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `unit` varchar(40) NOT NULL,
  `price` varchar(50) NOT NULL,
  `description` varchar(220) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `preparation_time` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `item_name`, `unit`, `price`, `description`, `photo`, `preparation_time`, `status`) VALUES
(1, 'menu_001', 'xxx', 'xxxx', '23', 'xxx', '/Screenshot%20(7).png', 'xxx', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL,
  `table_id` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `order_time` time(6) NOT NULL,
  `status` varchar(50) NOT NULL,
  `bill_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_id`, `table_id`, `order_date`, `order_time`, `status`, `bill_amount`) VALUES
(1, 'order_002', 'account_002', '2021-06-25', '15:34:12.683592', 'Completed', 46),
(2, 'order_004', 'account_002', '2021-06-25', '15:34:37.591759', 'Completed', 23),
(3, 'order_005', 'table_003', '2021-06-29', '13:38:42.489038', 'Completed', 46);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `detail_id` varchar(30) NOT NULL,
  `order_id` varchar(30) NOT NULL,
  `item_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `detail_id`, `order_id`, `item_id`, `name`, `price`, `qty`, `status`, `total_amount`) VALUES
(1, 'detail_001', 'order_001', 'menu_001', 'xxx', '23', '3', 'pending', 69),
(2, 'detail_002', 'order_002', 'menu_001', 'xxx', '23', '2', 'Accepted', 46),
(3, 'detail_003', 'order_002', 'menu_001', 'xxx', '23', '1', 'Rejected', 23),
(4, 'detail_004', 'order_004', 'menu_001', 'xxx', '23', '1', 'Accepted', 23),
(5, 'detail_005', 'order_005', 'menu_001', 'xxx', '23', '2', 'Accepted', 46);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `bill_no` varchar(40) NOT NULL,
  `amount` varchar(40) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `acc_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_id`, `bill_no`, `amount`, `bank`, `ifsc_code`, `acc_no`) VALUES
(1, 'payment_001', 'bill_001', '46', 'jj', '33345454544', '33787878787'),
(2, 'payment_002', 'bill_004', '46', 'rrr', '22222233333', '22222222222');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review_id` varchar(30) NOT NULL,
  `table_no` varchar(30) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `menu_id` varchar(30) NOT NULL,
  `review` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review_id`, `table_no`, `customer_name`, `phone`, `menu_id`, `review`) VALUES
(1, 'review_001', 'account_002', 'ddd', '7878787878', 'menu_001', 'dddddddddddddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `table_id` varchar(30) NOT NULL,
  `chairs` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `table_id`, `chairs`, `status`, `password`) VALUES
(1, 'table_001', '3', 'pending', '22'),
(2, 'table_002', '2', 'active', '2222'),
(3, 'table_003', '3', 'active', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
