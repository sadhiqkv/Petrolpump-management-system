-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 11:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new7`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add machine', 7, 'add_machine'),
(26, 'Can change machine', 7, 'change_machine'),
(27, 'Can delete machine', 7, 'delete_machine'),
(28, 'Can view machine', 7, 'view_machine'),
(29, 'Can add order', 8, 'add_order'),
(30, 'Can change order', 8, 'change_order'),
(31, 'Can delete order', 8, 'delete_order'),
(32, 'Can view order', 8, 'view_order'),
(33, 'Can add employee', 9, 'add_employee'),
(34, 'Can change employee', 9, 'change_employee'),
(35, 'Can delete employee', 9, 'delete_employee'),
(36, 'Can view employee', 9, 'view_employee'),
(37, 'Can add profile', 10, 'add_profile'),
(38, 'Can change profile', 10, 'change_profile'),
(39, 'Can delete profile', 10, 'delete_profile'),
(40, 'Can view profile', 10, 'view_profile'),
(41, 'Can add pump', 11, 'add_pump'),
(42, 'Can change pump', 11, 'change_pump'),
(43, 'Can delete pump', 11, 'delete_pump'),
(44, 'Can view pump', 11, 'view_pump'),
(45, 'Can add profiles', 12, 'add_profiles'),
(46, 'Can change profiles', 12, 'change_profiles'),
(47, 'Can delete profiles', 12, 'delete_profiles'),
(48, 'Can view profiles', 12, 'view_profiles');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$320000$0I1aqAI3jiDlI5zzDLMLCP$EQeiCVs/PI47Jufofh+0L2UW+7/YYwAJqBPYf+Z//rc=', '2022-04-20 16:08:14.907520', 1, 'sadhiqkv', '', '', 'sadhiqkv444@gmail.com', 1, 1, '2022-04-07 07:05:22.374523'),
(3, 'pbkdf2_sha256$320000$V4zJFCqUqNX7BJ2NlCuypx$TAgkMhDrpi6awUuCl5aVSyihRvRdZqVrRwbUFmzFL6Q=', '2022-05-09 07:05:01.491316', 0, 'sadhiq', 'sadhiq', 'kv', 'sadhiqkv444@gmail.com', 0, 1, '2022-04-13 15:05:46.233352'),
(4, 'pbkdf2_sha256$320000$3cpDYMFOOn4J2KE5D56v5Y$sG+mQ6T8LVhoc2JS5BXDNfAUCmNF7ahHA5POcggF/I8=', '2022-04-17 12:04:05.891521', 0, 'shabeer', 'shabeer', 'c', 'shabeer123@gmail.com', 0, 1, '2022-04-13 16:07:36.598507'),
(5, 'pbkdf2_sha256$320000$VPVPbGd8q3i6bBhJySQRxu$oxK7+EZxXDPzGVi8k72NY6zVaTZwF+DEU2EGY3CqBag=', '2022-04-20 15:28:58.375737', 0, 'praveesh', 'praveesh', 'ov', 'praveeshov@gmail.com', 0, 1, '2022-04-16 07:09:03.488041'),
(6, 'pbkdf2_sha256$320000$guCDWTMhgkdmybxiK4xdiO$ui8wBiyrFwQe7ujZWkqq0FC4AOG9FIl79GMyrBVy4W4=', '2022-04-21 05:33:10.132180', 0, 'roshen', 'roshen', 'c', 'roshen44@gmail.com', 0, 1, '2022-04-20 14:51:12.342399');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'fuelapp', 'employee'),
(7, 'fuelapp', 'machine'),
(8, 'fuelapp', 'order'),
(10, 'fuelapp', 'profile'),
(12, 'fuelapp', 'profiles'),
(11, 'fuelapp', 'pump'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-06 10:31:01.930099'),
(2, 'auth', '0001_initial', '2022-04-06 10:31:13.005232'),
(3, 'admin', '0001_initial', '2022-04-06 10:31:15.340442'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-06 10:31:15.405447'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-06 10:31:15.455268'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-06 10:31:16.358399'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-06 10:31:17.854211'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-06 10:31:17.989943'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-06 10:31:18.037477'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-06 10:31:18.712876'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-06 10:31:18.756037'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-06 10:31:18.828415'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-06 10:31:18.956062'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-06 10:31:19.090506'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-06 10:31:19.359907'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-06 10:31:19.577388'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-06 10:31:19.803662'),
(18, 'sessions', '0001_initial', '2022-04-06 10:31:20.358549'),
(19, 'fuelapp', '0001_initial', '2022-04-08 04:31:34.731223'),
(20, 'fuelapp', '0002_employee_pump_profile', '2022-04-09 08:20:21.916843'),
(21, 'fuelapp', '0003_profiles', '2022-04-16 10:17:26.247950'),
(22, 'fuelapp', '0004_alter_machine_phone', '2022-04-20 15:11:48.904065');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0elf1utn6eo5acrq77l0o8b3ai39bqc6', '.eJxVjDsOwjAQBe_iGlmJ_6akzxms9a6NA8iW4qRC3J1ESgHtzLz3ZgG2tYStpyXMxK7MsMsvi4DPVA9BD6j3xrHVdZkjPxJ-2s6nRul1O9u_gwK97GutrDbOGYsRbVaovDcJshiGZBGi8qN02gktoxqJQGWNAgy6HZPMhOzzBdXdN-g:1nhPRG:tVUwS86xoF92Xwm1CEyOsJkcGr6n42-FpVV3Gmhp9co', '2022-05-05 05:33:10.203998'),
('2mtojozk0ba1vy171fcnf2z9v2uztj8x', '.eJxVjMsOwiAQRf-FtSG8ZVy67zeQgQGpGkhKuzL-uzbpQrf3nHNfLOC21rCNvISZ2IUpdvrdIqZHbjugO7Zb56m3dZkj3xV-0MGnTvl5Pdy_g4qjfmuEkqMFZ51Bq4RLJBX6aKAUkQQY8kpZqyFhOReQSgjSBrKLOnsZybP3B98LN60:1ncNzV:x7GbKRUDamC0-tWXN2DEZswhSNVyRits85DFBOMpXOc', '2022-04-21 08:59:45.879099'),
('3xjuc7j8htgrnhwe566rtcwyjguh89zj', '.eJxVjEEOgkAMRe8yazMZhg5TXbrnDKSlraAGEgZWxrsrCQvd_vfef7mOtnXotqJLN4q7uNqdfjem_qHTDuRO0232_Tyty8h-V_xBi29n0ef1cP8OBirDt2a1rCiWm6oxY4tJ8AwqGCHXkANAn0JUQ2jAUsAQyUiIGTlphcG9P_wKOEQ:1nnxS1:dLeV1YNLNATN_RFxoPlqdc1T-yKS9GDfzLs66aDHlao', '2022-05-23 07:05:01.803604'),
('idd4hpqyii7gnfpkx3in770hz1dv7x4m', '.eJxVjEEOgkAMRe8yazMZhg5TXbrnDKSlraAGEgZWxrsrCQvd_vfef7mOtnXotqJLN4q7uNqdfjem_qHTDuRO0232_Tyty8h-V_xBi29n0ef1cP8OBirDt2a1rCiWm6oxY4tJ8AwqGCHXkANAn0JUQ2jAUsAQyUiIGTlphcG9P_wKOEQ:1neeZK:H1L4pQGXND1Ts-5cVqxIvT0_3SShqa7OSgU55rAECiQ', '2022-04-27 15:06:06.180974');

-- --------------------------------------------------------

--
-- Table structure for table `fuelapp_employee`
--

CREATE TABLE `fuelapp_employee` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuelapp_employee`
--

INSERT INTO `fuelapp_employee` (`id`, `name`, `phone`, `email`, `address`, `company_name`) VALUES
(1, 'praveesh ov', 988885656, 'praveeshov@gmail.com', 'ottiri(H),palakkad', 'indian oil'),
(2, 'sadhiq kv', 997866666, 'sadhiqkv444@gmail.com', 'Changaramkulam', 'HP'),
(3, 'Ajmal kk', 2147483647, 'Ajmalkk123@gmail.com', 'Kottarathu(H)\r\nEdappal,Malappuram', 'Reliance'),
(5, 'Varun A', 944747464, 'Varunva@gmail.com', 'Kilayil(H)\r\nEdappally,Ernamkulam', 'Bharat Petroleum'),
(14, 'shabeer cv', 894744747, 'shabeer123@gmail.com', 'vilayil(H)\r\nchelavara,Palakkad', 'Hindustan Petrol');

-- --------------------------------------------------------

--
-- Table structure for table `fuelapp_machine`
--

CREATE TABLE `fuelapp_machine` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `machine_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuelapp_machine`
--

INSERT INTO `fuelapp_machine` (`id`, `name`, `phone`, `email`, `company_name`, `machine_no`) VALUES
(3, 'Anas', '2147483647', 'Anas123@gmail.com', 'WRX', 'MCR1200034-Diesel'),
(4, 'Vinayak', '2147483647', 'vinu34534@gmail.com', 'MXX', 'MCR125674-Petrol'),
(5, 'fayis ok', '2147483647', 'Fayisok34@gmail.com', 'ZEAT', 'MCR198034-Diesel'),
(6, 'Adarsh p', '2147483647', 'Adarsh84@gmail.com', 'MAX', 'MCR198034-Petrol'),
(7, 'Akshay K', '2147483647', 'sadhiqkv@gmail.com', 'ZEAT', 'MCR1456634-Diesel'),
(8, 'roshen', '994742332', 'roshen123@gmail.com', 'MMS', 'MCR1250044-Diesel');

-- --------------------------------------------------------

--
-- Table structure for table `fuelapp_order`
--

CREATE TABLE `fuelapp_order` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `machine_no_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuelapp_order`
--

INSERT INTO `fuelapp_order` (`id`, `name`, `phone`, `email`, `company_name`, `machine_no_id`) VALUES
(4, 'Sadhiq kv', 2147483647, 'sadhiqkv444@gmail.com', 'indian oil', 6),
(5, 'sadhiq', 993366363, 'sadhqkv2424@gamil.com', 'indian oil', 6),
(6, 'sadhiq', 2147483647, 'sadhiqkv@gmail.com', 'HP', 6);

-- --------------------------------------------------------

--
-- Table structure for table `fuelapp_profiles`
--

CREATE TABLE `fuelapp_profiles` (
  `id` bigint(20) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuelapp_profiles`
--

INSERT INTO `fuelapp_profiles` (`id`, `phone_no`, `place`, `email`, `image`, `company_id`, `name_id`) VALUES
(7, 993734646, 'chanagaramkulam,Malappuram', 'sadhiqkv12@gmail.com', 'image/h1.webp', 2, 3),
(8, 2147483647, 'vavannoor', 'praveeshov1243@gmail.com', 'image/h2_Yah7e0M.webp', 5, 5),
(9, 2147483647, 'chelavara,palakkad', 'shabeermsc12@gmail.com', '/static/images/83.jpg', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fuelapp_pump`
--

CREATE TABLE `fuelapp_pump` (
  `id` bigint(20) NOT NULL,
  `company` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuelapp_pump`
--

INSERT INTO `fuelapp_pump` (`id`, `company`, `place`, `phone_no`, `email`) VALUES
(2, 'HP', 'ottapalam', 2147483647, 'HPottapalam@gmail.com'),
(3, 'Indian oil', 'Chelavara', 2147483647, 'shabeer123@gmail.com'),
(4, 'Essar Petrol', 'ottapalam', 2147483647, 'Varunck98@gmail.com'),
(5, 'Hindustan Petrol', 'Ernamkulam', 2147483647, 'Arun343@gmail.com'),
(7, 'Reliance', 'ottapalam', 2147483647, 'Ajmalkk123@gmail.com');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `fuelapp_employee`
--
ALTER TABLE `fuelapp_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuelapp_machine`
--
ALTER TABLE `fuelapp_machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuelapp_order`
--
ALTER TABLE `fuelapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuelapp_order_machine_no_id_67f6deed_fk_fuelapp_machine_id` (`machine_no_id`);

--
-- Indexes for table `fuelapp_profiles`
--
ALTER TABLE `fuelapp_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fuelapp_profiles_company_id_c46af7cb_fk_fuelapp_pump_id` (`company_id`),
  ADD KEY `fuelapp_profiles_name_id_f1d02a04_fk_auth_user_id` (`name_id`);

--
-- Indexes for table `fuelapp_pump`
--
ALTER TABLE `fuelapp_pump`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fuelapp_employee`
--
ALTER TABLE `fuelapp_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fuelapp_machine`
--
ALTER TABLE `fuelapp_machine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fuelapp_order`
--
ALTER TABLE `fuelapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fuelapp_profiles`
--
ALTER TABLE `fuelapp_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fuelapp_pump`
--
ALTER TABLE `fuelapp_pump`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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

--
-- Constraints for table `fuelapp_order`
--
ALTER TABLE `fuelapp_order`
  ADD CONSTRAINT `fuelapp_order_machine_no_id_67f6deed_fk_fuelapp_machine_id` FOREIGN KEY (`machine_no_id`) REFERENCES `fuelapp_machine` (`id`);

--
-- Constraints for table `fuelapp_profiles`
--
ALTER TABLE `fuelapp_profiles`
  ADD CONSTRAINT `fuelapp_profiles_company_id_c46af7cb_fk_fuelapp_pump_id` FOREIGN KEY (`company_id`) REFERENCES `fuelapp_pump` (`id`),
  ADD CONSTRAINT `fuelapp_profiles_name_id_f1d02a04_fk_auth_user_id` FOREIGN KEY (`name_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
