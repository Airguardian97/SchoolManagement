-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 08:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nics`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'ADMIN'),
(2, 'STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add teacher extra', 7, 'add_teacherextra'),
(26, 'Can change teacher extra', 7, 'change_teacherextra'),
(27, 'Can delete teacher extra', 7, 'delete_teacherextra'),
(28, 'Can view teacher extra', 7, 'view_teacherextra'),
(29, 'Can add student extra', 8, 'add_studentextra'),
(30, 'Can change student extra', 8, 'change_studentextra'),
(31, 'Can delete student extra', 8, 'delete_studentextra'),
(32, 'Can view student extra', 8, 'view_studentextra'),
(33, 'Can add attendance', 9, 'add_attendance'),
(34, 'Can change attendance', 9, 'change_attendance'),
(35, 'Can delete attendance', 9, 'delete_attendance'),
(36, 'Can view attendance', 9, 'view_attendance'),
(37, 'Can add notice', 10, 'add_notice'),
(38, 'Can change notice', 10, 'change_notice'),
(39, 'Can delete notice', 10, 'delete_notice'),
(40, 'Can view notice', 10, 'view_notice');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ha8YdssPmhnnLblVC1kzeM$kNqzOuZb9N4OlMut2qTD2r7Lg7AXjaBQ3yMA4DIi3mI=', '2024-10-30 03:50:48.945898', 1, 'admin', '', '', 'admom@gmsil.com', 1, 1, '2024-10-30 01:12:25.000000'),
(2, 'pbkdf2_sha256$600000$9quzUeBegt4PV63dMOTOJi$Qy3hxB0TVZ54pg144OinvmVLaeWxknD75D32TBmsp1w=', '2024-10-30 03:53:25.590730', 0, 'kate', 'kate', 'sausa', 'bobojason09@gmail.com', 0, 1, '2024-10-30 01:16:33.207371');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-30 01:14:11.313308', '1', 'ADMIN', 1, '[{\"added\": {}}]', 3, 1),
(2, '2024-10-30 01:14:31.663968', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'school', 'attendance'),
(10, 'school', 'notice'),
(8, 'school', 'studentextra'),
(7, 'school', 'teacherextra'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-10-30 01:11:20.793180'),
(2, 'auth', '0001_initial', '2024-10-30 01:11:21.070440'),
(3, 'admin', '0001_initial', '2024-10-30 01:11:21.134270'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-30 01:11:21.147233'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-30 01:11:21.160199'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-30 01:11:21.205079'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-30 01:11:21.239986'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-30 01:11:21.258936'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-30 01:11:21.270904'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-30 01:11:21.299826'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-30 01:11:21.307844'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-30 01:11:21.318776'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-30 01:11:21.334734'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-30 01:11:21.351687'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-30 01:11:21.368642'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-30 01:11:21.381609'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-30 01:11:21.399596'),
(18, 'school', '0001_initial', '2024-10-30 01:11:21.480380'),
(19, 'school', '0002_teacherextra_status', '2024-10-30 01:11:21.502313'),
(20, 'school', '0003_auto_20200504_0939', '2024-10-30 01:11:21.572098'),
(21, 'school', '0004_auto_20200504_1753', '2024-10-30 01:11:21.584068'),
(22, 'school', '0005_auto_20200505_1038', '2024-10-30 01:11:22.379940'),
(23, 'school', '0006_auto_20200506_1719', '2024-10-30 01:11:22.416842'),
(24, 'school', '0007_auto_20200506_1720', '2024-10-30 01:11:22.430804'),
(25, 'school', '0008_studentextra_status', '2024-10-30 01:11:22.451750'),
(26, 'school', '0009_auto_20200507_1017', '2024-10-30 01:11:22.518570'),
(27, 'school', '0010_notice_by', '2024-10-30 01:11:22.532532'),
(28, 'school', '0011_auto_20200508_0913', '2024-10-30 01:11:22.540512'),
(29, 'sessions', '0001_initial', '2024-10-30 01:11:22.565473');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('84pq70wt4hqj6dlljjajw6op0j9nplsi', '.eJxVjEEOwiAQRe_C2hBmUqC4dO8ZyAwDUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izQnX63ZjSI7cdyJ3abdZpbusysd4VfdCur7Pk5-Vw_w4q9fqtC6Fj74cRhK0BBBZyBtEgl4A-gbVDNk6IgkHIBcixQ8FgBW0YUb0_z7w3JA:1t5zlt:D_dujtOOFaewOIfawzvumsx3mfPfHO42DAZW03DMrmY', '2024-11-13 03:53:25.425172'),
('jilxnbmq3dinxtlyoc4ndnklh2gnct7g', '.eJxVjEEOwiAQRe_C2hBmUqC4dO8ZyAwDUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izQnX63ZjSI7cdyJ3abdZpbusysd4VfdCur7Pk5-Vw_w4q9fqtC6Fj74cRhK0BBBZyBtEgl4A-gbVDNk6IgkHIBcixQ8FgBW0YUb0_z7w3JA:1t5xlS:tfC_RMJfgoE5t_6hXA-pEFO-EkrcMVhxuDauDPLYy_Q', '2024-11-13 01:44:50.034102'),
('pm5szkjwmejt45n3mmh2ay5om0qlxx26', '.eJxVjEEOwiAQRe_C2hBmUqC4dO8ZyAwDUjU0Ke3KeHdt0oVu_3vvv1Skba1x63mJk6izQnX63ZjSI7cdyJ3abdZpbusysd4VfdCur7Pk5-Vw_w4q9fqtC6Fj74cRhK0BBBZyBtEgl4A-gbVDNk6IgkHIBcixQ8FgBW0YUb0_z7w3JA:1t5zlt:D_dujtOOFaewOIfawzvumsx3mfPfHO42DAZW03DMrmY', '2024-11-13 03:53:25.596715');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `Stud_ID` varchar(90) NOT NULL,
  `subject_Code` varchar(90) NOT NULL,
  `stud_Grade` varchar(90) NOT NULL,
  `academic_Year` varchar(90) NOT NULL,
  `grading_Period` varchar(90) NOT NULL,
  `GradeLevel` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`Stud_ID`, `subject_Code`, `stud_Grade`, `academic_Year`, `grading_Period`, `GradeLevel`) VALUES
('1', '3', '99', 'SY. 2024-2025', '1', 'Grade 7-Amethyst'),
('1', '6', '23', 'SY. 2024-2025', '2', 'Grade 7-Amethyst'),
('1', '6', '80', 'SY. 2024-2025', 'First Grading', 'Grade 7-Amethyst'),
('1', '6', '88', 'SY. 2024-2025', '4', 'Grade 7-Amethyst'),
('1', '6', '95', 'SY. 2024-2025', '1', 'Grade 7-Amethyst'),
('1', '6', '98', 'SY. 2024-2025', '3', 'Grade 7-Amethyst'),
('349', 'E01', '85', 'SY. 2024-2025', 'First Grading', '');

-- --------------------------------------------------------

--
-- Table structure for table `gradelevels`
--

CREATE TABLE `gradelevels` (
  `grade_Level` varchar(90) NOT NULL,
  `adviser` varchar(90) NOT NULL,
  `school_Year` varchar(90) NOT NULL,
  `Semester` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gradelevels`
--

INSERT INTO `gradelevels` (`grade_Level`, `adviser`, `school_Year`, `Semester`) VALUES
('Grade 1', 'NT202401', '2025-2026', ''),
('Grade 10-Sardonyx', 'NT202404', 'SY. 2024-2025', ''),
('Grade 11-Beryl', 'NT202405', 'SY. 2024-2025', ''),
('Grade 11-Chalcedony', 'NT202406', 'SY. 2024-2025', ''),
('Grade 11-Jasper', 'NT202407', 'SY. 2024-2025', ''),
('Grade 12-Onyx', 'NT202409', 'SY. 2024-2025', ''),
('Grade 12-Pearl', 'NT202410', 'SY. 2024-2025', ''),
('Grade 12-Sapphire', 'NT202408', 'SY. 2024-2025', ''),
('Grade 7-Amethyst', 'NT202401', 'SY. 2024-2025', ''),
('Grade 8-Chrysolite', 'NT202402', 'SY. 2024-2025', ''),
('Grade 9-Emerald', 'NT202403', 'SY. 2024-2025', '');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `GID` int(90) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `last_Name` varchar(90) NOT NULL,
  `first_Name` varchar(90) NOT NULL,
  `middle_Name` varchar(90) NOT NULL,
  `relationship` varchar(90) NOT NULL,
  `occupation` varchar(90) NOT NULL,
  `NOE` varchar(90) NOT NULL,
  `business` varchar(90) NOT NULL,
  `email_Address` varchar(90) NOT NULL,
  `contact_No` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `mon_ID` int(11) NOT NULL,
  `teacher_ID` varchar(90) NOT NULL,
  `date` date NOT NULL,
  `comment` varchar(90) NOT NULL,
  `academic_Year` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `PID` int(90) NOT NULL,
  `last_Name` varchar(90) NOT NULL,
  `first_Name` varchar(90) NOT NULL,
  `middle_Name` varchar(90) NOT NULL,
  `occupation` varchar(90) NOT NULL,
  `NOE` varchar(90) NOT NULL,
  `business` varchar(90) NOT NULL,
  `email_Address` varchar(90) NOT NULL,
  `contact_No` varchar(11) NOT NULL,
  `Address` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`PID`, `last_Name`, `first_Name`, `middle_Name`, `occupation`, `NOE`, `business`, `email_Address`, `contact_No`, `Address`) VALUES
(578, 'Sausa', 'Jason', 'Quinto', '', '', '', 'lgpcitstaff@gmail.com', '09970672213', 'lgpcitstaff@gmail.com'),
(579, 'Sausa', 'Jason', 'Quinto', '', '', '', 'bobojason09@gmail.com', '09970672213', 'bobojason09@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `parentstudent`
--

CREATE TABLE `parentstudent` (
  `GID` int(90) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `relationship` varchar(90) NOT NULL,
  `isGuardian` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parentstudent`
--

INSERT INTO `parentstudent` (`GID`, `Stud_ID`, `relationship`, `isGuardian`) VALUES
(578, '1', 'FATHER', 0),
(579, '1', 'MOTHER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `preliminarycharges`
--

CREATE TABLE `preliminarycharges` (
  `PC_ID` int(11) NOT NULL,
  `grade_Level` varchar(90) NOT NULL,
  `name` varchar(90) NOT NULL,
  `description` varchar(90) NOT NULL,
  `academic_Year` varchar(90) NOT NULL,
  `date_Added` date NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `preliminarycharges`
--

INSERT INTO `preliminarycharges` (`PC_ID`, `grade_Level`, `name`, `description`, `academic_Year`, `date_Added`, `Amount`) VALUES
(5, 'Grade 10-Sardonyx', 'Boys Dorm', 'Boys Dorm', 'SY. 2024-2025', '2024-09-13', 15000),
(6, 'Grade 10-Sardonyx', 'Tuition', 'Tuition', 'SY. 2024-2025', '2024-09-13', 2000),
(7, 'Grade 10-Sardonyx', 'Girls Dorm', 'Girls Dorm', 'SY. 2024-2025', '2024-09-13', 2000),
(8, 'Grade 7-Amethyst', 'Tuition', 'Tuition', 'SY. 2024-2025', '2024-10-02', 1500),
(9, 'Grade 7-Amethyst', 'Book', 'Learning Materials', 'SY. 2024-2025', '2024-10-02', 500);

-- --------------------------------------------------------

--
-- Table structure for table `previousschooling`
--

CREATE TABLE `previousschooling` (
  `ps_ID` int(11) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `grade_Level` varchar(90) NOT NULL,
  `NOSA` varchar(90) NOT NULL,
  `address` varchar(90) NOT NULL,
  `year_Attended` varchar(90) NOT NULL,
  `ReasonForTransfer` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `previousschooling`
--

INSERT INTO `previousschooling` (`ps_ID`, `Stud_ID`, `grade_Level`, `NOSA`, `address`, `year_Attended`, `ReasonForTransfer`) VALUES
(2, '350', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `req_ID` int(90) NOT NULL,
  `r_Name` varchar(90) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`req_ID`, `r_Name`, `isActive`) VALUES
(1, 'NSO', 1),
(2, '1x1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requirementsbridge`
--

CREATE TABLE `requirementsbridge` (
  `req_ID` int(90) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `datePass` date NOT NULL,
  `note` varchar(90) NOT NULL,
  `isPass` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requirementsbridge`
--

INSERT INTO `requirementsbridge` (`req_ID`, `Stud_ID`, `datePass`, `note`, `isPass`) VALUES
(1, '350', '0000-00-00', '', 1),
(1, '351', '0000-00-00', '', 0),
(1, '352', '0000-00-00', '', 1),
(1, '353', '0000-00-00', '', 1),
(1, '354', '0000-00-00', '', 1),
(1, '355', '0000-00-00', '', 1),
(1, '358', '0000-00-00', '', 1),
(1, '359', '0000-00-00', '', 1),
(2, '350', '0000-00-00', '', 1),
(2, '351', '0000-00-00', '', 0),
(2, '352', '0000-00-00', '', 1),
(2, '353', '0000-00-00', '', 1),
(2, '354', '0000-00-00', '', 0),
(2, '355', '0000-00-00', '', 0),
(2, '358', '0000-00-00', '', 1),
(2, '359', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `scharges`
--

CREATE TABLE `scharges` (
  `table_PK` int(11) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(90) NOT NULL,
  `Amount` int(90) NOT NULL,
  `ATM_Balance` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `scharges`
--

INSERT INTO `scharges` (`table_PK`, `Stud_ID`, `date`, `description`, `Amount`, `ATM_Balance`) VALUES
(1, '1', '2024-06-01', 'Tuition', 15000, 0),
(2, '1', '2024-06-01', 'Miscellaneous', 11200, 0),
(3, '1', '2024-06-01', 'Learning Materials', 6000, 0),
(4, '2', '2024-06-01', 'Tuition', 15000, 0),
(5, '2', '2024-06-01', 'Miscellaneous', 11200, 0),
(6, '2', '2024-06-01', 'Learning Materials', 6000, 0),
(7, '3', '2024-06-01', 'Tuition', 15000, 0),
(8, '3', '2024-06-01', 'Miscellaneous', 11200, 0),
(9, '3', '2024-06-01', 'Learning Materials', 6000, 0),
(10, '4', '2024-06-01', 'Tuition', 15000, 0),
(11, '4', '2024-06-01', 'Miscellaneous', 11200, 0),
(12, '4', '2024-06-01', 'Learning Materials', 6000, 0),
(13, '5', '2024-06-01', 'Tuition', 15000, 0),
(14, '5', '2024-06-01', 'Miscellaneous', 11200, 0),
(15, '5', '2024-06-01', 'Learning Materials', 6000, 0),
(16, '6', '2024-06-01', 'Tuition', 15000, 0),
(17, '6', '2024-06-01', 'Miscellaneous', 11200, 0),
(18, '6', '2024-06-01', 'Learning Materials', 6000, 0),
(19, '7', '2024-06-01', 'Tuition', 15000, 0),
(20, '7', '2024-06-01', 'Miscellaneous', 11200, 0),
(21, '7', '2024-06-01', 'Learning Materials', 6000, 0),
(22, '8', '2024-06-01', 'Tuition', 15000, 0),
(23, '8', '2024-06-01', 'Miscellaneous', 11200, 0),
(24, '8', '2024-06-01', 'Learning Materials', 6000, 0),
(25, '9', '2024-06-01', 'Tuition', 15000, 0),
(26, '9', '2024-06-01', 'Miscellaneous', 11200, 0),
(27, '9', '2024-06-01', 'Learning Materials', 6000, 0),
(28, '10', '2024-06-01', 'Tuition', 15000, 0),
(29, '10', '2024-06-01', 'Miscellaneous', 11200, 0),
(30, '10', '2024-06-01', 'Learning Materials', 6000, 0),
(31, '11', '2024-06-01', 'Tuition', 15000, 0),
(32, '11', '2024-06-01', 'Miscellaneous', 11200, 0),
(33, '11', '2024-06-01', 'Learning Materials', 6000, 0),
(34, '12', '2024-06-01', 'Tuition', 15000, 0),
(35, '12', '2024-06-01', 'Miscellaneous', 11200, 0),
(36, '12', '2024-06-01', 'Learning Materials', 6000, 0),
(37, '13', '2024-06-01', 'Tuition', 15000, 0),
(38, '13', '2024-06-01', 'Miscellaneous', 11200, 0),
(39, '13', '2024-06-01', 'Learning Materials', 6000, 0),
(40, '14', '2024-06-01', 'Tuition', 15000, 0),
(41, '14', '2024-06-01', 'Miscellaneous', 11200, 0),
(42, '14', '2024-06-01', 'Learning Materials', 6000, 0),
(43, '15', '2024-06-01', 'Tuition', 15000, 0),
(44, '15', '2024-06-01', 'Miscellaneous', 11200, 0),
(45, '15', '2024-06-01', 'Learning Materials', 6000, 0),
(46, '16', '2024-06-01', 'Tuition', 15000, 0),
(47, '16', '2024-06-01', 'Miscellaneous', 11200, 0),
(48, '16', '2024-06-01', 'Learning Materials', 6000, 0),
(49, '17', '2024-06-01', 'Tuition', 15000, 0),
(50, '17', '2024-06-01', 'Miscellaneous', 11200, 0),
(51, '17', '2024-06-01', 'Learning Materials', 6000, 0),
(52, '18', '2024-06-01', 'Tuition', 15000, 0),
(53, '18', '2024-06-01', 'Miscellaneous', 11200, 0),
(54, '18', '2024-06-01', 'Learning Materials', 6000, 0),
(55, '19', '2024-06-01', 'Tuition', 15000, 0),
(56, '19', '2024-06-01', 'Miscellaneous', 11200, 0),
(57, '19', '2024-06-01', 'Learning Materials', 6000, 0),
(58, '20', '2024-06-01', 'Tuition', 15000, 0),
(59, '20', '2024-06-01', 'Miscellaneous', 11200, 0),
(60, '20', '2024-06-01', 'Learning Materials', 6000, 0),
(61, '21', '2024-06-01', 'Tuition', 15000, 0),
(62, '21', '2024-06-01', 'Miscellaneous', 11200, 0),
(63, '21', '2024-06-01', 'Learning Materials', 6000, 0),
(64, '22', '2024-06-01', 'Tuition', 15000, 0),
(65, '22', '2024-06-01', 'Miscellaneous', 11200, 0),
(66, '22', '2024-06-01', 'Learning Materials', 6000, 0),
(67, '23', '2024-06-01', 'Tuition', 13500, 0),
(68, '23', '2024-06-01', 'Miscellaneous', 11200, 0),
(69, '23', '2024-06-01', 'Learning Materials', 6000, 0),
(70, '24', '2024-06-01', 'Tuition', 13500, 0),
(71, '24', '2024-06-01', 'Miscellaneous', 11200, 0),
(72, '24', '2024-06-01', 'Learning Materials', 6000, 0),
(73, '25', '2024-06-01', 'Tuition', 15000, 0),
(74, '25', '2024-06-01', 'Miscellaneous', 11200, 0),
(75, '25', '2024-06-01', 'Learning Materials', 6000, 0),
(76, '26', '2024-06-01', 'Tuition', 15000, 0),
(77, '26', '2024-06-01', 'Miscellaneous', 11200, 0),
(78, '26', '2024-06-01', 'Learning Materials', 6000, 0),
(79, '27', '2024-06-01', 'Tuition', 15000, 0),
(80, '27', '2024-06-01', 'Miscellaneous', 11200, 0),
(81, '27', '2024-06-01', 'Learning Materials', 6000, 0),
(82, '28', '2024-06-01', 'Tuition', 15000, 0),
(83, '28', '2024-06-01', 'Miscellaneous', 11200, 0),
(84, '28', '2024-06-01', 'Learning Materials', 6000, 0),
(85, '29', '2024-06-01', 'Tuition', 15000, 0),
(86, '29', '2024-06-01', 'Miscellaneous', 11200, 0),
(87, '29', '2024-06-01', 'Learning Materials', 6000, 0),
(88, '30', '2024-06-01', 'Tuition', 15000, 0),
(89, '30', '2024-06-01', 'Miscellaneous', 11200, 0),
(90, '30', '2024-06-01', 'Learning Materials', 6000, 0),
(91, '31', '2024-06-01', 'Tuition', 15000, 0),
(92, '31', '2024-06-01', 'Miscellaneous', 11200, 0),
(93, '31', '2024-06-01', 'Learning Materials', 6000, 0),
(94, '32', '2024-06-01', 'Tuition', 13500, 0),
(95, '32', '2024-06-01', 'Miscellaneous', 11200, 0),
(96, '32', '2024-06-01', 'Learning Materials', 6000, 0),
(97, '33', '2024-06-01', 'Tuition', 15000, 0),
(98, '33', '2024-06-01', 'Miscellaneous', 11200, 0),
(99, '33', '2024-06-01', 'Learning Materials', 6000, 0),
(100, '34', '2024-06-01', 'Tuition', 15000, 0),
(101, '34', '2024-06-01', 'Miscellaneous', 11200, 0),
(102, '34', '2024-06-01', 'Learning Materials', 6000, 0),
(103, '35', '2024-06-01', 'Tuition', 15000, 0),
(104, '35', '2024-06-01', 'Miscellaneous', 11200, 0),
(105, '35', '2024-06-01', 'Learning Materials', 6000, 0),
(106, '36', '2024-06-01', 'Tuition', 15000, 0),
(107, '36', '2024-06-01', 'Miscellaneous', 11200, 0),
(108, '36', '2024-06-01', 'Learning Materials', 6000, 0),
(109, '37', '2024-06-01', 'Tuition', 15000, 0),
(110, '37', '2024-06-01', 'Miscellaneous', 11200, 0),
(111, '37', '2024-06-01', 'Learning Materials', 0, 0),
(112, '38', '2024-06-01', 'Tuition', 15000, 0),
(113, '38', '2024-06-01', 'Miscellaneous', 11200, 0),
(114, '38', '2024-06-01', 'Learning Materials', 6000, 0),
(115, '39', '2024-06-01', 'Tuition', 15000, 0),
(116, '39', '2024-06-01', 'Miscellaneous', 11200, 0),
(117, '39', '2024-06-01', 'Learning Materials', 6000, 0),
(118, '40', '2024-06-01', 'Tuition', 15000, 0),
(119, '40', '2024-06-01', 'Miscellaneous', 11200, 0),
(120, '40', '2024-06-01', 'Learning Materials', 6000, 0),
(121, '41', '2024-06-01', 'Tuition', 15000, 0),
(122, '41', '2024-06-01', 'Miscellaneous', 11200, 0),
(123, '41', '2024-06-01', 'Learning Materials', 6000, 0),
(124, '42', '2024-06-01', 'Tuition', 15000, 0),
(125, '42', '2024-06-01', 'Miscellaneous', 10600, 0),
(126, '42', '2024-06-01', 'Learning Materials', 0, 0),
(127, '43', '2024-06-01', 'Tuition', 15000, 0),
(128, '43', '2024-06-01', 'Miscellaneous', 11200, 0),
(129, '43', '2024-06-01', 'Learning Materials', 6000, 0),
(130, '44', '2024-06-01', 'Tuition', 15000, 0),
(131, '44', '2024-06-01', 'Miscellaneous', 10600, 0),
(132, '44', '2024-06-01', 'Learning Materials', 6000, 0),
(133, '45', '2024-06-01', 'Tuition', 15000, 0),
(134, '45', '2024-06-01', 'Miscellaneous', 10600, 0),
(135, '45', '2024-06-01', 'Learning Materials', 6000, 0),
(136, '46', '2024-06-01', 'Tuition', 15000, 0),
(137, '46', '2024-06-01', 'Miscellaneous', 10600, 0),
(138, '46', '2024-06-01', 'Learning Materials', 6000, 0),
(139, '47', '2024-06-01', 'Tuition', 15000, 0),
(140, '47', '2024-06-01', 'Miscellaneous', 10600, 0),
(141, '47', '2024-06-01', 'Learning Materials', 6000, 0),
(142, '48', '2024-06-01', 'Tuition', 15000, 0),
(143, '48', '2024-06-01', 'Miscellaneous', 10600, 0),
(144, '48', '2024-06-01', 'Learning Materials', 6000, 0),
(145, '49', '2024-06-01', 'Tuition', 15000, 0),
(146, '49', '2024-06-01', 'Miscellaneous', 10600, 0),
(147, '49', '2024-06-01', 'Learning Materials', 6000, 0),
(148, '50', '2024-06-01', 'Tuition', 15000, 0),
(149, '50', '2024-06-01', 'Miscellaneous', 10600, 0),
(150, '50', '2024-06-01', 'Learning Materials', 6000, 0),
(151, '51', '2024-06-01', 'Tuition', 15000, 0),
(152, '51', '2024-06-01', 'Miscellaneous', 10600, 0),
(153, '51', '2024-06-01', 'Learning Materials', 6000, 0),
(154, '52', '2024-06-01', 'Tuition', 15000, 0),
(155, '52', '2024-06-01', 'Miscellaneous', 10600, 0),
(156, '52', '2024-06-01', 'Learning Materials', 6000, 0),
(157, '53', '2024-06-01', 'Tuition', 15000, 0),
(158, '53', '2024-06-01', 'Miscellaneous', 10600, 0),
(159, '53', '2024-06-01', 'Learning Materials', 0, 0),
(160, '54', '2024-06-01', 'Tuition', 15000, 0),
(161, '54', '2024-06-01', 'Miscellaneous', 10600, 0),
(162, '54', '2024-06-01', 'Learning Materials', 6000, 0),
(163, '55', '2024-06-01', 'Tuition', 15000, 0),
(164, '55', '2024-06-01', 'Miscellaneous', 10600, 0),
(165, '55', '2024-06-01', 'Learning Materials', 6000, 0),
(166, '56', '2024-06-01', 'Tuition', 15000, 0),
(167, '56', '2024-06-01', 'Miscellaneous', 10600, 0),
(168, '56', '2024-06-01', 'Learning Materials', 6000, 0),
(169, '57', '2024-06-01', 'Tuition', 15000, 0),
(170, '57', '2024-06-01', 'Miscellaneous', 10600, 0),
(171, '57', '2024-06-01', 'Learning Materials', 6000, 0),
(172, '58', '2024-06-01', 'Tuition', 15000, 0),
(173, '58', '2024-06-01', 'Miscellaneous', 11200, 0),
(174, '58', '2024-06-01', 'Learning Materials', 0, 0),
(175, '59', '2024-06-01', 'Tuition', 15000, 0),
(176, '59', '2024-06-01', 'Miscellaneous', 10600, 0),
(177, '59', '2024-06-01', 'Learning Materials', 6000, 0),
(178, '60', '2024-06-01', 'Tuition', 15000, 0),
(179, '60', '2024-06-01', 'Miscellaneous', 10600, 0),
(180, '60', '2024-06-01', 'Learning Materials', 6000, 0),
(181, '61', '2024-06-01', 'Tuition', 15000, 0),
(182, '61', '2024-06-01', 'Miscellaneous', 10600, 0),
(183, '61', '2024-06-01', 'Learning Materials', 6000, 0),
(184, '62', '2024-06-01', 'Tuition', 15000, 0),
(185, '62', '2024-06-01', 'Miscellaneous', 10600, 0),
(186, '62', '2024-06-01', 'Learning Materials', 0, 0),
(187, '63', '2024-06-01', 'Tuition', 15000, 0),
(188, '63', '2024-06-01', 'Miscellaneous', 10600, 0),
(189, '63', '2024-06-01', 'Learning Materials', 6000, 0),
(190, '64', '2024-06-01', 'Tuition', 15000, 0),
(191, '64', '2024-06-01', 'Miscellaneous', 11200, 0),
(192, '64', '2024-06-01', 'Learning Materials', 6000, 0),
(193, '65', '2024-06-01', 'Tuition', 15000, 0),
(194, '65', '2024-06-01', 'Miscellaneous', 11200, 0),
(195, '65', '2024-06-01', 'Learning Materials', 6000, 0),
(196, '66', '2024-06-01', 'Tuition', 15000, 0),
(197, '66', '2024-06-01', 'Miscellaneous', 10600, 0),
(198, '66', '2024-06-01', 'Learning Materials', 6000, 0),
(199, '67', '2024-06-01', 'Tuition', 15000, 0),
(200, '67', '2024-06-01', 'Miscellaneous', 10600, 0),
(201, '67', '2024-06-01', 'Learning Materials', 6000, 0),
(202, '68', '2024-06-01', 'Tuition', 15000, 0),
(203, '68', '2024-06-01', 'Miscellaneous', 10600, 0),
(204, '68', '2024-06-01', 'Learning Materials', 6000, 0),
(205, '69', '2024-06-01', 'Tuition', 15000, 0),
(206, '69', '2024-06-01', 'Miscellaneous', 10600, 0),
(207, '69', '2024-06-01', 'Learning Materials', 6000, 0),
(208, '70', '2024-06-01', 'Tuition', 15000, 0),
(209, '70', '2024-06-01', 'Miscellaneous', 10600, 0),
(210, '70', '2024-06-01', 'Learning Materials', 6000, 0),
(211, '71', '2024-06-01', 'Tuition', 15000, 0),
(212, '71', '2024-06-01', 'Miscellaneous', 10600, 0),
(213, '71', '2024-06-01', 'Learning Materials', 6000, 0),
(214, '72', '2024-06-01', 'Tuition', 15000, 0),
(215, '72', '2024-06-01', 'Miscellaneous', 10600, 0),
(216, '72', '2024-06-01', 'Learning Materials', 6000, 0),
(217, '73', '2024-06-01', 'Tuition', 15000, 0),
(218, '73', '2024-06-01', 'Miscellaneous', 10600, 0),
(219, '73', '2024-06-01', 'Learning Materials', 6000, 0),
(220, '74', '2024-06-01', 'Tuition', 15000, 0),
(221, '74', '2024-06-01', 'Miscellaneous', 10600, 0),
(222, '74', '2024-06-01', 'Learning Materials', 6000, 0),
(223, '75', '2024-06-01', 'Tuition', 15000, 0),
(224, '75', '2024-06-01', 'Miscellaneous', 10600, 0),
(225, '75', '2024-06-01', 'Learning Materials', 6000, 0),
(226, '76', '2024-06-01', 'Tuition', 15000, 0),
(227, '76', '2024-06-01', 'Miscellaneous', 10600, 0),
(228, '76', '2024-06-01', 'Learning Materials', 6000, 0),
(229, '77', '2024-06-01', 'Tuition', 15000, 0),
(230, '77', '2024-06-01', 'Miscellaneous', 10600, 0),
(231, '77', '2024-06-01', 'Learning Materials', 6000, 0),
(232, '78', '2024-06-01', 'Tuition', 15000, 0),
(233, '78', '2024-06-01', 'Miscellaneous', 10600, 0),
(234, '78', '2024-06-01', 'Learning Materials', 6000, 0),
(235, '79', '2024-06-01', 'Tuition', 15000, 0),
(236, '79', '2024-06-01', 'Miscellaneous', 10600, 0),
(237, '79', '2024-06-01', 'Learning Materials', 6000, 0),
(238, '80', '2024-06-01', 'Tuition', 15000, 0),
(239, '80', '2024-06-01', 'Miscellaneous', 10600, 0),
(240, '80', '2024-06-01', 'Learning Materials', 0, 0),
(241, '81', '2024-06-01', 'Tuition', 15000, 0),
(242, '81', '2024-06-01', 'Miscellaneous', 10600, 0),
(243, '81', '2024-06-01', 'Learning Materials', 0, 0),
(244, '82', '2024-06-01', 'Tuition', 15000, 0),
(245, '82', '2024-06-01', 'Miscellaneous', 10600, 0),
(246, '82', '2024-06-01', 'Learning Materials', 6000, 0),
(247, '83', '2024-06-01', 'Tuition', 15000, 0),
(248, '83', '2024-06-01', 'Miscellaneous', 10600, 0),
(249, '83', '2024-06-01', 'Learning Materials', 6000, 0),
(250, '84', '2024-06-01', 'Tuition', 15000, 0),
(251, '84', '2024-06-01', 'Miscellaneous', 10600, 0),
(252, '84', '2024-06-01', 'Learning Materials', 6000, 0),
(253, '85', '2024-06-01', 'Tuition', 15000, 0),
(254, '85', '2024-06-01', 'Miscellaneous', 10600, 0),
(255, '85', '2024-06-01', 'Learning Materials', 6000, 0),
(256, '86', '2024-06-01', 'Tuition', 15000, 0),
(257, '86', '2024-06-01', 'Miscellaneous', 10600, 0),
(258, '86', '2024-06-01', 'Learning Materials', 6000, 0),
(259, '87', '2024-06-01', 'Tuition', 15000, 0),
(260, '87', '2024-06-01', 'Miscellaneous', 10600, 0),
(261, '87', '2024-06-01', 'Learning Materials', 6000, 0),
(262, '88', '2024-06-01', 'Tuition', 15000, 0),
(263, '88', '2024-06-01', 'Miscellaneous', 10600, 0),
(264, '88', '2024-06-01', 'Learning Materials', 6000, 0),
(265, '89', '2024-06-01', 'Tuition', 15000, 0),
(266, '89', '2024-06-01', 'Miscellaneous', 10600, 0),
(267, '89', '2024-06-01', 'Learning Materials', 6000, 0),
(268, '90', '2024-06-01', 'Tuition', 13500, 0),
(269, '90', '2024-06-01', 'Miscellaneous', 10600, 0),
(270, '90', '2024-06-01', 'Learning Materials', 6000, 0),
(271, '91', '2024-06-01', 'Tuition', 15000, 0),
(272, '91', '2024-06-01', 'Miscellaneous', 10600, 0),
(273, '91', '2024-06-01', 'Learning Materials', 0, 0),
(274, '92', '2024-06-01', 'Tuition', 15000, 0),
(275, '92', '2024-06-01', 'Miscellaneous', 10600, 0),
(276, '92', '2024-06-01', 'Learning Materials', 6000, 0),
(277, '93', '2024-06-01', 'Tuition', 15000, 0),
(278, '93', '2024-06-01', 'Miscellaneous', 10600, 0),
(279, '93', '2024-06-01', 'Learning Materials', 6000, 0),
(280, '94', '2024-06-01', 'Tuition', 15000, 0),
(281, '94', '2024-06-01', 'Miscellaneous', 10600, 0),
(282, '94', '2024-06-01', 'Learning Materials', 6000, 0),
(283, '95', '2024-06-01', 'Tuition', 15000, 0),
(284, '95', '2024-06-01', 'Miscellaneous', 10600, 0),
(285, '95', '2024-06-01', 'Learning Materials', 6000, 0),
(286, '96', '2024-06-01', 'Tuition', 15000, 0),
(287, '96', '2024-06-01', 'Miscellaneous', 10600, 0),
(288, '96', '2024-06-01', 'Learning Materials', 6000, 0),
(289, '97', '2024-06-01', 'Tuition', 13500, 0),
(290, '97', '2024-06-01', 'Miscellaneous', 10600, 0),
(291, '97', '2024-06-01', 'Learning Materials', 6000, 0),
(292, '98', '2024-06-01', 'Tuition', 15000, 0),
(293, '98', '2024-06-01', 'Miscellaneous', 11200, 0),
(294, '98', '2024-06-01', 'Learning Materials', 6000, 0),
(295, '99', '2024-06-01', 'Tuition', 15000, 0),
(296, '99', '2024-06-01', 'Miscellaneous', 10600, 0),
(297, '99', '2024-06-01', 'Learning Materials', 6000, 0),
(298, '100', '2024-06-01', 'Tuition', 15000, 0),
(299, '100', '2024-06-01', 'Miscellaneous', 10600, 0),
(300, '100', '2024-06-01', 'Learning Materials', 6000, 0),
(301, '101', '2024-06-01', 'Tuition', 15000, 0),
(302, '101', '2024-06-01', 'Miscellaneous', 10600, 0),
(303, '101', '2024-06-01', 'Learning Materials', 6000, 0),
(304, '102', '2024-06-01', 'Tuition', 15000, 0),
(305, '102', '2024-06-01', 'Miscellaneous', 10600, 0),
(306, '102', '2024-06-01', 'Learning Materials', 6000, 0),
(307, '103', '2024-06-01', 'Tuition', 15000, 0),
(308, '103', '2024-06-01', 'Miscellaneous', 10600, 0),
(309, '103', '2024-06-01', 'Learning Materials', 6000, 0),
(310, '104', '2024-06-01', 'Tuition', 15000, 0),
(311, '104', '2024-06-01', 'Miscellaneous', 10600, 0),
(312, '104', '2024-06-01', 'Learning Materials', 6000, 0),
(313, '105', '2024-06-01', 'Tuition', 15000, 0),
(314, '105', '2024-06-01', 'Miscellaneous', 10600, 0),
(315, '105', '2024-06-01', 'Learning Materials', 6000, 0),
(316, '106', '2024-06-01', 'Tuition', 13500, 0),
(317, '106', '2024-06-01', 'Miscellaneous', 10600, 0),
(318, '106', '2024-06-01', 'Learning Materials', 0, 0),
(319, '107', '2024-06-01', 'Tuition', 15000, 0),
(320, '107', '2024-06-01', 'Miscellaneous', 10600, 0),
(321, '107', '2024-06-01', 'Learning Materials', 6000, 0),
(322, '108', '2024-06-01', 'Tuition', 15000, 0),
(323, '108', '2024-06-01', 'Miscellaneous', 10600, 0),
(324, '108', '2024-06-01', 'Learning Materials', 6000, 0),
(325, '109', '2024-06-01', 'Tuition', 15000, 0),
(326, '109', '2024-06-01', 'Miscellaneous', 10600, 0),
(327, '109', '2024-06-01', 'Learning Materials', 0, 0),
(328, '110', '2024-06-01', 'Tuition', 15000, 0),
(329, '110', '2024-06-01', 'Miscellaneous', 10600, 0),
(330, '110', '2024-06-01', 'Learning Materials', 6000, 0),
(331, '111', '2024-06-01', 'Tuition', 13500, 0),
(332, '111', '2024-06-01', 'Miscellaneous', 10600, 0),
(333, '111', '2024-06-01', 'Learning Materials', 0, 0),
(334, '112', '2024-06-01', 'Tuition', 15000, 0),
(335, '112', '2024-06-01', 'Miscellaneous', 10600, 0),
(336, '112', '2024-06-01', 'Learning Materials', 6000, 0),
(337, '113', '2024-06-01', 'Tuition', 15000, 0),
(338, '113', '2024-06-01', 'Miscellaneous', 11200, 0),
(339, '113', '2024-06-01', 'Learning Materials', 6000, 0),
(340, '114', '2024-06-01', 'Tuition', 15000, 0),
(341, '114', '2024-06-01', 'Miscellaneous', 10600, 0),
(342, '114', '2024-06-01', 'Learning Materials', 6000, 0),
(343, '115', '2024-06-01', 'Tuition', 15000, 0),
(344, '115', '2024-06-01', 'Miscellaneous', 10600, 0),
(345, '115', '2024-06-01', 'Learning Materials', 6000, 0),
(346, '116', '2024-06-01', 'Tuition', 15000, 0),
(347, '116', '2024-06-01', 'Miscellaneous', 10600, 0),
(348, '116', '2024-06-01', 'Learning Materials', 6000, 0),
(349, '117', '2024-06-01', 'Tuition', 15000, 0),
(350, '117', '2024-06-01', 'Miscellaneous', 10600, 0),
(351, '117', '2024-06-01', 'Learning Materials', 6000, 0),
(352, '118', '2024-06-01', 'Tuition', 15000, 0),
(353, '118', '2024-06-01', 'Miscellaneous', 10600, 0),
(354, '118', '2024-06-01', 'Learning Materials', 6000, 0),
(355, '119', '2024-06-01', 'Tuition', 15000, 0),
(356, '119', '2024-06-01', 'Miscellaneous', 10600, 0),
(357, '119', '2024-06-01', 'Learning Materials', 6000, 0),
(358, '120', '2024-06-01', 'Tuition', 15000, 0),
(359, '120', '2024-06-01', 'Miscellaneous', 10600, 0),
(360, '120', '2024-06-01', 'Learning Materials', 6000, 0),
(361, '121', '2024-06-01', 'Tuition', 15000, 0),
(362, '121', '2024-06-01', 'Miscellaneous', 10600, 0),
(363, '121', '2024-06-01', 'Learning Materials', 6000, 0),
(364, '122', '2024-06-01', 'Tuition', 15000, 0),
(365, '122', '2024-06-01', 'Miscellaneous', 10600, 0),
(366, '122', '2024-06-01', 'Learning Materials', 6000, 0),
(367, '123', '2024-06-01', 'Tuition', 15000, 0),
(368, '123', '2024-06-01', 'Miscellaneous', 10600, 0),
(369, '123', '2024-06-01', 'Learning Materials', 6000, 0),
(370, '124', '2024-06-01', 'Tuition', 15000, 0),
(371, '124', '2024-06-01', 'Miscellaneous', 10600, 0),
(372, '124', '2024-06-01', 'Learning Materials', 6000, 0),
(373, '125', '2024-06-01', 'Tuition', 15000, 0),
(374, '125', '2024-06-01', 'Miscellaneous', 10600, 0),
(375, '125', '2024-06-01', 'Learning Materials', 6000, 0),
(376, '126', '2024-06-01', 'Tuition', 15000, 0),
(377, '126', '2024-06-01', 'Miscellaneous', 10600, 0),
(378, '126', '2024-06-01', 'Learning Materials', 6000, 0),
(379, '127', '2024-06-01', 'Tuition', 15000, 0),
(380, '127', '2024-06-01', 'Miscellaneous', 10600, 0),
(381, '127', '2024-06-01', 'Learning Materials', 6000, 0),
(382, '128', '2024-06-01', 'Tuition', 15000, 0),
(383, '128', '2024-06-01', 'Miscellaneous', 10600, 0),
(384, '128', '2024-06-01', 'Learning Materials', 6000, 0),
(385, '129', '2024-06-01', 'Tuition', 15000, 0),
(386, '129', '2024-06-01', 'Miscellaneous', 10600, 0),
(387, '129', '2024-06-01', 'Learning Materials', 6000, 0),
(388, '130', '2024-06-01', 'Tuition', 15000, 0),
(389, '130', '2024-06-01', 'Miscellaneous', 10600, 0),
(390, '130', '2024-06-01', 'Learning Materials', 6000, 0),
(391, '131', '2024-06-01', 'Tuition', 15000, 0),
(392, '131', '2024-06-01', 'Miscellaneous', 10600, 0),
(393, '131', '2024-06-01', 'Learning Materials', 6000, 0),
(394, '132', '2024-06-01', 'Tuition', 15000, 0),
(395, '132', '2024-06-01', 'Miscellaneous', 10600, 0),
(396, '132', '2024-06-01', 'Learning Materials', 6000, 0),
(397, '133', '2024-06-01', 'Tuition', 15000, 0),
(398, '133', '2024-06-01', 'Miscellaneous', 10600, 0),
(399, '133', '2024-06-01', 'Learning Materials', 6000, 0),
(400, '134', '2024-06-01', 'Tuition', 15000, 0),
(401, '134', '2024-06-01', 'Miscellaneous', 10600, 0),
(402, '134', '2024-06-01', 'Learning Materials', 6000, 0),
(403, '135', '2024-06-01', 'Tuition', 15000, 0),
(404, '135', '2024-06-01', 'Miscellaneous', 10600, 0),
(405, '135', '2024-06-01', 'Learning Materials', 6000, 0),
(406, '136', '2024-06-01', 'Tuition', 15000, 0),
(407, '136', '2024-06-01', 'Miscellaneous', 10600, 0),
(408, '136', '2024-06-01', 'Learning Materials', 6000, 0),
(409, '137', '2024-06-01', 'Tuition', 15000, 0),
(410, '137', '2024-06-01', 'Miscellaneous', 10600, 0),
(411, '137', '2024-06-01', 'Learning Materials', 6000, 0),
(412, '138', '2024-06-01', 'Tuition', 15000, 0),
(413, '138', '2024-06-01', 'Miscellaneous', 10600, 0),
(414, '138', '2024-06-01', 'Learning Materials', 6000, 0),
(415, '139', '2024-06-01', 'Tuition', 15000, 0),
(416, '139', '2024-06-01', 'Miscellaneous', 10600, 0),
(417, '139', '2024-06-01', 'Learning Materials', 6000, 0),
(418, '140', '2024-06-01', 'Tuition', 0, 0),
(419, '140', '2024-06-01', 'Miscellaneous', 11200, 0),
(420, '140', '2024-06-01', 'Learning Materials', 0, 0),
(421, '141', '2024-06-01', 'Tuition', 0, 0),
(422, '141', '2024-06-01', 'Miscellaneous', 11200, 0),
(423, '141', '2024-06-01', 'Learning Materials', 0, 0),
(424, '142', '2024-06-01', 'Tuition', 0, 0),
(425, '142', '2024-06-01', 'Miscellaneous', 11200, 0),
(426, '142', '2024-06-01', 'Learning Materials', 9000, 0),
(427, '143', '2024-06-01', 'Tuition', 0, 0),
(428, '143', '2024-06-01', 'Miscellaneous', 11200, 0),
(429, '143', '2024-06-01', 'Learning Materials', 0, 0),
(430, '144', '2024-06-01', 'Tuition', 0, 0),
(431, '144', '2024-06-01', 'Miscellaneous', 11200, 0),
(432, '144', '2024-06-01', 'Learning Materials', 9000, 0),
(433, '145', '2024-06-01', 'Tuition', 0, 0),
(434, '145', '2024-06-01', 'Miscellaneous', 11200, 0),
(435, '145', '2024-06-01', 'Learning Materials', 9000, 0),
(436, '146', '2024-06-01', 'Tuition', 0, 0),
(437, '146', '2024-06-01', 'Miscellaneous', 11200, 0),
(438, '146', '2024-06-01', 'Learning Materials', 9000, 0),
(439, '147', '2024-06-01', 'Tuition', 0, 0),
(440, '147', '2024-06-01', 'Miscellaneous', 11200, 0),
(441, '147', '2024-06-01', 'Learning Materials', 9000, 0),
(442, '148', '2024-06-01', 'Tuition', 0, 0),
(443, '148', '2024-06-01', 'Miscellaneous', 11200, 0),
(444, '148', '2024-06-01', 'Learning Materials', 9000, 0),
(445, '149', '2024-06-01', 'Tuition', 0, 0),
(446, '149', '2024-06-01', 'Miscellaneous', 11200, 0),
(447, '149', '2024-06-01', 'Learning Materials', 9000, 0),
(448, '150', '2024-06-01', 'Tuition', 0, 0),
(449, '150', '2024-06-01', 'Miscellaneous', 11200, 0),
(450, '150', '2024-06-01', 'Learning Materials', 9000, 0),
(451, '151', '2024-06-01', 'Tuition', 0, 0),
(452, '151', '2024-06-01', 'Miscellaneous', 11200, 0),
(453, '151', '2024-06-01', 'Learning Materials', 9000, 0),
(454, '152', '2024-06-01', 'Tuition', 0, 0),
(455, '152', '2024-06-01', 'Miscellaneous', 11200, 0),
(456, '152', '2024-06-01', 'Learning Materials', 0, 0),
(457, '153', '2024-06-01', 'Tuition', 15000, 0),
(458, '153', '2024-06-01', 'Miscellaneous', 11200, 0),
(459, '153', '2024-06-01', 'Learning Materials', 9000, 0),
(460, '154', '2024-06-01', 'Tuition', 0, 0),
(461, '154', '2024-06-01', 'Miscellaneous', 11200, 0),
(462, '154', '2024-06-01', 'Learning Materials', 9000, 0),
(463, '155', '2024-06-01', 'Tuition', 0, 0),
(464, '155', '2024-06-01', 'Miscellaneous', 11200, 0),
(465, '155', '2024-06-01', 'Learning Materials', 0, 0),
(466, '156', '2024-06-01', 'Tuition', 0, 0),
(467, '156', '2024-06-01', 'Miscellaneous', 11200, 0),
(468, '156', '2024-06-01', 'Learning Materials', 9000, 0),
(469, '157', '2024-06-01', 'Tuition', 0, 0),
(470, '157', '2024-06-01', 'Miscellaneous', 11200, 0),
(471, '157', '2024-06-01', 'Learning Materials', 0, 0),
(472, '158', '2024-06-01', 'Tuition', 0, 0),
(473, '158', '2024-06-01', 'Miscellaneous', 11200, 0),
(474, '158', '2024-06-01', 'Learning Materials', 9000, 0),
(475, '159', '2024-06-01', 'Tuition', 0, 0),
(476, '159', '2024-06-01', 'Miscellaneous', 11200, 0),
(477, '159', '2024-06-01', 'Learning Materials', 0, 0),
(478, '160', '2024-06-01', 'Tuition', 0, 0),
(479, '160', '2024-06-01', 'Miscellaneous', 11200, 0),
(480, '160', '2024-06-01', 'Learning Materials', 0, 0),
(481, '161', '2024-06-01', 'Tuition', 0, 0),
(482, '161', '2024-06-01', 'Miscellaneous', 11200, 0),
(483, '161', '2024-06-01', 'Learning Materials', 0, 0),
(484, '162', '2024-06-01', 'Tuition', 0, 0),
(485, '162', '2024-06-01', 'Miscellaneous', 11200, 0),
(486, '162', '2024-06-01', 'Learning Materials', 9000, 0),
(487, '163', '2024-06-01', 'Tuition', 0, 0),
(488, '163', '2024-06-01', 'Miscellaneous', 11200, 0),
(489, '163', '2024-06-01', 'Learning Materials', 9000, 0),
(490, '164', '2024-06-01', 'Tuition', 0, 0),
(491, '164', '2024-06-01', 'Miscellaneous', 11200, 0),
(492, '164', '2024-06-01', 'Learning Materials', 9000, 0),
(493, '165', '2024-06-01', 'Tuition', 0, 0),
(494, '165', '2024-06-01', 'Miscellaneous', 11200, 0),
(495, '165', '2024-06-01', 'Learning Materials', 9000, 0),
(496, '166', '2024-06-01', 'Tuition', 0, 0),
(497, '166', '2024-06-01', 'Miscellaneous', 11200, 0),
(498, '166', '2024-06-01', 'Learning Materials', 9000, 0),
(499, '167', '2024-06-01', 'Tuition', 0, 0),
(500, '167', '2024-06-01', 'Miscellaneous', 11200, 0),
(501, '167', '2024-06-01', 'Learning Materials', 9000, 0),
(502, '168', '2024-06-01', 'Tuition', 0, 0),
(503, '168', '2024-06-01', 'Miscellaneous', 11200, 0),
(504, '168', '2024-06-01', 'Learning Materials', 9000, 0),
(505, '169', '2024-06-01', 'Tuition', 0, 0),
(506, '169', '2024-06-01', 'Miscellaneous', 11200, 0),
(507, '169', '2024-06-01', 'Learning Materials', 0, 0),
(508, '170', '2024-06-01', 'Tuition', 0, 0),
(509, '170', '2024-06-01', 'Miscellaneous', 11200, 0),
(510, '170', '2024-06-01', 'Learning Materials', 0, 0),
(511, '171', '2024-06-01', 'Tuition', 0, 0),
(512, '171', '2024-06-01', 'Miscellaneous', 11200, 0),
(513, '171', '2024-06-01', 'Learning Materials', 9000, 0),
(514, '172', '2024-06-01', 'Tuition', 0, 0),
(515, '172', '2024-06-01', 'Miscellaneous', 11200, 0),
(516, '172', '2024-06-01', 'Learning Materials', 9000, 0),
(517, '173', '2024-06-01', 'Tuition', 0, 0),
(518, '173', '2024-06-01', 'Miscellaneous', 11200, 0),
(519, '173', '2024-06-01', 'Learning Materials', 0, 0),
(520, '174', '2024-06-01', 'Tuition', 0, 0),
(521, '174', '2024-06-01', 'miscellaneous', 11200, 0),
(522, '174', '2024-06-01', 'learning materials', 9000, 0),
(523, '175', '2024-06-01', 'Tuition', 0, 0),
(524, '175', '2024-06-01', 'miscellaneous', 11200, 0),
(525, '175', '2024-06-01', 'learning materials', 9000, 0),
(526, '176', '2024-06-01', 'Tuition', 0, 0),
(527, '176', '2024-06-01', 'miscellaneous', 11200, 0),
(528, '176', '2024-06-01', 'learning materials', 0, 0),
(529, '177', '2024-06-01', 'Tuition', 0, 0),
(530, '177', '2024-06-01', 'miscellaneous', 11200, 0),
(531, '177', '2024-06-01', 'learning materials', 0, 0),
(532, '178', '2024-06-01', 'Tuition', 0, 0),
(533, '178', '2024-06-01', 'miscellaneous', 11200, 0),
(534, '178', '2024-06-01', 'learning materials', 0, 0),
(535, '179', '2024-06-01', 'Tuition', 0, 0),
(536, '179', '2024-06-01', 'miscellaneous', 11200, 0),
(537, '179', '2024-06-01', 'learning materials', 0, 0),
(538, '180', '2024-06-01', 'Tuition', 0, 0),
(539, '180', '2024-06-01', 'miscellaneous', 11200, 0),
(540, '180', '2024-06-01', 'learning materials', 0, 0),
(541, '181', '2024-06-01', 'Tuition', 0, 0),
(542, '181', '2024-06-01', 'miscellaneous', 1200, 0),
(543, '181', '2024-06-01', 'learning materials', 9000, 0),
(544, '182', '2024-06-01', 'Tuition', 0, 0),
(545, '182', '2024-06-01', 'miscellaneous', 11200, 0),
(546, '182', '2024-06-01', 'learning materials', 0, 0),
(547, '183', '2024-06-01', 'Tuition', 0, 0),
(548, '183', '2024-06-01', 'miscellaneous', 11200, 0),
(549, '183', '2024-06-01', 'learning materials', 0, 0),
(550, '184', '2024-06-01', 'Tuition', 15000, 0),
(551, '184', '2024-06-01', 'miscellaneous', 11200, 0),
(552, '184', '2024-06-01', 'learning materials', 9000, 0),
(553, '185', '2024-06-01', 'Tuition', 0, 0),
(554, '185', '2024-06-01', 'miscellaneous', 11200, 0),
(555, '185', '2024-06-01', 'learning materials', 0, 0),
(556, '186', '2024-06-01', 'Tuition', 0, 0),
(557, '186', '2024-06-01', 'miscellaneous', 11200, 0),
(558, '186', '2024-06-01', 'learning materials', 0, 0),
(559, '187', '2024-06-01', 'Tuition', 0, 0),
(560, '187', '2024-06-01', 'miscellaneous', 11200, 0),
(561, '187', '2024-06-01', 'learning materials', 0, 0),
(562, '188', '2024-06-01', 'Tuition', 15000, 0),
(563, '188', '2024-06-01', 'miscellaneous', 11200, 0),
(564, '188', '2024-06-01', 'learning materials', 0, 0),
(565, '189', '2024-06-01', 'Tuition', 0, 0),
(566, '189', '2024-06-01', 'miscellaneous', 11200, 0),
(567, '189', '2024-06-01', 'learning materials', 0, 0),
(568, '190', '2024-06-01', 'Tuition', 0, 0),
(569, '190', '2024-06-01', 'miscellaneous', 11200, 0),
(570, '190', '2024-06-01', 'learning materials', 0, 0),
(571, '191', '2024-06-01', 'Tuition', 0, 0),
(572, '191', '2024-06-01', 'miscellaneous', 11200, 0),
(573, '191', '2024-06-01', 'learning materials', 0, 0),
(574, '192', '2024-06-01', 'Tuition', 0, 0),
(575, '192', '2024-06-01', 'miscellaneous', 11200, 0),
(576, '192', '2024-06-01', 'learning materials', 0, 0),
(577, '193', '2024-06-01', 'Tuition', 0, 0),
(578, '193', '2024-06-01', 'miscellaneous', 11200, 0),
(579, '193', '2024-06-01', 'learning materials', 0, 0),
(580, '194', '2024-06-01', 'Tuition', 0, 0),
(581, '194', '2024-06-01', 'miscellaneous', 11200, 0),
(582, '194', '2024-06-01', 'learning materials', 9000, 0),
(583, '195', '2024-06-01', 'Tuition', 0, 0),
(584, '195', '2024-06-01', 'miscellaneous', 11200, 0),
(585, '195', '2024-06-01', 'learning materials', 0, 0),
(586, '196', '2024-06-01', 'Tuition', 0, 0),
(587, '196', '2024-06-01', 'miscellaneous', 11200, 0),
(588, '196', '2024-06-01', 'learning materials', 0, 0),
(589, '197', '2024-06-01', 'Tuition', 0, 0),
(590, '197', '2024-06-01', 'miscellaneous', 11200, 0),
(591, '197', '2024-06-01', 'learning materials', 0, 0),
(592, '198', '2024-06-01', 'Tuition', 0, 0),
(593, '198', '2024-06-01', 'miscellaneous', 11200, 0),
(594, '198', '2024-06-01', 'learning materials', 0, 0),
(595, '199', '2024-06-01', 'Tuition', 0, 0),
(596, '199', '2024-06-01', 'miscellaneous', 11200, 0),
(597, '199', '2024-06-01', 'learning materials', 0, 0),
(598, '200', '2024-06-01', 'Tuition', 0, 0),
(599, '200', '2024-06-01', 'miscellaneous', 11200, 0),
(600, '200', '2024-06-01', 'learning materials', 0, 0),
(601, '201', '2024-06-01', 'Tuition', 0, 0),
(602, '201', '2024-06-01', 'miscellaneous', 11200, 0),
(603, '201', '2024-06-01', 'learning materials', 0, 0),
(604, '202', '2024-06-01', 'Tuition', 0, 0),
(605, '202', '2024-06-01', 'miscellaneous', 11200, 0),
(606, '202', '2024-06-01', 'learning materials', 0, 0),
(607, '203', '2024-06-01', 'Tuition', 0, 0),
(608, '203', '2024-06-01', 'miscellaneous', 11200, 0),
(609, '203', '2024-06-01', 'learning materials', 0, 0),
(610, '204', '2024-06-01', 'Tuition', 0, 0),
(611, '204', '2024-06-01', 'miscellaneous', 11200, 0),
(612, '204', '2024-06-01', 'learning materials', 0, 0),
(613, '205', '2024-06-01', 'Tuition', 0, 0),
(614, '205', '2024-06-01', 'miscellaneous', 11200, 0),
(615, '205', '2024-06-01', 'learning materials', 0, 0),
(616, '206', '2024-06-01', 'Tuition', 0, 0),
(617, '206', '2024-06-01', 'miscellaneous', 11200, 0),
(618, '206', '2024-06-01', 'learning materials', 0, 0),
(619, '207', '2024-06-01', 'Tuition', 0, 0),
(620, '207', '2024-06-01', 'miscellaneous', 11200, 0),
(621, '207', '2024-06-01', 'learning materials', 0, 0),
(622, '208', '2024-06-01', 'Tuition', 0, 0),
(623, '208', '2024-06-01', 'miscellaneous', 11200, 0),
(624, '208', '2024-06-01', 'learning materials', 0, 0),
(625, '209', '2024-06-01', 'Tuition', 0, 0),
(626, '209', '2024-06-01', 'miscellaneous', 11200, 0),
(627, '209', '2024-06-01', 'learning materials', 9000, 0),
(628, '210', '2024-06-01', 'Tuition', 0, 0),
(629, '210', '2024-06-01', 'miscellaneous', 11200, 0),
(630, '210', '2024-06-01', 'learning materials', 0, 0),
(631, '211', '2024-06-01', 'Tuition', 0, 0),
(632, '211', '2024-06-01', 'miscellaneous', 11200, 0),
(633, '211', '2024-06-01', 'learning materials', 9000, 0),
(634, '212', '2024-06-01', 'Tuition', 0, 0),
(635, '212', '2024-06-01', 'miscellaneous', 11200, 0),
(636, '212', '2024-06-01', 'learning materials', 9000, 0),
(637, '213', '2024-06-01', 'Tuition', 15000, 0),
(638, '213', '2024-06-01', 'miscellaneous', 11200, 0),
(639, '213', '2024-06-01', 'learning materials', 0, 0),
(640, '214', '2024-06-01', 'Tuition', 0, 0),
(641, '214', '2024-06-01', 'miscellaneous', 11200, 0),
(642, '214', '2024-06-01', 'learning materials', 0, 0),
(643, '215', '2024-06-01', 'Tuition', 0, 0),
(644, '215', '2024-06-01', 'miscellaneous', 11200, 0),
(645, '215', '2024-06-01', 'learning materials', 0, 0),
(646, '216', '2024-06-01', 'Tuition', 15000, 0),
(647, '216', '2024-06-01', 'miscellaneous', 11200, 0),
(648, '216', '2024-06-01', 'learning materials', 0, 0),
(649, '217', '2024-06-01', 'Tuition', 0, 0),
(650, '217', '2024-06-01', 'miscellaneous', 11200, 0),
(651, '217', '2024-06-01', 'learning materials', 9000, 0),
(652, '218', '2024-06-01', 'Tuition', 0, 0),
(653, '218', '2024-06-01', 'miscellaneous', 11200, 0),
(654, '218', '2024-06-01', 'learning materials', 0, 0),
(655, '219', '2024-06-01', 'Tuition', 0, 0),
(656, '219', '2024-06-01', 'miscellaneous', 11200, 0),
(657, '219', '2024-06-01', 'learning materials', 0, 0),
(658, '220', '2024-06-01', 'Tuition', 0, 0),
(659, '220', '2024-06-01', 'miscellaneous', 11200, 0),
(660, '220', '2024-06-01', 'learning materials', 0, 0),
(661, '221', '2024-06-01', 'Tuition', 0, 0),
(662, '221', '2024-06-01', 'miscellaneous', 11200, 0),
(663, '221', '2024-06-01', 'learning materials', 9000, 0),
(664, '222', '2024-06-01', 'Tuition', 0, 0),
(665, '222', '2024-06-01', 'miscellaneous', 11200, 0),
(666, '222', '2024-06-01', 'learning materials', 0, 0),
(667, '223', '2024-06-01', 'Tuition', 0, 0),
(668, '223', '2024-06-01', 'miscellaneous', 11200, 0),
(669, '223', '2024-06-01', 'learning materials', 0, 0),
(670, '224', '2024-06-01', 'Tuition', 0, 0),
(671, '224', '2024-06-01', 'miscellaneous', 11200, 0),
(672, '224', '2024-06-01', 'learning materials', 9000, 0),
(673, '225', '2024-06-01', 'Tuition', 0, 0),
(674, '225', '2024-06-01', 'miscellaneous', 11200, 0),
(675, '225', '2024-06-01', 'learning materials', 0, 0),
(676, '227', '2024-06-01', 'Tuition', 0, 0),
(677, '227', '2024-06-01', 'miscellaneous', 11200, 0),
(678, '227', '2024-06-01', 'learning materials', 0, 0),
(679, '228', '2024-06-01', 'Tuition', 0, 0),
(680, '228', '2024-06-01', 'miscellaneous', 11200, 0),
(681, '228', '2024-06-01', 'learning materials', 0, 0),
(682, '229', '2024-06-01', 'Tuition', 0, 0),
(683, '229', '2024-06-01', 'miscellaneous', 11200, 0),
(684, '229', '2024-06-01', 'learning materials', 0, 0),
(685, '230', '2024-06-01', 'Tuition', 0, 0),
(686, '230', '2024-06-01', 'miscellaneous', 11200, 0),
(687, '230', '2024-06-01', 'learning materials', 0, 0),
(688, '231', '2024-06-01', 'Tuition', 15000, 0),
(689, '231', '2024-06-01', 'miscellaneous', 11200, 0),
(690, '231', '2024-06-01', 'learning materials', 9000, 0),
(691, '232', '2024-06-01', 'Tuition', 0, 0),
(692, '232', '2024-06-01', 'miscellaneous', 11200, 0),
(693, '232', '2024-06-01', 'learning materials', 9000, 0),
(694, '233', '2024-06-01', 'Tuition', 0, 0),
(695, '233', '2024-06-01', 'miscellaneous', 11200, 0),
(696, '233', '2024-06-01', 'learning materials', 9000, 0),
(697, '234', '2024-06-01', 'Tuition', 0, 0),
(698, '234', '2024-06-01', 'miscellaneous', 11200, 0),
(699, '234', '2024-06-01', 'learning materials', 0, 0),
(700, '235', '2024-06-01', 'Tuition', 0, 0),
(701, '235', '2024-06-01', 'miscellaneous', 0, 0),
(702, '235', '2024-06-01', 'learning materials', 11200, 0),
(703, '236', '2024-06-01', 'Tuition', 0, 0),
(704, '236', '2024-06-01', 'miscellaneous', 11200, 0),
(705, '236', '2024-06-01', 'learning materials', 0, 0),
(706, '237', '2024-06-01', 'Tuition', 0, 0),
(707, '237', '2024-06-01', 'Miscellaneous', 12600, 0),
(708, '237', '2024-06-01', 'Learning Materials', 0, 0),
(709, '238', '2024-06-01', 'Tuition', 0, 0),
(710, '238', '2024-06-01', 'Miscellaneous', 12600, 0),
(711, '238', '2024-06-01', 'Learning Materials', 0, 0),
(712, '239', '2024-06-01', 'Tuition', 0, 0),
(713, '239', '2024-06-01', 'Miscellaneous', 12600, 0),
(714, '239', '2024-06-01', 'Learning Materials', 0, 0),
(715, '240', '2024-06-01', 'Tuition', 0, 0),
(716, '240', '2024-06-01', 'Miscellaneous', 12600, 0),
(717, '240', '2024-06-01', 'Learning Materials', 0, 0),
(718, '241', '2024-06-01', 'Tuition', 0, 0),
(719, '241', '2024-06-01', 'Miscellaneous', 12600, 0),
(720, '241', '2024-06-01', 'Learning Materials', 0, 0),
(721, '242', '2024-06-01', 'Tuition', 0, 0),
(722, '242', '2024-06-01', 'Miscellaneous', 12600, 0),
(723, '242', '2024-06-01', 'Learning Materials', 0, 0),
(724, '243', '2024-06-01', 'Tuition', 15000, 0),
(725, '243', '2024-06-01', 'Miscellaneous', 12600, 0),
(726, '243', '2024-06-01', 'Learning Materials', 0, 0),
(727, '244', '2024-06-01', 'Tuition', 0, 0),
(728, '244', '2024-06-01', 'Miscellaneous', 12600, 0),
(729, '244', '2024-06-01', 'Learning Materials', 0, 0),
(730, '245', '2024-06-01', 'Tuition', 0, 0),
(731, '245', '2024-06-01', 'Miscellaneous', 12600, 0),
(732, '245', '2024-06-01', 'Learning Materials', 0, 0),
(733, '246', '2024-06-01', 'Tuition', 0, 0),
(734, '246', '2024-06-01', 'Miscellaneous', 12600, 0),
(735, '246', '2024-06-01', 'Learning Materials', 0, 0),
(736, '247', '2024-06-01', 'Tuition', 0, 0),
(737, '247', '2024-06-01', 'Miscellaneous', 12600, 0),
(738, '247', '2024-06-01', 'Learning Materials', 0, 0),
(739, '248', '2024-06-01', 'Tuition', 0, 0),
(740, '248', '2024-06-01', 'Miscellaneous', 12600, 0),
(741, '248', '2024-06-01', 'Learning Materials', 0, 0),
(742, '249', '2024-06-01', 'Tuition', 0, 0),
(743, '249', '2024-06-01', 'Miscellaneous', 12600, 0),
(744, '249', '2024-06-01', 'Learning Materials', 0, 0),
(745, '250', '2024-06-01', 'Tuition', 0, 0),
(746, '250', '2024-06-01', 'Miscellaneous', 12600, 0),
(747, '250', '2024-06-01', 'Learning Materials', 0, 0),
(748, '251', '2024-06-01', 'Tuition', 0, 0),
(749, '251', '2024-06-01', 'Miscellaneous', 12600, 0),
(750, '251', '2024-06-01', 'Learning Materials', 0, 0),
(751, '252', '2024-06-01', 'Tuition', 0, 0),
(752, '252', '2024-06-01', 'Miscellaneous', 12600, 0),
(753, '252', '2024-06-01', 'Learning Materials', 0, 0),
(754, '253', '2024-06-01', 'Tuition', 0, 0),
(755, '253', '2024-06-01', 'Miscellaneous', 12600, 0),
(756, '253', '2024-06-01', 'Learning Materials', 0, 0),
(757, '254', '2024-06-01', 'Tuition', 0, 0),
(758, '254', '2024-06-01', 'Miscellaneous', 12600, 0),
(759, '254', '2024-06-01', 'Learning Materials', 0, 0),
(760, '255', '2024-06-01', 'Tuition', 0, 0),
(761, '255', '2024-06-01', 'Miscellaneous', 12600, 0),
(762, '255', '2024-06-01', 'Learning Materials', 0, 0),
(763, '256', '2024-06-01', 'Tuition', 0, 0),
(764, '256', '2024-06-01', 'Miscellaneous', 12600, 0),
(765, '256', '2024-06-01', 'Learning Materials', 0, 0),
(766, '257', '2024-06-01', 'Tuition', 0, 0),
(767, '257', '2024-06-01', 'Miscellaneous', 12600, 0),
(768, '257', '2024-06-01', 'Learning Materials', 0, 0),
(769, '258', '2024-06-01', 'Tuition', 0, 0),
(770, '258', '2024-06-01', 'Miscellaneous', 12600, 0),
(771, '258', '2024-06-01', 'Learning Materials', 0, 0),
(772, '259', '2024-06-01', 'Tuition', 0, 0),
(773, '259', '2024-06-01', 'Miscellaneous', 12600, 0),
(774, '259', '2024-06-01', 'Learning Materials', 0, 0),
(775, '260', '2024-06-01', 'Tuition', 0, 0),
(776, '260', '2024-06-01', 'Miscellaneous', 12600, 0),
(777, '260', '2024-06-01', 'Learning Materials', 0, 0),
(778, '261', '2024-06-01', 'Tuition', 0, 0),
(779, '261', '2024-06-01', 'Miscellaneous', 12600, 0),
(780, '261', '2024-06-01', 'Learning Materials', 0, 0),
(781, '262', '2024-06-01', 'Tuition', 0, 0),
(782, '262', '2024-06-01', 'Miscellaneous', 12600, 0),
(783, '262', '2024-06-01', 'Learning Materials', 0, 0),
(784, '263', '2024-06-01', 'Tuition', 0, 0),
(785, '263', '2024-06-01', 'Miscellaneous', 12600, 0),
(786, '263', '2024-06-01', 'Learning Materials', 0, 0),
(787, '264', '2024-06-01', 'Tuition', 0, 0),
(788, '264', '2024-06-01', 'Miscellaneous', 12600, 0),
(789, '264', '2024-06-01', 'Learning Materials', 0, 0),
(790, '265', '2024-06-01', 'Tuition', 0, 0),
(791, '265', '2024-06-01', 'Miscellaneous', 12600, 0),
(792, '265', '2024-06-01', 'Learning Materials', 0, 0),
(793, '266', '2024-06-01', 'Tuition', 0, 0),
(794, '266', '2024-06-01', 'Miscellaneous', 12600, 0),
(795, '266', '2024-06-01', 'Learning Materials', 0, 0),
(796, '267', '2024-06-01', 'Tuition', 0, 0),
(797, '267', '2024-06-01', 'Miscellaneous', 12600, 0),
(798, '267', '2024-06-01', 'Learnng Materials', 0, 0),
(799, '268', '2024-06-01', 'Tuition', 0, 0),
(800, '268', '2024-06-01', 'Miscellaneous', 12600, 0),
(801, '268', '2024-06-01', 'Learnng Materials', 0, 0),
(802, '269', '2024-06-01', 'Tuition', 0, 0),
(803, '269', '2024-06-01', 'Miscellaneous', 12600, 0),
(804, '269', '2024-06-01', 'Learnng Materials', 0, 0),
(805, '270', '2024-06-01', 'Tuition', 0, 0),
(806, '270', '2024-06-01', 'Miscellaneous', 12600, 0),
(807, '270', '2024-06-01', 'Learnng Materials', 0, 0),
(808, '271', '2024-06-01', 'Tuition', 0, 0),
(809, '271', '2024-06-01', 'Miscellaneous', 12600, 0),
(810, '271', '2024-06-01', 'Learnng Materials', 0, 0),
(811, '272', '2024-06-01', 'Tuition', 0, 0),
(812, '272', '2024-06-01', 'Miscellaneous', 12600, 0),
(813, '272', '2024-06-01', 'Learnng Materials', 0, 0),
(814, '273', '2024-06-01', 'Tuition', 0, 0),
(815, '273', '2024-06-01', 'Miscellaneous', 12600, 0),
(816, '273', '2024-06-01', 'Learnng Materials', 0, 0),
(817, '274', '2024-06-01', 'Tuition', 0, 0),
(818, '274', '2024-06-01', 'Miscellaneous', 12600, 0),
(819, '274', '2024-06-01', 'Learnng Materials', 0, 0),
(820, '275', '2024-06-01', 'Tuition', 0, 0),
(821, '275', '2024-06-01', 'Miscellaneous', 12600, 0),
(822, '275', '2024-06-01', 'Learnng Materials', 0, 0),
(823, '276', '2024-06-01', 'Tuition', 0, 0),
(824, '276', '2024-06-01', 'Miscellaneous', 12600, 0),
(825, '276', '2024-06-01', 'Learnng Materials', 0, 0),
(826, '277', '2024-06-01', 'Tuition', 0, 0),
(827, '277', '2024-06-01', 'Miscellaneous', 12600, 0),
(828, '277', '2024-06-01', 'Learnng Materials', 0, 0),
(829, '278', '2024-06-01', 'Tuition', 0, 0),
(830, '278', '2024-06-01', 'Miscellaneous', 12600, 0),
(831, '278', '2024-06-01', 'Learnng Materials', 0, 0),
(832, '279', '2024-06-01', 'Tuition', 0, 0),
(833, '279', '2024-06-01', 'Miscellaneous', 12600, 0),
(834, '279', '2024-06-01', 'Learnng Materials', 0, 0),
(835, '280', '2024-06-01', 'Tuition', 0, 0),
(836, '280', '2024-06-01', 'Miscellaneous', 12600, 0),
(837, '280', '2024-06-01', 'Learnng Materials', 0, 0),
(838, '281', '2024-06-01', 'Tuition', 0, 0),
(839, '281', '2024-06-01', 'Miscellaneous', 12600, 0),
(840, '281', '2024-06-01', 'Learnng Materials', 0, 0),
(841, '282', '2024-06-01', 'Tuition', 0, 0),
(842, '282', '2024-06-01', 'Miscellaneous', 12600, 0),
(843, '282', '2024-06-01', 'Learnng Materials', 0, 0),
(844, '283', '2024-06-01', 'Tuition', 0, 0),
(845, '283', '2024-06-01', 'Miscellaneous', 12600, 0),
(846, '283', '2024-06-01', 'Learnng Materials', 0, 0),
(847, '284', '2024-06-01', 'Tuition', 0, 0),
(848, '284', '2024-06-01', 'Miscellaneous', 12600, 0),
(849, '284', '2024-06-01', 'Learnng Materials', 0, 0),
(850, '285', '2024-06-01', 'Tuition', 15000, 0),
(851, '285', '2024-06-01', 'Miscellaneous', 12600, 0),
(852, '285', '2024-06-01', 'Learnng Materials', 0, 0),
(853, '286', '2024-06-01', 'Tuition', 0, 0),
(854, '286', '2024-06-01', 'Miscellaneous', 12600, 0),
(855, '286', '2024-06-01', 'Learnng Materials', 0, 0),
(856, '287', '2024-06-01', 'Tuition', 0, 0),
(857, '287', '2024-06-01', 'Miscellaneous', 12600, 0),
(858, '287', '2024-06-01', 'Learnng Materials', 0, 0),
(859, '288', '2024-06-01', 'Tuition', 0, 0),
(860, '288', '2024-06-01', 'Miscellaneous', 12600, 0),
(861, '288', '2024-06-01', 'Learnng Materials', 0, 0),
(862, '289', '2024-06-01', 'Tuition', 0, 0),
(863, '289', '2024-06-01', 'Miscellaneous', 12600, 0),
(864, '289', '2024-06-01', 'Learnng Materials', 0, 0),
(865, '290', '2024-06-01', 'Tuition', 0, 0),
(866, '290', '2024-06-01', 'Miscellaneous', 12600, 0),
(867, '290', '2024-06-01', 'Learnng Materials', 0, 0),
(868, '291', '2024-06-01', 'Tuition', 0, 0),
(869, '291', '2024-06-01', 'Miscellaneous', 12600, 0),
(870, '291', '2024-06-01', 'Learnng Materials', 0, 0),
(871, '292', '2024-06-01', 'Tuition', 0, 0),
(872, '292', '2024-06-01', 'Miscellaneous', 12600, 0),
(873, '292', '2024-06-01', 'Learnng Materials', 0, 0),
(874, '293', '2024-06-01', 'Tuition', 0, 0),
(875, '293', '2024-06-01', 'Miscellaneous', 12600, 0),
(876, '293', '2024-06-01', 'Learnng Materials', 0, 0),
(877, '294', '2024-06-01', 'Tuition', 0, 0),
(878, '294', '2024-06-01', 'Miscellaneous', 12600, 0),
(879, '294', '2024-06-01', 'Learnng Materials', 0, 0),
(880, '295', '2024-06-01', 'Tuition', 0, 0),
(881, '295', '2024-06-01', 'Miscellaneous', 12600, 0),
(882, '295', '2024-06-01', 'Learnng Materials', 0, 0),
(883, '296', '2024-06-01', 'Tuition', 0, 0),
(884, '296', '2024-06-01', 'Miscellaneous', 12600, 0),
(885, '296', '2024-06-01', 'Learnng Materials', 0, 0),
(886, '297', '2024-06-01', 'Tuition', 0, 0),
(887, '297', '2024-06-01', 'Miscellaneous', 12600, 0),
(888, '297', '2024-06-01', 'Learnng Materials', 0, 0),
(889, '298', '2024-06-01', 'Tuition', 0, 0),
(890, '298', '2024-06-01', 'Miscellaneous', 12600, 0),
(891, '298', '2024-06-01', 'Learning Materials', 0, 0),
(892, '299', '2024-06-01', 'Tuition', 0, 0),
(893, '299', '2024-06-01', 'Miscellaneous', 12600, 0),
(894, '299', '2024-06-01', 'Learning Materials', 0, 0),
(895, '300', '2024-06-01', 'Tuition', 0, 0),
(896, '300', '2024-06-01', 'Miscellaneous', 12600, 0),
(897, '300', '2024-06-01', 'Learning Materials', 0, 0),
(898, '301', '2024-06-01', 'Tuition', 0, 0),
(899, '301', '2024-06-01', 'Miscellaneous', 12600, 0),
(900, '301', '2024-06-01', 'Learning Materials', 0, 0),
(901, '302', '2024-06-01', 'Tuition', 0, 0),
(902, '302', '2024-06-01', 'Miscellaneous', 12600, 0),
(903, '302', '2024-06-01', 'Learning Materials', 0, 0),
(904, '303', '2024-06-01', 'Tuition', 15000, 0),
(905, '303', '2024-06-01', 'Miscellaneous', 12600, 0),
(906, '303', '2024-06-01', 'Learning Materials', 0, 0),
(907, '304', '2024-06-01', 'Tuition', 0, 0),
(908, '304', '2024-06-01', 'Miscellaneous', 12600, 0),
(909, '304', '2024-06-01', 'Learning Materials', 0, 0),
(910, '305', '2024-06-01', 'Tuition', 0, 0),
(911, '305', '2024-06-01', 'Miscellaneous', 12600, 0),
(912, '305', '2024-06-01', 'Learning Materials', 0, 0),
(913, '306', '2024-06-01', 'Tuition', 0, 0),
(914, '306', '2024-06-01', 'Miscellaneous', 12600, 0),
(915, '306', '2024-06-01', 'Learning Materials', 0, 0),
(916, '307', '2024-06-01', 'Tuition', 0, 0),
(917, '307', '2024-06-01', 'Miscellaneous', 12600, 0),
(918, '307', '2024-06-01', 'Learning Materials', 0, 0),
(919, '308', '2024-06-01', 'Tuition', 0, 0),
(920, '308', '2024-06-01', 'Miscellaneous', 12600, 0),
(921, '308', '2024-06-01', 'Learning Materials', 0, 0),
(922, '309', '2024-06-01', 'Tuition', 0, 0),
(923, '309', '2024-06-01', 'Miscellaneous', 12600, 0),
(924, '309', '2024-06-01', 'Learning Materials', 0, 0),
(925, '310', '2024-06-01', 'Tuition', 0, 0),
(926, '310', '2024-06-01', 'Miscellaneous', 12600, 0),
(927, '310', '2024-06-01', 'Learning Materials', 0, 0),
(928, '311', '2024-06-01', 'Tuition', 0, 0),
(929, '311', '2024-06-01', 'Miscellaneous', 12600, 0),
(930, '311', '2024-06-01', 'Learning Materials', 811, 0),
(931, '312', '2024-06-01', 'Tuition', 0, 0),
(932, '312', '2024-06-01', 'Miscellaneous', 12600, 0),
(933, '312', '2024-06-01', 'Learning Materials', 0, 0),
(934, '313', '2024-06-01', 'Tuition', 0, 0),
(935, '313', '2024-06-01', 'Miscellaneous', 12600, 0),
(936, '313', '2024-06-01', 'Learning Materials', 0, 0),
(937, '314', '2024-06-01', 'Tuition', 0, 0),
(938, '314', '2024-06-01', 'Miscellaneous', 12600, 0),
(939, '314', '2024-06-01', 'Learning Materials', 0, 0),
(940, '315', '2024-06-01', 'Tuition', 0, 0),
(941, '315', '2024-06-01', 'Miscellaneous', 12600, 0),
(942, '315', '2024-06-01', 'Learning Materials', 0, 0),
(943, '316', '2024-06-01', 'Tuition', 0, 0),
(944, '316', '2024-06-01', 'Miscellaneous', 12600, 0),
(945, '316', '2024-06-01', 'Learning Materials', 0, 0),
(946, '317', '2024-06-01', 'Tuition', 0, 0),
(947, '317', '2024-06-01', 'Miscellaneous', 12600, 0),
(948, '317', '2024-06-01', 'Learning Materials', 0, 0),
(949, '318', '2024-06-01', 'Tuition', 0, 0),
(950, '318', '2024-06-01', 'Miscellaneous', 12600, 0),
(951, '318', '2024-06-01', 'Learning Materials', 0, 0),
(952, '319', '2024-06-01', 'Tuition', 0, 0),
(953, '319', '2024-06-01', 'Miscellaneous', 12600, 0),
(954, '319', '2024-06-01', 'Learning Materials', 0, 0),
(955, '320', '2024-06-01', 'Tuition', 0, 0),
(956, '320', '2024-06-01', 'Miscellaneous', 12600, 0),
(957, '320', '2024-06-01', 'Learning Materials', 0, 0),
(958, '321', '2024-06-01', 'Tuition', 0, 0),
(959, '321', '2024-06-01', 'Miscellaneous', 12600, 0),
(960, '321', '2024-06-01', 'Learning Materials', 0, 0),
(961, '322', '2024-06-01', 'Tuition', 0, 0),
(962, '322', '2024-06-01', 'Miscellaneous', 12600, 0),
(963, '322', '2024-06-01', 'Learning Materials', 0, 0),
(964, '323', '2024-06-01', 'Tuition', 0, 0),
(965, '323', '2024-06-01', 'Miscellaneous', 12600, 0),
(966, '323', '2024-06-01', 'Learning Materials', 0, 0),
(967, '324', '2024-06-01', 'Tuition', 0, 0),
(968, '324', '2024-06-01', 'Miscellaneous', 12600, 0),
(969, '324', '2024-06-01', 'Learning Materials', 0, 0),
(970, '325', '2024-06-01', 'Tuition', 15000, 0),
(971, '325', '2024-06-01', 'Miscellaneous', 11200, 0),
(972, '325', '2024-06-01', 'Learning Materials', 6000, 0),
(973, '326', '2024-06-01', 'Tuition', 15000, 0),
(974, '326', '2024-06-01', 'Miscellaneous', 11200, 0),
(975, '326', '2024-06-01', 'Learning Materials', 6000, 0),
(976, '327', '2024-06-01', 'Tuition', 15000, 0),
(977, '327', '2024-06-01', 'Miscellaneous', 10600, 0),
(978, '327', '2024-06-01', 'Learning Materials', 6000, 0),
(979, '328', '2024-06-01', 'Tuition', 15000, 0),
(980, '328', '2024-06-01', 'Miscellaneous', 10600, 0),
(981, '328', '2024-06-01', 'Learning Materials', 6000, 0),
(982, '329', '2024-06-01', 'Tuition', 15000, 0),
(983, '329', '2024-06-01', 'Miscellaneous', 11200, 0),
(984, '329', '2024-06-01', 'Learning Materials', 6000, 0);
INSERT INTO `scharges` (`table_PK`, `Stud_ID`, `date`, `description`, `Amount`, `ATM_Balance`) VALUES
(985, '330', '2024-06-01', 'Tuition', 15000, 0),
(986, '330', '2024-06-01', 'Miscellaneous', 11200, 0),
(987, '330', '2024-06-01', 'Learning Materials', 6000, 0),
(988, '331', '2024-06-01', 'Tuition', 15000, 0),
(989, '331', '2024-06-01', 'Miscellaneous', 11200, 0),
(990, '331', '2024-06-01', 'Learning Materials', 6000, 0),
(991, '332', '2024-06-01', 'Tuition', 15000, 0),
(992, '332', '2024-06-01', 'Miscellaneous', 10600, 0),
(993, '332', '2024-06-01', 'Learning Materials', 6000, 0),
(994, '333', '2024-06-01', 'Tuition', 15000, 0),
(995, '333', '2024-06-01', 'Miscellaneous', 10600, 0),
(996, '333', '2024-06-01', 'Learning Materials', 6000, 0),
(997, '334', '2024-06-01', 'Tuition', 0, 0),
(998, '334', '2024-06-01', 'Miscellaneous', 11200, 0),
(999, '334', '2024-06-01', 'Learning Materials', 9000, 0),
(1000, '335', '2024-06-01', 'Tuition', 0, 0),
(1001, '335', '2024-06-01', 'Miscellaneous', 11200, 0),
(1002, '335', '2024-06-01', 'Learning Materials', 0, 0),
(1003, '336', '2024-06-01', 'Tuition', 0, 0),
(1004, '336', '2024-06-01', 'Miscellaneous', 11200, 0),
(1005, '336', '2024-06-01', 'Learning Materials', 9000, 0),
(1006, '337', '2024-06-01', 'Tuition', 0, 0),
(1007, '337', '2024-06-01', 'miscellaneous', 11200, 0),
(1008, '337', '2024-06-01', 'learning materials', 0, 0),
(1009, '338', '2024-06-01', 'Tuition', 0, 0),
(1010, '338', '2024-06-01', 'miscellaneous', 11200, 0),
(1011, '338', '2024-06-01', 'learning materials', 0, 0),
(1012, '339', '2024-06-01', 'Tuition', 0, 0),
(1013, '339', '2024-06-01', 'miscellaneous', 11200, 0),
(1014, '339', '2024-06-01', 'learning materials', 0, 0),
(1015, '340', '2024-06-01', 'Tuition', 0, 0),
(1016, '340', '2024-06-01', 'miscellaneous', 12600, 0),
(1017, '340', '2024-06-01', 'learning materials', 0, 0),
(1018, '341', '2024-06-01', 'Tuition', 0, 0),
(1019, '341', '2024-06-01', 'miscellaneous', 12600, 0),
(1020, '341', '2024-06-01', 'learning materials', 0, 0),
(1021, '342', '2024-06-01', 'Tuition', 0, 0),
(1022, '342', '2024-06-01', 'miscellaneous', 12600, 0),
(1023, '342', '2024-06-01', 'learning materials', 0, 0),
(1024, '343', '2024-06-01', 'Tuition', 0, 0),
(1025, '343', '2024-06-01', 'miscellaneous', 12600, 0),
(1026, '343', '2024-06-01', 'learnng materials', 0, 0),
(1027, '344', '2024-06-01', 'Tuition', 15000, 0),
(1028, '344', '2024-06-01', 'miscellaneous', 12600, 0),
(1029, '344', '2024-06-01', 'learnng materials', 0, 0),
(1030, '345', '2024-06-01', 'Tuition', 0, 0),
(1031, '345', '2024-06-01', 'miscellaneous', 12600, 0),
(1032, '345', '2024-06-01', 'learnng materials', 0, 0),
(1033, '346', '2024-06-01', 'Tuition', 0, 0),
(1034, '346', '2024-06-01', 'miscellaneous', 12600, 0),
(1035, '346', '2024-06-01', 'learning materials', 0, 0),
(1036, '347', '2024-06-01', 'Tuition', 0, 0),
(1037, '347', '2024-06-01', 'miscellaneous', 12600, 0),
(1038, '347', '2024-06-01', 'learning materials', 0, 0),
(1039, '348', '2024-06-01', 'Tuition', 0, 0),
(1040, '348', '2024-06-01', 'miscellaneous', 12600, 0),
(1041, '348', '2024-06-01', 'learning materials', 0, 0),
(1042, '349', '2024-06-01', 'Tuition', 0, 0),
(1043, '349', '2024-06-01', 'miscellaneous', 12600, 0),
(1044, '349', '2024-06-01', 'learning materials', 0, 0),
(6487, '353', '2024-07-01', 'Miscellaneous', 12600, 0),
(6488, '310', '2024-08-29', 'Learning Materials', 510, 0),
(6489, '226', '2024-09-03', 'Miscellaneous', 11200, 0),
(6490, '350', '2024-08-07', 'Miscellaneous', 11200, 0),
(6491, '350', '2024-08-07', 'Learning Materials', 9000, 0),
(6492, '42', '2024-09-04', 'Previous Balance (g-7)', 6500, 0),
(6493, '46', '2024-09-04', 'Previous Balance (g-7)', 20000, 0),
(6494, '52', '2024-09-04', 'Previous Balance (g-7)', 8300, 0),
(6495, '55', '2024-09-04', 'Previous Balance (g-7)', 5000, 0),
(6496, '66', '2024-09-04', 'Previous Balance (g-7)', 9500, 0),
(6497, '70', '2024-09-04', 'Previous Balance (g-7)', 17086, 0),
(6498, '71', '2024-09-04', 'Previous Balance (g-7)', 17000, 0),
(6499, '73', '2024-09-04', 'Previous Balance (g-7)', 1917, 0),
(6500, '77', '2024-09-04', 'Previous Balance (g-7)', 2417, 0),
(6501, '78', '2024-09-04', 'Previous Balance (g-7)', 2417, 0),
(6502, '81', '2024-09-04', 'Previous Balance (g-7)', 15032, 0),
(6503, '81', '2024-09-04', 'Previous Balance (g-8)', 23381, 0),
(6504, '83', '2024-09-04', 'Previous Balance (G-8)', 8317, 0),
(6505, '97', '2024-09-04', 'Previous Balance (g-8)', 18597, 0),
(6506, '99', '2024-09-04', 'Previous Balance (g-7)', 4544, 0),
(6507, '99', '2024-09-04', 'Previous Balance (g-8)', 13616, 0),
(6508, '102', '2024-09-04', 'Previous Balance (g-8)', 5000, 0),
(6509, '103', '2024-09-04', 'Previous Balance (g-7)', 9400, 0),
(6510, '103', '2024-09-04', 'Previous Balance (g-8)', 20217, 0),
(6511, '108', '2024-09-04', 'Previous Balance (g-8)', 9100, 0),
(6512, '115', '2024-09-04', 'Previous Balance (g-7)', 15117, 0),
(6513, '115', '2024-09-04', 'Previous Balance (g-8)', 18900, 0),
(6514, '118', '2024-09-05', 'Previous Balance (g-9)', 13500, 0),
(6515, '119', '2024-09-05', 'Previous Balance (g-9)', 12000, 0),
(6516, '121', '2024-09-05', 'Previous Balance (g-7)', 18620, 0),
(6517, '121', '2024-09-05', 'Previous Balance (g-8)', 13823, 0),
(6518, '121', '2024-09-05', 'Previous Balance (g-9)', 19400, 0),
(6519, '126', '2024-09-05', 'Previous Balance (g-7)', 15620, 0),
(6520, '126', '2024-09-05', 'Previous Balance (g-9)', 20900, 0),
(6521, '127', '2024-09-05', 'Previous Balance (g-8)', 16125, 0),
(6522, '127', '2024-09-05', 'Previous Balance (g-9)', 18400, 0),
(6523, '138', '2024-09-05', 'Previous Balance (g-7)', 8620, 0),
(6524, '138', '2024-09-05', 'Previous Balance (g-8)', 18125, 0),
(6525, '138', '2024-09-05', 'Previous Balance (g-9)', 11900, 0),
(6526, '145', '2024-09-05', 'Tuition (no voucher)', 15000, 0),
(6527, '145', '2024-09-05', 'Previous Balance (g-7)', 10795, 0),
(6528, '145', '2024-09-05', 'Previous Balance (g-8)', 20580, 0),
(6529, '145', '2024-09-05', 'Previous Balance (g-9)', 16625, 0),
(6530, '145', '2024-09-05', 'Previous Balance (g-10)', 14500, 0),
(6531, '148', '2024-09-05', 'Previous Balance (g-10)', 10317, 0),
(6532, '154', '2024-09-05', 'Previous Balance (g-10)', 817, 0),
(6533, '165', '2024-09-05', 'Previous Balance (g-10)', 15418, 0),
(6534, '190', '2024-09-05', 'Previous Balance (g-10)', 11981, 0),
(6535, '191', '2024-09-05', 'Previous Balance (g-9)', 18625, 0),
(6536, '191', '2024-09-05', 'Previous Balance (g-10)', 17597, 0),
(6537, '338', '2024-09-05', 'Tuition (no voucher)', 15000, 0),
(6538, '338', '2024-09-05', 'Learning Materials', 9000, 0),
(6539, '198', '2024-09-05', 'Previous Balance (g-10)', 7817, 0),
(6540, '203', '2024-09-05', 'Previous Balance (g-10)', 15317, 0),
(6541, '203', '2024-09-05', 'Previous Balance (g-8)', 6500, 0),
(6542, '213', '2024-09-05', 'Previous Balance (g-10)', 5900, 0),
(6543, '300', '2024-09-05', 'Previous Balance (g-11)', 5200, 0),
(6544, '302', '2024-09-05', 'Previous Balance (g-7)', 12560, 0),
(6545, '302', '2024-09-05', 'Previous Balance (g-8)', 8676, 0),
(6546, '302', '2024-09-05', 'Previous Balance (g-9)', 14226, 0),
(6547, '302', '2024-09-05', 'Previous Balance (g-10)', 11700, 0),
(6548, '302', '2024-09-05', 'Previous Balance (g-11)', 4500, 0),
(6549, '346', '2024-09-05', 'Previous Balance (g-11)', 5300, 0),
(6550, '309', '2024-09-05', 'Previous Balance (g-11)', 2000, 0),
(6551, '313', '2024-09-05', 'Previous Balance (g-11)', 5500, 0),
(6552, '314', '2024-09-05', 'Previous Balance (g-11)', 1500, 0),
(6553, '348', '2024-09-05', 'Previous Balance (g-11)', 6000, 0),
(6554, '268', '2024-09-06', 'Previous Balance (g-9)', 18720, 0),
(6555, '268', '2024-09-06', 'Previous Balance', 22325, 0),
(6556, '344', '2024-09-06', 'Previous Balance (g-9)', 7875, 0),
(6557, '344', '2024-09-06', 'Previous Balance (g-10)', 9925, 0),
(6558, '344', '2024-09-06', 'Previous Balance (g-11)', 16500, 0),
(6559, '275', '2024-09-06', 'Previous Balance (g-11)', 5000, 0),
(6560, '293', '2024-09-06', 'Previous Balance (g-11)', 2000, 0),
(6561, '295', '2024-09-06', 'Previous Balance (g-9)', 17620, 0),
(6562, '295', '2024-09-06', 'Previous Balance (g-10)', 21725, 0),
(6563, '295', '2024-09-06', 'Previous Balance (g-11)', 9345, 0),
(6564, '353', '2024-09-06', 'Tuition (no voucher)', 15000, 0),
(6565, '340', '2024-09-06', 'Previous Balance (g-11)', 4500, 0),
(6566, '341', '2024-09-06', 'Tuition (no voucher)', 15000, 0),
(6567, '341', '2024-09-06', 'Previous Balance(g-9)', 7000, 0),
(6568, '341', '2024-09-06', 'Previous Balance (g-10)', 1200, 0),
(6569, '341', '2024-09-06', 'Previous Balance (g-11)', 11000, 0),
(6570, '248', '2024-09-06', 'Previous Balance (g-11)', 2000, 0),
(6571, '249', '2024-09-06', 'Tuition (no voucher)', 15000, 0),
(6572, '251', '2024-09-06', 'Previous Balance (g-11)', 2200, 0),
(6573, '252', '2024-09-06', 'Previous Balance (g-7)', 8500, 0),
(6574, '252', '2024-09-06', 'Previous Balance (g-8)', 8176, 0),
(6575, '252', '2024-09-06', 'Previous Balance (g-9)', 20570, 0),
(6576, '252', '2024-09-06', 'Previous Balance (g-10)', 14200, 0),
(6577, '252', '2024-09-06', 'Previous Balance (g-11)', 1000, 0),
(6578, '226', '2024-08-06', 'Miscellaneous (Wrong Entry)', 1000, 0),
(6579, '354', '2024-09-16', 'Tuition (NEW) ', 2000, 0),
(6580, '354', '2024-09-16', 'Boys Dorm (NEW) ', 15000, 0),
(6581, '355', '2024-09-16', 'Tuition (NEW) ', 2000, 0),
(6582, '355', '2024-09-16', 'Boys Dorm', 15000, 0),
(6583, '356', '2024-09-19', 'Tuition (NEW) ', 2000, 0),
(6584, '356', '2024-09-19', 'Fuel', 2500, 0),
(6587, '358', '2024-09-19', 'Tuition (NEW) ', 2000, 0),
(6588, '358', '2024-09-19', 'Boys Dorm', 15000, 0),
(6589, '358', '2024-09-19', 'Furl', 2500, 0),
(6590, '359', '2024-09-23', 'Tuition (NEW) ', 2000, 0),
(6591, '359', '2024-09-23', 'Boys Dorm', 15000, 0),
(6592, '359', '2024-09-23', 'WEW', 5000, 0),
(6593, '359', '2024-09-23', 'Boys Dorm', 15000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schoolexpenses`
--

CREATE TABLE `schoolexpenses` (
  `Ref` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Description` varchar(90) NOT NULL,
  `Amount` float NOT NULL,
  `SY` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolexpenses`
--

INSERT INTO `schoolexpenses` (`Ref`, `Date`, `Description`, `Amount`, `SY`) VALUES
(1, '2024-10-01', 'adada', 1500, ''),
(2, '2024-09-01', 'Internet', 1500, ''),
(3, '2024-10-16', 'Internet', 1500, ''),
(4, '2024-10-01', 'Electric', 1000000, ''),
(6, '2024-10-15', 'asdasdsdasdsdasdsdaad', 2000, ''),
(7, '2024-10-16', '1313', 2000, NULL),
(8, '2024-10-17', 'Internet', 1500, NULL),
(9, '2024-07-17', 'Internet', 1500, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schoolincome`
--

CREATE TABLE `schoolincome` (
  `Ref` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Description` varchar(90) NOT NULL,
  `Amount` float NOT NULL,
  `SY` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schoolincome`
--

INSERT INTO `schoolincome` (`Ref`, `Date`, `Description`, `Amount`, `SY`) VALUES
(1, '2024-09-04', 'Donations and Sponsorships', 200000, ''),
(2, '2024-10-15', 'AAASSS', 1500, '');

-- --------------------------------------------------------

--
-- Table structure for table `school_attendance`
--

CREATE TABLE `school_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cl` varchar(10) NOT NULL,
  `present_status` varchar(10) NOT NULL,
  `roll` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_notice`
--

CREATE TABLE `school_notice` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(500) NOT NULL,
  `by` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_studentextra`
--

CREATE TABLE `school_studentextra` (
  `id` int(11) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cl` varchar(10) NOT NULL,
  `fee` int(10) UNSIGNED DEFAULT NULL CHECK (`fee` >= 0),
  `mobile` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_studentextra`
--

INSERT INTO `school_studentextra` (`id`, `roll`, `user_id`, `cl`, `fee`, `mobile`, `status`) VALUES
(1, '1', 2, 'one', 1, '09970672213', 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_teacherextra`
--

CREATE TABLE `school_teacherextra` (
  `id` int(11) NOT NULL,
  `salary` int(10) UNSIGNED NOT NULL,
  `joindate` date NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `spayment`
--

CREATE TABLE `spayment` (
  `Ref` int(11) NOT NULL,
  `table_PK` varchar(90) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(90) NOT NULL,
  `Amount` int(90) NOT NULL,
  `ATM_Balance` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `spayment`
--

INSERT INTO `spayment` (`Ref`, `table_PK`, `Stud_ID`, `date`, `description`, `Amount`, `ATM_Balance`) VALUES
(1, '1051', '5', '2024-07-12', 'Learning materials', 6000, 0),
(2, '1052', '104', '2024-07-03', 'Learni Materials', 2000, 0),
(3, '106', '106', '2024-07-15', '10% Discount', 1500, 0),
(4, '1062', '13', '2024-07-24', 'Learning materials', 1000, 0),
(5, '1073', '171', '2024-07-29', 'Miscellaneous', 3000, 0),
(6, '111', '111', '2024-07-15', '10% Discount', 1500, 0),
(7, '1111', '111', '2024-06-05', 'Miscellaneous', 5206, 0),
(8, '130', '130', '2024-07-15', '10% Discount', 1500, 0),
(9, '136', '136', '2024-07-15', '10% Discount', 1500, 0),
(10, '137', '137', '2024-07-15', '10% Discount', 1500, 0),
(11, '332', '332', '2024-06-01', '10% Discount', 1500, 0),
(12, '553', '23', '2024-07-11', 'Learning Materials', 1500, 0),
(13, '5556', '151', '2024-07-15', 'Learning Materials', 9000, 0),
(14, '5592', '2', '2024-07-19', 'Learning materials', 6000, 0),
(15, '5955', '9', '2024-06-20', 'Learning materials', 3000, 0),
(16, '5956', '136', '2024-06-24', 'Learning Materials', 2000, 0),
(17, '5959', '14', '2024-06-26', 'Learning materials', 1500, 0),
(18, '5960', '186', '2024-06-26', 'Miscellaneous', 1500, 0),
(19, '5994', '110', '2024-07-10', 'Learning Materials', 1500, 0),
(20, '6230', '150', '2024-06-05', 'Miscellaneous', 10000, 0),
(21, '6231', '172', '2024-05-06', 'Miscellaneous', 500, 0),
(22, '6233', '111', '2024-06-05', 'Tuition', 13500, 0),
(23, '6234', '111', '2024-06-05', 'Miscellaneous', 5394, 0),
(24, '6237', '31', '2024-06-05', 'Miscellaneous', 5000, 0),
(25, '6239', '171', '2024-06-05', 'Miscellaneous', 7000, 0),
(26, '6244', '30', '2024-06-05', 'Miscellaneous', 5000, 0),
(27, '6246', '178', '2024-06-05', 'Miscellaneous', 1000, 0),
(28, '6247', '174', '2024-06-05', 'Miscellaneous', 1000, 0),
(30, '6251', '187', '2024-06-05', 'Miscellaneous', 3000, 0),
(31, '6252', '144', '2024-06-05', 'Miscellaneous', 1000, 0),
(32, '6253', '155', '2024-06-05', 'Miscellaneous', 3000, 0),
(33, '6256', '140', '2024-06-05', 'Miscellaneous', 2000, 0),
(34, '6261', '185', '2024-06-05', 'Miscellaneous', 1000, 0),
(35, '6264', '183', '2024-06-05', 'Miscellaneous', 3000, 0),
(36, '6267', '287', '2024-06-05', 'Miscellaneous', 11200, 0),
(37, '6270', '161', '2024-06-05', 'Miscellaneous', 3000, 0),
(38, '6273', '159', '2024-06-05', 'Miscellaneous', 2500, 0),
(39, '6275', '5', '2024-06-06', 'Tuition', 13500, 0),
(40, '6276', '19', '2024-06-06', 'Miscellaneous', 3000, 0),
(41, '6280', '38', '2024-06-06', 'Miscellaneous', 3000, 0),
(42, '6281', '169', '2024-06-06', 'Miscellaneous', 2000, 0),
(43, '6283', '149', '2024-06-06', 'Miscellaneous', 11200, 0),
(44, '6284', '24', '2024-06-06', 'Tuition', 13500, 0),
(45, '6285', '24', '2024-06-06', 'Miscellaneous', 6500, 0),
(46, '6286', '2', '2024-06-06', 'Tuition', 13500, 0),
(47, '6292', '32', '2024-06-06', 'Tuition', 13500, 0),
(48, '6293', '32', '2024-06-06', 'Miscellaneous', 11200, 0),
(49, '6296', '189', '2024-06-06', 'Miscellaneous', 1000, 0),
(50, '6298', '69', '2024-06-10', 'Tuition', 13500, 0),
(51, '6299', '69', '2024-06-10', 'Miscellaneous', 10600, 0),
(52, '6300', '21', '2024-06-10', 'Miscellaneous', 10000, 0),
(53, '6303', '113', '2024-06-10', 'Miscellaneous', 10000, 0),
(54, '6305', '40', '2024-06-10', 'Miscellaneous', 3000, 0),
(55, '6306', '176', '2024-06-10', 'Miscellaneous', 2000, 0),
(56, '6308', '4', '2024-06-10', 'Miscellaneous', 3000, 0),
(57, '6309', '249', '2024-06-10', 'Miscellaneous', 8000, 0),
(58, '6310', '164', '2024-06-10', 'Miscellaneous', 3000, 0),
(59, '6311', '173', '2024-06-10', 'Miscellaneous', 1000, 0),
(60, '6315', '156', '2024-06-10', 'Miscellaneous', 2000, 0),
(61, '6318', '157', '2024-06-10', 'Miscellaneous', 5000, 0),
(62, '6319', '163', '2024-06-11', 'Miscellaneous', 2000, 0),
(63, '6324', '166', '2024-06-11', 'Miscellaneous', 5000, 0),
(64, '6329', '273', '2024-06-18', 'Miscellaneous', 3000, 0),
(65, '6330', '76', '2024-06-18', 'Tuition', 13500, 0),
(66, '6331', '76', '2024-06-18', 'Miscellaneous', 500, 0),
(67, '6332', '175', '2024-06-18', 'Miscellaneous', 3000, 0),
(68, '6333', '88', '2024-06-18', 'Miscellaneous', 5000, 0),
(69, '6334', '177', '2024-06-18', 'Miscellaneous', 5000, 0),
(70, '6335', '276', '2024-06-18', 'Miscellaneous', 1000, 0),
(71, '6336', '239', '2024-06-18', 'Miscellaneous', 3000, 0),
(72, '6337', '284', '2024-06-18', 'Miscellaneous', 3000, 0),
(73, '6338', '297', '2024-06-18', 'Miscellaneous', 1000, 0),
(74, '6339', '253', '2024-06-18', 'Miscellaneous', 1000, 0),
(75, '6342', '250', '2024-06-18', 'Miscellaneous', 1500, 0),
(76, '6343', '50', '2024-06-18', 'Tuition', 13500, 0),
(77, '6344', '50', '2024-06-18', 'Miscellaneous', 1500, 0),
(78, '6345', '282', '2024-06-18', 'Miscellaneous', 1500, 0),
(79, '6346', '151', '2024-06-18', 'Miscellaneous', 10000, 0),
(80, '6347', '154', '2024-06-18', 'Miscellaneous', 2000, 0),
(81, '6348', '41', '2024-06-18', 'Miscellaneous', 5000, 0),
(82, '6349', '267', '2024-06-18', 'Miscellaneous', 1000, 0),
(83, '6350', '82', '2024-06-18', 'Miscellaneous', 3000, 0),
(84, '6351', '47', '2024-06-18', 'Tuition', 13500, 0),
(85, '6352', '47', '2024-06-18', 'Miscellaneous', 10600, 0),
(86, '6353', '130', '2024-06-18', 'Tuition', 13500, 0),
(87, '6354', '130', '2024-06-18', 'Miscellaneous', 10600, 0),
(88, '6355', '62', '2024-06-18', 'Miscellaneous', 5000, 0),
(89, '6356', '278', '2024-06-18', 'Miscellaneous', 1000, 0),
(90, '6357', '271', '2024-06-18', 'Miscellaneous', 1500, 0),
(91, '6358', '23', '2024-06-18', 'Tuition', 13500, 0),
(92, '6359', '314', '2024-06-18', 'Miscellaneous', 1000, 0),
(93, '6361', '13', '2024-06-18', 'Miscellaneous', 5000, 0),
(94, '6362', '294', '2024-06-18', 'Miscellaneous', 1000, 0),
(95, '6363', '292', '2024-06-18', 'Miscellaneous', 1500, 0),
(96, '6364', '264', '2024-06-18', 'Miscellaneous', 1600, 0),
(97, '6365', '25', '2024-06-18', 'Miscellaneous', 3000, 0),
(98, '6366', '48', '2024-06-18', 'Tuition', 13500, 0),
(99, '6369', '74', '2024-06-18', 'Miscellaneous', 5000, 0),
(100, '6370', '181', '2024-06-18', 'Miscellaneous', 6000, 0),
(101, '6371', '92', '2024-06-18', 'Miscellaneous', 3000, 0),
(102, '6372', '27', '2024-06-18', 'Miscellaneous', 3000, 0),
(103, '6373', '272', '2024-06-18', 'Miscellaneous', 3000, 0),
(104, '6374', '105', '2024-06-18', 'Miscellaneous', 5000, 0),
(105, '6376', '313', '2024-06-18', 'Miscellaneous', 3000, 0),
(106, '6378', '87', '2024-06-19', 'Miscellaneous', 5000, 0),
(107, '6379', '80', '2024-06-19', 'Miscellaneous', 5000, 0),
(108, '6380', '285', '2024-06-19', 'Miscellaneous', 10000, 0),
(109, '6381', '288', '2024-06-19', 'Miscellaneous', 3000, 0),
(110, '6382', '134', '2024-06-19', 'Miscellaneous', 1000, 0),
(111, '6386', '168', '2024-06-19', 'Miscellaneous', 2000, 0),
(112, '6387', '12', '2024-06-19', 'Tuition', 13500, 0),
(113, '6388', '94', '2024-06-19', 'Tuition', 13500, 0),
(114, '6389', '54', '2024-06-19', 'Miscellaneous', 1500, 0),
(115, '6390', '179', '2024-06-19', 'Miscellaneous', 10000, 0),
(116, '6393', '95', '2024-06-19', 'Miscellaneous', 2000, 0),
(117, '6394', '317', '2024-06-20', 'Miscellaneous', 2000, 0),
(118, '6396', '254', '2024-06-20', 'Miscellaneous', 1000, 0),
(119, '6398', '36', '2024-06-20', 'Tuition', 13500, 0),
(120, '6399', '303', '2024-06-20', 'Miscellaneous', 4500, 0),
(121, '6323', '8', '2024-06-11', 'Miscellaneous', 5000, 0),
(122, '6400', '192', '2024-06-20', 'Miscellaneous', 10000, 0),
(123, '6401', '258', '2024-06-20', 'Miscellaneous', 5000, 0),
(124, '6404', '20', '2024-06-20', 'Miscellaneous', 5000, 0),
(125, '6405', '306', '2024-06-20', 'Miscellaneous', 2000, 0),
(126, '6406', '9', '2024-06-20', 'Miscellaneous', 2000, 0),
(127, '6407', '186', '2024-06-20', 'Miscellaneous', 3000, 0),
(128, '6409', '86', '2024-06-20', 'Miscellaneous', 3000, 0),
(129, '6410', '93', '2024-06-20', 'Miscellaneous', 5000, 0),
(130, '6411', '106', '2024-06-20', 'Tuition', 13500, 0),
(131, '6412', '106', '2024-06-20', 'Miscellaneous', 1500, 0),
(132, '6413', '259', '2024-06-24', 'Miscellaneous', 2000, 0),
(133, '6414', '312', '2024-06-24', 'Miscellaneous', 4000, 0),
(134, '6415', '136', '2024-06-24', 'Tuition', 13500, 0),
(135, '6416', '136', '2024-06-24', 'Miscellaneous', 10600, 0),
(136, '6417', '263', '2024-06-24', 'Miscellaneous', 3000, 0),
(137, '6418', '84', '2024-06-24', 'Tuition', 13500, 0),
(138, '6419', '84', '2024-06-24', 'Miscellaneous', 10600, 0),
(139, '6420', '116', '2024-06-24', 'Miscellaneous', 5000, 0),
(140, '6421', '247', '2024-06-24', 'Miscellaneous', 3000, 0),
(141, '6422', '89', '2024-06-24', 'Miscellaneous', 2000, 0),
(142, '6423', '121', '2024-06-24', 'Miscellaneous', 1000, 0),
(143, '6424', '302', '2024-06-24', 'Miscellaneous', 1000, 0),
(144, '6426', '147', '2024-06-24', 'Miscellaneous', 2000, 0),
(145, '6432', '126', '2024-06-24', 'Miscellaneous', 5000, 0),
(146, '6432', '127', '2024-06-24', '-', 0, 0),
(147, '6433', '274', '2024-06-24', 'Miscellaneous', 2000, 0),
(148, '6434', '269', '2024-06-24', 'Miscellaneous', 4000, 0),
(149, '6435', '119', '2024-06-24', 'Miscellaneous', 1000, 0),
(150, '6436', '118', '2024-06-24', 'Miscellaneous', 1000, 0),
(151, '6437', '37', '2024-06-24', 'Miscellaneous', 3000, 0),
(152, '6438', '28', '2024-06-24', 'Miscellaneous', 5000, 0),
(153, '6439', '158', '2024-06-24', 'Miscellaneous', 1500, 0),
(154, '6440', '122', '2024-06-26', 'Miscellaneous', 3000, 0),
(155, '6442', '319', '2024-06-26', 'Miscellaneous', 1000, 0),
(156, '6444', '16', '2024-07-15', 'Miscellaneous', 2000, 0),
(157, '6446', '99', '2024-06-26', 'Miscellaneous', 2000, 0),
(158, '6448', '139', '2024-06-26', 'Miscellaneous', 3000, 0),
(159, '6449', '305', '2024-06-26', 'Miscellaneous', 2000, 0),
(160, '6451', '65', '2024-06-26', 'Miscellaneous', 5000, 0),
(161, '6453', '268', '2024-06-26', 'Miscellaneous', 500, 0),
(162, '6455', '17', '2024-06-26', 'Miscellaneous', 1500, 0),
(163, '6457', '14', '2024-06-26', 'Miscellaneous', 3000, 0),
(164, '6460', '10', '2024-06-27', 'Miscellaneous', 3000, 0),
(165, '6463', '137', '2024-06-27', 'Tuition', 13500, 0),
(166, '6464', '137', '2024-06-27', 'Miscellaneous', 10600, 0),
(167, '6466', '143', '2024-06-27', 'Miscellaneous', 2000, 0),
(168, '6467', '296', '2024-06-27', 'Miscellaneous', 1000, 0),
(169, '6468', '301', '2024-06-27', 'Miscellaneous', 1000, 0),
(170, '6469', '90', '2024-06-27', 'Miscellaneous', 10000, 0),
(171, '6470', '91', '2024-06-27', 'Miscellaneous', 3000, 0),
(172, '6472', '15', '2024-06-27', 'Miscellaneous', 5000, 0),
(173, '6473', '22', '2024-06-27', 'Miscellaneous', 5000, 0),
(174, '6475', '124', '2024-07-01', 'Miscellaneous', 2000, 0),
(175, '6476', '260', '2024-07-01', 'Miscellaneous', 2000, 0),
(176, '6477', '132', '2024-07-01', 'Tuition', 3000, 0),
(177, '6479', '193', '2024-07-01', 'Miscellaneous', 3000, 0),
(178, '6480', '153', '2024-07-01', 'Miscellaneous', 3000, 0),
(179, '6482', '79', '2024-07-01', 'Miscellaneous', 3000, 0),
(180, '6483', '34', '2024-07-01', 'Tuition', 3000, 0),
(181, '6484', '1', '2024-07-01', 'Tuition', 3000, 0),
(182, '6487', '125', '2024-07-01', 'Tution', 5000, 0),
(183, '6488', '60', '2024-07-01', 'Tuition', 5000, 0),
(184, '6489', '191', '2024-07-01', 'Miscellaneous', 3000, 0),
(185, '6492', '237', '2024-07-01', 'Miscellaneous', 3500, 0),
(186, '6494', '101', '2024-07-01', 'Tuition', 3000, 0),
(187, '6496', '262', '2024-07-01', 'Miscellaneous', 2000, 0),
(188, '6497', '255', '2024-07-01', 'Miscellaneous', 3000, 0),
(190, '6500', '26', '2024-07-01', 'Tuition', 3000, 0),
(191, '6501', '18', '2024-07-02', 'Tuition', 5000, 0),
(192, '6502', '43', '2024-07-02', 'Tuition', 5000, 0),
(193, '6503', '67', '2024-07-02', 'Tuition', 5000, 0),
(194, '6504', '7', '2024-07-02', 'Tuition', 6000, 0),
(195, '6505', '188', '2024-07-02', 'Miscellaneous', 2000, 0),
(196, '6506', '42', '2024-07-02', 'Tuition', 7500, 0),
(197, '6507', '100', '2024-07-02', 'Tuition', 1000, 0),
(198, '6509', '52', '2024-07-02', 'Tuition', 2000, 0),
(199, '6510', '56', '2024-07-02', 'Tuition', 13500, 0),
(202, '6514', '184', '2024-07-03', 'Miscellaneous', 3000, 0),
(203, '6515', '45', '2024-07-03', 'Tuition', 10000, 0),
(204, '6516', '133', '2024-07-03', 'Tuition', 3000, 0),
(205, '6517', '75', '2024-07-03', 'Tuition', 5000, 0),
(206, '6518', '142', '2024-07-03', 'Miscellaneous', 2000, 0),
(207, '6519', '51', '2024-07-03', 'Tuition', 5000, 0),
(208, '6521', '277', '2024-07-03', 'Miscellaneous', 3000, 0),
(209, '6522', '244', '2024-07-03', 'Miscellaneous', 6000, 0),
(210, '6523', '96', '2024-07-03', 'Miscellaneous', 5000, 0),
(211, '6524', '98', '2024-07-03', 'Tuition', 5000, 0),
(212, '6525', '29', '2024-07-03', 'Tuition', 10000, 0),
(213, '6526', '256', '2024-07-04', 'Miscellaneous', 1000, 0),
(214, '6527', '240', '2024-07-04', 'Miscellaneous', 3000, 0),
(215, '6530', '49', '2024-07-04', 'Tuition', 13500, 0),
(216, '6531', '49', '2024-07-04', 'Miscellaneous', 5000, 0),
(217, '6533', '291', '2024-07-04', 'Miscellaneous', 500, 0),
(218, '6534', '266', '2024-07-04', 'Miscellaneous', 3000, 0),
(219, '6535', '275', '2024-07-04', 'Miscellaneous', 2000, 0),
(220, '6538', '122', '2024-07-08', 'Miscellaneous', 5000, 0),
(221, '6542', '68', '2024-07-08', 'Miscellaneous', 5000, 0),
(222, '6543', '85', '2024-07-08', 'Miscellaneous', 5000, 0),
(223, '6544', '117', '2024-07-08', 'Miscellaneous', 2000, 0),
(224, '6545', '245', '2024-07-08', 'Miscellaneous', 3000, 0),
(225, '6546', '104', '2024-07-08', 'Miscellaneous', 6000, 0),
(226, '6547', '242', '2024-07-08', 'Miscellaneous', 2500, 0),
(227, '6548', '238', '2024-07-08', 'Miscellaneous', 3000, 0),
(228, '6549', '323', '2024-07-08', 'Miscellaneous', 1000, 0),
(229, '6550', '97', '2024-07-08', 'Tuition', 13500, 0),
(230, '6553', '114', '2024-07-08', 'Miscellaneous', 3000, 0),
(231, '6554', '11', '2024-07-08', 'Miscellaneous', 5000, 0),
(232, '6555', '59', '2024-07-08', 'Miscellaneous', 4000, 0),
(233, '6556', '3', '2024-07-08', 'Miscellaneous', 3000, 0),
(234, '6557', '141', '2024-07-08', 'Miscellaneous', 2000, 0),
(235, '6558', '290', '2024-07-09', 'Miscellaneous', 3000, 0),
(236, '6560', '280', '2024-07-09', 'Miscellaneous', 1000, 0),
(237, '6561', '311', '2024-07-09', 'Miscellaneous', 2000, 0),
(238, '6563', '309', '2024-07-09', 'Miscellaneous', 1000, 0),
(239, '6564', '310', '2024-07-09', 'Miscellaneuos', 2000, 0),
(240, '6564', '316', '2024-07-09', 'Miscellaneous', 500, 0),
(241, '6567', '77', '2024-07-09', 'Miscellaneous', 5000, 0),
(242, '6568', '61', '2024-07-09', 'Miscellaneous', 10600, 0),
(243, '6569', '61', '2024-07-09', 'Tuition', 1500, 0),
(244, '6570', '64', '2024-07-09', 'Miscellaneous', 4000, 0),
(245, '6572', '265', '2024-07-09', 'Miscellaneous', 3000, 0),
(246, '6579', '109', '2024-07-09', 'Tuition', 3000, 0),
(247, '6581', '129', '2024-07-09', 'Miscellaneous', 2000, 0),
(248, '6582', '112', '2024-07-09', 'Miscellaneous', 2000, 0),
(249, '6583', '261', '2024-07-09', 'Miscellaneous', 2000, 0),
(250, '6585', '243', '2024-07-09', 'Miscellaneous', 1000, 0),
(251, '6586', '58', '2024-07-09', 'Miscellaneous', 1500, 0),
(252, '6588', '120', '2024-07-09', 'Miscellaneous', 2000, 0),
(253, '6589', '308', '2024-07-10', 'Miscellaneous', 6000, 0),
(254, '6591', '246', '2024-07-10', 'Miscellaneous', 500, 0),
(255, '6592', '289', '2024-07-10', 'Miscellaneous', 1500, 0),
(256, '6595', '287', '2024-07-10', 'Miscellaneous', 1400, 0),
(257, '6596', '6', '2024-07-15', 'Miscellaneous', 5000, 0),
(258, '6597', '298', '2024-07-10', 'Miscellaneous', 2000, 0),
(259, '6600', '110', '2024-07-10', 'Miscellaneous', 2000, 0),
(260, '6601', '128', '2024-07-10', 'Miscellaneous', 5000, 0),
(261, '6602', '241', '2024-07-10', 'Miscellaneous', 9000, 0),
(262, '6604', '167', '2024-07-10', 'Miscellaneous', 3000, 0),
(263, '6605', '83', '2024-07-10', 'Miscellaneous', 5000, 0),
(264, '6606', '53', '2024-07-10', 'Tuition', 13500, 0),
(265, '6607', '53', '2024-07-10', 'Miscellaneous', 10600, 0),
(267, '6612', '135', '2024-07-11', 'Miscellaneous', 5000, 0),
(268, '6614', '318', '2024-07-11', 'Miscellaneous', 1000, 0),
(269, '6617', '123', '2024-07-11', 'Miscellaneous', 3000, 0),
(270, '6620', '315', '2024-07-11', 'Miscellaneous', 2000, 0),
(271, '6621', '315', '2024-07-11', 'Miscellaneous', 1000, 0),
(272, '6625', '165', '2024-07-11', 'Miscellaneous', 5000, 0),
(273, '6627', '72', '2024-07-11', 'Miscellaneous', 2500, 0),
(274, '6628', '170', '2024-07-11', 'Miscellaneous', 3000, 0),
(275, '6631', '180', '2024-07-11', 'miscellaneous', 3000, 0),
(276, '6633', '78', '2024-07-11', 'Miscellaneous', 1500, 0),
(277, '6636', '344', '2024-07-12', 'miscellaneous', 2000, 0),
(278, '6637', '327', '2024-07-12', 'Tuition', 15000, 0),
(279, '6638', '327', '2024-07-12', 'Miscellaneous', 500, 0),
(280, '6639', '337', '2024-07-12', 'miscellaneous', 3000, 0),
(281, '6640', '332', '2024-07-15', 'Tuition', 13500, 0),
(282, '6641', '332', '2024-07-15', 'Miscellaneous', 10600, 0),
(283, '6642', '46', '2024-07-15', 'Miscellaneous', 3000, 0),
(284, '6643', '81', '2024-07-15', 'Miscellaneous', 3000, 0),
(285, '6644', '151', '2024-07-15', 'Miscellaneous', 1200, 0),
(286, '6645', '39', '2024-07-15', 'Miscellaneous', 1500, 0),
(287, '6646', '152', '2024-07-15', 'Miscellaneous', 1000, 0),
(288, '6649', '342', '2024-07-15', 'miscellaneous', 2000, 0),
(289, '6650', '145', '2024-07-15', 'Miscellaneous', 5000, 0),
(290, '6651', '33', '2024-07-17', 'Miscellaneous', 5000, 0),
(291, '6653', '333', '2024-07-17', 'Miscellaneous', 1000, 0),
(292, '6655', '341', '2024-07-16', 'miscellaneous', 5000, 0),
(293, '6656', '345', '2024-07-16', 'miscellaneous', 500, 0),
(294, '6659', '346', '2024-07-16', 'miscellaneous', 1000, 0),
(295, '6662', '326', '2024-07-16', 'Miscellaneous', 5000, 0),
(296, '6663', '338', '2024-07-16', 'miscellaneous', 5000, 0),
(297, '6665', '330', '2024-07-17', 'Miscellaneous', 5000, 0),
(298, '6666', '343', '2024-07-18', 'miscellaneous', 1000, 0),
(299, '6668', '333', '2024-07-18', 'Miscellaneous', 2000, 0),
(300, '6669', '329', '2024-07-28', 'Miscellaneous', 3000, 0),
(301, '6670', '325', '2024-07-18', 'Miscellaneous', 3000, 0),
(302, '6671', '334', '2024-07-19', 'miscellaneous', 3000, 0),
(303, '6672', '335', '2024-07-23', 'miscellaneous', 5000, 0),
(304, '6674', '186', '2024-07-23', 'Miscellaneous', 3500, 0),
(305, '6676', '80', '2024-07-26', 'Tuition', 10000, 0),
(306, '6683', '331', '2024-07-29', 'miscellaneous', 3000, 0),
(307, '6686', '339', '2024-07-31', 'miscellaneous', 500, 0),
(308, '6688', '162', '2024-07-31', 'Miscellaneous', 2000, 0),
(309, '6693', '349', '2024-08-01', 'miscellaneous', 3000, 0),
(310, '6895', '35', '2024-06-06', 'Miscellaneous', 5000, 0),
(311, '731', '149', '2024-06-06', 'Learning Materials', 5000, 0),
(312, '732', '24', '2024-06-06', 'Learning Materials', 4000, 0),
(313, '738', '76', '2024-06-18', 'Learning Materials', 6000, 0),
(314, '742', '47', '2024-06-18', 'Learning Materials', 6000, 0),
(315, '745', '48', '2024-06-18', 'Learning Materials', 5100, 0),
(316, '746', '48', '2024-06-18', 'Learning Materials', 900, 0),
(317, '750', '94', '2024-06-19', 'Learning Materials', 3000, 0),
(318, '84', '84', '2024-07-15', '10% Discount', 1500, 0),
(319, '94', '94', '2024-07-15', '10% Discount', 1500, 0),
(320, '97', '97', '2024-07-15', '10% Discount', 1500, 0),
(321, '6662', '118', '2024-08-02', 'Tuition', 0, 0),
(322, '6662', '118', '2024-08-02', 'Tuition', 0, 0),
(323, '3352', '45', '2024-08-05', 'Learning Materials', 6000, 0),
(324, '1090', '30', '2024-07-30', 'Learning Materials', 1500, 0),
(325, '1', '5', '2024-08-05', '10% Discount Tui.', 1500, 0),
(326, '6695', '8', '2024-08-05', 'Miscellaneous', 2000, 0),
(327, '3357', '8', '2024-08-05', 'Learning Materials', 1500, 0),
(328, '3355', '40', '2024-08-05', 'Learning Materials', 2000, 0),
(338, '3351', '166', '2024-08-06', 'Learning Materials', 2000, 0),
(339, '6682', '80', '2024-07-29', 'Tuition', 3500, 0),
(340, '000', '80', '2024-07-26', '10% discount (Tuition)', 1500, 0),
(341, '3376', '98', '2024-08-08', 'BOOKS', 2000, 0),
(342, '1078', '330', '2024-07-30', 'Learning Materials', 6000, 0),
(343, '3377', '29', '2024-08-08', 'Learning Materials', 3000, 0),
(344, '3378', '21', '2024-08-08', 'Learning Materials', 1000, 0),
(345, '6685', '133', '2024-07-31', 'Tuition', 12000, 0),
(346, '6685', '0', '2024-07-31', 'Miscellaneous', 10600, 0),
(347, '6685', '133', '2024-07-31', 'Miscellaneous', 10600, 0),
(348, '6697', '325', '2024-08-09', 'Tuition', 2000, 0),
(351, '2253', '54', '2024-08-01', 'Learning Materials', 6000, 0),
(354, '6698', '94', '2024-08-09', 'Miscellaneous', 1000, 0),
(355, '6699', '12', '2024-08-09', 'Miscellaneous', 1000, 0),
(356, '3380', '154', '2024-08-09', 'Learning Materials', 2000, 0),
(357, '6689', '257', '2024-07-31', 'Miscellaneous', 2000, 0),
(358, '6690', '38', '2024-07-31', 'Tuition', 1000, 0),
(359, '1098', '38', '2024-07-31', 'Learning Materials', 2000, 0),
(360, '3370', '325', '2024-08-08', 'Learning Materials', 6000, 0),
(361, '6691', '54', '2024-08-01', 'Miscellaneous', 4600, 0),
(362, '6691', '54', '2024-08-01', 'Tuition', 13500, 0),
(363, '2251', '92', '2024-07-31', 'Learning Materials', 1000, 0),
(364, '2252', '4', '2024-08-01', 'Learning Materials', 1000, 0),
(365, '2254', '22', '2024-08-01', 'Learning Materials', 3000, 0),
(366, '2255', '222', '2024-08-02', 'Learning Materials', 495, 0),
(367, '1056', '14', '2024-07-23', 'Learning Materials', 4000, 0),
(368, '1076', '96', '2024-07-30', 'Learning Materials', 2000, 0),
(369, '1080', '70', '2024-07-30', 'Learning Materials', 1000, 0),
(370, '1081', '101', '2024-07-30', 'Learning Materials', 1500, 0),
(371, '1083', '136', '2024-07-30', 'Learning Materials', 3000, 0),
(372, '1087', '41', '2024-07-30', 'Learning Materials', 2000, 0),
(373, '6512', '41', '2024-07-02', '10% Discount', 1500, 0),
(374, '1089', '6', '2024-07-30', 'Learning Materials', 1500, 0),
(375, '6700', '311', '2024-08-12', 'Miscellaneous', 2000, 0),
(376, '1092', '113', '2024-07-31', 'Learning Materials', 1500, 0),
(377, '1093', '97', '2024-07-31', 'Learning Materials', 1000, 0),
(378, '1094', '83', '2024-07-31', 'Learning Materials', 1000, 0),
(379, '6236', '227', '2024-06-05', 'Miscellaneous', 4000, 0),
(380, '1096', '227', '2024-07-31', 'Learning Materials', 420, 0),
(381, '1099', '20', '2024-07-31', 'Learning Materials', 1000, 0),
(382, '6707', '113', '2024-08-19', 'Tuition', 4000, 0),
(383, '3397', '65', '2024-08-19', 'Learning Materials', 1500, 0),
(384, '6712', '243', '2024-08-19', 'Tuition', 2000, 0),
(385, '6725', '28', '2024-08-21', 'Tuition', 3000, 0),
(386, '6286', '2', '2024-06-06', 'Tui. (10% discount)', 1500, 0),
(387, '6732', '160', '2024-08-21', 'Miscellaneous', 1000, 0),
(388, '6733', '56', '2024-08-21', 'Miscellaneous', 6000, 0),
(389, '6734', '292', '2024-08-21', 'miscellaneous', 1000, 0),
(390, '6735', '19', '2024-08-21', 'Miscellaneous', 3000, 0),
(391, '6736', '21', '2024-08-21', 'Tuition', 2000, 0),
(392, '6746', '226', '2024-08-22', 'Miscellaneous', 1000, 0),
(393, '6747', '166', '2024-08-22', 'Miscellaneous', 2000, 0),
(394, '2268', '166', '2024-08-22', 'Learning Materials', 1000, 0),
(395, '6748', '169', '2024-08-22', 'Miscellaneous', 1000, 0),
(396, '6749', '223', '2024-08-22', 'Miscellaneous', 500, 0),
(397, '6750', '161', '2024-08-22', 'Miscellaneous', 1000, 0),
(398, '6751', '164', '2024-08-22', 'Miscellaneous', 1000, 0),
(399, '6764', '93', '2024-08-22', 'Tuition', 2000, 0),
(400, '6765', '15', '2024-08-22', 'Tuition', 2000, 0),
(401, '6778', '105', '2024-08-22', 'Tuition', 5000, 0),
(402, '6779', '35', '2024-08-22', 'Tuition', 8000, 0),
(403, '6780', '105', '2024-08-22', 'Tuition', 2000, 0),
(404, '6781', '42', '2024-08-22', 'Tuition', 1000, 0),
(405, '6789', '255', '2024-08-22', 'Miscellaneous', 1000, 0),
(406, '6790', '174', '2024-08-22', 'Miscellaneous', 1000, 0),
(407, '6791', '9', '2024-08-22', 'Miscellaneous', 3000, 0),
(408, '6792', '74', '2024-08-22', 'Miscellaneous', 1000, 0),
(409, '6793', '188', '2024-08-22', 'Miscellaneous', 2000, 0),
(410, '6794', '27', '2024-08-22', 'Miscellaneous', 2000, 0),
(411, '6817', '239', '2024-08-27', 'Miscellaneous', 2000, 0),
(412, '6818', '194', '2024-08-27', 'Miscellaneous', 11200, 0),
(413, '2271', '194', '2024-08-27', 'Learning Materials', 9000, 0),
(414, '6819', '256', '2024-08-27', 'Miscellaneous', 1000, 0),
(415, '6820', '253', '2024-08-27', 'Miscellaneous', 500, 0),
(416, '6821', '264', '2024-08-27', 'Miscellaneous', 1000, 0),
(417, '6822', '254', '2024-08-27', 'Miscellaneous', 1000, 0),
(418, '6823', '244', '2024-08-27', 'Miscellaneous', 1000, 0),
(419, '6824', '240', '2024-08-27', 'Miscellaneous', 1000, 0),
(420, '6825', '246', '2024-08-27', 'Miscellaneous', 1500, 0),
(421, '6536', '324', '2024-07-04', 'Miscellaneous', 3000, 0),
(422, '6826', '319', '2024-08-27', 'Miscellaneous', 1000, 0),
(423, '6827', '271', '2024-08-27', 'Miscellaneous', 1000, 0),
(424, '6828', '158', '2024-08-27', 'Miscellaneous', 1000, 0),
(425, '6829', '278', '2024-08-27', 'Miscellaneous', 1000, 0),
(426, '6830', '259', '2024-08-27', 'Miscellaneous', 3000, 0),
(427, '6831', '263', '2024-08-27', 'Miscellaneous', 2000, 0),
(428, '6832', '261', '2024-08-27', 'Miscellaneous', 2000, 0),
(429, '6833', '274', '2024-08-27', 'Miscellaneous', 1000, 0),
(430, '6834', '289', '2024-08-27', 'Miscellaneous', 1000, 0),
(431, '6835', '284', '2024-08-27', 'Miscellaneous', 1000, 0),
(432, '6836', '268', '2024-08-27', 'Miscellaneous', 1000, 0),
(433, '6837', '282', '2024-08-27', 'Miscellaneous', 1000, 0),
(434, '6838', '280', '2024-08-27', 'Miscellaneous', 1000, 0),
(435, '6839', '304', '2024-08-27', 'Miscellaneous', 1000, 0),
(436, '6840', '197', '2024-08-27', 'Miscellaneous', 1000, 0),
(437, '6841', '193', '2024-08-27', 'Miscellaneous', 1500, 0),
(438, '6842', '202', '2024-08-27', 'Miscellaneous', 500, 0),
(439, '6843', '206', '2024-08-27', 'Miscellaneous', 1000, 0),
(440, '6278', '206', '2024-06-06', 'Miscellaneous', 3000, 0),
(441, '6844', '181', '2024-08-27', 'Miscellaneous', 2000, 0),
(442, '6845', '323', '2024-08-27', 'Miscellaneous', 500, 0),
(443, '6846', '330', '2024-08-27', 'Tuition', 2500, 0),
(444, '6847', '104', '2024-08-27', 'Tuition', 2000, 0),
(445, '6848', '315', '2024-08-27', 'Miscellaneous', 500, 0),
(446, '6849', '310', '2024-08-27', 'Miscellaneous', 1000, 0),
(447, '6850', '172', '2024-08-27', 'Miscellaneous', 1000, 0),
(448, '6500', '173', '2024-08-27', 'Miscellaneous', 1000, 0),
(449, '6852', '335', '2024-08-27', 'Miscellaneous', 1000, 0),
(450, '6853', '16', '2024-08-27', 'Tuition', 1500, 0),
(451, '6855', '13', '2024-08-27', 'Tuition', 1500, 0),
(452, '6856', '11', '2024-08-27', 'Tuition', 3000, 0),
(453, '6857', '1', '2024-08-27', 'Tuition', 3000, 0),
(454, '6858', '296', '2024-08-27', 'Miscellaneous', 500, 0),
(455, '6859', '155', '2024-08-27', 'Miscellaneous', 1000, 0),
(456, '6860', '333', '2024-08-27', 'Miscellaneous', 2000, 0),
(457, '6861', '215', '2024-08-27', 'Miscellaneous', 500, 0),
(458, '6870', '234', '2024-08-27', 'Miscellaneous', 500, 0),
(459, '6871', '140', '2024-08-27', 'Miscellaneous', 1000, 0),
(460, '6872', '152', '2024-08-27', 'Miscellaneous', 1000, 0),
(461, '6873', '269', '2024-08-27', 'Miscellaneous', 2500, 0),
(462, '6874', '277', '2024-08-27', 'Miscellaneous', 1000, 0),
(463, '6876', '247', '2024-08-27', 'Miscellaneous', 3000, 0),
(464, '6877', '291', '2024-08-27', 'Miscellaneous', 500, 0),
(465, '6878', '342', '2024-08-27', 'Miscellaneous', 500, 0),
(466, '6879', '65', '2024-08-27', 'Miscellaneous', 2000, 0),
(467, '6880', '78', '2024-08-27', 'Tuition', 1000, 0),
(468, '6881', '82', '2024-08-27', 'Tuition', 2000, 0),
(469, '6882', '96', '2024-08-27', 'Tuition', 1000, 0),
(470, '6883', '97', '2024-08-27', 'Tuition', 1000, 0),
(471, '6884', '25', '2024-08-27', 'Tuition', 1000, 0),
(472, '6885', '107', '2024-08-27', 'Tuition', 3000, 0),
(473, '6886', '170', '2024-08-27', 'Miscellaneous', 1000, 0),
(474, '6887', '26', '2024-08-27', 'Miscellaneous', 500, 0),
(475, '6888', '305', '2024-08-27', 'Miscellaneous', 500, 0),
(476, '6889', '250', '2024-08-27', 'Miscellaneous', 500, 0),
(477, '6891', '89', '2024-08-27', 'Tuition', 2000, 0),
(478, '6892', '98', '2024-08-27', 'Tuition', 1500, 0),
(479, '6893', '108', '2024-08-27', 'Tuition', 1500, 0),
(480, '6894', '208', '2024-08-27', 'Miscellaneous', 500, 0),
(481, '6895', '219', '2024-08-27', 'Miscellaneous', 700, 0),
(482, '6896', '214', '2024-08-27', 'Miscellaneous', 2000, 0),
(483, '6956', '67', '2024-08-27', 'Tuition', 1500, 0),
(484, '6701', '55', '2024-08-12', 'Tuition', 5000, 0),
(485, '6702', '260', '2024-08-13', 'Miscellaneous', 1000, 0),
(486, '6703', '312', '2024-08-13', 'Miscellaneous', 3000, 0),
(487, '6704', '212', '2024-08-14', 'Miscellaneous', 1500, 0),
(488, '6705', '221', '2024-08-14', 'Miscellaneous', 1000, 0),
(489, '6706', '249', '2024-08-15', 'Tuition', 5000, 0),
(490, '6708', '235', '2024-08-19', 'Miscellaneous', 3000, 0),
(491, '2000', '218', '2024-08-19', 'Miscellaneous', 0, 0),
(492, '6710', '224', '2024-08-19', 'Miscellaneous', 2000, 0),
(493, '6711', '329', '2024-08-19', 'Tuition', 3000, 0),
(494, '6713', '91', '2024-08-19', 'Tuition', 3000, 0),
(495, '6714', '117', '2024-08-19', 'Tuition', 2500, 0),
(496, '6715', '90', '2024-08-19', 'Tuition', 13500, 0),
(497, '6715', '0', '2024-08-19', 'Miscellaneous', 600, 0),
(498, '6716', '109', '2024-08-20', 'Tuition', 1500, 0),
(499, '6717', '334', '2024-08-20', 'Miscellaneous', 1100, 0),
(500, '6718', '153', '2024-08-20', 'Miscellaneous', 2000, 0),
(501, '6719', '230', '2024-08-20', 'Miscellaneous', 1500, 0),
(502, '6957', '340', '2024-08-28', 'Miscellaneous', 2000, 0),
(503, '6958', '322', '2024-08-28', 'Miscellaneous', 1000, 0),
(504, '6959', '236', '2024-08-28', 'Miscellaneous', 1500, 0),
(505, '6960', '178', '2024-08-28', 'Miscellaneous', 1000, 0),
(506, '6961', '180', '2024-08-28', 'Miscellaneous', 1500, 0),
(507, '6962', '176', '2024-08-28', 'Miscellaneous', 1500, 0),
(508, '6964', '128', '2024-08-28', 'Tuition', 3000, 0),
(509, '6965', '142', '2024-08-28', 'Miscellaneous', 500, 0),
(510, '6966', '185', '2024-08-28', 'Miscellaneous', 500, 0),
(511, '6967', '124', '2024-08-28', 'Tuition', 1000, 0),
(512, '6968', '118', '2024-08-28', 'Miscellaneous', 500, 0),
(513, '6969', '119', '2024-08-28', 'Tuition', 500, 0),
(514, '6970', '58', '2024-08-28', 'Tuition', 1000, 0),
(515, '6971', '68', '2024-08-28', 'Tuition', 1000, 0),
(516, '6752', '85', '2024-08-28', 'Tuition', 1000, 0),
(517, '3351', '3', '2024-08-05', 'Learning Materials', 3000, 0),
(518, '6753', '3', '2024-08-22', 'Tuition', 3000, 0),
(519, '6755', '200', '2024-08-22', 'Miscellaneous', 1500, 0),
(520, '6756', '321', '2024-08-22', 'Miscellaneous', 1000, 0),
(521, '6757', '320', '2024-08-22', 'Miscellaneous', 1000, 0),
(522, '6758', '4', '2024-08-22', 'Tuition', 5000, 0),
(523, '6759', '154', '2024-08-22', 'Miscellaneous', 1000, 0),
(524, '6760', '39', '2024-08-22', 'Tuition', 1500, 0),
(525, '6761', '353', '2024-08-22', 'Miscellaneous', 1000, 0),
(526, '6762', '60', '2024-08-22', 'Miscellaneous', 3000, 0),
(527, '6763', '125', '2024-08-22', 'Miscellaneous', 3000, 0),
(528, '6766', '317', '2024-08-22', 'Miscellaneous', 1000, 0),
(529, '6767', '156', '2024-08-22', 'Miscellaneous', 1000, 0),
(530, '6768', '220', '2024-08-22', 'Miscellaneous', 1000, 0),
(531, '6769', '110', '2024-08-22', 'Tuition', 1500, 0),
(532, '6770', '112', '2024-08-22', 'Tuition', 2000, 0),
(533, '6771', '129', '2024-08-22', 'Tuition', 2000, 0),
(534, '6772', '101', '2024-08-22', 'Miscellaneous', 1000, 0),
(535, '6773', '114', '2024-08-22', 'Learning Materials', 1000, 0),
(536, '6774', '83', '2024-08-22', 'Tuition', 1000, 0),
(537, '6775', '100', '2024-08-22', 'Miscellaneous', 1000, 0),
(538, '6776', '20', '2024-08-22', 'Tuition', 1000, 0),
(539, '6777', '303', '2024-08-22', 'Miscellaneous', 2000, 0),
(540, '6782', '134', '2024-08-22', 'Miscellaneous', 1000, 0),
(541, '6783', '286', '2024-08-22', 'Miscellaneous', 1000, 0),
(542, '6784', '293', '2024-08-22', 'Miscellaneous', 500, 0),
(543, '6785', '285', '2024-08-22', 'Tuition', 1500, 0),
(544, '6786', '294', '2024-08-22', 'Miscellaneous', 500, 0),
(545, '6787', '273', '2024-08-22', 'Miscellaneous', 500, 0),
(546, '6788', '297', '2024-08-22', 'Miscellaneous', 500, 0),
(547, '6795', '231', '2024-08-22', 'Miscellaneous', 1200, 0),
(548, '6796', '168', '2024-08-22', 'Miscellaneous', 2000, 0),
(549, '6797', '95', '2024-08-22', 'Tuition', 2000, 0),
(550, '6798', '44', '2024-08-22', 'Miscellaneous', 1000, 0),
(551, '6799', '87', '2024-08-22', 'Tuition', 1500, 0),
(552, '6800', '79', '2024-08-22', 'Tuition', 2000, 0),
(553, '6801', '7', '2024-08-22', 'Miscellaneous', 2000, 0),
(554, '6802', '134', '2024-08-22', 'Miscellaneous', 1000, 0),
(555, '6803', '138', '2024-08-22', 'Miscellaneous', 1000, 0),
(556, '6804', '190', '2024-08-22', 'Miscellaneous', 1000, 0),
(557, '6805', '70', '2024-08-22', 'Miscellaneous', 1000, 0),
(558, '6806', '22', '2024-08-22', 'Tuition', 5000, 0),
(559, '6807', '229', '2024-08-22', 'Miscellaneous', 500, 0),
(560, '6808', '262', '2024-08-27', 'Miscellaneous', 1000, 0),
(561, '6809', '314', '2024-08-27', 'Miscellaneous', 1000, 0),
(562, '6810', '248', '2024-08-27', 'Miscellaneous', 1000, 0),
(563, '6811', '204', '2024-08-27', 'Miscellaneous', 1000, 0),
(564, '6812', '207', '2024-08-27', 'Miscellaneous', 500, 0),
(565, '6812', '207', '2024-08-27', 'Miscellaneous', 500, 0),
(566, '6813', '251', '2024-08-27', 'Miscellaneous', 1000, 0),
(567, '6814', '145', '2024-08-27', 'Miscellaneous', 1000, 0),
(568, '6814', '33', '2024-08-27', 'Miscellaneous', 1000, 0),
(569, '6816', '283', '2024-08-27', 'Miscellaneous', 2000, 0),
(570, '6862', '199', '2024-08-27', 'Miscellaneous', 1000, 0),
(571, '6863', '275', '2024-08-27', 'Miscellaneous', 1000, 0),
(572, '6864', '187', '2024-08-27', 'Miscellaneous', 500, 0),
(573, '6865', '222', '2024-08-27', 'Miscellaneous', 2000, 0),
(574, '6866', '159', '2024-08-27', 'Miscellaneous', 2000, 0),
(575, '6867', '258', '2024-08-29', 'Miscellaneous', 1000, 0),
(576, '6868', '143', '2024-08-27', 'Miscellaneous', 1000, 0),
(577, '6869', '198', '2024-08-27', 'Miscellaneous', 1000, 0),
(578, '6890', '72', '2024-08-27', 'Tuition', 2000, 0),
(579, '6897', '191', '2024-08-27', 'Miscellaneous', 1000, 0),
(580, '6898', '141', '2024-08-27', 'Miscellaneous', 1000, 0),
(581, '6899', '337', '2024-08-27', 'Miscellaneous', 1000, 0),
(582, '6900', '10', '2024-08-27', 'Tuition', 1500, 0),
(583, '2274', '23', '2024-08-29', 'Learning Materials', 1100, 0),
(584, '6591', '115', '2024-08-27', 'Miscellaneous', 500, 0),
(585, '6952', '135', '2024-08-27', 'Tuition', 1500, 0),
(586, '6953', '59', '2024-08-27', 'Tuition', 1000, 0),
(587, '6954', '43', '2024-08-27', 'Miscellaneous', 1000, 0),
(588, '6955', '233', '2024-08-27', 'Miscellaneous', 1500, 0),
(589, '6972', '126', '2024-08-28', 'Tuition', 2000, 0),
(590, '6973', '120', '2024-08-28', 'Miscellaneous', 500, 0),
(591, '6974', '331', '2024-08-28', 'Tuition', 1000, 0),
(592, '6975', '165', '2024-08-28', 'Miscellaneous', 500, 0),
(593, '6976', '238', '2024-08-28', 'Miscellaneous', 9600, 0),
(594, '6977', '270', '2024-08-28', 'Miscellaneous', 1000, 0),
(595, '6978', '167', '2024-08-28', 'Miscellaneous', 1000, 0),
(596, '6980', '341', '2024-08-28', 'Tuition', 3000, 0),
(597, '6981', '351', '2024-08-28', 'Miscellaneous', 1000, 0),
(598, '6982', '132', '2024-08-28', 'Miscellaneous', 3000, 0),
(599, '6983', '175', '2024-08-29', 'Miscellaneous', 500, 0),
(600, '6984', '344', '2024-08-29', 'Miscellaneous', 1000, 0),
(601, '6709', '218', '2024-08-19', 'Miscellaneous', 2000, 0),
(602, '6715', '90', '2024-08-19', 'Miscellaneous', 600, 0),
(603, '6720', '209', '2024-08-20', 'Miscellaneous', 3000, 0),
(604, '6721', '228', '2024-08-20', 'Miscellaneous', 500, 0),
(605, '6722', '88', '2024-08-20', 'Tuition', 1500, 0),
(606, '6723', '86', '2024-08-20', 'Tuition', 1500, 0),
(607, '6724', '38', '2024-08-20', 'Tuition', 4000, 0),
(608, '6726', '301', '2024-08-21', 'Miscellaneous', 1000, 0),
(609, '6985', '123', '2024-08-29', 'Tuition', 5000, 0),
(610, '6990', '181', '2024-09-02', 'Miscellaneous', 2200, 0),
(611, '6991', '40', '2024-09-03', 'Tuition', 5000, 0),
(612, '6745', '171', '2024-08-21', 'Miscellaneous', 2000, 0),
(613, '6744', '196', '2024-08-21', 'Miscellaneous', 1700, 0),
(614, '6743', '157', '2024-08-21', 'Miscellaneous', 1000, 0),
(615, '6742', '31', '2024-08-21', 'Miscellaneous', 2000, 0),
(616, '6741', '92', '2024-08-21', 'Tuition', 3000, 0),
(617, '6740', '34', '2024-08-21', 'Miscellaneous', 3000, 0),
(618, '6739', '298', '2024-08-21', 'Miscellaneous', 1000, 0),
(619, '6738', '116', '2024-08-21', 'Tuition', 3000, 0),
(620, '6737', '6', '2024-08-21', 'Miscellaneous', 3000, 0),
(621, '6727', '36', '2024-08-21', 'Miscellaneous', 3000, 0),
(622, '6728', '225', '2024-08-21', 'Miscellaneous', 500, 0),
(623, '6729', '339', '2024-08-21', 'Miscellaneous', 500, 0),
(624, '6730', '232', '2024-08-21', 'Miscellaneous', 500, 0),
(625, '6731', '17', '2024-08-21', 'Miscellaneous', 500, 0),
(626, '6732', '336', '2024-08-21', 'Miscellaneous', 1000, 0),
(627, '627', '226', '2024-08-22', 'Miscellaneous (Wrong Entry)', 1000, 0),
(628, '6297', '217', '2024-06-06', 'Miscellaneous', 5000, 0),
(629, '3400', '217', '2024-08-19', 'Learning Materials', 4000, 0),
(630, '3391', '31', '2024-08-13', 'Learning Materials', 2000, 0),
(631, '3390', '11', '2024-08-13', 'Learning Materials', 2000, 0),
(632, '3387', '16', '2024-08-12', 'Learning Materials', 1500, 0),
(633, '3385', '55', '2024-08-12', 'Learning Materials', 3000, 0),
(634, '3383', '311', '2024-08-09', 'Learning Materials', 811, 0),
(635, '3379', '36', '2024-08-09', 'Learning Materials', 4000, 0),
(636, '3375', '17', '2024-08-08', 'Learning Materials', 1000, 0),
(637, '3372', '10', '2024-08-08', 'Learning Materials', 1500, 0),
(638, '3371', '32', '2024-08-08', 'Learning Materials', 1000, 0),
(639, '3369', '114', '2024-08-07', 'Learning Materials', 1000, 0),
(640, '3368', '28', '2024-08-07', 'Learning Materials', 1000, 0),
(641, '3367', '18', '2024-08-07', 'Learning Materials', 2000, 0),
(642, '3366', '101', '2024-08-07', 'Learning Materials', 3000, 0),
(643, '3364', '350', '2024-08-07', 'Learning Materials', 4500, 0),
(644, '3362', '7', '2024-08-07', 'Learning Materials', 2000, 0),
(645, '3358', '19', '2024-08-07', 'Learning Materials', 3000, 0),
(646, '2270', '231', '2024-08-22', 'Learning Materials', 3800, 0),
(647, '2267', '209', '2024-08-21', 'Learning Materials', 495, 0),
(648, '2264', '75', '2024-08-20', 'Learning Materials', 790, 0),
(649, '2261', '18', '2024-08-20', 'Learning Materials', 3000, 0),
(650, '2260', '90', '2024-08-19', 'Learning Materials', 3400, 0),
(651, '6992', '48', '2024-09-03', 'Miscellaneous', 10600, 0),
(652, '967', '56', '2024-07-02', 'Learning Materials', 6000, 0),
(653, '6993', '203', '2024-09-03', 'Miscellaneous', 1500, 0),
(654, '6994', '64', '2024-09-04', 'Tuition', 3000, 0),
(655, '2277', '64', '2024-09-04', 'Learning Materials', 2000, 0),
(656, '6995', '235', '2024-09-05', 'Miscellaneous', 3000, 0),
(657, '000', '131', '2024-09-05', 'Tuition ( payment from promotional video)', 8000, 0),
(658, '6610', '146', '2024-07-11', 'Miscellaneous', 2451, 0),
(659, '6989', '163', '2024-09-02', 'Miscellaneous', 4000, 0),
(660, '6272', '222', '2024-06-05', 'Miscellaneous', 2500, 0),
(661, '6996', '131', '2024-09-05', 'Tuition', 5000, 0),
(662, '6327', '195', '2024-06-11', 'Miscellaneous', 1000, 0),
(663, '6624', '197', '2024-07-11', 'Miscellaneous', 568, 0),
(664, '6673', '199', '2024-07-23', 'Miscellaneous', 3500, 0),
(665, '6392', '200', '2024-07-19', 'Miscellaneous', 5000, 0),
(666, '6423', '201', '2024-06-24', 'Miscellaneous', 1500, 0),
(667, '6459', '202', '2024-06-26', 'Miscellaneous', 3000, 0),
(668, '6313', '204', '2024-06-10', 'Miscellaneous', 2000, 0),
(669, '6458', '205', '2024-06-26', 'Miscellaneous', 3000, 0),
(670, '6456', '207', '2024-06-26', 'Miscellaneous', 2500, 0),
(671, '6260', '208', '2024-06-05', 'Miscellaneous', 2000, 0),
(672, '6271', '209', '2024-06-05', 'Miscellaneous', 3000, 0),
(673, '6551', '210', '2024-07-08', 'Miscellaneous', 3000, 0),
(674, '6259', '211', '2024-06-05', 'Miscellaneous', 2000, 0),
(675, '6314', '212', '2024-06-10', 'Miscellaneous', 6000, 0),
(676, '6263', '214', '2024-06-05', 'Miscellaneous', 2000, 0),
(677, '6262', '215', '2024-06-05', 'Miscellaneous', 2000, 0),
(678, '6235', '219', '2024-06-05', 'Miscellaneous', 500, 0),
(679, '6465', '220', '2024-06-27', 'Miscellaneous', 1000, 0),
(680, '6269', '221', '2024-06-05', 'Miscellaneous', 4000, 0),
(681, '6287', '223', '2024-06-06', 'Miscellaneous', 2000, 0),
(682, '6282', '224', '2024-06-06', 'Miscellaneous', 2000, 0),
(683, '6593', '225', '2024-07-10', 'Miscellaneous', 1000, 0),
(684, '6279', '226', '2024-06-06', 'Miscellaneous', 3000, 0),
(685, '6257', '228', '2024-06-05', 'Miscellaneous', 1500, 0),
(686, '6471', '228', '2024-06-27', 'Miscellaneous', 1500, 0),
(687, '6321', '229', '2024-06-11', 'Miscellaneous', 4000, 0),
(688, '6375', '230', '2024-06-18', 'Miscellaneous', 1000, 0),
(689, '6288', '232', '2024-06-06', 'Miscellaneous', 5000, 0),
(690, '6326', '233', '2024-06-11', 'Miscellaneous', 5000, 0),
(691, '6316', '234', '2024-06-10', 'Miscellaneous', 2000, 0),
(692, '6307', '236', '2024-06-10', 'Miscellaneous', 3000, 0),
(693, '6696', '350', '2024-08-27', 'Miscellaneous', 3000, 0),
(694, '6997', '106', '2024-09-05', 'Miscellaneous', 3000, 0),
(695, '6383', '279', '2024-06-19', 'Miscellaneous', 2000, 0),
(696, '6529', '283', '2024-07-04', 'Miscellaneous', 5000, 0),
(697, '6441', '286', '2024-06-26', 'Miscellaneous', 4000, 0),
(698, '6986', '290', '2024-08-30', 'Miscellaneous', 1000, 0),
(699, '6782', '343', '2024-08-22', 'Miscellaneous', 1000, 0),
(700, '6693', '353', '2024-08-01', 'Miscellaneous', 3000, 0),
(701, '6998', '255', '2024-09-09', 'Miscellaneous', 1000, 0),
(702, '6999', '189', '2024-09-09', 'Miscellaneous', 1000, 0),
(703, '7000', '195', '2024-09-09', 'Miscellaneous', 1000, 0),
(704, '6498', '63', '2024-07-01', 'Tuition (10 % discount)', 13500, 0),
(705, '6498', '63', '2024-07-01', 'Miscellaneous', 10600, 0),
(706, '6498', '63', '2024-07-01', 'Learning Materials', 6000, 0),
(707, '6512', '62', '2024-07-02', 'Miscellaneous', 6200, 0),
(708, '6512', '62', '2024-07-02', 'Tuition (10% discount)', 13500, 0),
(709, '7001', '26', '2024-09-09', 'Tuition', 2000, 0),
(710, '6387', '12', '2024-06-19', '10% Discount Tui.', 1500, 0),
(711, '6358', '23', '2024-06-18', '10% Discount Tution', 1500, 0),
(712, '6284', '24', '2024-06-06', '10% Discount Tui.', 1500, 0),
(713, '6249', '29', '2024-06-05', 'Tuition', 5000, 0),
(714, '6249', '29', '2024-06-05', 'Miscellaneous', 5000, 0),
(715, '6292', '32', '2024-06-06', '10% Discount Tui.', 1500, 0),
(716, '6398', '36', '2024-06-20', '10% Discount Tui.', 1500, 0),
(717, '6512', '41', '2024-07-02', 'Tuition', 13500, 0),
(718, '6512', '41', '2024-07-02', 'Miscellaneous', 6200, 0),
(719, '6351', '47', '2024-06-18', '10% Discount Tui.', 1500, 0),
(720, '6366', '48', '2024-06-18', '10% Discount Tui.', 1500, 0),
(721, '6530', '49', '2024-07-04', '10% Discount Tui.', 1500, 0),
(722, '6343', '50', '2024-06-18', '10% Discount Tui.', 1500, 0),
(723, '6691', '54', '2024-08-01', '10% Discount Tui.', 1500, 0),
(724, '6637', '327', '2024-07-12', '10% Discount Tui.', 1500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `standardfinancialdescription`
--

CREATE TABLE `standardfinancialdescription` (
  `financial_Description` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `standardfinancialdescription`
--

INSERT INTO `standardfinancialdescription` (`financial_Description`) VALUES
('Learning Materials'),
('Miscellaneous'),
('Other Fees'),
('Tuition');

-- --------------------------------------------------------

--
-- Table structure for table `standardgradelevel`
--

CREATE TABLE `standardgradelevel` (
  `grade_Level_Name` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `standardgradelevel`
--

INSERT INTO `standardgradelevel` (`grade_Level_Name`) VALUES
('Grade 1'),
('Grade 10-Sardonyx'),
('Grade 11-Beryl'),
('Grade 11-Chalcedony'),
('Grade 11-Jasper'),
('Grade 12-Onyx'),
('Grade 12-Pearl'),
('Grade 12-Sapphire'),
('Grade 7-Amethyst'),
('Grade 8-Chrysolite'),
('Grade 9-Emerald');

-- --------------------------------------------------------

--
-- Table structure for table `standardschoolyear`
--

CREATE TABLE `standardschoolyear` (
  `Ref` int(11) NOT NULL,
  `school_Year_Name` varchar(90) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `Starting_Date` date NOT NULL,
  `Ending_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `standardschoolyear`
--

INSERT INTO `standardschoolyear` (`Ref`, `school_Year_Name`, `isActive`, `Starting_Date`, `Ending_Date`) VALUES
(1, 'SY. 2024-2025', 0, '2024-05-02', '0000-00-00'),
(2, '2025-2026', 0, '2024-05-02', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `standardsubjecttime`
--

CREATE TABLE `standardsubjecttime` (
  `subject_Time_Name` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `standardsubjecttime`
--

INSERT INTO `standardsubjecttime` (`subject_Time_Name`) VALUES
(''),
('Class Schedule');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Ref` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `LRN_No` varchar(90) NOT NULL,
  `last_Name` varchar(90) NOT NULL,
  `first_Name` varchar(90) NOT NULL,
  `middle_Name` varchar(90) NOT NULL,
  `nick_Name` varchar(90) NOT NULL,
  `sex` varchar(90) NOT NULL,
  `DOB` date NOT NULL,
  `age` varchar(90) NOT NULL,
  `BO` varchar(1000) NOT NULL,
  `home_Address` varchar(90) NOT NULL,
  `religion` varchar(90) NOT NULL,
  `TVProgramsMoviesBooks` varchar(90) NOT NULL,
  `first_Language` varchar(90) NOT NULL,
  `language_Spoken` varchar(90) NOT NULL,
  `POB` varchar(90) NOT NULL,
  `Interest` varchar(90) NOT NULL,
  `If_Voucher` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Ref`, `StudentID`, `LRN_No`, `last_Name`, `first_Name`, `middle_Name`, `nick_Name`, `sex`, `DOB`, `age`, `BO`, `home_Address`, `religion`, `TVProgramsMoviesBooks`, `first_Language`, `language_Spoken`, `POB`, `Interest`, `If_Voucher`) VALUES
(1, '', 'G724-25001', 'Aloquin', 'Marlopito Jhon ', 'Bacay', '', 'Male', '2011-08-21', '13', '1', 'Calapdan, Estancia, Iloilo', 'Christianity', '', '', '', '', '', 0),
(2, '', 'G724-25002', 'Arceño', 'Ram Johann ', 'Piolo', '', 'Male', '2012-07-28', '12', '1', 'Batad Viejo, Batad, Iloilo', 'Christianity', '', '', '', '', '', 0),
(3, '', 'G724-25003', 'Bagoy', 'Mc. Niel Kevin', 'Bocala', '', 'Male', '2011-12-07', '12', '1', 'Bulaqueña, Estancia, Iloilo', 'Christianity', '', '', '', '', '', 0),
(4, '', 'G724-25004', 'Balatucan', 'Ezequiel  ', 'P.', '', 'Male', '0000-00-00', '1', '1', 'Pani-an, Balasan, Iloilo', '', '', '', '', '', '', 0),
(5, '', 'G724-25005', 'Barba', 'Gean Carl Beato', '', '', 'Male', '0000-00-00', '1', '1', 'Aranjuez, Balasan, Iloilo', '', '', '', '', '', '', 0),
(6, '', 'G724-25006', 'Caburobias', 'Jomie Jr. ', 'B.', '', 'Male', '0000-00-00', '1', '1', 'Purok 5, Pani-an, Balasan, Iloilo', '', '', '', '', '', '', 0),
(7, '', 'G724-25007', 'Daig', 'Prince Nijhael ', 'C.', '', 'Male', '0000-00-00', '1', '1', 'Cawayan, Carles, Iloilo', '', '', '', '', '', '', 0),
(8, '', 'G724-25008', 'Escobar', 'Jonas Patrick ', 'S.', '', 'Male', '0000-00-00', '1', '1', 'Alinsolong, Batad, Iloilo', '', '', '', '', '', '', 0),
(9, '', 'G724-25009', 'Gozun', 'Wynn Ezekeil ', 'A.', '', 'Male', '0000-00-00', '1', '1', 'Nalumsan, Carles, Iloilo', '', '', '', '', '', '', 0),
(10, '', 'G724-25010', 'Jaco', 'Jimlord Troy ', 'A.', '', 'Male', '0000-00-00', '1', '1', 'Lumbia, Estancia, Iloilo', '', '', '', '', '', '', 0),
(11, '', 'G724-25011', 'Malificiar', 'Jesthan Dale ', 'B.', '', 'Male', '0000-00-00', '1', '1', 'Cabalic, Balasan, Iloilo', '', '', '', '', '', '', 0),
(12, '', 'G724-25012', 'Monserate', 'Kian Angelo ', 'D.', '', 'Male', '0000-00-00', '1', '1', 'Pob. Zone 2, Estancia, Iloilo', '', '', '', '', '', '', 0),
(13, '', 'G724-25013', 'Rojo', 'Kirwin Gabe ', 'O.', '', 'Male', '0000-00-00', '1', '1', 'Malbog, Tingui-an, Balasan, Iloilo', '', '', '', '', '', '', 0),
(14, '', 'G724-25014', 'Senesan', 'Joelius Dayne ', 'C.', '', 'Male', '0000-00-00', '1', '1', 'Pob., Batad, Iloilo', '', '', '', '', '', '', 0),
(15, '', 'G724-25015', 'Silverio', 'Cherwin John ', 'A.', '', 'Male', '0000-00-00', '1', '1', 'Bayuyan, Estancia, Iloilo', '', '', '', '', '', '', 0),
(16, '', 'G724-25016', 'Tahir', 'Benbudzz  ', 'C.', '', 'Male', '0000-00-00', '1', '1', 'Lawis, Balasan, Iloilo', '', '', '', '', '', '', 0),
(17, '', 'G724-25017', 'Torrento', 'Errol III ', 'L.', '', 'Male', '0000-00-00', '1', '1', 'Binon-an, Batad, Iloilo', '', '', '', '', '', '', 0),
(18, '', 'G724-25018', 'Villanueva', 'Nathaniel Royce ', 'G.', '', 'Male', '0000-00-00', '1', '1', 'Sta. Fe, Pilar, Capiz', '', '', '', '', '', '', 0),
(19, '', 'G724-25019', 'Alarcon', 'Ariane Bless ', 'F.', '', 'Female', '0000-00-00', '1', '1', 'Bancal, Carles, Iloilo', '', '', '', '', '', '', 0),
(20, '', 'G724-25020', 'Ambaan', 'Khalila  ', 'L.', '', 'Female', '0000-00-00', '1', '1', 'Maya, Balasan, Iloilo', '', '', '', '', '', '', 0),
(21, '', 'G724-25021', 'Ambaan', 'Lannah Jane ', 'V.', '', 'Female', '0000-00-00', '1', '1', 'Maya, Balasan, Iloilo', '', '', '', '', '', '', 0),
(22, '', 'G724-25022', 'Balida', 'Edzyl Krishna ', 'B.', '', 'Female', '0000-00-00', '1', '1', 'Alinsolong, Batad, Iloilo', '', '', '', '', '', '', 0),
(23, '', 'G724-25023', 'Baylen', 'Ryeleigh Gale ', 'V.', '', 'Female', '0000-00-00', '1', '1', 'Pob. Norte, Balasan, Iloilo', '', '', '', '', '', '', 0),
(24, '', 'G724-25024', 'Begaso', 'Princess Shekinah ', 'A.', '', 'Female', '0000-00-00', '1', '1', 'Pob. Zone 3, Estancia, Iloilo', '', '', '', '', '', '', 0),
(25, '', 'G724-25025', 'Bensurto', 'Stephanie  ', 'N.', '', 'Female', '0000-00-00', '1', '1', 'Bancal, Carles, Iloilo', '', '', '', '', '', '', 0),
(26, '', 'G724-25026', 'Beriña', 'Cheska Irish Lacrete', '', '', 'Female', '0000-00-00', '1', '1', 'Pob., Batad, Iloilo', '', '', '', '', '', '', 0),
(27, '', 'G724-25027', 'Beturin', 'Jeanelle Anne ', 'T.', '', 'Female', '0000-00-00', '1', '1', 'Villa Pani-an, Estancia, Iloilo', '', '', '', '', '', '', 0),
(28, '', 'G724-25028', 'Binueza', 'Danerie Lara Joy', 'B.', '', 'Female', '0000-00-00', '1', '1', 'Poblacion, Batad, Iloilo', '', '', '', '', '', '', 0),
(29, '', 'G724-25029', 'Borda', 'Blessed Angel Joy', 'M.', '', 'Female', '0000-00-00', '1', '1', 'Cawayan, Carles, Iloilo', '', '', '', '', '', '', 0),
(30, '', 'G724-25030', 'Bornales', 'Cristina Samantha ', 'F.', '', 'Female', '0000-00-00', '1', '1', 'Binon-an, Batad, Iloilo', '', '', '', '', '', '', 0),
(31, '', 'G724-25031', 'Claro', 'Graciel Rhex ', 'D.', '', 'Female', '0000-00-00', '1', '1', 'Hamod, Batad, Iloilo', '', '', '', '', '', '', 0),
(32, '', 'G724-25032', 'DeLaLuna', 'Amielle  ', 'B.', '', 'Female', '0000-00-00', '1', '1', 'Banban, Batad, Iloilo', '', '', '', '', '', '', 0),
(33, '', 'G724-25033', 'DelaCruz', 'Kent Cyrah Ablona', '', '', 'Female', '0000-00-00', '1', '1', 'Drancalan, Batad, Iloilo', '', '', '', '', '', '', 0),
(34, '', 'G724-25034', 'Doyongan', 'Rusian De La', '', '', 'Female', '0000-00-00', '1', '1', 'Quiazan Florete, Batad, Iloilo', '', '', '', '', '', '', 0),
(35, '', 'G724-25035', 'Duran', 'Jelian Gail ', 'D.', '', 'Female', '0000-00-00', '1', '1', 'Lumbia, Estancia, Iloilo', '', '', '', '', '', '', 0),
(36, '', 'G724-25036', 'Gumarac', 'Atasha Jessah Maye', 'R.', '', 'Female', '0000-00-00', '1', '1', 'Bulaqueña, Estancia, Iloilo', '', '', '', '', '', '', 0),
(37, '', 'G724-25037', 'Jo', 'Soobee  ', 'P.', '', 'Female', '0000-00-00', '1', '1', 'Lumbia, Estancia, Iloilo', '', '', '', '', '', '', 0),
(38, '', 'G724-25038', 'Lachica', 'Daniella Marie ', 'C.', '', 'Female', '0000-00-00', '1', '1', 'Bancal, Carles, Iloilo', '', '', '', '', '', '', 0),
(39, '', 'G724-25039', 'Magsino', 'Aianna Rose ', 'B.', '', 'Female', '0000-00-00', '1', '1', 'Brgy. Tacbuyan, Estancia, Iloilo', '', '', '', '', '', '', 0),
(40, '', 'G724-25040', 'Octaviano', 'Thalia Louise ', 'L.', '', 'Female', '0000-00-00', '1', '1', 'Hamod, Batad, Iloilo', '', '', '', '', '', '', 0),
(41, '', 'G724-25041', 'Olimba', 'Venice  ', ' B.', '', 'Female', '0000-00-00', '1', '1', 'San Nicolas, Pilar, Capiz', '', '', '', '', '', '', 0),
(42, '', 'G824-25042', 'Agpalo', 'Karl Luther ', 'T.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(43, '', 'G824-25043', 'Aguilar', 'Ken Francisco ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(44, '', 'G824-25044', 'Arib', 'Chrizhen Leonard ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(45, '', 'G824-25045', 'Artibel', 'Dwyne  ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(46, '', 'G824-25046', 'Aurea', 'Jon Paolo ', ' R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(47, '', 'G824-25047', 'Badayos', 'Jan Paul ', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(48, '', 'G824-25048', 'Begaso', 'Keagan Clyde ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(49, '', 'G824-25049', 'Betita', 'Alexis Rey ', 'F.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(50, '', 'G824-25050', 'Binondo', 'Ian Miguel ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(51, '', 'G824-25051', 'Bornasal', 'El Gray Benjamin', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(52, '', 'G824-25052', 'Delgado', 'Djaraine  ', 'V.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(53, '', 'G824-25053', 'Dumaguin', 'Naveed Asher ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(54, '', 'G824-25054', 'Flores', 'Sean Ysmael ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(55, '', 'G824-25055', 'Gadian', 'Julez  ', 'L.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(56, '', 'G824-25056', 'Gamarcha', 'Hanz Anthony ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(57, '', 'G824-25057', 'Gambol', 'Zyann Bryle ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(58, '', 'G824-25058', 'Javier', 'Maverick Francois Andrei', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(59, '', 'G824-25059', 'LegaspiII', 'Jonathan  ', ' E.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(60, '', 'G824-25060', 'Lorejas', 'Matt Shunnel ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(61, '', 'G824-25061', 'Montero', 'Jestonie  ', 'V.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(62, '', 'G824-25062', 'Olimba', 'Vince Pierce ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(63, '', 'G824-25063', 'Villar', 'Kian Xzyl ', 'P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(64, '', 'G824-25064', 'Ybiernas', 'Bryan Luis ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(65, '', 'G824-25065', 'Alvaren', 'Princess Bella ', 'L.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(66, '', 'G824-25066', 'Billones', 'Zahara Abegail ', 'V.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(67, '', 'G824-25067', 'Bones', 'Princess Jessica ', 'M.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(68, '', 'G824-25068', 'Bueno', 'Claire Jayne ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(69, '', 'G824-25069', 'Catalan', 'Cyril Rose ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(70, '', 'G824-25070', 'DeGuzman', 'Shanellah  ', 'C.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(71, '', 'G824-25071', 'DeLeon', 'Mikone  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(72, '', 'G824-25072', 'Isidro', 'Zeryl Kelly ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(73, '', 'G824-25073', 'Labrador', 'Vea Clarice ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(74, '', 'G824-25074', 'Matunding', 'Shireen Joy ', 'E.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(75, '', 'G824-25075', 'Palmero', 'Audrey Lavignia ', 'V.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(76, '', 'G824-25076', 'Pantillan', 'Abegail  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(77, '', 'G824-25077', 'Rubrico', 'Joicy Keanne ', ' P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(78, '', 'G824-25078', 'Sumagaysay', 'Sharmae  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(79, '', 'G924-25079', 'Aguilar', 'Renz Vincent ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(80, '', 'G924-25080', 'Ajusan', 'John Prince ', 'M.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(81, '', 'G924-25081', 'Aurea', 'Edison Jon ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(82, '', 'G924-25082', 'Balsomo', 'Arbel Dave ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(83, '', 'G924-25083', 'Balsomo', 'Charles Daniel ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(84, '', 'G924-25084', 'Barce', 'Nathanlie Renee ', 'V.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(85, '', 'G924-25085', 'Brillantes', 'Kheiyonne Dave ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(86, '', 'G924-25086', 'DelosReyes', 'Kurt Marshall ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(87, '', 'G924-25087', 'Demayo', 'Angelo Jeff ', 'O.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(88, '', 'G924-25088', 'Diaz', 'John Wayne ', 'P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(89, '', 'G924-25089', 'Dragido', 'Ren Azil ', 'G.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(90, '', 'G924-25090', 'Gambito', 'Rey Wayne John', ' A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(91, '', 'G924-25091', 'Hore', 'Anthony Greg ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(92, '', 'G924-25092', 'Jamandre', 'Vincent Jay ', 'V. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(93, '', 'G924-25093', 'Marquez', 'Glenn Ford ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(94, '', 'G924-25094', 'Monserate', 'Gian Gavril ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(95, '', 'G924-25095', 'Noveno', 'Jhon Lester ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(96, '', 'G924-25096', 'Patron', 'Francis Jamer ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(97, '', 'G924-25097', 'Quiamco', 'Anthony  ', ' P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(98, '', 'G924-25098', 'Valenzuela', 'Kyle  ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(99, '', 'G924-25099', 'Villanueva', 'Phil Jacob ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(100, '', 'G924-25100', 'Ballester', 'Kayleigh Marie ', 'T.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(101, '', 'G924-25101', 'Brillantes', 'Clara Faith ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(102, '', 'G924-25102', 'DeLaCruz', 'Princess Pearl ', 'P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(103, '', 'G924-25103', 'DeLeon', 'Kursten Ellise ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(104, '', 'G924-25104', 'Demalinao', 'Shanea Wayne ', 'C.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(105, '', 'G924-25105', 'Duran', 'Venese  ', ' D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(106, '', 'G924-25106', 'Esimos', 'Jaden Melisse ', 'V.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(107, '', 'G924-25107', 'Esteban', 'Jhanna Kaice ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(108, '', 'G924-25108', 'Jopillo', 'Antonia Margarette ', 'V.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(109, '', 'G924-25109', 'Mending', 'Ma. Yzavelle Dion', ' D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(110, '', 'G924-25110', 'Nazario', 'Aezel Jade ', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(111, '', 'G924-25111', 'Pabustan', 'Althea  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(112, '', 'G924-25112', 'Remegio', 'Elisha Kaylen ', 'S.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(113, '', 'G924-25113', 'Titar', 'Asha Vin ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(114, '', 'G924-25114', 'Vedeja', 'Princess  ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(115, '', 'G924-25115', 'Velilla', 'Louella Jean ', 'R.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(116, '', 'G924-25116', 'Veloso', 'Trishel Leanne ', 'P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(117, '', 'G924-25117', 'Zabala', 'Reena Jameerah ', 'R.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(118, '', 'G1024-25118', 'Borra', 'John Liobelle ', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(119, '', 'G1024-25119', 'Borra', 'Zandro Daniel ', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(120, '', 'G1024-25120', 'Buyco', 'Mar  ', 'J.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(121, '', 'G1024-25121', 'DelaCruz', 'Dale Jhon ', 'C. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(122, '', 'G1024-25122', 'DelosReyes', 'Marco  ', 'H.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(123, '', 'G1024-25123', 'Ditchon', 'Nielo Emmanuel ', 'L.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(124, '', 'G1024-25124', 'Fajardo', 'Redd Tristan ', 'M. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(125, '', 'G1024-25125', 'Lorejas', 'Kert  ', 'B. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(126, '', 'G1024-25126', 'Merilles', 'Reymart  ', 'N. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(127, '', 'G1024-25127', 'Morales', 'Musique  ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(128, '', 'G1024-25128', 'Obendencio', 'Gerhard Wayne ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(129, '', 'G1024-25129', 'Remegio', 'Clive Ilton ', 'S. ', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(130, '', 'G1024-25130', 'Vela', 'Manuel III ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(131, '', 'G1024-25131', 'Amado', 'Clawee Shyne ', 'V. ', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(132, '', 'G1024-25132', 'Dayon', 'Hanah Victoria ', ' M.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(133, '', 'G1024-25133', 'Jorge', 'Jerry Lyn ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(134, '', 'G1024-25134', 'Orcales', 'Eunice Ann ', 'P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(135, '', 'G1024-25135', 'Panes', 'Princess Glenn ', 'A. ', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(136, '', 'G1024-25136', 'Piaca', 'Zephani Joara ', 'A. ', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(137, '', 'G1024-25137', 'Sangga', 'Ma. Darnely ', ' B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(138, '', 'G1024-25138', 'Velilla', 'Manuella Kim ', 'R. ', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(139, '', 'G1024-25139', 'Villanueva', 'Georgina Blake ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(140, '', 'G1124-25140', 'Arangat', 'Jake  ', 'Allanigan', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(141, '', 'G1124-25141', 'Balberona', 'Gerald John ', 'Pielago', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(142, '', 'G1124-25142', 'Bantillo', 'Czymon  ', 'Abayon', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(143, '', 'G1124-25143', 'Bulohabo', 'Sammy Jay ', 'Suguano', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(144, '', 'G1124-25144', 'Cañeso', 'King Johnrod ', 'Devecais', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(145, '', 'G1124-25145', 'DelaCruz', 'Kent Cyrus ', 'Ablona', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(146, '', 'G1124-25146', 'Duran', 'Renzy  ', 'Badayos', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(147, '', 'G1124-25147', 'Dagunan', 'Ron Michael ', 'Lamigo', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(148, '', 'G1124-25148', 'Pescadera', 'Lance Cynille ', 'Arellano', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(149, '', 'G1124-25149', 'Quintila', 'Nile Lawrence ', 'Amistoso', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(150, '', 'G1124-25150', 'Rivera', 'Raytheon Ariff ', 'Biana', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(151, '', 'G1124-25151', 'Setera', 'John Michael ', 'Jamandre', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(152, '', 'G1124-25152', 'Alonzo', 'Bea Grace ', 'Espinosa', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(153, '', 'G1124-25153', 'Arbis', 'Krizel Joi ', 'Ballester', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(154, '', 'G1124-25154', 'Balerta', 'Melissa  ', 'Pura', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(155, '', 'G1124-25155', 'Bastol', 'Princess Kate ', 'Alarcon', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(156, '', 'G1124-25156', 'Bataga', 'Lynneth  ', 'Sta. Maria', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(157, '', 'G1124-25157', 'Betita', 'Ella Jane ', 'Arevalo', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(158, '', 'G1124-25158', 'Chan', 'Julliyah Anne ', 'De La Peña', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(159, '', 'G1124-25159', 'DeLaRosa', 'Mairah  ', 'Catalan', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(160, '', 'G1124-25160', 'DelaCruz', 'Ashlee  ', 'Belasa', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(161, '', 'G1124-25161', 'DelaCruz', 'Zairah Faith ', 'Beso', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(162, '', 'G1124-25162', 'Diel', 'Rachelle  ', 'Nedira', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(163, '', 'G1124-25163', 'Estolano', 'Angel Mae ', 'Rodriguez', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(164, '', 'G1124-25164', 'Guerra', 'Charmei Lyn ', 'Vista', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(165, '', 'G1124-25165', 'Lanuevo', 'Hairyline Faith ', 'Tablatin', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(166, '', 'G1124-25166', 'Lobiano', 'Mary Bless San', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(167, '', 'G1124-25167', 'Matulac', 'Princess Noelgie ', 'Valencia', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(168, '', 'G1124-25168', 'Noveno', 'Shane Mhiel ', 'Duma', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(169, '', 'G1124-25169', 'Reyes', 'Weegee  ', 'Demapanes', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(170, '', 'G1124-25170', 'Selguera', 'Shane  ', 'Lanuevo', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(171, '', 'G1124-25171', 'Tablatin', 'Goldilaika  ', 'Baltar', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(172, '', 'G1124-25172', 'Tolones', 'Phoebe  ', 'Garcia', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(173, '', 'G1124-25173', 'Trasmonte', 'Hope  ', 'Bañes', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(174, '', 'G1124-25174', 'Abeja', 'Jan Danielle ', 'Salazar', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(175, '', 'G1124-25175', 'Ambito', 'Christian Anthony ', 'Bacanto', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(176, '', 'G1124-25176', 'Brodeth', 'Miles Christian ', 'Dolor', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(177, '', 'G1124-25177', 'Bronda', 'Sean Ernest ', 'Cabales', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(178, '', 'G1124-25178', 'Castro', 'Ritz R June', 'Lamigo', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(179, '', 'G1124-25179', 'Compania', 'Christian  ', 'Ravela', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(180, '', 'G1124-25180', 'DeLeon', 'Gabriel Vince ', 'Tuang', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(181, '', 'G1124-25181', 'Francisco', 'John Felix ', 'Baradero', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(182, '', 'G1124-25182', 'Montermoso', 'Matthew  ', 'F.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(183, '', 'G1124-25183', 'Palmares', 'John Adrian ', 'Padilla', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(184, '', 'G1124-25184', 'Potato', 'John Blaze ', 'Bacoy', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(185, '', 'G1124-25185', 'Pradilla', 'Jiane Carlo ', 'Pielago', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(186, '', 'G1124-25186', 'Senesan', 'Joeluis Zayne ', 'Candelario', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(187, '', 'G1124-25187', 'Vargas', 'Joshua  ', 'Bañes', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(188, '', 'G1124-25188', 'Almonacid', 'Alethea Joy ', 'Matunding', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(189, '', 'G1124-25189', 'Bagsit', 'Je  ', 'De Los Santos', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(190, '', 'G1124-25190', 'Baldon', 'Ajay Mie ', 'Bendol', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(191, '', 'G1124-25191', 'Bandojo', 'Ashley Faith ', 'Garcia', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(192, '', 'G1124-25192', 'Bayot', 'Riselle Joy ', 'Muyco', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(193, '', 'G1124-25193', 'Caberoy', 'Lender Ann ', 'Tupaz', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(194, '', 'G1124-25194', 'Decolongon', 'Suzanne  ', 'Ricablanca', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(195, '', 'G1124-25195', 'DeLosSantos', 'Valerie Mei ', 'Villa', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(196, '', 'G1124-25196', 'Esteban', 'Merry Babe ', 'De Asis', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(197, '', 'G1124-25197', 'Fondevilla', 'Brianna Lorraine ', 'Bucani', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(198, '', 'G1124-25198', 'Gonzales', 'Yvette Graciel Marie', 'Sariego', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(199, '', 'G1124-25199', 'Jabines', 'Precious Grace ', 'Villaflores', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(200, '', 'G1124-25200', 'Leop', 'Jylle Kristine ', 'Atis', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(201, '', 'G1124-25201', 'Loyola', 'Lylibel  ', 'Panganiban', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(202, '', 'G1124-25202', 'Lugo', 'Princess Jorlyn ', 'Aguilar', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(203, '', 'G1124-25203', 'Maguigad', 'Jade Angel ', 'Caritan', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(204, '', 'G1124-25204', 'Pancho', 'Jessa  ', 'Pancho', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(205, '', 'G1124-25205', 'Pelagio', 'Jayra Helena ', 'Olvido', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(206, '', 'G1124-25206', 'Posadas', 'Alyssa Lorraine Gebbs', 'Salon', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(207, '', 'G1124-25207', 'Tilos', 'Yllana Jane ', 'Adorador', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(208, '', 'G1124-25208', 'Barzo', 'John Paul ', 'Inzon', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(209, '', 'G1124-25209', 'Bermejo', 'Julius Marc ', 'Delos Santos', '', 'Male', '2024-08-19', '1', '1', '', '', '', '', '', '', '', 0),
(210, '', 'G1124-25210', 'Blaza', 'Mark Jerrose ', 'Agustin', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(211, '', 'G1124-25211', 'Espolong', 'Kyrone Hans ', 'De La Cruz', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(212, '', 'G1124-25212', 'Estrada', 'Jeriboi  ', 'Ciudad', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(213, '', 'G1124-25213', 'Ganuelas', 'Hans Romualdo ', 'Rubio', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(214, '', 'G1124-25214', 'Matunding', 'Brylle Myckel ', 'De La Cruz', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(215, '', 'G1124-25215', 'MatundingJr.', 'Melandro  ', 'Elvira', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(216, '', 'G1124-25216', 'Montero', 'Kyle John ', 'Suan', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(217, '', 'G1124-25217', 'Oyanib', 'Ryle Nio ', 'Dilla', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(218, '', 'G1124-25218', 'Velarde', 'Paul Jaiross ', 'Basea', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(219, '', 'G1124-25219', 'VelascoJr.', 'Arthur  ', 'Solis', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(220, '', 'G1124-25220', 'Arizala', 'Cherlin Allison ', 'Cañeso', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(221, '', 'G1124-25221', 'Celiz', 'Maria Angelina Paula', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(222, '', 'G1124-25222', 'DeLaRosa', 'Kayeth Catherine ', 'Sabinay', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(223, '', 'G1124-25223', 'DelaRosa', 'Princess  ', 'Jardin', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(224, '', 'G1124-25224', 'Druelo', 'Cindy  ', 'Alajar', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(225, '', 'G1124-25225', 'Franco', 'Daniella Joy ', 'Aberilla', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(226, '', 'G1124-25226', 'Geguira', 'Aizl  ', 'Sazon', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(227, '', 'G1124-25227', 'Gonzales', 'Paula Unice ', 'Handa', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(228, '', 'G1124-25228', 'Legaspi', 'Diane Divine ', 'Babaran', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(229, '', 'G1124-25229', 'Mantong', 'Marjorie  ', 'David', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(230, '', 'G1124-25230', 'Ortiz', 'Sheena Marie ', 'Posadas', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(231, '', 'G1124-25231', 'Pedro', 'Princess Ernestine ', 'Bartolome', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(232, '', 'G1124-25232', 'Pentecostes', 'Angelica Zoe ', 'Eran', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(233, '', 'G1124-25233', 'Radoc', 'Keziah Elaine ', 'Juada', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(234, '', 'G1124-25234', 'Rodriguez', 'Richelle Ann ', 'Lastimozo', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(235, '', 'G1124-25235', 'Sabido', 'Kristine  ', 'Crispolon', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(236, '', 'G1124-25236', 'Solis', 'Shaila  ', 'Toriaga', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(237, '', 'G1224-25237', 'AclaroIII', 'Rene  ', 'J.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(238, '', 'G1224-25238', 'Baes', 'Kherck Jann ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(239, '', 'G1224-25239', 'Claro', 'Hanz Remel ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(240, '', 'G1224-25240', 'Demayo', 'Nero Naz ', 'P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(241, '', 'G1224-25241', 'Duremdes', 'Cyril Jan ', ' L.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(242, '', 'G1224-25242', 'Lamigo', 'Rilan Jan ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(243, '', 'G1224-25243', 'Marcial', 'Kyle Xavier ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(244, '', 'G1224-25244', 'Pagayonan', 'Sam Daniel ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(245, '', 'G1224-25245', 'Pajes', 'Jhon Fritz ', 'L.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(246, '', 'G1224-25246', 'Salandron', 'Marc Johanne ', 'V.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(247, '', 'G1224-25247', 'Wenceslao', 'Johan Lester ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(248, '', 'G1224-25248', 'Alecto', 'Glyzelle Ann ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(249, '', 'G1224-25249', 'Alpasan', 'Bea Jasmine ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(250, '', 'G1224-25250', 'Almanon', 'Angel Stephanie ', 'T.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(251, '', 'G1224-25251', 'Belen', 'Ma. Jielienne ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(252, '', 'G1224-25252', 'Bornales', 'Christine  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(253, '', 'G1224-25253', 'Casibual', 'Aira Anne ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(254, '', 'G1224-25254', 'Capanas', 'Ma. Ayelah Denise', 'T.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(255, '', 'G1224-25255', 'Conejar', 'Anne Jansen ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(256, '', 'G1224-25256', 'Decano', 'Katrice Anne ', 'M.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(257, '', 'G1224-25257', 'Diel', 'Jessa Mae ', 'N.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(258, '', 'G1224-25258', 'Forio', 'Angel  ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(259, '', 'G1224-25259', 'Gordon', 'Kharel  ', 'J.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(260, '', 'G1224-25260', 'Malunes', 'Danna Pearl ', 'E.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(261, '', 'G1224-25261', 'Maypa', 'Jhea Mayelle ', 'P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(262, '', 'G1224-25262', 'Orale', 'Mikaiah Jenaya ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(263, '', 'G1224-25263', 'Pasignahin', 'Rencel Grace ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(264, '', 'G1224-25264', 'Rosario', 'Braizelle Anne ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(265, '', 'G1224-25265', 'Temblor', 'Ella Jhen ', 'V.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(266, '', 'G1224-25266', 'AlpasanIII', 'Rolando  ', 'H.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(267, '', 'G1224-25267', 'Basea', 'Ken Jay ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(268, '', 'G1224-25268', 'Blancaflor', 'Deither  ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(269, '', 'G1224-25269', 'Bullos', 'Ronel Joseph ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(270, '', 'G1224-25270', 'Carumba', 'Mark JL ', 'V.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(271, '', 'G1224-25271', 'Chan', 'Cheron Niel ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(272, '', 'G1224-25272', 'Delgado', 'Heinrick  ', 'L.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(273, '', 'G1224-25273', 'Dondonay', 'Ace Zehdryx ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(274, '', 'G1224-25274', 'Lalican', 'Roniel Rae ', 'P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(275, '', 'G1224-25275', 'Panes', 'Gerald  ', 'C.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(276, '', 'G1224-25276', 'Patricio', 'Jeush Aaron ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(277, '', 'G1224-25277', 'Torres', 'Kerbie Jave ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(278, '', 'G1224-25278', 'Trayco', 'Restituto III ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(279, '', 'G1224-25279', 'Yamson', 'Vic Franzen ', 'G.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(280, '', 'G1224-25280', 'Ambito', 'Jazein  ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(281, '', 'G1224-25281', 'Barredo', 'Icah Shie ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(282, '', 'G1224-25282', 'Bersabal', 'Alyssa Kate ', 'S.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(283, '', 'G1224-25283', 'Betita', 'Athena Grace ', 'F.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(284, '', 'G1224-25284', 'Bueno', 'Maria Dominique ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(285, '', 'G1224-25285', 'Compania', 'Christine Nicole ', 'R.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(286, '', 'G1224-25286', 'DeLaCruz', 'Dian  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(287, '', 'G1224-25287', 'DelosSantos', 'Kim  ', 'M.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(288, '', 'G1224-25288', 'Donasco', 'Pauline  ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(289, '', 'G1224-25289', 'Fernandez', 'Rica  ', 'S.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(290, '', 'G1224-25290', 'Gabaldon', 'Mary Divine Grace', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(291, '', 'G1224-25291', 'Loraña', 'Joyce Ann ', 'F.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(292, '', 'G1224-25292', 'Magallanes', 'Chloe Shane ', 'E.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(293, '', 'G1224-25293', 'Magbanua', 'Kylie Joy ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(294, '', 'G1224-25294', 'Mombay', 'Ariane  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(295, '', 'G1224-25295', 'Pastor', 'Glydel Mae ', 'C.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(296, '', 'G1224-25296', 'Policarpio', 'Gillian  ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(297, '', 'G1224-25297', 'Tribunal', 'J  ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(298, '', 'G1224-25298', 'Bacsal', 'John Rix ', 'C.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(299, '', 'G1224-25299', 'Bajada', 'Erlu  ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(300, '', 'G1224-25300', 'Bermudes', 'Lance Stanley ', 'R.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(301, '', 'G1224-25301', 'Crispino', 'Justin  ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(302, '', 'G1224-25302', 'DelaCruz', 'Ryan Taft ', 'C.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(303, '', 'G1224-25303', 'Escobar', 'Kobe  ', 'S.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(304, '', 'G1224-25304', 'Esteban', 'Rommel John ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(305, '', 'G1224-25305', 'Manua', 'Jerick Elly ', 'A.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(306, '', 'G1224-25306', 'Matunding', 'Stephen Christian ', 'E.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(307, '', 'G1224-25307', 'Padilla', 'John Warren ', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(308, '', 'G1224-25308', 'Palmero', 'Jhomer  ', 'C.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(309, '', 'G1224-25309', 'Reballos', 'Xanthien  ', 'P.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(310, '', 'G1224-25310', 'Sazon', 'Novi  ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(311, '', 'G1224-25311', 'Arquintillo', 'Jhelian  ', 'T.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(312, '', 'G1224-25312', 'Baylon', 'Zoie Grace Alexandria', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(313, '', 'G1224-25313', 'Berina', 'Crizza Bless ', 'L.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(314, '', 'G1224-25314', 'Buenjemia', 'Azenith Shayne ', 'N.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(315, '', 'G1224-25315', 'Chavez', 'Carmela Lorraine ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(316, '', 'G1224-25316', 'Decano', 'Liv Catherine Leoj', 'R.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(317, '', 'G1224-25317', 'Gonzales', 'Angela Louise ', 'H.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(318, '', 'G1224-25318', 'Lobaton', 'Charmelle  ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(319, '', 'G1224-25319', 'Matucan', 'Pauleen  ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(320, '', 'G1224-25320', 'Rabanzo', 'Jhasmelle  ', 'R.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(321, '', 'G1224-25321', 'Rosario', 'Suzane Miles ', 'A.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(322, '', 'G1224-25322', 'Sontosidad', 'Acielle Kitz ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(323, '', 'G1224-25323', 'Suñga', 'Genlyn Rose ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(324, '', 'G1224-25324', 'Yu', 'Ma. Kaliya Stene', 'P.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(325, '', 'G1224-25325', 'Ortiz', 'Julien Ner ', 'M. ', '', 'Male', '2024-08-19', '1', '1', 'Poblacion, Carles, Iloilo', '', '', '', '', '', '', 0),
(326, '', 'G1224-25326', 'Brown', 'Jasmine  ', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(327, '', 'G1224-25327', 'Buxmann', 'Chantelle  ', 'I.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(328, '', 'G1224-25328', 'DelaCruz', 'Ronnel Jhon ', 'B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(329, '', 'G1224-25329', 'Andigan', 'Precious Lormi Joy', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(330, '', 'G1224-25330', 'DelaRosa', 'Karly  ', 'S.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(331, '', 'G1224-25331', 'Jimenea', 'Quino Rey ', 'F.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(332, '', 'G1224-25332', 'Antonio', 'Melchisedec  ', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(333, '', 'G1224-25333', 'Tomogda', 'Steven Kurt Ydison', '', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(334, '', 'G1224-25334', 'Ferrer', 'Miara Angel ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(335, '', 'G1224-25335', 'Mansueto', 'Ella Trish ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(336, '', 'G1224-25336', 'DelaCruz', 'Ashlee  ', 'B.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(337, '', 'G1224-25337', 'Banico', 'Kaye Yvone ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(338, '', 'G1224-25338', 'Brown', 'Samantha  ', '', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(339, '', 'G1224-25339', 'Mosqueda', 'Bernha Mae ', 'D.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(340, '', 'G1224-25340', 'Dumancas', 'Khenjie  ', 'M.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(341, '', 'G1224-25341', 'Espinosa', 'Niel Jason ', 'S', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(342, '', 'G1224-25342', 'Supresensia', 'Vince Louie ', 'A', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(343, '', 'G1224-25343', 'Valenzuela', 'Eunice  ', ' L.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(344, '', 'G1224-25344', 'DeLaCruz', 'Yzerval  ', ' L', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 0),
(345, '', 'G1224-25345', 'Lobaton', 'Kirk Irvin ', 'F.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(346, '', 'G1224-25346', 'Ganadores', 'Eleon Jireh ', ' B.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(347, '', 'G1224-25347', 'Tingson', 'Vincent Luis ', 'D.', '', 'Male', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(348, '', 'G1224-25348', 'Castro', 'Kate Zhaicy ', 'G.', '', 'Female', '0000-00-00', '1', '1', '', '', '', '', '', '', '', 1),
(350, '', '116349140543', 'AMANTILLO', 'THEA MAE', 'BONILLA', '', 'Female', '2024-08-19', '16', '0', '', 'Christianity', '', '', '', '', '', 1),
(351, '', '', 'BUENJEMIA', 'KEAN ANDREW', 'BONSO', '', 'Male', '2024-08-19', '18', '0', 'Quiazan Lopez, Batad, Iloilo', 'Christianity', '', '', '', '', '', 0),
(352, '', '113472130063', 'Ferrer', 'Miara Angel', 'Garcia', '', 'Female', '2024-08-19', '16', '0', '', 'Christianity', '', '', '', '', '', 1),
(353, '', '440005150012', 'Bensurto', 'Elyzza', 'Nuñez', '', 'Female', '2024-08-19', '17', '0', 'Bancal, Carles, Iloilo', 'Christianity', '', '', '', '', '', 0),
(354, '', '', 'asdasd', 'sda', 'dasd', 'dasd', 'Female', '2024-09-16', '0', '0', 'sdasd', 'asd', '', '', '', '', '', 1),
(355, '', '', 'qwe', 'eqe', 'eqeqwqeqeqwe', 'weqew', 'Female', '2024-09-16', '0', '0', 'adasd', 'asd', '', '', '', '', '', 1),
(356, '', '', '1231231233123', '32131231313', '3123131', '', 'Female', '2024-09-19', '1', '0', '23123', '123123123', '', '', '', '', '', 1),
(358, '', '', 'asdasd', 'asdasd', 'sdas', 'asdas', 'Female', '2024-09-19', '27', '0', 'sdasd', 'asd', '', '', '', 'asdasd', '', 1),
(359, '', '', 'asdasd', 'dasdasd', 'dasd', 'dasdasd', 'Female', '2024-09-23', '27', '0', 'asda', 'aasd', 'asd', 'dasdasdasda', 'dasd', '', 'dasd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentenrollsubject`
--

CREATE TABLE `studentenrollsubject` (
  `SR_ID` varchar(90) NOT NULL,
  `subject_Code` varchar(90) NOT NULL,
  `Ref` int(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentenrollsubject`
--

INSERT INTO `studentenrollsubject` (`SR_ID`, `subject_Code`, `Ref`) VALUES
('SY24250001', '6', 1),
('SY24250001', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentregister`
--

CREATE TABLE `studentregister` (
  `SR_ID` varchar(90) NOT NULL,
  `Stud_ID` varchar(90) NOT NULL,
  `academic_Year` varchar(90) NOT NULL,
  `grade_Level` varchar(90) NOT NULL,
  `DOR` date NOT NULL,
  `NOS` varchar(90) NOT NULL,
  `NOSAR` varchar(90) NOT NULL,
  `Strand` varchar(90) NOT NULL,
  `Status` varchar(90) NOT NULL,
  `date_entered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `studentregister`
--

INSERT INTO `studentregister` (`SR_ID`, `Stud_ID`, `academic_Year`, `grade_Level`, `DOR`, `NOS`, `NOSAR`, `Strand`, `Status`, `date_entered`) VALUES
('SY24250001', '1', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250002', '2', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250003', '3', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250004', '4', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250005', '5', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250006', '6', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250007', '7', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250008', '8', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250009', '9', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250010', '10', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250011', '11', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250012', '12', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250013', '13', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250014', '14', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250015', '15', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250016', '16', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250017', '17', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250018', '18', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250019', '19', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250020', '20', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250021', '21', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250022', '22', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250023', '23', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250024', '24', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250025', '25', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250026', '26', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250027', '27', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250028', '28', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250029', '29', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250030', '30', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250031', '31', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250032', '32', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250033', '33', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250034', '34', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250035', '35', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250036', '36', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250037', '37', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250038', '38', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250039', '39', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250040', '40', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250041', '41', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250042', '42', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250043', '43', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250044', '44', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250045', '45', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250046', '46', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250047', '47', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250048', '48', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250049', '49', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250050', '50', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250051', '51', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250052', '52', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250053', '53', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250054', '54', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250055', '55', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250056', '56', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250057', '57', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250058', '58', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250059', '59', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250060', '60', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250061', '61', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250062', '62', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250063', '63', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250064', '64', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250065', '65', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250066', '66', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250067', '67', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250068', '68', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250069', '69', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250070', '70', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250071', '71', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250072', '72', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250073', '73', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250074', '74', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250075', '75', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250076', '76', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250077', '77', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250078', '78', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250079', '79', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250080', '80', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250081', '81', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250082', '82', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250083', '83', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250084', '84', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250085', '85', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250086', '86', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250087', '87', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250088', '88', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250089', '89', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250090', '90', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250091', '91', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250092', '92', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250093', '93', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250094', '94', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250095', '95', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250096', '96', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250097', '97', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250098', '98', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250099', '99', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250100', '100', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250101', '101', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250102', '102', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250103', '103', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250104', '104', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250105', '105', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250106', '106', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250107', '107', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250108', '108', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250109', '109', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250110', '110', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250111', '111', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250112', '112', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250113', '113', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250114', '114', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250115', '115', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250116', '116', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250117', '117', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250118', '118', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250119', '119', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250120', '120', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250121', '121', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250122', '122', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250123', '123', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250124', '124', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250125', '125', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250126', '126', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250127', '127', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250128', '128', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250129', '129', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250130', '130', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250131', '131', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250132', '132', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250133', '133', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250134', '134', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250135', '135', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250136', '136', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250137', '137', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250138', '138', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250139', '139', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250140', '140', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250141', '141', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250142', '142', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250143', '143', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250144', '144', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250145', '145', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250146', '146', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250147', '147', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250148', '148', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250149', '149', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250150', '150', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250151', '151', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250152', '152', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250153', '153', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250154', '154', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250155', '155', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250156', '156', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250157', '157', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250158', '158', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250159', '159', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250160', '160', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250161', '161', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250162', '162', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250163', '163', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250164', '164', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250165', '165', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250166', '166', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250167', '167', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250168', '168', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250169', '169', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250170', '170', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250171', '171', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250172', '172', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250173', '173', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250174', '174', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250175', '175', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250176', '176', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250177', '177', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250178', '178', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250179', '179', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250180', '180', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250181', '181', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250182', '182', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250183', '183', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250184', '184', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250185', '185', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250186', '186', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250187', '187', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250188', '188', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250189', '189', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250190', '190', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250191', '191', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250192', '192', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250193', '193', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250194', '194', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250195', '195', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250196', '196', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250197', '197', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250198', '198', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250199', '199', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250200', '200', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250201', '201', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250202', '202', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250203', '203', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250204', '204', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250205', '205', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250206', '206', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250207', '207', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250208', '208', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250209', '209', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250210', '210', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250211', '211', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250212', '212', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HE', '', '2024-06-01'),
('SY24250213', '213', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250214', '214', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250215', '215', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250216', '216', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250217', '217', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250218', '218', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250219', '219', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250220', '220', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250221', '221', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250222', '222', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HE', '', '2024-06-01'),
('SY24250223', '223', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HE', '', '2024-06-01'),
('SY24250224', '224', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250225', '225', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250226', '226', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250227', '227', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250228', '228', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250229', '229', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HE', '', '2024-06-01'),
('SY24250230', '230', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250231', '231', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250232', '232', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HE', '', '2024-06-01'),
('SY24250233', '233', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250234', '234', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250235', '235', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250236', '236', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250237', '237', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250238', '238', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250239', '239', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250240', '240', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250241', '241', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250242', '242', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250243', '243', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250244', '244', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250245', '245', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250246', '246', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250247', '247', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250248', '248', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250249', '249', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250250', '250', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250251', '251', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250252', '252', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250253', '253', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250254', '254', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250255', '255', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250256', '256', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250257', '257', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250258', '258', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250259', '259', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250260', '260', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250261', '261', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250262', '262', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250263', '263', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250264', '264', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250265', '265', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250266', '266', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250267', '267', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250268', '268', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250269', '269', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250270', '270', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250271', '271', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250272', '272', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250273', '273', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250274', '274', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250275', '275', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250276', '276', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250277', '277', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250278', '278', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250279', '279', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250280', '280', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250281', '281', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250282', '282', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250283', '283', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250284', '284', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250285', '285', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250286', '286', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250287', '287', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250288', '288', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250289', '289', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250290', '290', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250291', '291', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250292', '292', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250293', '293', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250294', '294', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250295', '295', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250296', '296', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250297', '297', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250298', '298', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250299', '299', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250300', '300', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250301', '301', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250302', '302', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250303', '303', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250304', '304', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250305', '305', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250306', '306', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250307', '307', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250308', '308', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250309', '309', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250310', '310', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250311', '311', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250312', '312', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250313', '313', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250314', '314', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250315', '315', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250316', '316', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250317', '317', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'ICT', '', '2024-06-01'),
('SY24250318', '318', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250319', '319', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250320', '320', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250321', '321', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250322', '322', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250323', '323', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250324', '324', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250325', '325', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250326', '326', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250327', '327', 'SY. 2024-2025', 'Grade 8-Chrysolite', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250328', '328', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250329', '329', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250330', '330', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250331', '331', 'SY. 2024-2025', 'Grade 9-Emerald', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250332', '332', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250333', '333', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-07-15', '', '', '', '', '2024-06-01'),
('SY24250334', '334', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250335', '335', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250336', '336', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250337', '337', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250338', '338', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250339', '339', 'SY. 2024-2025', 'Grade 11-Jasper', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250340', '340', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250341', '341', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250342', '342', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250343', '343', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250344', '344', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250345', '345', 'SY. 2024-2025', 'Grade 12-Onyx', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250346', '346', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250347', '347', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250348', '348', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'STEM', '', '2024-06-01'),
('SY24250349', '349', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-07-15', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250350', '349', 'SY. 2024-2025', 'Grade 7-Amethyst', '2024-08-04', '', '', '', '', '2024-06-01'),
('SY24250351', '350', 'SY. 2024-2025', 'Grade 11-Chalcedony', '2024-08-19', '', '', 'STEM', '', '2024-06-01'),
('SY24250352', '351', 'SY. 2024-2025', 'Grade 12-Sapphire', '2024-08-19', '', '', 'STEM', '', '2024-06-01'),
('SY24250353', '352', 'SY. 2024-2025', 'Grade 11-Beryl', '2024-08-19', '', '', 'STEM', '', '2024-06-01'),
('SY24250354', '353', 'SY. 2024-2025', 'Grade 12-Pearl', '2024-08-19', '', '', 'HUMSS', '', '2024-06-01'),
('SY24250355', '354', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-09-16', '', '', '', '', '2024-06-01'),
('SY24250356', '355', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-09-16', '', '', '', '', '2024-06-01'),
('SY24250357', '356', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-09-19', '', '', 'STEM', '', '2024-06-01'),
('SY24250358', '358', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-09-19', '', '', '', '', '2024-06-01'),
('SY24250360', '359', 'SY. 2024-2025', 'Grade 10-Sardonyx', '2024-09-23', '', '', '', '', '2024-06-01'),
('SY24250361', '348', '2025-2026', 'Grade 1', '2024-09-23', '', '', '', '', '2025-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Ref` int(11) NOT NULL,
  `subject_Code` varchar(90) NOT NULL,
  `sub_Name` varchar(90) NOT NULL,
  `sub_Time` varchar(90) NOT NULL,
  `sub_Room` varchar(90) NOT NULL,
  `teacher_ID` varchar(90) NOT NULL,
  `grade_Level` varchar(90) NOT NULL,
  `academic_Year` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Ref`, `subject_Code`, `sub_Name`, `sub_Time`, `sub_Room`, `teacher_ID`, `grade_Level`, `academic_Year`) VALUES
(1, 'E01', 'English', '8-9', '1', 'NT202406', 'Grade 7-Amethyst', 'SY. 2024-2025'),
(2, 'PE1', 'PE', '12', '1', 'NT202403', '', 'SY. 2024-2025'),
(3, 'ENG', 'English', '8', '1', 'NT202401', 'Grade 7-Amethyst', 'SY. 2024-2025'),
(4, 'Soc', 'Soc', '9', '2', 'NT202402', 'Grade 7-Amethyst', 'SY. 2024-2025'),
(5, 'Math', 'Math', '9', '3', 'NT202403', 'Grade 7-Amethyst', 'SY. 2024-2025'),
(6, 'Math', 'Math', '9', '10', 'NT202404', 'Grade 8-Chrysolite', 'SY. 2024-2025');

-- --------------------------------------------------------

--
-- Table structure for table `systemaccount`
--

CREATE TABLE `systemaccount` (
  `SA_No` int(90) NOT NULL,
  `ID` varchar(90) NOT NULL,
  `name` varchar(90) NOT NULL,
  `email_Address` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL,
  `username` varchar(90) NOT NULL,
  `contact_No` varchar(90) NOT NULL,
  `position` varchar(90) NOT NULL,
  `Picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `systemaccount`
--

INSERT INTO `systemaccount` (`SA_No`, `ID`, `name`, `email_Address`, `password`, `username`, `contact_No`, `position`, `Picture`) VALUES
(2, '1', 'Jason', 'bob@gmail.com', 'bobo', 'bobo', '09970672213', 'Registrar', '');
INSERT INTO `systemaccount` (`SA_No`, `ID`, `name`, `email_Address`, `password`, `username`, `contact_No`, `position`, `Picture`) VALUES
(3, '123', 'Admin', '', 'Admin', 'Admin', '0', 'Admin', 0xffd8ffe000104a46494600010101004800480000ffee000e41646f626500640000000001ffe11fb64578696600004d4d002a00000008000c0100000300000001028000000101000300000001029a000001020003000000030000009e010600030000000100020000011200030000000100010000011500030000000100030000011a000500000001000000a4011b000500000001000000ac012800030000000100020000013100020000001f000000b40132000200000014000000d48769000400000001000000e8000001140008000800080048000000010000004800000001000041646f62652050686f746f73686f702032342e32202857696e646f7773290000323032343a30373a31312031333a35323a3531000003900000070000000430323331a00200040000000100000280a0030004000000010000029a0000000000000006010300030000000100060000011a00050000000100000162011b0005000000010000016a012800030000000100020000020100040000000100000172020200040000000100001e3c0000000000000048000000010000004800000001ffd8ffed000c41646f62655f434d0001ffee000e41646f626500648000000001ffdb0084000c08080809080c09090c110b0a0b11150f0c0c0f1518131315131318110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010d0b0b0d0e0d100e0e10140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc000110800a0009a03012200021101031101ffdd0004000affc4013f0000010501010101010100000000000000030001020405060708090a0b0100010501010101010100000000000000010002030405060708090a0b1000010401030204020507060805030c33010002110304211231054151611322718132061491a1b14223241552c16233347282d14307259253f0e1f163733516a2b283264493546445c2a3743617d255e265f2b384c3d375e3f3462794a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f637475767778797a7b7c7d7e7f711000202010204040304050607070605350100021103213112044151617122130532819114a1b14223c152d1f0332462e1728292435315637334f1250616a2b283072635c2d2449354a317644555367465e2f2b384c3d375e3f34694a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f62737475767778797a7b7c7ffda000c03010002110311003f00f554924925292492494a4924925292492494a4924925292492494a4924925292492494a4924925292492494fffd0f5549249253cdd5f5bb25f939b1d2326ec0c2c97e1bb2714b6eb3d4acb058fb3047a791e97e93d9f67fb5bff00e0d8b4fa67d60e8bd54966065d775ac9df44ecb9bb4ed77ab8b6fa79157bbfd254b80eb965f47d5afac365363eab2bfac4e736cadc58e13f66734b5ec2d737e9ace39d976538b4754cbe9fd66e7635578c6ea6d38d90c65cdaf2ebaf07ae7e899eb7a76377597e5d567a9f98a7f6411634d6bf05bc5ddf6149799d5f596ee976b199199d47a039ce2e14754a8f52c2788f6d5899ecf4f3dd57fc2fda3d35d174efacfd73218c35e1e175967f85bfa56630968edbb133bd0d8efe47dad4671c87f2fda9b7aa4973effad9756fd8fe83d58387eed153c7f9f564d8cffa4a6eeb7d7f2360c0e856d6d783baeea17d38ec67817578cfcfc977fdb2c4384ff22ab77557a7a8f4fc8c9b7128c9a6dc9c7fe7e863dae7b3fe36b69df5ff006d707d67eb1e0d4d23eb0f5d398e81bfa47449aea9f757657939fea7da1ccf77bd9666617fe17595ff0038b10558eeea7f57ace8dd1c98e93d43043e9c8a1d631dbedab2b6d2dc9f5ff9dd8dfe7bfd0f504f186445ff002ff07f795c41f594972bd2faef58b2817613e8facf81b803918cf6636656d3b9fb72b0aef4f16cb58dd9fe1701ff00f7555eabeb760166ec9c3ea386f920d76e0e438e9fcbc5ab26977f62d4c312136ee24b09df5b2a75acab0fa5f53cb2fe1cdc47d2c1fd6b7a8fd8ab6acaea7f5c3a9e28fd75fd3ba034388b1b9571cdcadbf98f674ee9fe9b7ff66ac48424760ab7b258d99f5b3a2635cec5aad767e6b413f63c161c9ba5ba39af6e3ef651ff00a12fa570995d5aeea78c6f7559bd671cb40766753b99d2fa5c877b6cab1a97635798cff81c8bedb963f5aea9d4ddd12c7e2755a1b875dc71edc0e934bf131586eaefb5be9dc598f6e631edc5b3d56d9fa3fe5daa586024d12b4c9f53e95d772f37aa6474fcbe9efc07554d7934fa96b2c7babb1f6d3fa6ae8df5d166ea3e83722f5b2b9de8cc77edf73cebb7a3e034b899326cceff00c82e89452001d3b05c14924926a9ffd1f5549249253e73f5b2a0dfabbf5a1a046ceaf45847f5ebe9a67fe9ae23af01f68c23d9fd2fa79fbb1d95ff00df176ff5ade5f87f5db180fe6ede9d903e0e662b5c7ff651713d6c8733a459fbfd2f181ffadbf271bff44abdcbd802fbfe708498b26c7f9756b60f55ea5d3daeaf0b25f4d2f9df4021d4ba46d3eae25c2cc5b3fb74a31cfe9790776774aa45b02327a7bdd876023f3bd1db9781ff006de250b3d2560c2275afb3d2c6244757799d5a810cc7fac1d730aa03f9b78f5803fba2cc6ea18fbbff0061945e70ba95c28c9ea9d63ad6d1bcd2da3803f3defccceca6d35fef5df65d8c43e81f56f2bac5d5b5ad7fa76170adac86bacd840b9c2d7b6c66362d1b9adc9cdb2bb7d37fe831b1f3333f565ea5d17ea474bc1c763732aaf25e0eef4036315ae1c3d98b63adfb45cdff00b99d42ccbccfdcb69aff0040ab65c9081a04997f83ff004b8592209d4be7981839bb5afe81d3e9c77b200ccfd2753c86b81266bc9c5c6bfa561bff00e228a6f67fa544afeaefd70c4b6ccb61c8b2cc91fad0c8a2ebdb70023666d2f6e67dabf91eb53fa3ff0005e9af57eabd5703a3e03f3b3ac1563d5009009249f6b2baeb6fb9ef7bbe8b5ab98e9ffe353eaf65e6331afab230996b8359917867a609f6b7d77536dbe86e77e7bbf44cff000b6314432e420911b1d74e2ffa4b8c46965e19dd3f1aacb6bc5795d0fa93621d81bec1df7babe9f95660f5cc6aff00e2eccca558abeb1757a87a75fd7206b1a6e7e364bdfa78fab836bb77fe842f5ecbc2c4cea0e3e6535e450efa555ad0f6923f90f0e6ae17eb57f8baaecadf99d283ec7b753413bed000ff000175aedf95ff0085332ddfff0070f3317fa3dc619a323593edd25ff4f8946246cf2399d6aabc58cceeb7d5fab0708f4aa8c2a1c7f96ebadc976dff00da72a2ceb15e23a7a474fc5e9e43839b716fdab20408fe959fead75bbff0ae2632a37d16e3d86bb441e41130e125bbd9b831df49ae67bdbea5566fa6eaebbabb2b4356c4235dc7fcdff163e9623397924cac9c9ccbbed199759957c47ab73dd63e3c03ec2edadfeaab85bff62598ef1ea340fbb1734ffdfd67ad2b04fd54654dfa593d55cd1fd8c6a99ffbb88cb4000ee151dc93d9f62e96dd9f58332aef574ee9ec3f1167525b6b13a41dff00593af3ff00d1bb12807fab4fda3ff76d6dacc96ff41ff45b014924926a9fffd2f5549249253c47d68ae9397f59f1606fcae895657c4e3bb359ff00a4579bf51613d33a25fc87e2df57fdb59996e8ff0033258bd67add143beb560d4f1eeeadd3b3b009fea9c6c9603fd8fb42f2577a967d57e9cf7718d99978e7c47a956165367fb6dc8577963a0f31bff7671ffb9639f5f2682b5d3708e765b6921fe901bee3509b3602d66ca07fdc9c8b6cab1313feede450aaaedbfc5a74c6e4f5065cf121af7de64488c60cab19bfd57e5e7db91ff1dd369fdc53e59f0c09ebd18a02cb9ff5830beb37d57eab4660b4e2873195e1db8a4fa0c6b06efd9a1b60dafae876ef664b3f5df7e6ff003f6debabfab3fe3430f2b66275e0dc2c83a3730698ef3303d4ddb9d86ed7f3ff0057ff0086aff9b5da750e9d85d4b0ecc2cea9b7e35c36d95bf83fda1ee63daef757633f495bd791751ff17dd62aeb7674de93b7a8500822f2f635d4b5c1aef4ba90ff00037358f6bd9b6bfd72afd3515ff395555232c7923c393d3288d26ca44a26c6be0f63fe34f072f37eafd19388d75d4e1de322f6b06efd19aecabed10dfa4da7d4f7edff0003ea5bf98bc9e8a2eceb9b8584dfb464e47e8eaaab825ce23fea7f7ecfa15b17ac7d5bfa97f593a4e2371ddf581f451c9c5c6a9963184ccfd9efcf6dde9b5dbbfc16352b4313a05cf17dd83d6b2e9c9363ebb9ceab09d2f612c3ea3460d7bf77f39f4d0866f6e2622a5da5fc5263c46f674727aa60fd5ee9143fabe535829ad951b1d25d658d6869f46b1fa4bac7b86edac6af32facffe31faa7570fc6c0ddd37a791ee83191609ff0d730feaecdbfe0a877fc6643ff009b5a3f597fc5d7d6bcac87678cf6f5aba222cfd05a1b3fcd63d6e73f0d95b7f71966329fd43fa8d5dd69ea3d61ad2fc6780ce9ee21ce63c43c3f3eb13b2cdae6d94e2bff00e36e4a031423c6489cbf7507889a1a3cf8faa5d61bf563f6a5f5fa78eeb1a71a9708b1a2cf67da1d3f431f2edf468f476ffa1cff00d1d75dbeaf3c0c895f4465e25199897625eddd4e431d55ade25af1b1ff00f45cbc03a9e35989d42fc7b7f9dadee6d9fd7697577ffecc576a9b96ca66640ff782dc91aafb1acb730317d5c7fab98eee333ab5ce8fe4efe998b3ff008158b0d75bf57719d77d60faa188fd0578f66647f5eeea198c3fda6d38ea6ca685f6b3ff00324b61bfd8fa47d5eb3d7caeb7781ed7f51731a7c7d1c7c4c377fe0b8f62da587f535ecbfa27db58dda33b2b2f2879b6dc9beca9dff6cfa6b7166cbe623b69f63602924924d53fffd3f554924925383f5a4be8bfa267b1a1c71ba9555d8e3dabca65bd39ff00f826554bcb7a9621c7afeb274f0768c0ea54e55759ff0046f7e561177f999b84bd63eb861bf37eacf51a6addeb3693753b7e97ab4119746dff00af52c5e7bf582baf33eb4dd650ddf57d69e8feb63b4e87d4150c9c568fe5fafd3317fede56797957f2fdc3c5ff007eb261e297a8ff008abad8319ef1ab8e2d467c0bb2fab6f1ff0081d6bcb410e01c382247cd7a0ff8adea0d6659c5710ddf5db57c4b1e33b1dbfd67372ba9ff00ec3a9f9a04e23e06d8f1fccf47f5cf3b2e8ea3d2f0aab4b31b3e9ea15e5d4008b1acc7f56b991bdbe9bfe8fa6e5e5b96336dea5896618bacce38586e63a8de6f2463545ce63a8fd3fb58d5e97f5e3fe5ce81fd4ea5ff00b6a5713f573331f07eb8f47cbca71652cc2c76b9cd6b9e65f85e9b1a2ba9afb1db9eefcd62830e80902fd04f9fa97cff006b6fa7fd76fae9d0c56fead5646474f0e6b1e7371dec7c7d27329cb7371f7e4398d77a7ebfaeb4323ae758e8dd34750b9fbb272edc9bf331ea76e6519d69c7fd9d859fe91664534d5815dbfa1f53f4995ecc95a5f5abaff46eb3474e1d3327d4cfc4ea3464e1e35b55f4b322da9db7ec5ebdd4b6aaacbbd5fd1becff00a8426e65d8df56737a465e0dd5f4aaebbd96e775063ea7345c5fe97da98d6d9f69cafb65ecf572fa7bb29977f4bfd15ffa04d91068f0006fd51dac276bd6de4facf55faf7d49969ea4dea15e33438d95578f6e3d0d60f73fd5f4eb66ead8dffb936d885f5773327069c7bb12c353e83d5efa8360b45b574ea1d4da6a74d4ff004e7f3d8bbbeb1f5bfeadff00cd4c8c16673eeb32702ec7c5b6ca6f67aef153b1f732db696d6f73ecfa7ef5e7dd27fa1b01ed575aff00e26d0a589e2810602201adbfab246d21adbecdf572fbb27eaf74cc9bde6cbafc4a2db6c3cb9efad8fb1e7face72f1dfaeac6b3eb36706991eabccf9bacb1eeff00a6e5ebdf55881f55ba392607d831a4ff00d6ab5e2bd7b31b9dd5f2b2d9f42eb1f6341fddb1efc967fe0773137951fac9780565f9439ef76d639dfba09fb9773d189c0facfd5b30fe93fe6df461534f616d18f8f4399fdab6acc5c9f45c36e7758c1c3b06eaaec8ac5c38fd135deae4ba7f918f5dae5d47d5f69ea3d17a9e5dbb9aff00ad3d628c3860d4566cfb7e5ff63ecf765b3feb6a7ce74af0aff1cffe8125b8c3e95f57709d81d07a7613dbb6cc7c5a6bb0447bdac68b7ff04dcb45249671d5994924924a7fffd4f55492492529793fd61a6ee97d2ba7e5d6d73aff00aa5d51f890fd4bb1dce667f4f739cdf77a7f67fb1e3ffd757ac2e47eb3747193d43270c340abeb1e19a03a0c0cec2dd9780fb1e3fd251eaffec029314aa5aedfcb8bfe6a24347cabac61d783d572f129d71ebb49c620ccd1646461bf77f2b16da51beaff0052b7a6f52aaeade18edcd2c73ced636c61fd03ad7fe6536efbb0b25ffe0f133722c4d9d395d27a7e79045b8e0f4ccc690016ba8fd36039ff009fefc2b1f8bef6ff00de72ced0e875056881c50e13fdd2c074958f37d4feb3e753d433feae66501c2bb6aea5ec78daf639b8ae65b4dccff077d16b5f4dd5fe65b5ae12318e5d62e2c16fecec52c65a5cd63aa387195ad5f9ed66cfa6ef47d1fb4ff87f4513a3f5363f2718655b6576e339db1f59a87aa2c60c47ff004eaeec4fb67d99ada3f58fd5ba8e3fe86eb68cca6abb2bbbc1fab0ccfc56fecdeb2db71b1de5ada6cc60ef46c68f755f643650ce9f73377be96e2e35aa99fd5687b57fcee265be2d9e4f0855fb5303d4059399d3ccdde97afbc171a1b5b70cfa1f6275ce7fd877ff00de77fc0b3097a27d7bc6bb27ea9f50c7c766fb6d6b1ad6c81a9b6bfa4e76d6318dfcf7bfe82e72dff179978999879efea54b713a7e4d794e6586d656d6b2c6df739adbefcaaa97bfddfe8d8ba7fac82aeadd1727030b3e8c7c9b8b05571b00d9632eac360d4ef53d4f5dbe8b367fda851ce438a26276f0d9406843e7785d36ec9c1c1aaec3675865f902bbadc6b5cd6d5454caf1713345957a3eabfd175b57da327f54abec9f63c8a7eddeb2cbc26d2c63d98f67ad433f6f329b870f6370296d7670cfa6c1bfe82ee2aff16f96fb9d939b9d8f7e438069b2cc637181f4582bb6f66332b647e8ebaf199e9aa9f58703a7f4aadedea5d5accbcbf45f50a2b6540d755cc34d9bafcb67527f4bc7bd8ef4ff0056fd6327f9bc3a726efd1a9064d681bbe82f72aaeb4d8eabd7eae99f503a561b5dface6f4ec76168e5b4fa5532f7ff0025d76efb251ff0b7faff00cde35cbcc1ce73dce7bfe93c973a389277185673f3edcb3530bdceab1eb653517e8e2da9be8d3b98d96d6daebf6d34ff0081fd27f3b939197917d55670e2e0049f9a46cb14e567c9d1e945b8f8bd53a93a3f56c538f49983eb669fb1b76c7d2d983fb42eff00adaf45faabd31f4e4f41e9ce6bda3a4e059d472b80dfb4e7975545360fdfa69fda2b8ce93d28e7ddd0feaf96cfed0b8f54ea0dd34a20d7895b9ccdce6fea145f6b37ff00e5a54bd3bea9b7ed55e775e7361dd6320d949da5aefb2d23ec9d3f707ffa4aaafb5ffe85a83989ff002ff983ff005232403bc92492a8c8a49249253fffd5f5549249252965fd63e9f7e774b7fd90039f88e6e5e0131fd2283ead4cd4b36b323dd8b6fbbf99bec5a89240d1b53e3fd67171adeb2e38ce0ce97f5c69664e1d8fe2bcd045b4faa5a2ed8f6e73fecf95b3f9aabaa5dfe89722e6bd8e732c63abb184b5f5b810e6b9a76bd8f69fa2f63bdae5e97f5b3a352ffb6f40b640cc36754e82f82e8c81ff002a74c0d6bdd6feb0fbbed15ecab67eb96ffdc55899df53ba8648c7eadd72fa7a17da76559d6e4c383af82d6e586e33fd1abed74b196657daafc6fd77d5ff004eaf62cd1111c46bfb3e53ff0072c53813b3c7792d1e9dd7ba974fb196536389ada18c7871658d637e8d4cc867b9f4323d98b94ccbc2ff00baabaeabea27d5ac4aef7f50c8cfca7e0b4db9adac574b6ba4596d3f6a7d5efbdd4d8dc5c8c8afd0badbfecd5ff33bdf532cb38fd17ea76fa857d198e9c9af16c764e55af735d6baca1967a05d6faadfb563d98df998f65bfccdf67a777a6a7cce23a1065f440c721d69ceaffc6564dd8aec4ea0cf5e9b5a5968b185af2d3f481cbc0b69ff00c0fa6d2a76fd77e84680c674ec69169bc00ec9745a5ecc8ded6bb171bfc3555fb7d7ff0083fe6969b59d15b8d55b5fd5ac1636d66e739f4b2d0d733369e9995ee736bfd1d545df6afd2be8ff00b6fd5568e174df5eea5bf57302e736cdb8c062b2b17358f70b8557385957a8ea3d37d3f68fb3d5eabffc2637a9974c06787f7243eac9c32eff0083cbf54ff193d6b318594bdd4b08822a68c79febbdb6e665ff00ec365e0ae56fc9bf21d36ba7dc5e1a346873be9bf6fe75afff00097d9ea645bfe16db17a4f55e99f566be978fd41fd0a86b6e7663eca7d2b71ec14e3539b95535db7d3b31af7fd971d96ef67e7dbe9ff008355737eacfd4b736c7b716dc6a71aeab1efb71b2dcf21f6d55e57ad4d591eb32ec4a9b77e92eff474e55fe8fa58ea4c79f0c76811e3bad94247abe76ad74cc16e7e6368b5c6bc56b5d7665c013e9e3543d4cab7dad7fbfd2fd1d3fbf916535aeaacfa87d32f25b83d47231afdc18cc3cca05d6b9fe853d42c6ff93ddbf6e3d3955577dbe8fa6cc8fd0ffa2f502dfa99d62be975538a19918dd56dadd99d571a2da998cd2d7e3d74d7edcd733d5df9997fabecf5a8c3abfc1fa8a6fbc63234951f1583190750dae814e566e366f560dfb3e7fd68bff65f4d6360fa3883fa7dd50dd4fe8b0b0b1fd0ab67f85c1a7fd32f53c7c7a71b1eac6c760ae9a18daeaac70d6306c631bfd5685cdfd55c5c7caca7753c669674bc0acf4ce8ac3deaa9c199d9bf49fefcbcaa7d1dfecb7d1c4ff865d42a5965c5266034524924a34a92492494ff00ffd6f55492492529255f3732bc2a0dd635ce121a036352ed1b2f796555ff005edb2bad676765b68697f57ce6e2b36979c4c52edfb049b2c7dcc1f6cb2baf67a8fb71ebc4f4abf53d5494d96beb675e7d64b4d9918ad73048dc0516385b3fc877db2941fac7995e1e2e3bed3e956fcaa58ec9248ae9976e6db92e6ffda7b5cdfb1bfe87a9f69f4acb69aff4ab2dfd531ebb2b761e05acfb09764be9a98d758605d879f558daecfd35cd735dfcd7af5d97e355ea5fface27ab9f9ff597eb1e457bf09ac63dae0efb1d545af36b3fc262b73aea9cd6db633f99bfec5e9fa89c237b7929b3462558d9268e9fd3f1aea69b71c3efc663cb0d39965b4e5d74d3ea594d6dc2cba29cabb1b7dd8b4d5fac7a2cb140e47d61a70eb399633a697d0f7d8f71c66fe9ac7e0e56dfe7302ef738f54ab2b6598b67fa3bafc8fb3e6d983d69bd46da9fd7fa65f91d5fa37baaea5d1b31d67a98a47b7228bb198e16e33f19dfe1e8fd6713f9efd670d723fb128caa8e4f459cd6359ea5d8ae6b4e652376c97d55ff004ec7f737f5dc1ffd09c7c552c30096a67436dbafeecbf7569911d1f4a7759c7a6e37b7aef4f6b9b90db594bba8bad60afec6716cc770fa56b2bea6efb5b37b3f4dff0003fcdaab575fc2a4d4d77d67c6b1949c7a487dd63bd6c7a6f7defbad2c6b1f4752fb2baba2cb7d5be9cffd2b332bfd2d3662797b4b4896447884f254df738fef163f74f67d5bf6d74b3d62ccdc7eb78470b22d659918e725acbcb595dd46cc7ca79c77538fbfec593f627d9fcffdab6647a5fa1c89fdab3f35ce3897e2f53a1cfc8658d0ec7c978c473f1b1e9a7e9d9664fea6fceccf4bfc2dacf4723d4fe6f23ca2baedbed6514b1f75d6695d35b4bdee3ff0753373deb4ebc0c3e97935fdae9afa9f56161657d2aa1eb56cb01db5b73edc7ddf6abbd4ff00bcbc27ff00e1dc8aff00a3a6cb9588da46fa0a5c3213d347d19d6dd467655cfc115db4bbd5c0bf63e8c8ccf580c5b9955757e8aaca6fa3b6ff00569fd67f52c9bf1f0aaaaabd747d01d8efe8b88ec2a062e29ac7d9aa9dff00a29fd059bff3bd6a765dff005cfcf5c16163756fabf43db91939197f593a834db474bc7b1fe86235cef7f51cfa30f7e3b69a5eefe6aba3eceffe898d5d9fa4babdae99f58fa8e156dc6b2919a5da1b2ac67e3d8eb48d6f7d0d67a16b1d67beedaec6f4a9ff004cabca15b1e25f6f49d22eaeff00b6dd5b9a43f2ac696b4ced356dc376efe53dd8deaffd71682e4fa466e3e4f4fc663f16cc8be8c56dedbb161975788f75ace9dea58db6bc8b72b2e9a1f7dd8d47f84f57d4aff99f5f5a8ea46bc6398cca667e036375c76b2c6821af6bf7fe8f1f218f6595db5fb31ff57fd2d5f6af5189a97592516383da1ede1c011208d0f9152414a49249253fffd7f5549249252ce68702d7005a4410750415cf5bd2b0accbb6d7dc30f03a75cdda27696586b638bb1f25ce6fd8a8732f650fc7aff47fe0ff0047eaddeaf44a955d2b16bbcdefdd73c58eb6bf5482dadcf25ee353006b37fb9cd6ddfd23d3fd17abe924a474faa19b3a662b31ea744dd734b26036b0ff00b3376df6ed656daff587e3220e9efb21d99916641ff46d3e955af6f4a9daeb19fc8c9b7215d492538bd4feaf7a97b7a9747b474eeab506b45ad6cd37319f47173f19bb3d7a367e8d9637664637f80b3f31717d5feaff004bccce69c807eaa7d622f2ea5e0fea3936b4fb2ec1ca67a3e95d67e85ffa3fb2e6b3d4fd2e2e458bd390b27171b2e87e3e554cc8a2cd1f55ad0f63803bbdf5bc39ae4f84cc4e8822df1eeb3d37aff4f73cfd65e8e3a8d6d07fca98e4d7690036b6596750c363bd4fa3ff007af8165ab1db77d550e6baaafa865bde5a1b88eb28a84fe730e5633322fc8ddff03878af5ebedfaaf7e047ec0ea57f4fadbb630eefd6f14344cb194643864e3eeddff69b32967fc1a153d3beb61bac77f92702db4385b9f8f4d96dd66bfa377a161c66d7ff005dcacc53c79815b7d84c3fe6ff00de2d30785c0fabdf5a33716cfd0d1f557a2969fb55ae06873ab05c1ff68b2f7bbaa653765bf43332b1b0deb7beae745a31d86bfaa54ee7bd85977d66ceae5a3f376f48c43e9fafee7d9f47d1c1fd17e9afcd5d355f55701f73727aa596f58c961dcc7e6b83eb63a03775183536ac0a7e8ff38dc6f5bfe156d28a7989d3a76e9f5fdf488b9bd3feaff4dc0c77535b1d6d96b8599195738befb6c036faf7647b5feafee7a7e9fa5fe07d345fb1e653fd1329c5a38ab247aad8fe4dbbabc9ddfcbb6ebffa8aea4a2b5ce45ecc76d9eb65b0f4dbe368cca5ff00a33eef55adb6ddac63bf4cf76d667d1b3d5b6df4b7fad6a5d2fa2e3613c50e06f6e2869c536196d61e5ee228a74a28d967a9e97a6dfd0e3fa78dfd1ebaeb5ac40702d700411041e0841c6c3a31416500b2afcdaa7d8df2a9bfe099ff0004cfd124a4e924924a524924929fffd0f554924925292492494a4924925292492494a4924925292492494a4924925292492494a4924925292492494fffd9ffe20bf84943435f50524f46494c4500010100000be800000000020000006d6e74725247422058595a2007d90003001b00150024001f61637370000000000000000000000000000000000000000100000000000000000000f6d6000100000000d32d0000000029f83ddeaff255ae7842fae4ca83390d00000000000000000000000000000000000000000000000000000000000000106465736300000144000000796258595a000001c00000001462545243000001d40000080c646d6464000009e0000000886758595a00000a680000001467545243000001d40000080c6c756d6900000a7c000000146d65617300000a9000000024626b707400000ab4000000147258595a00000ac80000001472545243000001d40000080c7465636800000adc0000000c7675656400000ae8000000877774707400000b70000000146370727400000b84000000376368616400000bbc0000002c64657363000000000000001f735247422049454336313936362d322d3120626c61636b207363616c65640000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a2000000000000024a000000f840000b6cf63757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffff64657363000000000000002e4945432036313936362d322d312044656661756c742052474220436f6c6f7572205370616365202d20735247420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a2000000000000062990000b785000018da58595a20000000000000000000500000000000006d656173000000000000000100000000000000000000000000000000000000000000000258595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039073696720000000004352542064657363000000000000002d5265666572656e63652056696577696e6720436f6e646974696f6e20696e204945432036313936362d322d31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f6d6000100000000d32d7465787400000000436f7079726967687420496e7465726e6174696f6e616c20436f6c6f7220436f6e736f727469756d2c20323030390000736633320000000000010c44000005dffffff326000007940000fd8ffffffba1fffffda2000003db0000c075ffdb0043000604040405040605050609060506090b080606080b0c0a0a0b0a0a0c100c0c0c0c0c0c100c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffdb0043010707070d0c0d18101018140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc2001108029a028003011100021101031101ffc4001d000100020203010100000000000000000000070805060103040209ffc4003c10000102060102040406000406030101000100021103040506070821121020403130223213504123331415341617379042362718386024264328ffc4001a010100030101010000000000000000000000010304020506ffc40065110002010203040408060e04080c0502070102030405001112212213063141513261714252627223148182923315071020304091a1b1c1a2b243537324c263839350d1a3b334747516f0e1d2c3445464c425355565f1e28494b490a526f2d3e3a43617ffc40040120001030008020509050803010000000000011121102030403102122250f06041516132718191a1c1d1f15203b1428292b270809062a2c2d2f2e1132372ffda000c03010002100310000000b52000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000562f4f3ed34f731e4b723c800000000000000000000000000000000000000061ba886f6d7df09db0da00000000000000a37eee29c3cfd1126cabdd098f0dd2b65b3d000000000000000001e097d1ed800000000000000001e3222d9543fbabe22262c37469b69b67e3ea00000000000000523f7325daf075c6b7f39de5136daa28d75ecd1dcc5e7db28e6efba000000000000031bd4409e85513e9afd3da7cf32e983258000000000000079e514e9ae1cf42ac64c4b586c93f2d984e921d3d556f5f3dacf2740000000000000028ffb992eff0083ae86fd360d77ae259c37ccbe7e8cfd7d445ba88c35f3b3569670dd29e5b3250000000000d22de60df429d36ee272c17cc386de94578f528d06fe2cb797a37daba0000000001e09455aab89365585b2253c964b587bd1ae886fd4a22fdb4ef59bbbb9f3bbeaff00af45a3f2ae0000000000000051cf771de1f075d0ff00a3c3aa69ab78c7a353d157a79997bcebe63c17e4e2629d75461b6aeb999133cc8192ddef3f79de679001e6341bb88cb6d5186ae76ba2671f3ef90b3cc75a78ae9eb67ed89b49e2e9ef89aedead188e930e3b259c967ae00000751a15fc471a788c3671d9c44a392c9631d9a95d10f7a3444db29ee363a7ad2f65520e4b6ed7cf6eabbeae7b49e5e80000000000000051af7325e4f0b5512fa3c3a5dfc5b2f0f6eaf771edafbd036d1186dab315a58c5a659f36ddf69ea3ebb9d1b6d7a2dfc60bb8fa98f571d779e74764cef34f723e1ee49cf63843dbea823d2cda26ea911cc4fa3899e7cad7617ccbfae6214df4c53b2bed96e54f59be3ae518e46bd7f3ac74fa88de69ea48c5748d9ec8ff00571127a1444fb68f3b896306adcf2d98cbb9d868b2aefbf8247c375d4f9fdd587d6cf687cbbc0000000000000147bd9cd783c4d3463e8f0e8da6ab29e4ebadfeb62f977bfe3b651c77f3c237df4471aeaf5f132465b645cb6efb8adde2aebdb589e66389973180be239d1c461b6989b7e7f15bc73c752df9fa77dc76f74a16f4b3691aa8f6f164dde56a9bf0ddb8d3d793a8d4ee8c1cc75cbd7cb61e6766ae758ee235d55c65b698cf751d53327e1b77ecb7f927889f7d5a76ba792c5f89b2b9fb78a4cc3a2e7fcfedac9eb66b3de5e800000000000000522f6f25dbf0f5d1ff00a1c3a06aaacaf93aeb77af8c94b98eb9e52564b644c56f29d034531b6fa7cb31f31de63865abebbe79f3f3d60ade31d6c76cf3f2eb314f53260bf35459136fcda16da397734f97a36ba2c837d3cfae69ab8e5b2d1defd9acd8e9efdf575e7ed85b78d56ee74cbebc45fcfb6bea4ec56ef992ef3f5cc61ba9d07555f5dc71104ba58af0b6574f7714a3e6e8b97e1edab7ebe7b4de4de00000000000000a33f418af2fcf6da4df438638d15d96f2f556cf5f272000261c75bee6b246c56fb39efabbe356b78d62fe70dd475f519089d8a9eb75cf67b6aef136d70fefab097d3cf5d711c267999f4d3dcd7e668d82ab342d5446bb69c6f6fbea08ebe6723c4eeb45bbfe3efdfc5be59e230f429d1efafebbe512001cc7362bcbdf5cfd5c32be0d1717c2db57bd6cf68fcabc00000000000001473dfc9787e7b6532fa1c5176bcf647c6dd5c7dac40001221c9db8e651d6d9475b357d65b359f7ccf8ede75cbf8d36fabafa990b1d9eca3ae9e3beb87bf9eba267c535ad76595eaf7f397e3a91f2d991abaea891db318fbb9d2b471a1df5782fe52e7984894000398e6c6795beb8faf8a66f3afb65e26dacdea5167fcbb800000000000001483dec7767e7f5d43f772c47e866b15e1efaedee610000000000981c276ecb76dd86cc851d6462373a7ade78eb63e3bf5447ccc637a9d4ba8d1bbe35eb2354eb9f16fe342dd4f559cb9204800000000730b11e4eeaedebe09cfcbd564fc8d5027a74592f32f00000000000000529f6b25c3f1b4d5df5b3c2feb65b17e0eeae9ee620000000001c23374db257976faeaea4ca7b95f377dbd4fd1ca7990412e11c43e623176211d15e836f181d75e89e8d3f52400000000038858df2b7573f5f04fde4e99cbcdd518ecaa7bf3ee0000000000000053ff6f2d9af1f4405ea67817d4cd637c7db5cbd8c4000000001c77325799766b15929d09773dddeeb9972707c9f31cf094bef99fb904be623e218deebaffab9d03573a3fa79bc3d72e88900000003ae3ab29e3eaadfed62b23e2ed92f1d9a8e8e26fc37000000000000002ac7b39666f334c61bb3d72f572d8cf2f6d71f5b17d00000000709983cad1df9adb1f9233d5dddfd4fdc4243acc6f35d7bf438d02fab2509cf0d92767bfb267ea4383e21e6e398e34f1006de74ef53361aead12000000075475653c5d35c3dcc7687c2dbb353df3332ae5ec000000000000015bfd4cfbb64b75eb6bab9eee3b27e56bad3ea67eceb8400000038ea661f1efc853dd9bf36df7f5d7294be81f30e8e62997b79637f468faaa78edf754dbbf1754b596ded99487cc074c73a95dc558db4eabead588baa47400000038e5643c9d75c3dac76e3e777f9ec8da28ee45cfd80000000000000208f429eea9ec4d47fa2c163fc4db5abd6cddddf0000001c4c4a1e669d4aee7db54da3f26f9029b3b667b25f40f884696f14bfe8b0bb8e22793946ef86ebbfe1ebef99487cf2eaef9d6dcd63f5688abd0a375f3346a5ea67f35b080000008f573dcede5e8aff00ebe3b9ff0037e8e8bab897f0ddb4d7200000000000000893671a6dd548596da5bf47e6d81f276417e951e2b6b448000246d19bbce63ba3cf533702aea6ef3b4d90f2a73116777524fc10868aaaa7d063209211197cf67e80fcfeeed99e61d28e94423aeaad3eb67f1dfc39e38eadddf05ba3fab9b9e6400000361cf6c9592613f52abd9f2fe8413e85767bcbbbd400000000000000343d11086ecb3f79ba686fd3f9d35f99a639d54eb9aab44800027826cf0b4ee55cd7df52bc26ba78e79fa9eb2f9edb3be45f30e6efb167311a575551bfa1c7f16c20ea5ca51f3efb89e369eeebaf89e351b6bab1e9551dfa54fdf31f3d9c4cdbe468f7d7d451eae7d6f556000002377cb7e72a88a37f1fa1bf29beadfb145b8f1f480000000000000062ba8a8bede4b85e0ecfcebfa9f3651c57f86ce340db5200001091b0dfb879b659ac96eb1dc534f77360b6d7c51cba71cf528f9f65a0f3746c95f7f3115bfd1a2be7b357d4d6e672f96dba1e268db6bb3a3ae202d95d76f5a8e8bb9f98804cdbe4e8b47e6dd8c9e6a1fa55c7bece5fa000004255c57e07be352d3c7e877ca7a5527d9cd6efc8d2000000000000001c146bddc7793c2d7f9edf4fe7e7aaeb6ccfdc47ead0ac0003844c1e36d9fb0cef955bc2755eaba71ee67d63551c7723eb97a69eec5793a279c767d72d074f1166ae7355cccd91ecafbd46f555f4e8d3b7d3f32f9edf75471333c7937d9af36fefe6ce1cd6df428883d3a359db5b900004a72f1f544de95190e3abe1f35b6a17b79ee0f8da4000000000000000519f7f15e3f9fdd467e87cfd6ee4dbe7d9017ad42200006c345929791a6cfe09f4cda4f539c075c536f628d437e7e7925c5871d6d386fcd70eaea3b0e3aefcfc71ece663bdf5fd755709f9ea3eb9857dcfde568b2382df54d9f47cc46af3c537f66ad57d4cae40000e6c678fb2b97a7964dcf75c5f036550f668b77e3e800000000000000014cbd9c76c3c8d7567d8c910fa34d96f1f5d6df6712240004bde669dcf1d96070d9e99eb9970754460fbe29d7b19b4bdfc714a48c56cbf8ad9433d99fe67c331e38e738b4e3c9d23eef88ab6d70fedab0fa6b3bb0be468b1be759deefb24111e74550db5431ef63fa900004f363fc4df5b7d9c73a79d7cf1e568877d0aecb79778000000000000000ac1eb6694f0df17eaa6bf7b596c6787b2ba7b98788900012cf93b6c479fd6f54d9cc870708f373c6b1671056de26cc7deeb55df49ec9279eb898bbbae51e2dfb80f93e4f2775c31a6ac3f733562ef61e2cfbea7998e427a4adda68867ddcdafdbc000039b1de37a15c7d9c1663c5dbb1d5d78a537e2b400000000000000041dbaae8977d71553e8b1d90f0b5d6bf771fdf2000f8261f1765b0f3adf6c75ccba239e3a69ee748d315dfd5cf95aa65fc36cb98fbcef33df3d708f999af97d33ee5b7bfa9f83ea23afb4796570e6eaa26df5ce1e569cc71ccf396eea88f5bafb99ea218be9af1ed53aaeaa00007c733657c7d75bbdbc770be73d0d2f4d523e3ba47a7a00000000000000011ee8e219dd44cde768a47f55e758cf135577f573fc75c8013cf1cf73c789b2cfe0b7b13c9d3114afd8cf2d61ee12f629eaab8d5f7f0e27e23b917cfee5dc56cb199d91dd48f5ea9cbcfeb8a9f56711d6c98937d785beae649e64bf276e1b6d72bf976676ae274cda7b0eb239d3c554f5726afbaa000198aba97705f03fa792fc7cbfa959bd6cf6abc9d197e6400000000000000078a62997b992e5785b3f3c7ea7cf97b0f7a9dcd3b5520023334d934f91aacb61b7b123e387e7cfd5639c3c4be29f4e8eb8e756d757113f50f997d4b338ecdc29ef74cddeada525e0e2adfd0f1db157cccfd70f9e9f4892fc9db86d55e7b899231ac0e1d3f72f9351ef8a67ed65d7b752000248c17fc74d16fabf43be6bd1a4dede4bbbe26b00000000000000000517f7b1de3f9fd7437e9b0f6f2dda8b21ef4331203a66b3f53578daac8e2bbd1323ae1f9f1f4b926ff1ee8afd1a7ae38d5b6f1d35cf1d74e3977d7a26bdab1db72fc3d1126b8ad9ebe6f2d93d27321dbd73f68937c7d583d95e7b8992b0f76071dff4759aa5bc534f672eb9b6900013c795a61adf4ed35cdd4f9fdf4dfdacb757c4d400000000000000000a79ee65b35e368ad3eb668877e7b21e5eeaddebe0e5200f9e7a9e3c4d567b15ddf13c9f10fcf9fa5c937f8f7457e8d3d2e353d5c5dff9ddbb6f167cf1ce9b7f349fe8735adf0f46a55f339d3d435b6ad32fead6f93a3b0f8734a7e8336a3aa9933c7d584d95e778992f0d960715df52eb239bb8aa9ece5d5f6520002c9789b2b4fbb9278f2344cbe7e888b7d1687cad200000000000000000af5e9e7cf67ef5fbb9ad1ec63b1fe36eae1ee61e5089097c7298bc4d96bf05bed894cfc9f9f3f498e70f1ef8afd2a3a79e750d7cdf1f9addb873d7cb98d6c531f773587f32e93f337da2cf97151bd4aedf79b7fd3af9e546be831e9baa9937c9d584d75e7ab49586db038eee4ea8885f5735ebd9c9aaeaa800384590f137d70f7705adf9fdfe0ef8cc5764cf8ec00000000000000000475a398777512f62be957d179b643c7db5cbd7cdf33c003994a3e469b15e75fbf55d7333f30fcf8fa6c73878d7c57e951d31cea5af9be1f33b36ee7be38793b8a0feee5b13e7cc7bdf72c62eb206a364cfb9fbed4fc711473dfcda6eda24cf2766175f19eae24bc56580c77730ea88adbb6a86fd9cbaf5fc0008f77164e9e65f5ebd5cb7c3e63d2addec65b39e3ead97890000000000000000074948bdfc975fc0d7f9e5f4fe6cab8efd72eaf49d5580049582c91f06cb0b83aed99f997e7cfd1e39bfc8be2cf4a8e98e353d7cd9ff00035665673cf24e916d51cef66734666a9dd32cf6689c9736731cf3cf35a3daab01a2892bc9db86d7567ab992f1596031ddca3cf1153b7d10cfbb9fedc800893705fe3b1a9dbc7e817cbfa3487e8b1de4f0358000000000000000000a53ee65b81e1e9a75f438f53ef99970df027ad891d003255ccbbe36ab4782ff004c4fc4bf3ebe931cdfe45f15fa547573c6afb79ddfceb3d1d4f6c3c51de9da6afd0cf9cd5d73d7d4a20d3554ff007b24a9e56afbe6b89bd8af9eb8424af276e1b5d59ea664ac76580c7721a8f75d3ff5e9d4fd3cc80013162fc6db5e3d5c72ae2d3667c6d15a3dba2e1785a4000000000000000000578f4a9d9f375a6eaaab97b19acaf87b2b5fbd8b9e400224bf235d8ef3eddf6aefea63f3ebe9334dfe45d16efcfd331abe8e645c3673cc7575d6c19b8883d2ebf453e776732fa21ad54d49fa0cb2f78f6f755d6b3aeac36a8d6f45726791b70baaacf55324e4b2c062bbadcd71d7c437ec63d6f5728003898b27e1eead9ed61b49e2efed8e79753a60b40000000000000000006976f3037a744d3e65d497e9fcfb19e36baf3eae6eaef90011b964bb7ef2eeb3f86cf475d7e7d7d2669c7c8be2af473f4c4667375ccc6c15f5ec77abdb57c4f774fc8d3db010ce9a6a57d265fbccb29e1e98ef7552465b6b7fb79e42f2f460f671b051cc9392d9ff0015fafcd350fd2e740f631fd75280032947734e2ba00f4f3df5f98f42b2fad9ad0793ab64e240000000000000000000a47ee65babe0ebfcfcfa8f3b72cddfa25196da40038e92978da670c16ca59fba01f4d966ef27445be8e6f374c8e5eb395ce0f5474f1cecd9982b7bbb9e3eaece894357510deea7eb8eb66e6c813dacf607c2d30b7b146e9e75f84db56c3952566b279c16d62df5455eae7d774d6001c931f9ba34ad35f4c2f67cf6fa4fee64bc1e1eb00000000000000000000560f5289a3cfb6bff00ab9e1bf433590f23656cf671f2001d3319fadffcdd7697cb8a31f495cdbe55d166dcbb451644feaf1ba799de41196abbc05bce97af9fd11f9cdbdb2e25164d3007ab5ec19e1cceed5f5a269459b6a96305fa46fe760a7891f259b2e79aede8d7a57ab980000b2be2edad1ed649ff00c9be50c97c79a2bb27e6de00000000000000000000d0ede625db4ef39ada7ff43e7d93f1f6d6bf63173dcb98002237ac9a36af3ed8b7d6aa74f13ac2e88d972dde2ef9c3c4783673a3ddce2efe7c364fe8a7caeeedea38217d34c5ba69d5ac62b573b860bb2b575b54758aeeafa9e741d9ced996cd5d3a0fb19fa2ce100025e8e3ab05e3e9ae7ede3bb7f35e842dbea9e3cdd1bad720000000000000000000014dfdacb6efc4d7f9fdf4fe76f79ec11aeda00012e21257977629d4bb92717659d15c7bd18aea7549eb8bb9d7adaf0d647e86fcfecec97c90c5f455ef6e8d9f275eb8ef274f5b672f8e67cfdb21c478ade238ed81f4a9c55fc2000044c7e76ad3f4d78c737d7e6bd0a59eee5bb7e26a00000000000000000000015c7d3a652c56417e866853d7cf653c2db5a3dbc5c8000384495e6e8cc65b2c6e19d96aefb3bef93ea5e63173183e79dd62cec47c986eb9c7f51998ebddccf62783e21d2e22fd3c40daf9d3fd3cf88bab24000708b33e0eeacbeee2b0be46c917277a468e6c679f70000000000000000000000d7ac8af9e95530f9f6522fa5f36c478fae0cf528c6d9c0000486ed92cd93cebe50a3a9af35bd9ccfdc90f9ea7538cfaed9df9e1ea4726efcf79689e264759869aa02d1ce83af9d23d3cde3b39048000d8f3f728e2ba0bf533deef97f46b97ad9ecdf95a361e240000000000000000000000a8bebe7b57e3df483e8f0e366259c7a209f5320000008c847722f937e5337526f332d66b3ba251d697dd11c773e596f3c71a0d964c7575b4f3d7c189eab84f4447b7c60f5d1a4fa1572000004732b0fe2ec817d6cdbce3eede789baa8fb19ae478da400000000000000000000001156aaf05dc75a2ac7bd82c478fbebdfad8bafb2000008252cee7ef72f3efc9d3de6ab6db1dee9471b0733ee9eb886326352e9a55f18288d374c746aa342db5fcf7080000007a39ea7df2f4d7af5b25bff9df4355d35ee19ec9632f600000000000000000000000e0a71eb66b75e46aa0bf4fe6e72bef75cdd433e9500000000279e23bde327796a7bf3f1d23ac8f3cf527c1059c76d9ce9faf8c3dbcf282400000022277f375c4faeaef45ebf99df4c7dfcb763c3d5f4000000000000000000000000405be9da2a9d22f8adbede1b39e0efad1ede3ebeb90000000426439074e20ebae5ca082488240000000f6f3dd83f1f556ff006b0daaf07d0f47318eed3e61b400000000000000000000000078e629ff00b39edd787a6847d460cb7093725f047a59130912413ca113f10f9e27db139be3af7c3295f7dd0ec3ecea4f5731d16738aea3c3d309d73e6b63ea78fb9eb847313c4c265cc1288e3a9b0fe2eb84bd2cfe94deff009adf4b7ddc974fc3d7eb00000000000000000000000000adbea51bf61b352d1c563f770d8df1b740fea63c55a38f9e6cdaa99de32dbba67b36bcf3b65566c75cfb53c4383a0c743a0f119a4f61ee46325929479cb73b230131ab5fcead757aa688d2b453a75fc7459cf283ad869b65ff0036eaff00ec63b69e07a1f11183be2c479b7000000000000000000000000003192a69ee65ba3f3faa8cfd361c2f7c4c7e669e8ef99431ddb867ef6ae3ad721ea46a3d3c6779a818526e20c3d04b645c664c29be1d44b05733ec9bcd0cea86d87a8eee980b388eb5f11beca762c96c27ed63ddf0dd743c1db49fdfc776fc1d9ec0000000000000000000000000002ba7a5463539fcf3b5f3d4999ac8be63250c44b1e4a257a3d67b4b065793d04c44187612811f1c9993d27c12e95c4ec36a36b3024385823413206d29f1446fa45dab8c2f51a5e8af76aba9db0dc000000000000000000000000000222bf9ddea9d8f89fa908e4d648fcca9b79f47b0dd0f1033a751e33dc7619330c70644d58c61ba1ae1ea300726b8668c51a39678ac659f388706b9d46af624daa4000000000000000000000000000453df32a55dfd750062cd2cda4ed393a0d10cf1a598737e22c27a22a3064d856124e2762293c06ac4a845e5812273643837830a61ccc1b1807c7131968e650aa400000000000000000000000000045777328e6efefb803403a4c81109ba1f268c6ec6b648669462a1604ae329221abcb6b2322ce1a1434535e27a9884532a9049211b915f49e0d44d94924ed3cc777111669895a9e8000000000000000000000000000473646f15cfb802bd12d1b095c4b1e41c6c265e1f47acd8ba78518cb2316782fe7cc8e93e0ed3bcf7d7d7bb89e8e672dcce7796b29d60e6634b2c095f4f496300346eb9cbf53b157200000000000000000000000000c64b44b39ece63cd3d4a554a4879650df2d8cda663097469faabd46de359b5ad68ab5db38c3d8751f4e7ed2000070707c0e59aafbdae9eb70cd749be7db9f8ebba96c53d44c895519c4a1115fc7bb8eb937fe67df0000000000000000000000006a5dc6b5d3250df29e888a34732cd1d21e7ea236bf9f2c34fd1cd74f6b16c54773bf97a6b6fb797c76708241104800000241c92c8f1d591f135c03eb65d67471607c5dbbb65ebefb896b25dea471288ade25ca3be25a0591e296d3cb67e6400000000000000000001ab751ac4b66ae76799fa479cd361afe8e379cfd43bb38d6eb9c26babcda78b83e1eaadbe9d35f7dac799cfd58cf236419e9e5d3f5d249200000002610e0def268993cdbab87b597c167164fc3db3c79b7536f7b1ec78aec951dede895e8b2bfdbc4a94f72583e61aa74c0751b6f33b04000000000000000000239ea333cced901a94b02618d3ccdf4d0f755b962efe7a9f8988e3d2cdddd2def87b20ef469ac7ed61f9e93cf91b3be2204f53374dbc2240000003a8f5d3dcfbe46bc3dfc41de965f44756abc2d92ae4b69dfb98f2d4d9bdf9b7764c7d4347d7c6570db61e26042523d06d664f96a963ea236c8900000000000000000693d462cdef84389e8e9e88751b34375861ac8c0f71dbc4f69e7b221fdd4eaba38b7de26ad3ede6a4fbd8f09a2ad9735d3b795a34bd7c433e8e54c7094c224108876fbaec9b7ccd1b2d1640de9e5c269ab63cb75baf0f666eb9a87ee65df72592ae0bbbb89ea9755bc66f8eb49e27acdb090cad84b89dc22236bb9cc713bd732000000000000000001e794616c7d571a1f3d6f648c7bce4e21e69685d73d533924ef5c234d3c561f5735a9f1756d157557fd7cb0d7ab9f89e776c77cc7e7df87b221edf975fd1cf20f94ecf9ec983cebb21ccc2de9e7d4b4d7f5c44e3e5ecb31e4dfa3dfcd64f5f3db0f1b4eed5f5a1f718f3d10def89f41ccb82323127cc3e6c8c9f5127d5d770000000000000000000062a50df5ceffc75bc9ca3af99d0ad63e79f52642ae7b4006b9dc549f672c9592cb0be65fa069e6b2fb19343d957d232f4f53079da33d577e2ef8fa4faf89d6efe220f42ac6db57099171e8b37e2e8dca9b2b77ab9f55b78b65e3eacac001d047f773e7e6729cb79e1ca7acd0c77cc83cf40000000000000000000011a5b12252ee9ebe61a277c742778e67da000003e0afde853106ca2ccf95ae47cbd45daf8803d4cb1aeea93cf07af8b3e1cf9ece533cd69470e9b01e55d23e7b62ed75572f5689d7cdba6ec76800000780d1fa7ba39ddf9eb931b2f24b3d00000000000000000000045f7732766eb49b2313291b99f4000000000d76c8acdea518bb39b1be55fbfe7b359b3886b7d313efab46d35fd1be65b259c174c78aed86aea38d15d7af4e8db73f763bcfbf2bc800000001e323eea3350dc399c474cd400000000000000000000111ddcf6f33b8733b3f2000000000006a16735ebd5ab5beb899b05b3063b321cce27b8fa864f99c67510eeeae2ad75ef59fa9eb05d99e6400000000001ab7518037389cac000000000000000000001a6751b9f3200000000000000c64a1add5445aabeeee24dc9d75f331fe9e3dfcf53162b652cddfd800000000000000f31e900000000000000000000000000000000000000189988c367195e264acddf7400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fffda0008010200010500ff00894c9b77736650bda9cd20fe2cd6972956f7395551fda1e92a1c594f22e0e6a6d4ca9a9d6f6b94da398cf5204511ea65514c7a6514b627564a609b5af7a99134fe92aff61becda4739bdce619372213674a9aa65b0394da398c4443d1b5a5c64dbdc53a6cb92bf4aa04fa37cbf4802974731ca5d04b6a754ca94a75d1ce43ba61994931adf6137fc37a4abfd8ee82a387da329844eb70729b4531a9939cc4cb9904cc93354cb6b53e8a6045a47c69721cf52edf05fc995294fae7cc40f726b8834f702a6d3cb9ca649733e381152e89ee4db7b4233654a532e45c9cf73d4aa07394ab7b5a84b60557dff006da62a77f87f493ffc38f6a2fdbfca6574b05b31af4fa7969f6f6a994b35aa5cf7b50ba16815525c8d3487275b0a7d1cc6a2c23cd04da77952adc4a1264ca532e0d6299553262ef52a99ef5268192c4fa16cc132416a64e82a7b8b5e1d42d98a6d13d88887c0826533dc9b6f7a1472589d57218a65c9c53a639ea550cd7965b3b53244a09f50c96a55735c4f72aefdb1ed3bfc3fa49bfe1c7b517ed93f253c964c7ccb6b9a8544c9459720f4d2d226d331c9d6d8a7d1b9aa2f0a5d5cc6a6dd0a6dc25397df90576c87234b28afe3c8081a608d74b08dd484fad98e51253438a9340f7a9346c6201388696b838bdad9827dbfacd96e8b6616265c9c136ae4bc1a492f4eb595fd5cc5fd5cc42d8f4db6350a594d46a24b53ee504eb83dca2e2a5d1cc7265b14ba76313e6b5aa6d7b0233e6cc52adce727cb12e79ee8dc0c25b3da7fec7a49bfb23da87f6cfd343fbb0504fa296f4ea1992ccbad7314bac63d35ed5318d727db1b075b1c13e439398e5dbe468283094da17b94bb6b4264b6b112f722e0c53ab820c99397ea48326b18f45c427c96cc13ede017c8705d426982153302fe64c5fca98bf9af28cf7947aa648794cb738a954129aa5cb0d4f9b0536b98d42a674c2cb7bde99472d88144454fff0011f9dc0fe901d6a84247a4708c8fca8bf6cfd343fbb1515d4a2d82f95ca65ba5b91a29b2d36ba73149ae96e4d7b4a25a53d8d81912cafe24a5fc296bf872d094026808121120a9950d96a65cc9424cc9a64d0b589bd1167729f400a9754fa752ab1b3112d08b1a53e91a53edcc5fd5c51b614cb694db6350b7b13644b0840274c6b04cb9342fe4cd7a6d03dea5504b6aed823d5088504d2a6ff883ef723f2155fd257a493fb215bbf6ff003a3309fe60539b15368188dbdcbb67b136e0e6a65c65942b58855b17f2d8bf9724299706046e6e289a898196e2a5534b62690bedc540a815d85aa64b0e532de536a264832ee32ca64e6bd770500540845c519f29a9f5b253ae44206a26a956f73d36818c4c6411f28454d1ff00db055cbf6d5c7dbd248fd96ab77edb3de5185479a1e002ee214176b57f0e5a7504a28dac2feb02976d685fc3941325353a60627dc25846b4b919938a129e5763d763d16bc2975135a857c132aa5b91a496e4eb614ea59a1093391953d368e795fd614cb7cb52e406f83892828f98229c635642b91fd30ae3ede9298c65420eb69f95bef2bf7fe37690be6287453ab1ad4fa87cc2e97da8cf6a74f08cc72ee72ef5de83d09c536a805f718e4d790a556909843d3bb9a83913f14229a3ff00b6ae9f4cb1f35d0fcfe9280c59307cd6d3f281d657f88f8c1a14ca863119b3272716ca53279988970512a2512508a8784541124a05c84c4ca801319014b56d043913f142287f8b576fda922336e47e7f496e31973c4265a91fa6688557c42bb0155359d5cc1099362a3e78a8a8a8a1e3daa5ba098f694c9a65a9335b3044843afc308a906350e57431349fbd703fabe92d7ed543f52d27abfdaa7fc57c4874a8a874e2e7094a63c94d447958c254ba58a14613a902992a0a0878c51114c690993609912a4d487a7087c308aa1eb3c7bdc7f72887ead69fd4f496b3f35674996d740bdb135bd27828fc1011776aa8a9331d34fdb04c543cbf935b134b4a1a89822534a7c988a893da50f18a827a63a09ad7291384c10f86e541d5e7eaae3fab6f1fa9546333d25b8fcf716c1d43d2637abebddfaadf84477aaea98aa7a70d13e8c9536416799ca43625ac211515144f5ad93108795b2fb8caa18864089ae329f2e67723f09cad7d583dab0c66db47ea4d3177a4a0309b741f351984efcee81493fa67e0d54eec6d24a44941d04f95dcaa28939a42698f89f6a3f78f843c1a7ad60e91f0f745d0422e5229894d901a9c481db12f6884b7fd971008f81ff2d43fb596e1f2153cc5f6c1e9a94c265cc7cb24c1c3dee63a53bbf4be0bde661fe516195581cbb62898271ee13a98384ea62df1fca9df02c2895dc827081ad99d01410e8992bb9535384c686a3ee48846027d61064cdef14730fc1fcabc425dbc7e9bbda6fbd1fcb27d2b0c0dc07e9b4c1e3dae31eca23fa47dfcc3a8b84ef95dfa61c6098fed322a8110e918184519515514705325908808054d5504c981e3dd199daa7d40026cdee27a26b22a4d312a5480d1daa09c228cced15355dc8b94a7f616be081886f43e6215c9df2528fd39a612ddec3a53fa6a87469dca4cc05b57d65d09fd178f9bcc5f045df726543bbc911108a9730b4d3d4772845008b93c453e502275116a8c1029939cd4daf9813eae614e895ec9927b949a58204047aa2894f99055552a114428c5533838524c8a3e703e6b93be6a76fe9d5184b0aa0429fd3493dd4e3a2a4eb26a445b6d315081f355cded637e494878cb7769a79e088228209cc0a65330a12e505f76585fc996bf952d3dd2dc9b2251418d6a2e8f8402eeee535dd8aa2a3b947c61d243a0643e05c7a7982b8f59807c9733f2b444dc4fc9e9a81d197307cf6e99192e1116fe93c18f9ee0626afd821e244535e5aa455f720e053e6c13eb609f56e28cd715da54176aed514229b3dca55676a6d48726b0b94c3f6d555577284543c4947a26cceb1f97cc7daa3ace23e4ba1e94c22fb99f9bd35addd6b1b09b6b7fca474967b6a3cf3477d45418bfc83a2214bee0bf9ce68993a29a62a0a0a0a09c3c20a0bb5417710a556bdaa6d4ba627360834044f9643be4a774479a3f301dd540f4ba3e2ea01fa95ee8ccf4d6f74265c841f6f30793d6a476cf77d5e692ff0099c62ef029aa533b8cfa7ed148c6b84da4693328609d2a0a2a2a2a2a1f2b7de0a083bc194ee2a5d092a5d3340ad6c0cda52d43a79697eba41e799d15118cc23ad79fd6b53622a1d17fa6a574265cc45533a131fd5f731f34b316f9661fd397fb63c429747dcc90d84daffd9a51fa7dc9a629d241532893a9484e945aa5b4b8cd606cb95262a0bed3a12a8a2a4d186aec0177c138aa9eb36b5d0974d27bc4f67621d7c684c1f47efe6a821adb633ab8c04e319940212de627d334c0d608c96742c7445c19fa746efd3f20550612a5fed0f1ed82a13fa63a4ead3fa34bfb47c205028c155c810a3a7570990546c8cb92df98b1a1ae3da5cd2440a884f1d279fd5adeb2edbed70f7f61e128c1f4befe6b8f49542c8327984b3d54a1db4fea250ef90e1d69dddcda96c596c99f2f902a91194cfdbf1fca87f6d9fbb59fb547fb6e28cd68732737ba63db174c6979645f59383495493fb0cb607a9b3400d98d426362e98d4c3143dea3f72b7f6edded70fabf2f0a73fa949f5f9ae7322a57497717fe90113586123d45b5d19735b075b5f16b8455bbf73cb347e9cafdb3e3f950fedb3f76b3f6a8bf6e69550e21e5c62e7b948ee33267ca8833664e01a4954b5241ab69835ee41ce41ce8d09881ef51fb95bfb76ef6b87d5f978530fd4a61f3f9aadddd3400ae4f54ad8ccb93bd4dae641f5eded75addf380a3db50f1127dbc027264b83de3af8d27edb3f76b3f6a8ff6e72aafdc5f9533a0e9aeee65088beb01ef6889ef5f7632e2a0bf3a13f28f6a8fddacfdbb62b87bfe45154ff55375779610520f74f022abdf1996b971995cfee99ea295ddb32e8c8b68dddb37fe5b8b3b5f2dd103a9f24df966ce6c3c947fb6cfddacfdaa3fdb9caa3f70fb9721d1489a1cd9ac329cf84c6be540168004cf960a28fbd11f94fb4efddaafdbb77b5c3eafc8a2a47d34c3e5f21f7a97f68b5b2243ba4e3dd32da3b65bdd177a9a9f9e434f6b987ba55d19dd2e85fdd2c741e4af6c55588a2878517edb3f76b3f6a8ff0069ea7c9702295c47f15c9b4ae2a517cb22a58f1f625bd4d0c94babcff1480691c852b91a531a5696b7f29ffbb57fb76cf6b87d5f9411eaa5cbebff002f907535f33b65d033b65d43bb51f981fd291eaa94f7499ad83adeeee9731bdd2adaf816f57f9273232fde59410f6a2fdb95fbb5bfb54bfb65553cb9d3039ada7739c18e707547ccdf6738c5440147eee220f7b9e9b31cc52da086c23f94ff00ddabfdbb6fb5c3eafc81e921b134dd4f97d95c4c663476b2e8fed0c6c15dcf6fabb6cc83eb65c1d6b99f338404afd39cf103e4222e9ff24ca8640b4c50f6a2fdb967f5ebbe8a41fa532620fee4e7fdc4d8b5ae8c1f362d87508aa1fa9ec8898d2d3326f726d7a933c3d1ea279fd5ac1fa76ff6affa8fb7b292ded1492e0c1ede41eed1f727910572991996c97dd32e333ba67aa92fed7dcd90546fec98e31995ec84c96fee67909836b25458f1de3d88f6a2fdb60fd7ac1fa74c7f45cf25d512a0ea83d8da29fdca4b2132a47601d484551f4734f4fb50696f738d0c077996698f73678fd6ad1fa76ff6affa8fb325f719528b90e8d3f4f92a5fd8cb5b22f987e69ceee75b876326bbb9deac3bee539e8643fbdb5ccef9540fef95e6992bedbea257cd2fda8c425cbfdfad1f25018cba8925071847bd9f2cb05e010c3da0fcde14aeed73eacf73ea896d13c07366348ac23ba8dc4b6a4913ab8fe9d07b57f479f7912e0da4970f3dc6676b68e5f6caaa3db240899aefb723d65b4c5d50c83ed6f8b4362da07764ef34e60992d83b9b34762a43194cfdfad77c949501ad0439b11df52fef34ef694e2c98891d91f9bc03a029035cd9c01269880d6b9ca45318be78960ce1326d6feddb874b8b3e79726264322e0d879e7feacf6ab9cd82a297dd32e4ff009bd6487f6bae72e2da299d8e737b55737b27b0c4795c4835b4e08735af6d3c7b26cb83a6d517b4b65a631c892a44e96139ac98a5318c53dbf2ff00cde148c4fa62a5d3f697547687554545e53e50690f6853a7cc7b68e5ba5b6a2597964b8a96c823e50539fdb2edecef747ad54c8ccb64b829afee77ad1fa94d1eb2dfdecb833ba5dbe6774a1f4f901ed4d82aaa70109ce32cd7761756020ce694d730aef0576b131c1a8cc054d9d168fabc29be5266800bcc5fec54589d318d26b1a9d5b112ea9f31af985e69e489423e670836e933b5b472bedc9a899db2808b9e7ed48f5d6c99f35533b1f6e9916bc41b4a7ed4d23a79886953e99c490c707c9810502bb7c3b97dc29d34945de2c794e9a42ee45ca2a2818a2d52a4afb6a9a984b03dfcc0a9a7ee4d875b9ce8aa29717dc1ff0037ae94f2c75ca5c551cced787772af676a90fee679876a315534cc988b815369e08882eef08a820110a0bb53427840f84141095de9927b14b90e7a932db2c40afa7cf56fec976f9314e3f2cf7f73a865f6ca98fee77afa5777caeded7524dfb8da997df2ed8f87c127b53e9c4d0fa67cb448727d3413841021125360a0138a09842980140a20a630b90900293dce12a9607e013d4ab83bb9d299dadb8cded12dbdc6b5fd92ff0000a399d932be5769b7cd2d23de70fb53188f9fd8be250712a653b1c9d485a8ba0bb1a51a5715f60845842ed5da848285338a14b04400877cc52e89abb5ad40fc1829ae80a267dd9c4c5d5cfef996d95dd32ae6f7ccfc040fbd29a60644cef6d6cafb8cb74e888f5f851504ea39651b73d0a49ad4eef08b9e877afb330a148f29940d0994cc6fc5318dc2a7b952b3b1b5733b1bf5979fb327f02a09bdaeac91d8fb7ce8387d552c32a607fdc97f0a0a2bb918a805d545072ee5172e8a03e2cc9c25cba197df307535f3fb9f6f9117d7ceee77e04d30339bf7e589907489a1ecaba51325db27f721d117451402eaa0bb5cbaa2517afbf2d1ab948d64a08dc1817f62c5fd8b17f62c5fd8b10b8b4a15b2cafe64b42ae5946a1a497b480baaed2ba2eabb7c7ba09a157ceef7c991f6995337b2593dc983f8d2bf04b6cdeb5d4fd86df3d7506b19d8fa79a1ed6ba0539f04fab9413ee12c275c5c51ab794673ca2f7f84141402ed0bb42ec0bb02ec0bb7c4872ef726cf9810ad9817f62e0a5dcda995b28aef967c6313573fed8a093dc4ba0abe7773e864f7bee53fbdff00820305358274afa151cdfbb2a6344c65297494fb9b41757bdc9cf73bc3b543d2414100a29954f09971784cb93089ec74d3264c1b5b5225b7b3b887fd893f835be71eeada2f9e54ff00b2a656ba6224a0175423e11f4b151f1895d5051214bad98d74c9cd9a68693e6ae9ddcefc1a59ec532719847e090504c9c58e9bd7f079b2c968221f833dc022c219f8337ab1a3d04574515d5755d5755151f08f8c143e09f79eded3f834bea5e20ef880a82ec7a14f310a69850a19a57f0262fe04c5fc098bf81317f066a7524d0bec4c465bd4112a2a3f064b3b94d7773bf040094654107c14f6c047c005d107844c53404244c2996d9ae4cb712996e604da1969b2181096d1f0e0a08cb6a753b0a7d04b53adcc6a653f7a9921cd47aa21755d7c641ed6f70816223f016cb71506b53a73a1d0a84438f7320a2bb629946e7274b6b4c932ca64b6354fa7fb8a5cc7c832e687080500be55d3e1c1414428b54d70961f35d50e9123ec23dad55756c258c97314da07b510e1e2fe92c040afb888051691eb4362a21abee92bdfc7d948114251790c6303aa60a9eba0ab6943c18b4d1d608c7b84ea76383d9329cc8ae0e4476a8417bfc3843c0800d4d7092a548995065ca972c77002aab7b886971a5a50c15b59d593bb83e434a32e0a79898f89726cc82e88887aa01199dc8288f27ba63a05d29a4094f8fda795f6a6054730b555d1f7273552d6196a510e020e33e80b549ad214b7f723d3e1b19153670629f56661a6b7945813e67d91575666a6b3b951d2068ab9a5e5b22604654c29b29cd4c8273a288f28083e088f521cbb095d5128fb7804e0a5cd704ea97afbce427a6cf9a553567619f4c2787b4834d5465991398e054e91f79193324291710e41c17ccbb82f94f93b8840393dcd0a7dc54ba67cf32a9db2d12e729d502509b51f70b2599865cb9721b3eadcf266cc08ce72138a6d53d3e6b8f9a2802506008bbd50304260727b604f94942257db2102d08cc27c29aa5d28996da913e4f61639cc54f70812ee85aa751326234f364965c5ca4d4b1e9ddbe3dd0532b1ad536bdce4ca39b38c9a6972917772331ad1517129d30954f486612e9721b36617941e5441465c5104289f335b145e0227d63444cc313e2d8142512810119a7cd2e61699552d9eaaa8609d0526a5cc54f58c7a74426c14ca663d4cb741013a5a6dc5cd4eb8b9ca13a6a976d826d3b25aef0e45a42a8af6314d9e5c82a6b68729f5fd8898f984e29ddae4651089822505152fd74a1d5c5140a82eef874b5c589d265ce13e95f2cf729358f96a557b1ebb415dd05d4a74b694d96d09b3084e697a04354fb83029f5531ebb82a7a27cc2d64ba715358e987e177223c004d29c3afac6ba0c8c532577227e34b9ae61935cd729942c9a26d3bd87aa64d7b54bb8b8265730a6b814e7009f5cc0a65c5ca64c739750a4d1be626d34b922757c539c5c7e2c51676a1d513eb6633e5003539e4fa19739cc2cb90703492a6a9d6f2c4f6109a9af2139e4a820c2549b7172fb7264a9d70738b9c5c7d035d04e1ddeb8b8fa50e214ab84c626d64b7a3452a607db1e136dcf429a5313ab9ac532a9efff00e161c42975f31aa6564c72263ff148ffda0008010300010500ff00894ba741c2734a07f17253a734264c8fa5962331d29a5163c213d36603f89ba734233894253d36504c6c1de9257d68cc828029d222a042134842603e909467045a5c845a99303bd2ba6b4233895d84a6480112026cc8f837ebf492beb2a71ea1ce0995504d980aed051a750704da842603f1cb804e9e802e4d9305d022229f250985a9ae07d03e686a13e284b79424841a02338046a11792a494137eaf48cfdc53fdff0031222bed9084e21327041e17604e9315d8420f7042a42135a54479ccc017f2022f79425264b82f64e9b04fa84c9e9b3228b628c982fba426cc07e1178467046638a0c250a70106808cc013aa208cc2506129f220a2a4fd47dd9f57a460fd453d0faa6ccec6b67072fb60a753c17509934842a109a0a802bedb5190d5f6085d8e0bbcafb857dc7284c284a7a12420c6a01453a6c119d14e314d1144263c84c9a818a2d08c95f6dc17dd7042a42fe405fc80bf9217f257dc794654c28539424a8008ce013a7a74f29b2dc53642ed0119c020eee108193f51f767d5e91bf5a9c99f54ff00a4040a6ce4d9c9d2c27484584213484da842a02fb8102174f0e8ba2885dc119a9d393a620e4d1dc9b208510140394c95da844a6be09b397782ba282fb6bedb57db6aec5daa017784672754233494184a6d341365b4233919ca315052fe854e8a95efe93fe72a7267d53be98a87845079084f8213014580a753a32e080217795f74afbc509a57de2bee145e51283229b2a29b2539cc6a754391894c24264e08b0393e52010710bef1427a13d7df6afbed5f7d7f2119a4a8929ad250a78a0c0119a0233e2897151f0828a97f42a7454bf7f48f1f39539313fe8f38284f427ae851900a34cbec39194f5f69ebecb8a14c50a7685d023528cd2508a81515140142610993916b5c9d25c8ca7a214545c80726cb257f1e28480108046a119e89f304537e83ed4e8a93e95ff5855087b1fa3e108842615f75ebef9427afbe8cf28ce72ef257db715f657604181151515d17602becc57db705f79c109e9b318517b107353a680bef84e9c8cc25189f0879c22bfe41ed4e8a95e9677ee1f6a9f73f53be9f8d151422509514d6008bd7620d40784176a8282828af7469c14590518282ecf8eefa1bed4e9ca4fb7a49df59f6a9f73f53fe9f8c4264b8a104020c40050504023e582ec45a8b4a8232e2bb0a87c73f437da9d3d48fa7d2541eb2d542fc99d59f17b54b9704020d4d1e68f8c543ca428a708a7320a3f10a6a99f49fa648f9661f9648e9e92a7d98aa17e4cfa3e2353426fb0080f31722e5f757dd52dd151f2908b11105db14f6410f86537de77d03e9927e5983e597ede92a474943e5a81f28fa65fd2ef85140203b50114028282878844a7b947c429650f341144c539904111f04260eb3d15254e2a5880f493c7cb21d16cefa4fd327e977c28296d4e74535f041c83947cae4e407925b9047c4a8a2e4f7a6ba09bf32736081f8214bf7a8454a1053d37dbd24cf6a73f2cdfa429053cfcc0fcbf025313dd040a298e820f41c821e013d3fdfc4a679228b917273947c1a9c2288f8305282ab3d1c3a83d277bfa577b52fd333e9829053c7cc07cbe7013ba26b3b93990f105366213534f81453fdfc7b54b6a1e05129ef5dc8a0106a635109e3e082a4aaaf68f503e59c3e6f4a549fdc45bf34803baa3dcfb7981525b044453027353988a8a083931e84c40a73539abb1414135a9a8945c9cf4e778c54135a83576a704e102ef6f3154ea6fd52c7cc3de1f3fa6963f542734f74907bea11f6f343a8e8188a09c13daa1e10f06940a0e44282fb6beda0104e7a74cf0878b426b5347814e2a6847ce553a99f54a1f31f767d7e99c21314f1f34b3f35488a3ede6963c1a3c014e114e4e678c3c0129ae28925069401401462838a778c5040208790b54c1f023f2c8e8d77d5207ccef7963e6f4d387ced5503e667d5344479e48e8cf768f18a21109ed40221325c5358176040045021021008b02fb69d2d16a2176a96c41aa1e2112a6277bf99c3a06c187aba40f99ff4c8f6f4d5014b3113c7816fc83a0f3304192ba0f212888a2576c53190f2b937c8110bb539a9aa0bbbc20a1e2ffaa68f9bcce47a308520749bf4c9106fa69c3a53953c229862c7fb794051f95a3e5f0714d29c50727b931e83d0281f177b37c84a0539ebbd07a614c728a0547c48f9a70ebe6629a60c0a48e9507a3074f4cf1114def3074875a63f2bc41de43f4b3ea3ee3dbc0fb03023da5fbcdf71ec0a0e41c84d4d745174131129dd1ae3071988bd45450f71ed293dd04c7450f12a6f9e50eb51ed0f999ed3ba91e9ca67473bd9e3ad3153c794fd2cfa8fb8f6f0fc9c7afe52fde6f923e0d74117454b4f535ea71eb150505043dc7b48538294df21537cf4c22aa0a03a8f6f777a877477e5307592eeb3dbd021e497ee7dc788f67fbfe52bde6f87692bed95f6baba5f40e4d8aed8a7f44e45b11d857615d857b26a6a92a6a93e47a9be7a6106bcf590d5eca5089f5151d14bf69c133a3a70f9421e497ee50f6f01ecff007fca57bcdf064112884f4d013608be088ee139b04cf680500ba29904d4d5254e527c8f537cf2fa37ddd4ca6182a7f6f5150d889254f1e07ab21e50502878fe4ef7fca57bccf74cf645394a09d008041150407800a7143dc7b495394943c49537ca0229dd030f59020aa1ca5880f50f1114e54d0bfe591d5af08795a537c8ef752bde67ba69e8d453d3876a6c5c9ae4e7aed2831028940a9c10f71ed254e5250f18a99e58a6b62a7ba09ad4d53c448f6f52d3073ba878f9a49f9aa0753ede4614c7208a09fee7da4fbcd2a284d41e8bfa97a8c4b8204a2f45c83d4577c109a9ee8a6fbfe54ea7a95e24a7271f2b7da98759c54a0bd801177aa9820e69889a3e6967e69cde83cac4d41143d9fee7da4fbcd0a0bb7c0a23a30c4b87401160535b05dc814f5044a6fbfe54ea7a94878393fdbca54910130aa70a67b48ea7d54e1d2498aa8083a08f503a1f202a5a8a050f77fd5f948faa7268e825841bd5e4a69529aa1e335041f15db1459d5e13475fca57bd4292827272987cc0449300a40809e54a101ea9c22241819822037ac9310f103e48296e40a0bf37fd7f948faa6fbb4746a6b538a8a94a3e33504c08141f1259104751ed2d542928273bab8f42624f965089a83007ea68809e7e668e9eadc207f2774753182a81e761f08a9a57e520fcd34f56b841a9c541414b2878cf2bb531a8b2283130c11f703a4af7a8527aa260a10534f9e94404e312c112ef66b62ff593fd9862aa1aa5ba0668e9e696e414b7454d087b4a3f34c948b134a7045460a5143c67043da305f71008a0cea5bd258550a5740e31531d0518f9d8201c6269daa63a0a9fe9f58e11121d0131b168f95b2be66b9b02ef2c14b7c14609cf8a6b9384545111f13e129c878ce2a5bd39d14026b5140a788a96d829aa5ba2a3044a3e6963acde8bba2a5b60a798a03d7420f254d6fcd25d033db043cb1514d7f72ec820d40232d06a8282ed4e0a5b10f19a229ad41aa0a0bb17db5d9e0e6c531bda1ee898f9e4354f7292c8afc983b9deba68528f4a862054dea8fc096ff16950f243c3f2f02c41aa0a1e2517224b976809ef8a1e73d401063baa90d534c14a1ebc888947acc1110eb21ddc260ebf01af8a1e0d3e48279ea1dd22a2bee2695151f12e453a6009ce2e50f8129b17d43a059d4cb0a71896880f5f33a18454f6a94e819ed888a879c84c74107454534aef44a27a4503e0494e4c5144a2f41c9d04e9b0f85054fd1af3f3533113052db13f804c6c4497454f6c53ba16f5044147cf1f08a0f4d782a28bfa97f401108144228225029c5198144a8fc1298229ff00281ef29b053df052db01f8093dae3ed358a43e0a7311ebf0c040a0f41e84c41e8a6b805de8bd1988cc44fc48414a629af8a94c43a0688bbf029ad8892fee539abd937e6130769f8515050f082ee5d5769f18fc66889987b5a3aa94de939d052874fc0888a1f21222a7360644ced3399d3bbc20a2a1e1dde0015d857db7a129e84872121cbf8ebf8ebf8ebf8ebf8ebec2fb4f5f6debb4aeaa2e41be10f0821e1082ee5259da27ba2643501043e63f824f6f496e8a9ad5dbd58eee139b02ee80141a84b4d90bec2fb417db0bb42eabaa81513e58f8755d574500bb423297f1d7d9464a2c28f812a5cb8a98e8068ee329aa73e0a4b603f0569fb67f29d2e0a538a991726528284a41b0f56588c98a34d04c25aa64c2e5258bd803deefc1a7322253e20cbee4d9607847c21eba01196101053a641496768fc1894d1f839087e0ed08ff00f0f28fa125050505050f42537f0777a0ef5debbc233405f782fbc17de0bef05f7821302fb8bbfe2943f062e4537c9050505d1772fbc8d4411a84672fb8bee289f8505dc4213109abef76a64e2e4e7c0f7020381505044f8b8a87e071515dbe10f02828a2f4138945ce099353981e9cdec50f8d150f164aee420c5326772838296c29e609b36281f1823e105151f5b1f3bfd8b91298d53a4c54b98818a992916c1326962691303e496a04a088f8914045324a2fed4f7f72edef52a576a3d14c9e5ca5c98273107940a6847c60a1eb095dbe6722bb90283a08bd4f97daa4cd518a7ca8a30083ca9734298c0e4e6c147e194c645365c13e6f6a73a298c52e576a2e5326a92d017dc5de8bc28fc0ed40fa987847ce5a831762ed402992e29b30b5348727b3b93e541420993e08383d3e40441f00023e48a060834b932406a2f014c9b14d29b2931904f21a8b8bd3254140282ed5dbe78a8289407ab821e60112a2a1e2f961c8c589af45b14e909c20892532716a6bc393a4453a9c85ede20450969b213a606233e28c4a6b2299253427be0802f4d601e0478777c08a0df5c3c62a2a2a0bb7cc4453985aa54f500a63229d2576c1129b3484da88a8828d334a121ad44b42352d08cc5141b14c909ac4400a64c4257779fb7c23e53eb8a1e487c3992bb94482d99d13a5a34f04e1044a04a131c117b8ae8be54d6c532526ca82f64f9905d5c992c37e39f5c7dd4543e31114e9284c2135e0aea8809d2628c8458420c2536426c94d62ed08cc01171726ca8203e34147d78f71e89cd05195041ce09b39a83e28a2d050681e1de9d3541c50928087a187af87a58274a057db217dd7042a1a8cf084c79425b8a0c03ff85c1194d42581ff00149fffda0008010100010500ff00894e57cb3bfc9bee27cb2c42bd58b24c7eff0047f8b64d99e298bd2659cb6c7e956a4e495765f957a4e3ddaed976d9395f14f0ab82be689dbd8656e2dc9bd95629f8af27f5b5e0505c6df71a4f4f7abf592c74567bd5a2f541e9eeb79b45a2932be54e056c591f21f6ae59578df1cf69e4b5189716f5f5a0e29494547cbbf49c693dbb67b62aebbfb58da32db9637ae3605b72ae245aa636e1adf726b9acc4395b9ddbdb8b726b57decd157515752fa2c8325c7f1db7e7dcb292c6d9f16dadb66f15143b5b4a645ad392789e4fe92e172b75b69328e506b4b42cab945b1ef33acfa47726715b8af13711a352a46bcd7d6ac637beb8c9b296c0ac659dfcc3f49c7030db4b6b74da769b9dd2cd5789f293605a8e21c90d657e764baab58e6acca388c432b702dc7ae6a715e54ec4b71c6f953ae2e42c992e3d7da7f8b996e7d73892cdb96392d60b06b4db7b36e183718b07b0ba5c9952a55cadd4172a1d8fc578ac376fecbd6971d75bab09ce5bf1af17fb1d969b29e536bdb50ca394bb1aeb32dda8f7367f538b7122cd4e2cd896bac12832ae50eb8b39cab931b36f66b6aeb6e157a08c771356112fee72e7d271f8fd9dbe16da1dbb57a018e691d9b9158af963bbd8aa31dca729c6a762bcb1c9e8d627bef58648ec9755eb8cb25647c46b63d5df40edbc6ea6ddbc77062b3ec5cbeb8b059f93faa2bc59b3fc1af49ae6b8792bee76db748be721b51da164dcbc9e5b70d85b7b6354e1fc54cd2bce19a235be2842cf77c60187acf79019fe5a35a6fecc30d760db1f12cdadb97e0589e61419df16b24b53b18e436d1c36af14e536bbbb2b5de2d376a5f3d4d5d2d2cac837fea5b20bf72f6915ef901b63279d64e3fedac9aa71be2463d24d8707d7f8652e55c92d67617655ca5cf2e8af779bcdeaa31ec6324c8ea32ed33b1b12b32e3e37bb71b7db5cbbbf95fe934e0fb5bac7b6e36f6edaa9ff000bb7b38ca30cd6b62e53da6e548dd4ba0362b32ce356cdb10afa59f49558de759a630717e5ae4b48ec67913aaef867d1d86fb417ce36ea2babaf3c40a473eedc57da14a06a5dd98f3a5dc79056b2cdadc8190bfd47e4756065bb91b7a996be346dab9d4d978817579c7f8d7a9ed0ea1a1a0b7d357dc2df6fa2cc794d82da566bbbb62e5c25cb952dae74b620e6136fafb85babf5e72a6ae95b8fe4b60c8add936218c6516fca78936b9c6e9a5371e1f5b41c80dc78d54db398393ca934dcc2a7226f30a98367f30eeee6d7f2cf654e533746e6c966d269adcf94ccb1711b299a6c3c5fd596d1228b17c62df93f25b57595d9372af3ab8b6ff91e4591cfb3daeeb79a9c5b8b7b12ec3fc8dc6fd6afc8395e6453e3b96e419671b99d25f1d1b1dcccfa75148155ca1f49ad9bfc7debf96ee676ee0abeb49c8beba613a5cb73f15dedb4b1a345c8bd6b9651cfe3e6a6cc6872ae3d6d3b01a994e935166bd5eac736c3c98db16b562e5dd866ab1f207515e1f6ebe596e2087289f0f9901037ccff0009b1cabff2a35950b326e5567d7217dbedff0020aa30098d7cc9f83719f3bbf1ff0030684d34a55769ddeb4fb0f4ee6d81b9a416d8af77bc7ee38572caf148310dbbaeb2b698ab8daadd729173d27a9ae4d99c64d30f438bda702a4e37e9aa636fd55ad2dc64d3c9a795906d7d718fb320e5b61b4adc8393bb4eeadbbddaf17b9f6da3aeb95462fc67d9b7a4ed3fa0b5fcabb728b1cb451e55b8766652a5cb932d0113adbe5e28b3f6f8dcd8ee60b453bbb927e92c8e6d1f2256f8686ee6aaff000bc8468768ef106069e64da6a8c5b917b4ac464720751e614d3b40ea0cc64649c69da3666dd2d775b45487326b25499729d6fcb32fb6995b776aca47746db2276dada539575fb20b8bd94f4ed7384017358dc6710cab289f8af14ee3f6666d1d1bac24e73bbf61662d96c64b60107ebbe4d643686ddf4b6b0d936eccb5e6678654348735f2d8e560d8db0b1f6da3951b2e8c51730ab406f306d65b55cc201b59cb8cce6b6e5c89dbf5f2ef1956577a2d95264b6d369bbde6a319e326ccbb0ff45744e0b2ebf9338363b4994ef6da39180c6fdc8f4f06fbe027b7896ce8ce3488ee2698ae3638546f2f4974efa4df81721a5f66e8a8ff000dbc489fc761e605492e91518d6f8dad8fb6dbcb0a1ada53ff008999b29fc54c5eef26e7c54d9d48abb44ee1a213b5b6c99299806c373a9351ed5ac7dab8d3b7eb4da789264c9974fc53c0ce47cb1aefb79566d98657380681da5460802541cad774b9da6e386f2a2e52295faaf426cd592f18f675a5f77b1645652ca890e41cd28cc604eaaa66ab5d9afd75364d01b72ee6c7c46af0c6d9f8a5831bb72b2d96fa5c9375ed2c8c7db6f7a843cadf7c54191c3e6c00e2ecbefdb83df8954ffc9ce3d26c196fa2de8b92f2bedee39c3f4769b84fe2cfc1fc9cd6b9538752ceb76dada36d36fe4c6e0a432f969b25a1dcb5d8e456f2a36a544bb9ef8dbf719773b9ddaef36d56eabb8d55a38f3b46be41d5babaced171e2cdb9f2f67e8fa6a86eccc09cda9d9dae1b2a5e6bc71ad96cb771daecd3a53fb199926b4ceb1c58bef3da1619767e5d5e1b2e6ef8d0b796b739e25cf273fe26d301c87d2d669571e5fdddedbdf23f6e5d0de2fd905ecb1ac600203e00f7a002570cda20de2748efd953660952f85c0bea3d26fb73a937653cd6cd95ca79419b69c22dcd5df7b887f1c7445cd6b709d519ce652e7e3fa1b0416cd97b73259349c6ad9b91ceb3716359509b4eabd6f6c7d359ad9200a6684fa496e1518c63f56aeda1f53dc997ae23617380d65c8ac11d76cd318afa97ea5a7bdc8aca4ada1ad8902250e9e101f107bd5932785e7a2e22c91fe75caaa452e2fc31a2992e87d27276966cadaf8f4efbf8f72ce4766c60226eccfe4f0da3f18982c3f0bca331ba4eb769cd572e9ad9bd372bf06e396bcc5a6d353b65c8fb47bbb5b10d6b445442885f9f63506809ec57db059af34b987156dcfa8bfe5594d94dcb59b2b6dcc98c98cf8ce30665acfe370f8fbf10241379da93cd3eb2e1ed376e17e9396b23edecdd715adadc0397f4ddb9188ab53ff97c3a1f15c435b8169f6dc6d3519d64b99bb5af1d317c51f2e99a2509600812a1044c01740198d0beef4135883da0a03a80bedfcc64f5bd59682e9499ef1def760ac7d7635b12aaf763bcd86edf16a3a53edc68a3e322e1ed38febb7bd50a7d43c449459adbd272f2903730d0b526a34f730e403281e9ae41aae294b3dd2be1bdec63313d7d8e61364b3e35b0f7d5ef15c4ec58d59696516b07530f03ece706b2beed6fa1b7e65caa64aa8a9e426e2a975a3933b4a866eb2de389e67384e05e0c4781f7733b93e958266d7d278f67b435b5b5f69aacb311bb62d76f8953d29b9131a6d2c230e20d31661fc9ba8fb5a6b8c74d2656a0f49cc4a7ebc5fac351a8797b4cd76140f4e3ff006d7e88a53dd4df09ee0c6e0f8959b5f63b816b7c9f6de456aa6a4a7a16b1ad6f400087892613a6cb6b7766d6abce6fe41203da88694d9d359338ff00b56766b639530bbc6088eb0247db046c0d758ee7965a6ab918e556558add318bcfc398dee6f2cfff00ab8c05c5391f6f54f2ceabed6b7e3cd0cca2d33e9397b422660fc4aae6ced7bcaba4fbdaa3f3e2738d462f48d7b29be0fbad4383d98506739ddef38c8703dab99e1153acb7561f9ac97564b972e5cd63d462847c2306f20724a9c7b54b18c97262576828453476ad1f9154d8f6a496f628c7c22bdd4ca8972dd97e718de236cd93c84c9f297096c68c42e96fbf5a2e76cb95a6e5f0ad520d45e398353dd775c6fa214ba739875e1962d554bfc5d63e939494667ea3e1fd5b7f8bc8ca4754e98882b87d5a1b76be527f1320f83ad301abce72ddcbb0edd90dd8c4205c8905facb93979b3b6c593592f76b96f6cc68f07461caf9551375886f5204503044b88c2e9e755664042728a9b3db2d3ea58c1b3b93364b33af9905ef21ba00d2438b44f735f2ea664ccef1304387c1d6f4cda9d8fcb5ac137603dc1b2f4f51cca3d59cc8aa6baf56aa3650dafd26f8a2fe669fe2355f666db528c56eb292eee93c4baa6cad8db2a8bf85b23e012d68bf77ea7d518971b71e3acf2fc3322c42fc7d808a100dc4b32c9b11b9eb2e45e3393113804c7459d16d0c4ce5b8137ef43a950304d83871bf0f997dd954ec7200c5ef21d9e6cac4b0da0d91baf31cdde0318d05a5bd13e60972f46e8a7dfa76f6c52bb03ccb3db15b2df731f0746d01aedbdc9ca913f6fd51228b1ea5651d8392d25f79dd1e972db7b6e58af17abdf4fb52e742dafb5d302d91c6ba9749dc5bfe8dd4bb9be0687c4a8ef398ea9a19fb536f193f765ec3d7b63cd6c39ae197fc3afbd85a4809ae2d2f12e68d6bbf72fc4ce1bb0b19cc6dac9ec79749981fbf749d74fb87de695dd32025b48c4b12c832dbceb2c12d783e35366894a7d64aa793b4393f474ceb857575cabcbdc5c4f46b480f221a2b463ef733f84c2aff0089d05f6c36bc7ee0ea79731b31bf038c146ea8db9bc2a5d53b7ed3482b6f1da1a32b3517be557a573439bac4ff0097f75082ca6de2db95e9fac750ed7e5452091b63cee7b58ccbfefe03a0b4d60f4f886022053981cdceb0bc772bb26c3d7b9060d7e3d144a683000956bbadd6cd72d69c9ea2ad748ac64e97dae273ad1fadf2c9971e2d632d9f8f71735e018f63164b05b7b664999b236f62583d1ec3db59867b501aded2496b43892d307bd8d668cd0a2e69d4ad7b00834bc76726ac35967bb6c6b5d1d1e51f0388b4a1d99e6d5eeb866faa2de2e3b46113abe6cdbc7277d36c3fff0039bc095baed9fd6edcc76e2fb6e4bcbfa06cbbf79f5d62edcab3d9fdbb2b93d2a2e98d8460a64a9730e5788d8328b46cbd677ac06fd11dc3a13dc03812a6167dbc2f6e66986487e61bf72b9b4fa7777dd9aee356da7a771fb73d2cba6c7f7ce3266720774db681f5732baadec98d71ee4d6928b7b51735add15a29ce6b1bf758c05ad8453ba0d8389d365985b1b5372d58440f9f89b259478eb6a1d5278db6ff00e6ee1b8d50a3b7f12e4cfacd97e9b94b6c6d26d3c36e2eb9e1fca1b6ff00176c5412247271ccbbeb1f3f1f04bb351f11f1d71b3d34b0037dd1022e920cdca716b264b65da3aa2f1805cfb1a0cb899988f1fb66e46318e2a60d40db0ebfc32c92bb1e1b7da4a8a9b56377a65dad0410d21c45c2db6daf6e47a0755de1993f13ef94a323c3f2cc5a6f7b66cb73dad6e8ad0939b35b21b314a96d96d8003aa8a9a4b1f7cc7a4daf7d4a2f2cf30f7d413db63e344967db93c46b609d9a6e1babad7abb8736eed9de9b97f6c0cbf71dae26bf4df2fed819727b03c65b37fbfe209003bcb08aab9a31ce2b693b11b26b003ac085151102e684e941d3aa6e182e51225715ee15395613abb08c3643c7735b2d81d01e132206b7af7dbf6135ec260600089635cdfb6d857d0d1d653e71c63c3aeefd45a0a563f74b26498e644c690435c0f926121bca796eb4643b128a451679e68c05f6161e224495c3eb706e3dca6b83a9b54f12282649d7be9b96f6d7cec0b88f736cec1f9696e64ed75ecb52b4dfb8c725ddf27cb35dd92777d14f9188dae47f1e83aa8aa89dd8e96e9c46d7cc2e588e0baeb92164ca6f3b525066d4c5377ecec60633cb1b054bac39ae2792ca336603f75a1bde089bddf6d97f972b975dfd8e2e9b09731e5c66b635350d92ccb37e6b5c75d93f2b32eae3906519364953c77cb6cb8669ec6392b5b936c00e981c2a2787cb99dec3ece11672aad536b7546c37baaa60f35435ce91c9b9bfd4eb56804f192da28f4ff2fae8dfe2f1dedafa0d39e9b90169373d3fc44bbfdacab7cda5d74d441c1c38875cc9f4d51433adf57e534b36b0edfa3757722fb9ae98dea8a98d699f5fb6b646359b66f95dcb2ce2f69e27fd59dae63b63b094e00895f729df8a6fcda38f0c5b95d8ad70b0e5b8ce434f91649478e63da92eb72c8b903bcf7157e132ec9a8725996f99b7714c21994f2beff56723cd731c9a6b64b5a3b6258097590438b3a643e66e4dff00b9f3dc7b35e2e5eaf57ab04b635ac77b1f6e40530a8d3b7d7ba76b4f36176c75d736e5d5c8cccba71ed93ad6d3fd4ebce57ddff93b1f0eb38b2e25e9af96b9176b271c6e536d7b7af16f6dcaccc913a42e2c5d3f87b4f72da8dab6c7970696c999ee72e6bf96ec6b439a3a223f533710cf1fd7873a6cff00ddadb1dbfeab92620c10734a200507f66033e45067bbaf6c54e7b78e2ae20e755f22eaea293756facb2d791e90a692c949b0877363dd11d4296606c623c59d35fef2f268876e3e21f5c59910d3ec3db68496ccd7b5a63aa0741e5e395a7fb1dc3c87ba36e5b7ecf6a7de2f6d01a3343fe6cdf9ea32d2fc377731cd70d9b68659f63ea5bab6d3b4f955696d1ecdf2e0d3592b3dcd99f6796928113018f847f5336ffae1ff00fa73a6ff00dd9db1feebb4443ea2434ff2e406b6b29c35b5529e9cd065eb8c02e39ee4d414360c66c9bf706a6cd6d14d77af65a9cf6026ae9a1fcb90532b2404c70786856287fe2a69bff7a79390ff0058f883d7141f51f68c1bb3e686ebbb8c7fd26f2c22b887696cec9f2abbff007396685b4b6e9b7ee570936fb6f1e28675f7727a8e55d8c526ced677d7df75ef29acefa3d9e6a67d2ae555336eb87831f2bea66d2adcf5cfb7f2058c67dd682113d07d79b7fd70effd39d3bd36d6d8ff0075a79853eacb0d967eb9ff002ce37076358f01b54d871ed712df3255235d6cd19a5757eb6acd992ad7afb0eb50de5a164b1bc6ec928e9f39958d63ce5fe59c793b1cb0076e6972246dd1d1d62ffd53d37fef4f274477271007ff00931ee7d9e435bbfaadf274fe412cc8d6fe5022b45b9b8d71fe99ae6c8e23595f3f2edf57b7d9f5270feccd7dff00d47306cbf72cbc55bd8acd63cbcb207d94804550195f1101691e49adee93ba6b2a6a30ab4cf13e801ea7dbfe7cde1fe7777fe9ce9e81db3b687fdd59bd29750ffb643d9e085bfed7fd969ea474afe4f329b5b32cda4ab2dd51aa9d325cb136636176c669f1fe4ecb2fef73a08ba333759077183f358a1ff8a9a6ff00de8e4e7fbc7c40ff00a4913d1ce0472b6e828753ec496fa4aa1e57bbb65ec360c5b8abd63c4eb28a5d77cbbbcb64e2fc51b33a8f5a7a8e4258a65e751711ef8d95947206c9fdbea307a715eae45db0b7d2cda499e40605f39992f19b495e9b7bd640c54620fd79af4cdddffa71a77fdd9db4effbad37fc26a577fdb30e1da5c49b850c9ada4cbf13b8e339262d73b16e8d658c5d767695bedb37f4ec84e1193d4e4bb2f5ed9ffcedbea49731c48726bdbdfbacb7fd6168f9ec461c55d39fef2f277a6e2e207fd223da110e6f6ae52ba6de328d89709370cffcb60b3baf990f2eef0cfec26bcca93a9ec42c3adb9557f6d66ccd6760763dafbd456d1c8ada2d3f595188ee3b85149aea0aaa09f6dace305fc5b768eecb1bacbb5fcba2264badbc7113217b2d92e6026105ff00f4cd40ff003bbbff004e34f01feaceda11daee639d2707e46eb2b1618ce55ea7796f2af5293ff951a9e737646c3d19b1e8f20d43b4b0dbc5ab90fbb68586a3919b25976b35935eebcc7f90da4f1fb39e566aa68772af53c65729b524363dfed790ec402132c7ff00aafa73fde5e4effbc7c40ffa49befd60f9a0ccbe64adba6f5921ed97e5e36d91d74dbdc80bf1bcedec4accebde5bd02ae1fea0ef0f55c86b24ec776de3779937ac7f90561166db787df1f8fe5bcb7b13597af2e3390d4637921aba5d7dc9293f2cd69888fea66c3ffdb387ff00e39d3a7bb6ced78ffaaed3da711163c7310a1bb6379fde2fb2317d7b71bd4cc7b2ac52863fd84c9643cd2539532417bb9592c37581f9655824607846315367c0b2fc0daf7b87680e1d26d8bff55b4e18ee7e4e08ee4e20186243ddc7a6c4caa5e2b8417d45b35579b8a56ca7b6e3f5971aab9d6f18ac1fd9ed1d97917f96f01e29e35fcdd91eab9798e075bf8c3907f65ab397b8fc1af607cacc9c338e2f3610f21008ab6cccdb44e94cde5e5fafa44e6cc03f733631cddfff00a73a680ff5636bff00bb0d94f993ef9855d9f8256c8c471ab058c6075f67c16c15b8d5a2dac32eeee1121a0a2d5cae8ffa545b2e60a1a9c6b64e396576298b59f2cd2797e2f91e6f80e4986de1a7e7b18078ada6c7fde6e4d8ff00bcbc40ff00a5427cd5c96be56641926c3ba5057651e57bdac9777fb982f14030347126c069b0fe59dfdb4b8371231e349847aadcb8bbb27d67c4ac9853e59beb197643aa18f6bc716ae1497ac52b2dd536baef205a8b30a6c6334d655b3f536e4905cc2205f9a98e727ff4e34d03feaced527fd599139f866b0d693cd55a78ed8463b9ae41c9ad798a63d2727bc568d756ba9999d5bdaf2e7068444172b07fdb02d2d7d4192d955975d3962d723935b65b70a2c7708de74175a293417fb13a3c58d3247facbc9bff0078f87e41c51c48192e536ec7ecd6bc82e32a9a5b1ac97e5c56c33321ca396b7e93fd84d79952759634dc6701e5164dfd9ec9d6f8c8c5f03f573259d67be66cb6cd193e3f331dc9f8fb929b16d7e486382cdb63cae0d70992a6ecdd4fa1b67cacdf0ea69bf7166a01ce1fd3873a6c1ff5636b82ddb7aef2fc4e92825e2f74b561b79a3cb306cae8466db2b2d978edfb24b1ff009831fb1510686bc271e9ca796f9bad71ad0f78b85b9bafa935de53beae3479b6ba332902e3c6294d5baff2cb35aec795d8c8ff00c58d340b7737267aee4e20886293a7762de7955c73cce339c8282eb75f28113c56c6ff00b1d83b7f263926cbd578dff99363555449a5a6d7b493b60eeaf59cbcc54b2eda772a194eb6e54e32eb7ec0654d452cde46d353655ab4020f970dcb2e58964f934d38065b8c6436dbf5bb366fff00bc9b319ff877a7192ced7dbda8f63b3392e2ca9a9b44ebe6a7d61579856b73c9d9ed2e336ba5bc50ebba16c2e7d44c1ec7e9e41d2da2ab10e45575456667a0e6e5d538358791f458eeb9cfadba5f14c6f7f6c5d719662d61c6723bf545db02caf0ee3469d2e1b9b931fef3710661762bbe36dc8c1f1dad64fc1f1301a0796305ab4375ff001e25b5ed6711f1833ef1c89ca3fa2d5bc44c59bf77d66f1c48e4facf8859508f26717379d64d208d013a4669a6becd4487f9b57e6f6ab4bb10be647a2b3bcbdd4f3330c26f7ae2f5a1e468432eb6457f2d31e7def72dbab19629da4db74ceb5c6e9bfcba3cbb6260d4f9064f9064f576e7175d89fd51ec7db958c0ed5f8c6fd9b3a7e77b76a72fc671fd7f9d64029f48586d4adf9471af1ea9a7db3bbaed497bd73bfb2c9188eb2d6f84651bd323b3e47b3747ec3b3e05ac686b2a04daeaeaeb8d779ad969aabd5d794d78a4b563cf78972f4462afc6f5772cb296d5659a67147e2fad7d6d2cb6eace44d750d3d6d15fec3518fdff008eb959c7f6a7227146e3fb461e6222306cc2c77eb0d4e316ac332f1c57d755f6d9dc3ea87193c6edd36c99331be58da665de8773be5cdb3d0d2c97ec1bc4ba0b95762552695f6cfee0b4f736244c7358395139add6146ec65cea0cb29adb25f7b997b9f67b25d29aa64c9e527d8acd45c95be496f12f34ae6d1f0f6d4d766da5f4debcb26358c5a4dbf2bca6ed945efcdeeb8b38a7f6bb0370e5a328d97afb15395e73366c9a7958d53cdda3bb7d772f30dfbf4ba632f3966b5e55e282832f64da9a79bba9b276068e10f3b9a1cdc2f60d8ae363b36459ee8bb9e2f9858b2bb2c925c8ca100c8347742650524c5558561f50fadd41ac6a2b18e24b5c0877ccdc8b14b0e476ea3d6bafe8a4d16378fd0a6ca972d0248ed316c9941d326cb6cedb5bd31dc0696ae8aaeaaa72ccaeef955e3cee7b5adc5cbb57f1aa5b0319c49c49d32bb91f95bf1fd61c46c41b2e9fd76c1c4e465b85f143299f6ec9379e1a72bd6f29ed7cae2c6474b5d6ec9b1ca9c6724f3fe5826cfabc7edd4f86de6cb335d725f16c884a98d731ce0402004e200cef2dabc66c98f6d864c9b83eea7e49903b71daa6ec9ccf6b5659722b05c1d5f6b07a7e5dc9f31b2d5f323b3d9a872fe41e4b965cbb718c02a2f37abc5f2e90ebe7d73883b30ce795d977f3320707c358620dc4303e5065532f9b175ee272712c2bd7eecb6d5ebadd76daea5b8dbb6ee1aec4763e0b96cfc4b2fe5463524dca31f838fe437ec76e8729d5bb1594951bc3513306e4ae03918935d22a69d93816be2e6ec9bd65166c5b0fc4ab6bb5febbb165773cdb2bb25d276d7dad83d64ad91ada86ff006dc15937b9b31ce864196e3f619397729699d5390e237eae9f78d9b39b6c631ac6fc00093c63b2d058318be5f6bb21be71ff000cff00336cbcaf24a1c6b1be3f6355d99ed5fc0392185ff98b5d715b32175c2b953850b9625005baba652ecbd2d514d554953f07f2c473dcbf0f9d3f35d41988b1eb6cf6dcc91bfb6fe26fb3f2d35b57b2dbb7b56dca648ca71da942e542f6ccafb7cb5539961f44dbbeff00d456b957ae5e63324ccce792d9f2b861d81daeb2a76f545b69674e9f5355f0adb6cafbb5cf90373a0c475d97868e35e14ec735e72cf326c9b4f1a70c38feb9fc01ec64c65a66cdd39be2e56ea4b95bf2ac62b315c9b5167230acf793bafdb63ca21f0fd94b8ca9f65ddbb4ed2c7ee4c6aeacfe471aee8e660bc7aac7b358ea4eda9d6da65ac958ef1a681d2f28d156b7bf7adfe906419865b9216b5ac1f0c2e3060d4c6767d98d466398eb4c2e76679c4e9b49474748daadc3ba65cb972a5fe03cb2c19b5f60e3be72726d75cadc0bef511635c357d752ed8d2f53495b4757e820d41a07a1b2596e37dbcf202f36dc235d1801c5cc0dd67c4b93f9c8b2613c50c19b4361fc0af368a1bcda359deee1aa771deed16fbcda32ac5ee18b64dab73d9b8366dca0c06553d7f4f340a0090e9b2989b534ee3456bbb57195ac7664d14fa536dd4295c74dc930378d5b8ca6f19370b91e30ede83b8cfb89a8f1bf72053f8f5b964367e9ddaf20d46bad894eda9a3ada377f269d09b25c8870f081f31301c6bc3a82c962ccb2eafcc32ad75854fcd733972e8e869323b9dcb6fedbb4dae86d36bfc0f969818278f7b04e5d81f29b5dff0036cc00238ff93db335c132ac62e98be48a2212e63264eb46abd9b78566e2b6ccad6daf87f686ab6f16b5352ab569fd616a6d158acb42895d517403ab689b36e1996216d7db760e0b75a9aadb3ac691f64c971dbf49feead26f331ec96cb7e4d8e5caaa697b65e33baecf90e6f5d8d63b5cae5a6b565cd972e2dea3aa173e1fd8a61bb71273aa675df47edcb52b9505cad5318f96f6f86bfc1ebf37cb79339ad0505bcb9a071a35f4cc7b10e4e6c0758b0fe2860224d27e099363d6ec8f1fc2321bb6a6da7325d1d7516cec06a304ccac1915cf1bbf6d2bb5a76fc8c738a19ad6ac778bbabeda5f59abb0397266b664bc87666bec6e7e359ce19932c9771555af3b9bbaaf965d815f6cdd9fe56d2aecab6ae09c929590625629fb1355d2cae3ebac3ff90fc83fe0506fab1e47af6eb9561391e3f8ef24f566312eaf76ee6c432dc8b79699ddb439d4ad4b42c6ec97421c7f922a37b6dfb8de65f20f22c86cb8a63986e55b4761da32cd999aeb89f976c6b163785e359c59b21c6acd96e15934ac83466aabf2bef1131e9adc8f8d9b46cc757e7787ea8c3ebee35d73afd27aedd9c66f71b8d15b2df59557cdbfb52cd68a0b35a3f05e56ebc0f91a679016db1e1d9460db276f9c478e7acb1f3269a4c893bd362651afa9f59ef2c07604ae4c5a664ed63c8bda55b8fe258ce2760c5eddca0c2e4e1d57b8af1512360e5398ca3b9dcd64d97c30a8748c679a9218fd678bdb31cfea30abadae87983c94ab9349b42876de237cbbe1329c791a71ecbb4de7b69bbc9b8721f72e923945471c2bafd73b3ce9d2e4cbe24574ab9e4793cf9571e66f2aed971b8ea0d2573a0b86a5e50d551c9d219ccdba58787519984e99e1ed8450ea9caf6be4977d995389ec9a591abf6f4acbae970b55b6e3232ae31eb3bc8c5713da7a9a8f7b6f19191e3dc59d74eb5d83f06cb675f36565786ebdc3f0fa2fb7d0080895c81b756556abcd7436bfd9d69bb667b6b5fd92f1afab36df1cf0be4359645a33fb5cddcb2f786acc8337b664b865af32c5f03d74ec36d784ea8c3b0daabe6298ddf9aca9c431cb6d2673af67d2d832dc6f226dcf22b1daae000edc4f2ec772cb4e559758713b55babe96e543b13614bc51f5192ec9b5dd29b1dc7e9aaef5a9756e495766d5d8559eba9f4e1c76aaab4fbf22b8f2275c66f9d3f909517fabd45a4f60eb6c7b5b6a5753d8b934d021854b9992f3091008ede999e058a6676dd6574b8e397efc1b52f6dbf3b07a78e454926b6c7a4ed19b633af25e47855f66e318bd8717b564796e3b8cd0dab30b7df31cc5f73e519b59b536d0a4d8b8e6a2ce335bd6d6a8cdf11bd6dcb4e8ed7d2a5e7f8be338ff00262b70ec7d94bc339ce99a9b71da2f19dccd679c5266f84e076acf305c2b70ec1c7739e344a6096ce41eb0bd66563d0fbcce6edd73583786c1be693d6b71a1df773cd30ec2a9289d4d41a9f6667195ec1a9dbd6c9f914cdc168b4d755d25156c8cb706c672da376b8bd9b7e1581e2d85da7c098227a533cdcf919f83646d763bbd98623c7756d195aeb07c7752d054d13753e1747905caf12b0ee546c6cef10cc35df14ef6cb9697d2b7acbb19be71bafd89d5e3f8d3db68e63661816b0d9b53c76b45d719cb39215f6eb6edb995f4628741dc728c134f6b8d4182b308d5161cb75967dc77b7df2cdad373f1fef76d43def7b0a66379b59b1d19672235c31fa37635df35c62d58ff0024a4535f768ced538d4893a0aaaef4ba6788d6ea2a7d3dbbed36db8ea5c7f6e67d6dd336dd2788d3c8919de4dae76ae57b8aa31cda32663dec5534827cd88234134dda9bf06dfb6ca89faeecb72a6bada7c799d60afadd7fad73ab6e6f8556d6d35151720eef6ea1cb65d651d452f17f1cccb13b662fae732b3ee2cb74c62f9065834ee373b2fbeea0d797fbddb6db62c7ad9559d60d4532ab72eaaa553b911a664a9dc9ed352cbf94fa8da9dcadd5410e58ead29bcacd4e54ae536a07993c91d2f314bddba7eba55b29f8fd32aee7aef5f64779bcd985cec5adb56daf00b1e3baeb32d635d9d597676c9b56e6d6030c758afd67bfdab37953b6472531277f9b797008f0fcb73e4c719d5daef1b18ce0bf8264193e3d8ed03b6c64791999ac2f7918e3ddc27b309f7502a2557d0d1d7d1d271c2a718bd3753e4578a1b863385b29ae7ba351d885cf95fae299b72e5f5c9e2e7ca5dab54ae3bbb6e5c0d7e5796dc14c932e63853528425cb6904845c4a0e20773944aee28388315d92c834d4e53244a966dd98e656c16de40ee1b7b2c5ca9d8b36b6a77fcfb10b06f2d577c7d66a2d5f777d9f1fb3d8ad5826b6d91acef38cdcf20b8d3afcb74ca9591651fe96e478ccc97b82eb607d96ff64bed0fe01986d4c2b149dfd8ee9cc55834ce1b6cae0d24c22adad18cf20c3801dcd0abee1436fa5c87927a96cc29f616e0ca29769d07246d58fd756d6dcdfae73fb8e0b7ccb35fe11baac779b45e2c975843d16378d5fb26bc5931ac07435833cd8793e737a9c657dad33a1f2c7d8aed5fbd303b762dca2d6b787dbee3415f47dcd817086393a4de77f1213a5b5ecbc695c4ea6e02f9b8f0f387ecac272e1eb331d918c62af9d64db799ac3f5be1787cb00c3d951d652d6d2ebcbbd4df276feeeb45265d9963f8958ae3b3370648676076ab85467daea9eae97486ecaac22b296aa9aae9778f1f5f44e96f97365e2797645895eadb7fd67be2cbb1b5465980552811f1a202d65a6f29d813720cf75de92b2df6ff007cc8af1f9e90e3cff0dd75badb6d16edbfb76e7b0eef836bba4b450d361adb456da77ae558fab766b8cdd31e9d7aa7c778c5a2ec598d060a094095031cbf5961796ba452edcc34e259de3595c8f5373cb32bcb2e5856bcc6f146801442cb73f9762aaa5cde4ed0c238d979afa7b0691c2f15ce303d5987de2a70ab15caed94de9c5bdfdd282357472cec7c4ecd5a74aef2aac11f6db8d05ca877571e197a7ce933e9ea18f992e76bae49b1f499cf1b28ae34970a1adb6dc210f8967b45daf772c378ed8e6356fd99c97b85ce48041a1a0afafafd33c7ea1c4df7dbed9ec36bdc1b8ee9b0abf5d62f63b3b59554730074b298e2c17ba1adb7df32bb548cf777677975bf0fc475460774dc6c9ba7282c74f806cc7dcb02b164d8e6414ce01653afacf7dabc7322bf53567a8bfeb8986e147b5a7592b2beed4b4568ca722de33f04d679fcab8ee1b95b8609c8cd8ed9d836f3a9d4761bee4d8be2968c62d3976a1d759855cbe34e94606f1bf4a04de3d69862bb6a8d078fd2679adac39a55eafdaf92eb3bc6339458b28b36d5d258e67b2b32c1f27c32ef020e0bb172fc1ab2876569adb7439ff17b2cb209f2e753d51041f30eaa8e9ea6b6b704e2d641719775dc3a9b585b32fceb2cccae1024e07aef2bce6e7ac750e31afe8333ce31ac3ec99be759bed9ca706d7187610ad9a83445ee8dfc79d2ef4ee3769329dc67d2a4e3ba835f6374f67d3592eb8c9b6dcbcf735d37c7fba5b2bf4ec62b7ad55ab19dbb72d7b473b63d455535348a9daf75c96a718d61fc6bafa9b85badf72a2a9d5d95618eb3ec5b65db4f641afa6d1e114b499967374166b57f6e001e055757d1d053cfddf8ad5540b76edc9cd874b6036aae5b774858b3da7b6ddb626a2cc7586dec5b3ea0c831ab0e496ad93c68c8f1f213d8c7b705dcb9fe1429f6fe91d954f93f153ef53e53aff37c5a631ec78f07be5cb18aeb4cf72a7635c57b7d053556f4d3dafe833adaf9d66cf6b5ac6b1ae7cdd65c61bb5d5f65b3da6cb6edafbb31cc069e96ddb2371661ac753637805b48045e74a60b5d5cea7ddd8baa4ddb8632aa9aaa9eae4745009ac6b54ed5d79c62e795e6bb531db07286d98f5eb4bd8b606478b69fa3d497eca6751d151d0d2fabcaef92ac18c5875ee5d59a1f0dd4f62b05cc4144273806def73e19455a65ef4ca45bf436186ae9292928e9fc99d6bfc6336b3ec3d3f9aeb5b8eade4ec99aa44e953e56c6d1f85e6eb60695cf3092c7b1edfcb1ccbf2ac5aa31be59df29e4bebf8b39fcdbcf1329aa25d9f89f69a3962fdc5ed7c727e58e5158dc8b26c8b25a921a139ed6375f688ceb325aef4de17824babada4a1a4da5c9e9d52b57683ca3399d8c62d60c62d1e4ada1a2afa5acd1388c9a89637862eb1fdbd865ceb410a214e952e74a1a1b52ff0067ba25cb91887ade41d44d9b80c8a793224844b80acd9d26beb5baa6b320368b259acd45f02749933e56cfe2e5255ac4b60ec5d5d76d6dbcf0ace1b0e99e71e300cae6669c79d938d13f2cde88b5ae16abaddacf36e75f72bb4d0034454a06754619c6fd8f913b02d09afb0f99031d91c81c330f378c93686dfbf6aee3458ec07e0def1fb15f6899abef98cbed7b328d97005de1915a25de71fc0ae33ae584faccc81bceee880b36da560c66b29b03ccf326dbedd6fb6d17c4cd75f6259a5bf61f1872db1bb06e426c2c426e07bb75fe66ba0395eb7c232d9793711695cb23d27b4b1d531e24cd911a89f8ee89dab7e6e2bc49b54918a6bfc3b12a7ea5679bef5fe2032cdd3b4761d6ebde285d2a56358ae3b8c5b3e25decf6abcdbe7e259fe12b07d9d8d65ae8ac5695d454beb31ebf59a5ec07e41b17618c1f5c62d86537a0ce75460d9acbce38af985a963db8f6be055b8a72ab0ab88b45f6cd78a4015ef15c6efb2acb8ce3f6491d15f324c7ec34b9772bf10a155398ef3db33b07e23f60c5f0dc5f15a0f419aeb6c5f2f6d2ddb60618ac572b5dcdbeb2875160f497ff00499062f8ee454595712f17aa377d1bb8b0caac7f925b56c33ec1cb9c7a7abf72e6cd2d54ef0de39d5558b8bfb2f21abc478d5acac06453c8a793e929ed96fa6aafc52ff8962f90c8bdf14f59d73f1ce36ea7b33a8e8a8e8a9ffe28ff00ffda0008010202063f00fe252eaa46e1978bc13b4777baa2a51bcd8a61c537c9b128555fe5f65ddcec2770d987c8a6174641f3411e227c4775d7037af3f846c84473e426475a12ebe8a10654d46ddbcf9493137510b44db420f98d89f6d1de47886cf80ff4f1e7e626e3b88369344ee2368ae4897741d46f790a49b0f810493b7f311fdc429858421b947536989143ae23a626e206ce3e45b38424957f4987ea228f81bb9f5987ea2062294baf9a95715cd8bcfa4dc6e8e7c841da46d3b4f94f813cfa894a2110c0ff0063abd642109cfa2892689368f9b01f2926d24853713ed23da429cff91cff00913cfac951d88208a30268dd0449f01d4444229cb75f354cd4f61b14dc84ab106e43136ad7c0c0924db4490491441245483131a906e371b49536ee36ff0069b89af96ea9e4a99a9920de86d51f2fb06cc9f6126d5a981818181854824dc4123fd31b3904d1810a42f3e931e7f318f3e93139f79040e60327b07cca44904135528fa7e7baa7929433596d253f492861a3fa8f17a8f11e23c5ea52337a8da9cfa0ff0052549a31313131a1f28ca4a1b56aff00b18fea36e5f5ff00c187e93791629cfdc129cb754f250a20b6326d31a30d460de9a653d6787d6a6d437108427ac931fb0c4c7ec31a37210606d5a3e07fad12bcfa4947f4d10a4d9273f704128cbe7bae5f38a2dd264881f349858c9b4dc42dc979fb8288a20975f20a2dce4ed220edb38370f9546cf715e7ee0a655329e6baaa0a28a273f76db71a720f9b1b9491e136e37144105baaa0a28a25aea34e51875b9ce03fd3c79f9add6a2dd5451504117c966ea6a5342784d2977d7d677daaa894add7cc3896b07fd68778f6cf62e6a41ed1544a57cb754e7a845128412cbbcd5d7522eec9e13525928a28a2add90451168412cb5750fd57a64342e2685b35145156ec838f67a4d030f7c7b26105a3cd7745a54516bb8ab6fcfbad9c6b26105a12eed465e7ac5152c1455b5f898d4f8dd90410432a5dd50513cff68a2a0b5d328992e93668a258208208225dd5051acbc9fe23d77bc2a197bac1f9f0d0883de5c6a104aeb9854bfb0bdd5d455a185516ee8a2288a2288a2565acf4a58bd33552be5f3fb4cd5d54551c715455bbb88a2288a22895945b04b061ec12ba19ff000d74511471c55bcf98411454152b2d9252820e352e35aa19ff000d74411061844bcaa0b42a0a9596d92ab0f6a867fc35d104411044112f2a838d43d754f9455b571947ae9425745156bbd2e2de504512845aeabf30a95d2b30e838f43564aeaa22d671545145cc2ade9d04104186aa9984cd6b2491eda92450d42574ca69ada473550a9dd7b6153b285186aaa82a574b09a904d44afa87ac9944ca2250996f6dda2a0a82a0d59ba8ee5ae943a8ca32115dd065a895587aef5351e4bda2899841104ce266aadd677d8c1032935dd48a1abb8d5d4d428a38ab7c61045350d5dba94eead1436619075aae40c4d114255d46a5c6bb768df30c30d7dd228a2e417257ef34ae355a96ca48c955c7a1d0826845aaff007507afa46ec110434df5144cfda2276882671eb365c07cbe21fac61d10d2a847b48249209b184a37290830ea3a60365c6c14d438a2e6156fdffc8fd838e792b40e3e51b28ca8614b5104d94a9b6494a1906ca3f5d741107355117f5cbda2a1a0d235848f908f1138dc648230366363aa96a34f65fd144ce38e27d4116bc9b4d5f4fc5cfcc69cde2b8c126df09165a855a1738abc01720dd83f60c2e4b1824da6f209b3c091b220f9ecd3220994f29a44c9c0507ed34f6d1aac648a371b55c6cc841163b50ffd179fc2445a6a5a187178137cb46aa34a8cb6b042983fa0f07f51e1fea3c3fd461eb2549530b563420d430dc0dbe61bb4d06935209992e381818981818daaa8b9d68d238df2f03735a7550837ca7fd79baacfe2626273ee39f71cfb8e7dc73ee39f7518db684a1fad4ef1be6e0ba170cd430c6bca3d4c68e7dd73c49250c7edadad4751ba90d5d4837cbc1b5253a54dca61c01d30349a064e11a3ab30c411c0b11d47581c6eacbc1f5758ebc1e07e0e99ba87e108bdbc1d7f947ede0ee69ece0edda3765be147c0c2ae07c2dd855e0b06e8a1ebc50e4ab73e5b9b0f99608b055a238141da326d42311cf255c46543020651dee6f9b11ba8651d4663b2aa510491c15a8dc6143e51946cc770cb88e980c83dbc9b47cc30ea320c83e6361b8da4f038b0d8a4d2ca3a1de366c07ca30f946cf6ec83e71b28ea451a94643e04906eaf24e17bdbf96cb131369ffa6ee7f94d48328c3a0e8328f9301b3c1136106e1be9f3f987ce451048c83ae26ce7f31bace0dd7cddf9ac650c29ee1d311871979f50e86e2607cbec1b3d76ca3afb288a369241de3adac7049dc4456741b3626d24ee222a473eb23d84a73e836a13fda6e228ee36e24d1abea73f954d392bcc9f2f146cd284624e14455dc84253241181df46e3bb86aad1bb0b77451bea73f947ca32d104926d537290412b43a0f9f1f38d9475b7826fd953e6271b93a28d9d0db521495a64dd8f9cdbb475b947138a1948520937a9b3a1b8b92bfc527fffda0008010302063f00fe252dd105208e2d04df66ed1798e09371826a413728249e270471b4b48ad249045b4f0a5bfc137b5baad297882299e876061d159e1a9427439284e8727ee8abc4d284e86a09425dd7a20bfb08716ee9c65ff6849d104b9a09fb027e2eff00b9fbdedfa22dc4dba20f7d7e26f7e6a186e1cdc09ba1afc3186a5c7e00dc31a9d23743dff684e370c7e0ec3f431e971ba1ac3f0771b83b8dc1dbf7729e88cdda38d4904dd5c64e3104917561f8ab2d78b9471d827a1704dce075e3b3718e804136b1d048249b19e86cff00197fffda0008010101063f00ff00f529ab8b966db6f96cb04ad0d3d4d6998c938462a641a1e25447d2742b0d5a77b0b0f335bea2c336c06a533aca5cfc2d1aace9a8f77541f1f02b6c971a7b9529fdad34ab2807b1b493a5bd16deff000b9aae60bad35b61c8b2f1e40aee07991ed9243e0456c3c5cad699ee8c331efb587dce9fd175421ea245f1c70fad8a1e58bc59e1a7acb809cd3d751cccd167044d31568a41a86e2779656f57ef5b55bae94b0d75054c15a26a6a841246db85b32adbbd2377d2c493f2e55d4d86a9b514841f79a4cf6e438721d6833fddc9babe4e0dc6d70c95bc3238773b1caf1d480074b4634cff0080c898f72bc88af714672682be334b5aa3b3891aef1f0bd3be122bac9372ed5be434d72e70163d95316b8c0fe2f0711d65bea62aca4946715440eb2c6c3b55d0953f7c3575e6be0b751aec33d4c8b1267d99b1199f0612e168ad86be8a4cf454d348b2c648e91a949198fbe1ab2eb5b05052277aa2a6448a31f19c818786c1054731550d8af10f76a4cfaf39e51a8f8e286556c7d1f6590db925255282cb1bcb54d9f4035055e60dea45061ae3748d2cdc53ae4aebac8d3d63b759d00b49b7fac9170935e9ea3986a94ea22a9b854f9e5d1c08f48719ef7b569311d1d153c749474f575b1d3d34082389156d720d2aa0285f3b251a7ef5b0f618eb87f936fb157cb572b8c94b5544c22a8ab686434cb31da6232a86c9d7ca665e1f93af5616a2ae92df7fa2900d15911494e43a02cf11d63c4af869b94af12d0cb966286e03de29c9cfa04802cb1a65d5a64c495d4d475d4888496bad8a579a2644e969523de58fcef798b091de60a4e65802ed6195156027a33318789bff00b74d5e76122adaa96c156c74f0ae49a23cfaf2a88cc9005cf67b4923f5711d5d0d447554b28d514f0bac91b03d6aca4a9fbcdae17db8416da34cfdb5448a809033d2a0ed77c86c44d4cd89a8f9228788cb9a9bcdc54a4436e41a2a7cc48d9f92d3987f86f8172caa6e8aeda5af571ce2a1897301d61242ae4b99f634d1e05482d4314ee17df22ce7b657052724915b485765cf764e14f1f7a36c456fbe85b05edf24512b83473b65fb19ce4159b2f9a9b437928d27de8f5971aa868a92219c9515122c51a8f49dc8518786d924fcc156ba869a14d30061b37aa26e1c7a49f2a2e360d259569ec314874c50d2a7bed6b67ba14c92294cc93bbc3815b0b73b8d2cf034832374e629a4e30cba3285b8938f477153d5c24dccd71a9be4e082f4b1ff0029487b54aa1e2c833ebe2afab80c16dbcb56e0020918c74e1faf22cda5e47f5999b09cb766ad96a2b66477a6a868248a098c799748da40ac59546ade55565eebb36ee33eac541fddd6dc1bff00dbd93f3fdebcba33e91583fc9bff008bec7368ff00dce6fd2cbfc5835965aea9b5d591919a8a568198761d0554afa2dbb8486ff4f4dcc5483f6990a3abcbab2741c03a7d28f5379d88e9ea2b64b1d6be5a69ae89c15624664ace0b43a17a33678fd5c7bedd2cd475af5003adce9bd94cfd8def1015793e3332e1e5e54bf331c895a1baa86d47a94544214aae5bbbd0c987aa868ee36c5076d7d9a56969e4d3b7da2c19ee659fcfc4b854ba8a3e61a6077da45f75a903b38902b45f2a9f0b1de12aec151b039a98f8d4e18f4013c1ac7cb48f02a6cb72a6b8c0403ae9a5494007b749397c3f7678ae9778e5af5072b751ff00335248ea31c79f0ffb568d70f4fcad43158e95b62dc2bb45455119f7962cf81191e529f79f8b85bc542cef13f4df6f7248aa109cf2811b362a01dd582258bc9e22e22acbf96e65b926440aa4d34719ed8e946a56fed9a4f3b4ae161854471a05548d0695503a0003a0626a0b853c7554750a63a8a6990491ba9e90cadba4626afe4099554ed9397eb1c98fb74d3cefab4ead9ecaa352ff005b1a6ee3e83af8e79e96988597976eba95d133d23dda66d5222eeeee8e2d336af9b5c2c14550686f3a7392cf59a639fa3698b6e99d361de88faea9f7735377b853dbe9c0cf8b532a44bb3b0b919e1e3b3c5557fa900e86a74e053123b679f46cf4a28e5c1a6b4ad2d86394e51474c86aeb1837401248ba357f0e9f56ac25c2be96a65590131dcb98277550a7cd89f8932af9aab02ae166e6abccf727cc16a0a11eeb4f9e5dd2e4b4ce3c2ad0fab869adf434162a640124af7d11391d92544bed1fa3f692361e1b51a8e61ab5072146ba29c38246979e4d20747ecd645c4915ba4a7e5da1398d348bc6a92a7a9aa250ca0af9f0c71b60d6dcaaa7b85636c7aaac91a790fc2e5b1cbbab68fe67a76e5940d8cb17793f773dc4fe0a745fe97debcb4a76672d647f0f0e6ff93818e6d1d7f48b9fc40fe7c124e59027f06dfd5c477cb55a636a09d4c949ef13ac32cd1f53c68e3b8dde56919757c6c1a2bfdbea2d9381970aae228ac7a88621a275f3779b025e5fbc55db733b520918c2c01e8785f544df157090733da61bb45b54d5509f77a827b4c6e5a26d9e6b4784869eecb6faf760a286e23dd652c4740d7b8ff159b065bb59292a6491725ae894473647ac4d1696fd26c49372c5fa6a362418e92b9054443b419069972f958f7aa7b51ace1bfb2adb34c4cdeb69531ce3e36ac7ba54de2a898b75a8af90714823a8c92a432f57ef7e56156ffcb493265bd516e9ca927c10cebb7e09b082aeaea6d32bec65ada6902a9f0cb10962f875e32b4f305beb9bad20a989dc78d436afc58cd48607a08da3ed5aa2e1570d1c083379a79162403b4b39030ca6fa97199467c2b723d5e7fda440c2bf1a45c48bcb3cbfc351985abbaca06dede0405b60e9de9d7125be2acb85d1642c1adb6889a0a7d07cfe065a947f5f33e0497fa9a7e5fa56cb543105aba971967d034c287c9ded5ea612a29edab70b9a819dc6e3fcccba80da5430d11ff66ab8e9cce5d7fe2eac494b2559ba5e23d9f4650112481b2cc095f3e1c23a3bedabd16c4b490ce6c1667cd7dc685c89dd4e6329aa375cea077923e1ab7a588e86b8c97fe5f5ff00a24ee5aaa119019d3ccfe4ae5f30fa97cc65d5835bcbf582731eca8a39068a984f64b11de1d3bacbaa36f219b1ee3cc76f8eba34f999082b344de7452a69950edf25bd6d587ade50ac379a48d8c8b6ea82b156c4173238328d292b2ff64dabb9bd8fa1ef91b5d0539d125b6eeaf0d6a6924154a9cb5b1e8f9e8e7ddf2f090de567e5eab3906352bc5a5d47b2a220405f4e64870b576bad82be95f6a4f4d224a87c4c848fb834d55347042bb5a49582281e12c40c309b9820ad997f616f0d58d9f6130878d7e3bae0a72ef2ecd29eaa8b94ab0265b723c3878cdb7d264c7bad2dd1e9049b050d8a02af993965c65e3cfe0dd91306b2ba80d0f15f292e17a9d9aa36795a33927ebf397025e66bcd4dcdc8f694b4a05253eaf586a95f4facb869ad56ba1b446b9192ad9555f60e969e4dfe8cfbcd878696adefb5718f9ab72896357cf48579c95890b1f49b124161a5a6b052b121646fe66af491974be9890fa4aada706b2fb71a9ba4c00d5256c8d2aa81b3629dc45f4b4ae05372f5aea6e72e4333023189467966f29d3104d47bdab06f37cb6c696d52ab3cf4d3ad4704b9c94caaa14aa3364bad752ab77bbd82063978760ab6ff0020d818beb76545d47c9083ef5e5e03605ba56463c594ff00639b47fdb81f95121c4ffc37fd538e4eba72ed52534cf25243347246b2c524468d9b4306c980cd47cdb2b7a58fa339ff0096966a7934acb51468b554ec7b64a59f7d157d1699bcd5c34fc8b7a5b55c9d4b353d14999ef125a6a0a9f6a17d5e12e247b7c30731502eb3c4a3611d4e85da35d3cdde76fddc0d261a82e94d351d647b25a4ab8da2917c051f7be2e13fddfbe55504790029838960233e8e0cdc4893e2aae162e67b34173841ca4acb7b1a6982a8da4c326a476f071215f370b135dbe88ab7033a5ba29a52a7b38a7d87c999b0a2a20a6bad038d49c458ea626cfac6ad4a70ee9686b654392cd3d04cf0b7c084b4407ab1e19ec5cd1514ea07b386ba9e3a839f61990c2c17fb36c3bd3456bbbf608663139ffee15501f8d86f75b0dd688f4e76baad60ff00f6b2e389af9c601b3e796b66407c52875c002e57a07a0092dd11fd7a76c0093f30c99f4702d6899fc8a7c3168f9b25e21de4a99aaa8e23f119e08d47e8e355659e9adece737abb8d5c539f1b700ccedf270af7de688e100ef53dbe9b5e6bd82698ab2ff76d85966b6bde2a558324f7295a6232eae1af0e22be068db0296869a2a4a64ee41022c483c4a8154624acb854c5474908d52d4ceeb14683b4b3e955c494dcbd1cbcc95ca4a8687d8d186f4aa1c6f0f2b5431c8be92e1e0abb81b6db5f77e8db6ea8232bfd64b9f165f37e71626f371a6350a00e81b30031de27244033627b028dec3ae79321c9e3605594fa408d988ae36da9968ae34e7382b29dca4aa7b350e91e4e86dd6f2d711d073e5319e250145fa8d37c01d7514c3a7d27a7feebcac25c6c57086e348e01e340e1c02c33c9877a37f41d5597ca5c1a1e61b64172a6c8855993374cfa4c6e37e36d837a3656c493f2a5ea6b73e45a3a0ae5f7a83567b144a34cb1a65fc66c355d1da6a64643a63b9d8276776d5d2424263ab0bfc48d570292baecf2bc202b505ee9007f8eda61a8d5e39b07e92e5ca1af941ef5255494a32edd322d57ebe33abe4fa888ff00535b0ca3f0b47160987942a5cf56bac8907c3946e47e0c110f27c30b75196e25c0f090b4e98229e9ecf44a762e514f33e7e369957f430d4b4b7fafaa77390a6b4d2a236dea534f1897f4f09535563ae9cb1c8d4deea551d47694a97e3fc95c29bd5fe8edd10c8f0e8616a963e89e2f0514fa4aad857aea7a8be4eb91d75f3b140d9f4848786bf036ac492c105159281003348162a58801d6edbabf2b1243495b2dfab10e460b5c7c55cff8ee638187f0e46f570f0d868296c74ec1956a2526b2a46dd8413c38a339792d1c9869f982eb5375707595a990b44a7a338e11a624d9e6aae3dcec76fa8ba55003f97a385e62a09cb37d019427a4ccaab8596f735372e5331c99588acaac874308e32b08d5e9cda97cdc249cd1728ef37b874b702adcd5cab2019eed1538658c31eef19197d3c0a0e46e5d8e929a21a62a8b8e48aa333b129203b065bdbd32fa98e71bcf30557bdd7bd3dd90308d63544484e844541dd5f24b6f7a584cbcd5fc831621d91569fc14edf639ae5ffaa4d79907ff00730c397e9fdeb688baa3bf55c6be22f50bf639b147fd6a16f85a9633f9f139fead87e89c7261eae3517ff84ff61646075af75d49561e2607091c378374a24d9ee57606a411964009f76a069f25789a7096dfac6e5b5a75d83de1e25afa453d6f981c683e2ab37a586b8fd5df307ba165d629e397df298667a648643ef5116ece22fab89258e812f7471ea3ef36e7d52041d660934b8397931f130692b22786a9775e9aa23292af8e3902b7e8e1e7b15ceaad32b9024928a77881cba9c03a587a38d15951477d8b6002b6010c800ec7a7e1e67d2915b056fdcbd5b424019cd46e95684f59d2782c83e56122879861a69df6702b164a6653d85a45541f2b04db6e14d5a00ffa3cc92fea16c6cc7e6c7fc06366d1f61e4bbdf6868c26c659274d7f2012e7e4e244b57be5f660328fdd6168e166ec32cdc3cbd6556c3c561a2a4e5f818eeccc3df6a97e585a7deec68db02aefd72a9bb54a92636ac91a454cce6447167c244f4555571a467901ba32eac253c28f354ca74c54f12992573d8a83531f8b88ea6f85796adcd91d128e2d73ae633ca107445a81d39cadad3f758920b241f4e7364685247898555616cba25a96f654c8db048b1e9fe136120ac46b373a4519e1a92a95b195e9e1c9970ab605f3195b737b445ab561a6b841f485901ca3bcd22b344349d9ef119d4d01f5b547abbb2b60329cc7683b33f1e05c6c35f3daab8001a6a662bac679e9917b92267e4c8ba711d2f38db3e928f754dd2dc0473e5b73692989d0edd1f34d1afa3854b3de606aa3906a29cfbbd4063e4f0a4d249cfccd583b3a7b3069ee3490d6c07a61a889644cfb7270d822a795ade84e7bd4d17bb36debce0e1b6782458a48c939ee56568ff9dc666d550de06aeaafff00a980472f2ca47efaa6aa5fd7970a69395ed71b203a643491330f8ce19b1a218d618947723508a07802e33bbf30d140d995e1aca279411d39c70f11c7c9c15b15a6baf12679091c0a3808ea21df539feeb0c941251d8a124e42921e3cc54f5349396507d28e35c0a9be5c6aaed50872492b6679b4eadb92073a517d555c0a3b5524f5f5248ca968e26958667219aa06d1eb369c2cb704a6e5ea66e96ac6e354e43ac4116eff007922e12a39e6f5f49d6c654886b652143659e49474fbe51bcd978ab836dfabee59548546514f5089474aad9f48a7877dd32f2b5458912e97d9a0a2727ff0eb7ff270053d28c63f6b2a7f1a46c131ae827a48e93e33de3f2b1b36639a5bcf82eff8d08c2f887e4c5a3d0a6ae6ff002597e7c658e796ed37b3ff00ee94ff007aa05dd8e1e6eab880ec06ae5503f01c1f1e39a876cd4847c34509389ff86ffaa71c9cdd425b7fe3a36fb4cc75768cf0b534b2c94b528735a881da2941ea3ad0ab16f5b56123a8ae4bdd12139c3715ce420ffda230b2faba95b028b9ff00973dcd9820696a215ad80375912c638d1e9f0a2e95f2b0f5bc83cc5ee8e4b1d104cb5b003d3a4c321e2a2f89f124b494f4d7ca641a8bd148525cbb04136d76f559b0d4d77a0a9b6542f7a1ab85e323c3991a7e36ac1cceb8f2cb610e0f8f1ae1061703bd133467f0a15c0fa3efd72a4cb681155cb90fc25b1b9cd971d9e7c8927eb26323cd759e30b083fe6f1ed39b6e63f8732c7fa8ab82d70bbd755b1cf3696aa6627c7bd8d4235d44ed63b58f8c9dec0cce7e3c6a660abe731c86383cbb68a9b930608f3469a20427a3893c9a5107a585aee77bcc76fa350af3d15091ac0cf6acb5526e28f0c6adeb61a8f91ed71de6ee0049a6a2c9b3391f9eaf97567b46f247abd55c4d4f595bf465aa4e9b65b8b44a41c869966f9d946cd5a752afa3a31a10055ec03afb7c7e977b08e99a491b078a58c9474653982ac3790ab0ef2ef605b79c616e60b536519af50befa887a448a74a5522a9f4646f3a4c49cc5f5717486dd58e754b0423552191b6959e9775e9646cf7b469f3b84d831f315b5e9e063a62b8439cd4721f4660366cded3370df00a9054f415398385d6ba8a9dc27a4788f787c5c2259f986b608236d4b4b249ef10e79feee6d5dec15b8436dba29dba9e37a6603b3d9965cfe2e3f9fe540c7acd3d601fe723c6de54abcfc157065f870452f294bab2d866ad880cfe22361851d8adb4d9f75a5966988f0e404630d1fd330d046dd5474b1a30f13bf11b01af57aafb81cb481354c9a40ec0a85572f8b8d6a8b1e5d2e005fc2ddec7bb59682aaeb53967c2a385a63975925068d3f1b0b2dc5292c34ce14e752e67a8c89e8e145ba1ff0088d849f9e2fa2e351a8b2455b30891881d0b4b06f3fc6d586b77d5f72ceb872511cee8b414c48eb28071a4ddeb65566f3b12453ddcdae8dcb0f73b6af00697f25a6de948f8cb8690e6f23e45a5725dcfc7275fe960e60127af2fb231cc8de74374fc648c2f880fc58b79f368ab4fe8aae01ed18e71ab3bc5e9ebd837f12e4849f8da07deb56cc0029ce0ee0f824af07f55c60e398bd35a17ff00fc441f9b128ea31b8fd138e53a8e9d26d673f09a623edf6612a606682a632192a61768a453daae9bc1b0b1c179fa4a99010b4b758fde572cfa78c0ad47ca91b06879cb94c5452c802ccd46e9531bf84d35405d9e0e2361e51253f2fdc655df62d25aa48fc1b74d1eaf57898357ca3ce4ef4a46e99561b8216fe2c2d0e5f25b0cd45516bb8c60eea24b2c329f8248f40fef305a5e589a441e553d4534e4fc549357e8e0f1394ef1f168a593f5036321ca57b1b7aedf523f2ae0241ca7710c4e438e8b4ebf0998aa8c289edf456b53d2d59548f97872a5131c7bd7357352c10460b54454112c6817b7de273b3d66871c47a8a7e60ba4418ab3335da563965a328c3522379ba963d38149c99608a829630a91555cb690a3a969602a8817c9f6cdea2e1e4e64bb545c15882b4a5b874a9b491a69e3d316a5f399757a4d8c80002f93d0078b1d1975608eb18e8c67965d84f4612e568ac9edf5f19dcaba6731bf6e4fe4bae606e36a5f3d71f46f3dda85e28dd3872dc28923599811911352b95865d5e53c6d1ae9fd9361eb3926ecb68bab86924a6a16099127699adf3e92a8a777d8ac2be9361dedb1d2f305202741a6714d51a7b5a19f4a29f462924c69bdda2bad641c81aba696253979ac46971e92e36489f840c66181f08231b5d4784b01f9f0754abf873c7fe1369afb9e7ff53a59a61f851708eb6216e81f689ee33a4591ed688169ff00c9e04fccfccb153449b6682dd16a1a7ca3ef151a747adc16c2c95b5b05fae7092578b2bdd262c3c978a0069d5b3fdec6b8f70e47e55f77a7453c392bb452c48de0a6a7d5a87f6b1e1d2bafb251523e59d1db07b9a6ceae226a9cafa2d36f61a56df9a43aa491c97909ed2c7567f2b1b7ed867d19e2eafd72d3d69f975253032e8006236e9115b6a8fe168c60639aaebab68a65423b4d455caf9ff91fbd6edaf614e62a7a8f824962907e8b0c78717160364b4544e7e494fe8e241d24ab0fc58e5b981cc2a5a5b3f8027e7fb965f936637d430ec619fe5c09e924929675ee4d03b44c3c450ecc034bcd5716cb2d2b5320aa51f04c1b19cf5d45711d9514891ff9831e007b559dcf5ee55293fe55b1b968b38ed2c2a8e5fa6b8d10436aa26fde430cb21fc1348cb8314fcc92411939e5470414cc3fb445d7fa5812de2e35973901cf5d654493b7e99eee051d9e8e6b8561ff00a350c2d3487c3a610d97acccb835357454b61a3cb57bc5daa55377b4c70719d1bd1934e03f33fd62a541cf44b4767814956ebf6d219b67a4d1ae1a174bedf590ed69e678d0f847bbf047e8e1e2b4fd59c552a0e513553bd4330f0890c9b719a7d4fd1fc1468df9b07df3ea8e9638c779969c4447c237861bdfb926b2d5337ed68ab6a32cbb42f1347c0cb822ddccb7cb2549392256c71554407806957cbfb4c7ff00c23ce365e6162352534aef6faa7f5237e3213f197066bf72fd650c5064c6e1147c78532e86e3d299107c665f8b809417e7b8522b03eef700b58b90f244ce78a8ba7c9593770d1dff0096a0ab6240e2504e624cbaf349c499fcbc07bff2748266ef34d6ea6a95f960ea3f271edb9760a7276e4d6c68ff005063545cb70d41e8005a8c9f838834e3572ef26ce275d8a23a1a5a41e0dfcd9bf471a6d3cad0d39036355d51947c985172f16ac388ee54f6986419186829d7303c124fc49437a4ad8537bbb575d34f7455d43c8a3c409d38d288a83cd51903e3c643ee231237ef29253f2ee246003b3662e1375436963f2e78c7e6c3bb742ab313d800271cd9293b521b729edce47aa7fbd798e6e8e1d4dba71d5b05340f9fe861251d0eaadf8467f9f08c07ced9a95c9ffea274fcd823c0716290f910db09f8b3aa7de24b1c8019924eccbb702a6d342b4d6ada5ef35e4d3d2003ad491ae7f375451b2af94cb8cb99ee93f39de101ce869338289594e5a4ac6dadf49f2a492456f31706d9f569cab4fcb769e98da96058fc00b3e5c2e8f295570b57cedcd4e0b12d242b23cce33e9cb2d29888dd12aaf3393df9e4d2a72ed54d3bbe8e04b41cb94513a00a1cc61ce5dbb75608a7b7d343b73052245dbdbb063e6d0f66e8196083147b474940df8b04555a68a627636a85333f8b6e2449b96e085a43999e9c98dc1ed1b748f938792c775adb5c846690bb71630de1cb4b7c96c19395af66ed410952b4dc40cae06ddb0ca189f37bd8f76fad6e4716bb8b12af7fb3c6682a8393b5d973d33bfa322b2e0d6fd5d5fa9b99a1cb57d1353a68ee71804ee8525619caaef330685bd16c4b435d4f3515742729692a51a29d7d6470adf1bbbe963a481d18e9fbbf6e21f4a9e21f2ee83fc783d790c7304836e8b6c299faf393fd1c5e2a8ece050d4ca7c1a6266fcd8e6aab27d9caf6f85475ea8e39646ff3e3ef5bfb9d82a2928a64f1241a33f9519c5b26cf332d240e4fad1a9c5ae7c80e359d133ede1d54adfd2c0eccf142dd3c2a5a66feeeb947e6c1f0fddcdb797285ab2642a6a6a18e8a6a6527bd3cc4649d6ca8baa46d0da226c716f92273cf39c4038a15005053b9cdb20ac5a22413de99a495bbc9145ddc09eb643cb9caafb14aeb86265cfa23889e2c8cb969e2771b11d54f04979b9a804d4d480d1e797547ff002b560470a2c118034471a850be0c86ee01cf7874b76e09cb69c6e8cbc031b7ec9e8c1f0e32cb61c66090476624a3bad1435f0c832314c8a48f55b2d8706e3c917296c75ecda968e463c0396d20347ed17e33623e59fae6e5917cb7419ad1ddbb95908ea7a6ae4d2afd4da356a6eebe24bf7d5e5c0f35d890673d2040977a35cf2227a6015a745247b58575795c3d0baf01d18306e820e7ff00c3eeecdd809c5b29fa0cd0db972f5eb524fcd827c271cd35396c586922cfc2cd23e58e6b9c1c992d15c478fdddf2fc78bed4e7987ba087fb9a480ffce7deb130ff00a4d9206f844f529f8971cbb52bd125b697c3b444a0fe4c72bd57efa92b22fee9e37ff9cc123b0e2b231b4d352542eceae0d6193f471f07dd4b310a146649e8181cddced58dcbbc95180e92c9b9555aadb5042186a8e193bcb295e2cabf348a8dc453c81f537695b472c424249554e386ed19dd324d293bbab633b3334cde5b33e12e174caf77dc833c93efc11b75945237fd6937b0a8c00d23245519281e01d18001e81967dbf6760cf19e63e1eac12723e2382429208dd206799c10410c003a4ecc69036fd8e9c6ddb827a73e9c16cf69ed186a2b8d3c75d472021e9a550d9e7b3304f469f471fef57d58d5cd057d31e29b707d3202065ec9bf6832fd9c9fa58928efeb0f287d6329d0f716430d0dc2561dcad880f6133313fcd2afacb26945c4d68bd51c94173836c94d2edcd73203c6c376485b23a658d995beed31ec473f88e395e9ba0cc2d4a0747ec8cbfd1c746ccba31cd939e97aaa44cfd484b7f4f1cd12746aa3e0f67cf3ac7fd3c5c9ce79cb7aa96c8f569a7a78f2fd0fbd797aa88f9fb74d0e7fc39d4fe498e395642732b44b19f1c4ec9fd1c729557992d7459fae911fe860e58e67a70336862bb265e15ce4fcf846f3941fc5f742ceda428cc93d036e5ff0ff00e65c43cf5f5a3190ed94b62e549003248fd31bd5a75bf94b032e9813e7753ea895ef97eab96d3c994f26882242782429eec3136ebbedd2f2b2fc6f2711da6c742b4945180bba0079597cb95bbceede96096cb531cdb2c78bed0b1d800c4f70b8ce9474702969a69480ba3a76e7d79793dec4b49c8b6c49a200a8bad66a5527b634eb1eb77b1abe9c860c8ec10d3c6a0f832c06ae6a3bbd38ef53ba085cf89d36e052317b55fdc00f6da8272932eb89bbac3f4b0540398397660f8fed082721e0e9c19143711b2008397c1892768d2ddcc217f97b946b92b95cf4a4e3a245f35d9752f9185fabbfae08a53474ff00f91f332e72d5d0336c592290eae3d1c80699e9db774fa71ae16dd71d32c732096dd718097a6aba7ea9613e50cb2d49de8db77b9a5beeb36c3b63603e15231c9147d1fcc50230fe1d049b3f16067d38bf5411b26b9e953da2382318bcaead267968a25ed39d64448fc00e2db2c6b97bd55574cede711572460fc98d47debc9f539775ebe263eb242e3f50e2df131db4951554e73ead1296fe962c555e5437748878a6a7949ff363ec737dbba4acd724c8ff005d4aa46223e82fe4fb9966202a8d4c4f501887eb2b9f69f8b719326e53e5c907b469b2ce3a8950fedb23aa346dda65f6adfcc32f0a5e78e7e9592caae560a356cd64443f3310cdb8702f94dde95b10d2524094b470a08e9e9a20151117600001b30140d83a3197dab33b651282cf21d8142ed249f10c4b47492187966d6ef0d3d3072054c9d73483ba57f75e8e067980a3203b3b0636f575e092731d79e12581de2a98486a6a888e978dd7a1811bd89286e790e62b32ac752c1b313c4d9699fc6de57a5860465a4e433eb1f673fb1ff160a9cf21d79e25b4dda30c63dfa1ad551c4a7972ef2374e4de52f75b15ff0056dcf750977e5b59b2a5bbd33f125b5cfd11d5407bcaadb38f1775bcaef32b3daae05242c8951435b16d82ae9a5f9aa884f5c722fa5ece4dd6eefdd153cf644fc2e07e7c727db33dab5321c87f534fc3cffca606672e8cce164236d45c6b243f0388ff00a18a1a7ebaabb5346076e84964fe863962290e6d2412d47c1535124ebfa327deb64ad0336a6bb2479f62cf04abfacab8b952839bd35da727c0b3246e3f3e1a7ffa95c6927cc7566cd17fcee0e39ca80ed4f788885fe353107f5711a38c99174b0f08247dcb219e67662abeb279d34c7ca16462d6fa7988d35f5919d832f2e18e51a557bb3cfdfd491caad25f6ec4c606a4b7d0062d1d3c59e4140f3bcf6f2b0ad68acf79b6121aa2cf54c5e12bd623f31dbce5c7bbd2cc2db7a519cf67a960b203d66363f38beaf770ad2e681885daa46f375609539e47239751ecc6cc6dfb04f4eceac5da6a7731d5d768a1a62bb0879c9cf2f0e80f88e35cfd9ae9399d99f6fd8db8396198f4b0cb676e2c5321ca1af76b7d6286c818a6cc866edd2c11b0533cc03b3b72f0fdae963b7664a0124e1ee1cc15a949113aa38b30d34de8c699ea6c496eb46ab1585b30dc373ef53ae796f32e9d0acbde8f062889d0c3daedd45f6e7b7c384e40e66ac5a7a36777e54be556c36fad7197bb3b6f30a3a9d892c6dbbabdaeeb46ad8aab55d206a6b950c8d055c0db4a489e1eb465c9e275dd917791f7bee76ca60336a8aca5880edd532639529ba921ae99be542a3f21c1ecdb8b011d350b3541cffad9ddb1cb545e7d64f54de28202bff3b8e5380a70d96cf43ad0f4876a642dfa44fdeb5936598a2aca3a86cba871d6327f0498e6ca12c352d4524cabd643c4558fe1518e634519b471d3ca33eae1d544e7f441c123a0ed1e2c735507ef22a3a8cbd4d71fe7c5e28f2c8535c2ae1cbb38750e3ee54f658d9a1a041ef177ac5c87068d0ef104ee8926f9a8fbdbded5934c6d8a6e5bb084a6e4ce5afe5add4d1ec59a48d78664d3d691e451357afe560e44e47a1b2dbf8307a36f49cba70b26a649a321a19e32524461d618612dbcec8f74b62ee47768c06a88d57ae61fb41e977b0974b356475b41280cb24043641bcf19e61bd6c06041072c883983f64e47223a31453293a29eed4d24e72e81a641abc4b9e333b41f06081d5f67ab2c5821a724544b5f08423ab26ccfe88c3746446dcba7ec8d7b031c8624791847144337918e9503b76e27b572805bb5e154abd7ff00d1613b7667fb465f35706eb7cad92bee0e0672c8771479b1af90b8cc90186dcfa73c6ccf6758c1471ec986728e8247fcac3dc5f7f9d79569d56e398ca5b8d9a3ee54691dfa9a2047119b4b494de5b3c7a5411b558020839ec3f72e5481b6abdda97503d8afaffa38b3d203fe8b6b321f1cf3bafe48b0cc7a8313f00c72ad3c83275b5d3161e178c37e7c72f528ccb43415b330ea02578d01ff00267147449dca5823857c51a051f93ef5e6b872cf4d0bce078606137f431cc1480e69516e8a7f8629f47e4931cd34c467aad358ca3a77920675fd20311b76aa9fc43175a6272f78b4e6a3b5a3a853faac71cd54f965a6eb52fb7fae7e28fd6fb8962091d836b13d400eb2ddd55f3b14fcb34db39f39cc2cf7665f9c8e27042d38cb7fd9a7b04ef7b579e55ef69c4768be2f0f98abc1aa3728f6494b337cda47e56855f9c56ef36ac4965bf41c3a8de7a6a8407855318f2e33d6d97797c9c03d4465f600d81479bdec7d21cb7592524a4e7240d93d3cde0963f33d25de5c436bbde9b1f303008c923014d3be5b4c4f9e91a8f755b7b049202819ab13b0e031d998c13d7e1c5eec20033cd16ba4391d92c7be99787669c1867430d4444c73c4766968b66441e8383d8319e472fb057ac6cccf40f1e20b9491936ee5d535124ab985f7a60784bd9d04b69c33b01acf58c6dcf19679027a3b702b2f9582295813050a156a991c6d01133cfe56ee1a0566b372f39262b642d9492279d3ca3a4b79ab8291ae98d4828a46796cdb8cc664767e7c13d03a76e1a461ba83324629b9a39aa130d8a26e2db6d52021ea5d768964cf7b8236ee7958b7fd69f29a2c74ed2aadd29c0f66b26414e6069ca3a988709d7d6eeeac535cac5b396398a1fa46ccbd22105b2a9a227cfa498e8fe1f0bbdf72e588c02dc19a5a939f641131fd1c552039fbadba8e13e02dc493fe7312f6e8603c6c316da35d8b4f49044a3c091aafe6c5b6ce1f63d25be8d76775aaaae407f130fbdaf36f61a96b286a602bdbc48997f3e2dd16632b8d05444f9758489661f8d0e2b285f2d157049013e0910a1fcb845232652ca41f41883f9316c453b2aa96b6161e0488483f494e39901192d41a4a84f13d2c609f94a7ee1b3125f2ec55797b94a3173b848ddc69d736a68cfaacad3b2ff55a7cac5cb9f2e716bb3daa4fe491b790b29d14e807a2abc5cbcef5b04c80286041cb6f5f5fc0061ed3771c32a4bd0d6ae425a79546e146ef65e72f9587b45f63fe65867475b1a9e055c5d4d19ea7f39705493ba48272c1d9f0e0919edd87c582aea5c290508d854f5647ab11505cd5efb618ba619181a985067f34c779b4f9ade4e057f2fd7ad5a050278090b344dd243a77b57c5d38076ed240cc746586933d83ba075edc54739729c1ef6b20d778b54209933cbfd2215f2db21bcabbcde461d413ad4e968c8d2e1bb0a9de07d1c151b731bbd59f8fb3075659f8767e3eee12d1cbf07bc5448c04f55a49829d7ade5906eeef9bdec53d8688f16a00e25c2b3ca9a76ef367decbc95f35701b22da885000e83da7135454ccb0d3c0339669084403a4924f40c4f69e450b595401496f6e01a64d9fb2db9b9dbdeeeeac4d70ba54495d719c979aaa73ad8b13b72cf528f55719924eccba70766dc13d18d4cda1465a9cf40f87e0eee29b9ab9ae168acd1b712d76b91487aa396626947eefcd5f2b09a0040a02a8000017a828ea1e8e2e164b82ac94b7088c6db3a1b23a587a4a726c732fd535c158de6d52cb76e54661bef534c84cf4ebe530ada505917b9c4d0f80ebdd60197c47ee304a06628edd572b1ec32148c7e538e68909d423a98605ebc8474d18cbf0e78b65111b2aeba969c8fe24ca87f1634a01928c947800e8c53c4a415a6bddb225cf6ee51a254b8cbe238fbd8a9da08c88f1e2c502eefbbdea7b615ece2492d365f931b3ab17eb68d8282e5594e00ec499b6fc9231cab3a900c95cb4fb3cd9d1e33f9711ca0642aed14f231ed649a68ff2018cbb3edd9db30aa35311d20019e2d1cb510297fe7793dfeea176b88a40a561cbbc3d888a0d3e724be762db6c54d157322d4dc1fca69a500edecd2325cb040196476e32201f18cf12596fd0eb858134d3aec9207cb20f1b0da1bd1f2b06d571533d14dbd6cb981ece78f6e418f53a8ef6066735da0e430768f831a8e78cd7ab11dd2d15af6eb844469a888e44ede861dd75f5b10d9f9e5051576c48af512814d21cf206419fb366f574e22921749a9a55063a8460e8f9f46457772c31446cd7741c82e5e153d630d5b75a35a1bac83335f4ee219091d6e01d0e7fe1ab1a6979d1218b6131cef096f1f4e239ae77d96eeabde8e3991233f0a6f61686c3470d1508da52119966f38b74bfc6c1e1a6a7cf24d99679f4e6703e959f8f7398654f6a808794be5e565dc4f49b0e972a834764d5ec2cd16ea05ea32b0de91bd16c01180a8bb5572cb2c76118da71d5f9f059ce4aa336c86d3e01e1f4714dcd7ce10b2d1060f6db3480aeb2bd134e3b3cc8fbb8009d3a72d0146c03a80c0cb788d99e09cb3206c5c72ffd66da0e8aeb74d1c558e01f9c8ceb89883e4ec31379dbb87aeb7a88ed1cc30477bb5a0c8aa4759999a1190d2381522545f47479df71bfd501f316d822cfc334e5ff0024631cc75cc7369ee95641ed092b463f128c72ad1b0d48d718e661e0a7533ff4303b3a7f1e7815ec032b5cef152c46d1a22867813f1b21cfef7bb5446784682fd0dc23c87409648ea0ff009ed58f1639a6986444b56957b3abdf22597f3e2cd735391a1b8524f98e9c92503f3e395ee2066d534d5b4ce7f8263917fceb60edcfc3f6f63e5f9175d2d6552bd6af47f2b4c0cd38cfab52a68f8eb88e06265b2f2d90fa4ec4ca8ce63e54c4e0b02403d208e8ecc1d997d8de504af75bac626b1dee9fdee825034f5491375346fde0de92e0d05c0fbcda2ac9fa26e9e4b229274487bab2af94addef2307a41cfac658cbafb3c18cc6c1820edf831930ddec2367e3c4945cbf74d746ea552dd3a1aa86172730d167d07d1c3e8acba54232e452922f768b23d3904d38323d0d70620057acaa6198fc380f25a69d9989d65aa3513e3db8260b6e8083b94f524123c1b712b53c77ba08e3df602569173ed033dbeae1a82b2e7a1a64289535346ab511f5160d96963e936ac4b555356d5d5b39e2495721e24ccc7a4bb1decbd1c644007f11c11d3e2c65f8ce33cf3f160b31002f6fe0f85b5792b8839b79ce989588896cd667196d5e89a65eb7f315bd7c12ea74b2e9c81c8e5f0602e79e432cff27d8240cf662ed63a95ce3aba7631003261326fc6c3e3818921abcfe94e45b918275276ad05c9b449eb24758b19f4789e96083b083911d9f70e70bd30cd9668a30de8c14e6523f0c987aa7ef54bbcec4f4932396fcf8b63919adba96aeac93d59c62007f0cc315356db169e192524f56852df9b15b5f2ae622b4544ece3a04957551100f8c2c9f7bdc264cd4d7dbe96b0e5d6eab2419fc9a718b1dc646ce4acb7d2d43b7a52c2ae7f19c7bc8e8b9dba9e73eb42ed0fe441877439320d6be0d0daff0036393f98976b4b554f930f32ba91a427f0c698dbf6fcebcf736c163b72d1d2b119fb59c995c8f494450afc7c5ff9aeab335377a9302338dbc343ac9cfd269301976827a72eac1fb1b3afa71af31964411d789ac57ba55aca0a9046972032b8e868cf90ebde56c0e297aee5da93950dd36e6bb7e6e6f4d7cec1519104eccb33b30b080cf33f7228c6a763d432188e7929a2b150300c6a2bc912107a0ac40367f1b4e04d7badabbd55060cca5b830eaec08bd23e36152d764a4a5236e6230cf98e83a986ac15d59007605196431531d3bb2d4aa97a765391e226d51f19869c525ce25256a0689d351dc923251ff4863631cb3f871b0fe1c706ba922aa888eeca81c7e31b30d24d6cfa3a5627da50b184eb6ebc80d27e4e1a5e57bdc75b10e8b7dc14c4e7b02ccbab33eb69c18b982d33d0693971981685ba7b8e35291b3bd80cac18266735e8c0d47256cb2d99e67ab2ed2c77714fcdbce1067c2225b559e5dba58e594d302323e722e0cae4b16192a83b00f0602af7400060e5f6436d2011b00cfa766398f954651dbf9dedd534c9bbba2a2a10c90e5d40ad4c71e071015972ca453d218128c0fc20fdc399af006524df4a4c18f685e02fe92e238cf4a2aa9f8065f9b17eb975d0dbe2a619f6d54bc4ff0098c73456a369912df3471b1f3a65e10fc6f8e6aad2bbb1a505242fd63213cb20fd388fdefcb5720a72aaa5aaa391fab389d24407e0964c72ebb3069608e5a593c1c19dd141f88131caf775ef4b1d5d1bf80461654fc65b0d1f53065fc398c5b6e59ea96dd4f44c99751a3aa146ff002535e0803200ecd997db643af1032022ab9b2e72ce7a888d5cc03e0e1c11b2faf8b15132e994d3acd203d3aa4de39f8703ec6dc6c38cb3dbd9819edc81d84ed20f60c5cf96aa2be92e4885e9ee76e775124648e8d3de0ebe72e2a94dd1a9393e13ae92a5b2f7b71d3c3cbcd5fde377b119b2dbd5ea8e5aee13012543784311b36f9ab839b15c88dbdb82de71047c0307ec6cda41cc0edc739725483871d3cd1dd2d833dbeef50143ff0094270429d59633c11d7d78c8f4679e582a0659f674e1e96be25a9a6936343228753e0cb2cf3f0e249f972a24b05c9ceb31e65e95bc0233d1bd9775b12dff009f4c62aadb29fa368da4534790cb2aad5d6cd916d0dddf2f13d4d9abe1b9252cdc2a89e039c6afe667d6704663a7681d471975e3a3ecb119ecdbb0e58e4fe73a7730cd495088c40f32412667c390c5fa1a7ff4596a9ab6936643815eab551643cdd337db939e400273ecf0e2829906992e94b4a8d9ec3aaba712bfe8b1c16273276938e65bae591a8b825286ed14d0abe5fe5f0f4eada5ae15f4b4c57acaeb3211f823c5ceb645cbdfaed3189b2cb5470c30c208f06b493ef7b65c91431b75ce3321ec8e78a48bfce18f178b596ce5a0ba3c8074810d4c6863cbe32498a2b869ce4a0b9c2758e958e6578dbf48a63a3bbd23f2e3996ccc0c86852e94b0af4ef08fde63c87af286f5b11b6799645249edcb6fe97db3b0e955623e019fe6c7d55727a668e286179a3cf6f15e38d5b3f8faf14f4e721c28a38f21daa8063a73cbec228da58ed1d83078b90db9003a0e2bf982df147515b44542c7367a082db41d3e8e2df63b85b27b55e2b888e264f6913b65ab4ea1dc0d8e6964dc74ad6d2c8cc8da80c8b660aedd5e761129ee9f49d2a80828ae0a654519f42302acbf2b094fcd5699ed526c26a61066846ce9206f01f2b0b358aed4b5c0e4c6257ca4dbd0349de07e2e066ac7c19658cc91e119f463207a7b70c17692331d409ecf8d84829c8615342d435672e86480cc32dbe700b825720aa4ab0cf224f5633d2760da366dc389005d241001cce5e2c1c883b33c874e0cb2c8b0428354933908a078ce1e39ae7f48d6aea514944a653a9474123747ad878796ed70dad09c854d58324d976e9cf48c2cdcc574a8b94aad9a891d9624fe1aa69cbf5717fbfdd048b434b71219621a999d955155078c8dec597972dd66145435f3347354d436b90aa2124000ae4731e9619722481ba72d9d3db8224654d998054e6461581cc1db8386cba46d189a6450cd455514cec46d09b4123f08c72c5d8aedba72e5bde461e54b4bae95ff00144bf6ee8809775c940e92c77147c6271ca3cbb18d31c93c4aca3a968a94e5fa446003d1d67b0749c5aa72ba64b84d575927692d3b46a7fbb8d31caf67d59192a2a2b245cfc985046a7f0ca4e3975645ca5aa8e6ac7396448aaa8926427fb3741f7bf32c4a727a6a75ad53d9ee722d41fd18ce398ad1d55f430572f8e9a4e19cbd615031ccb0469c4923a515310cb321a99d66cc7c0870186d0c0119fe2c7375926db16ba5aa588f942a2378e523d1f64831556e9c113d0cf3534c08cb268a46047e4fb65a388672d53c7047eb48e107eb6393ecb0b111d3414a880ed017537e3c8618039e9e9f01eac67d47a70461091b46d07e038e6086d37b90d2d3dc2a4251548e2c3bae760075301b34e9c4f7fb9244b5b5b12b4c2252133598ae601e8e8c7288cc95354b96673cb2538e6c5c80517071d07b30093b73cc80704124a93dd24e5ff1e0bd2c8f4ec0ea2f0bb46c58741cd0ae584885c63bad1a81a69ee00b64a3a84837ff004b094fcc76f9ec752c00356838f4e5fc0546a0beb60d4582e94f70cc66551c171f17bcbf2715b7bbb3814f41134848396a6f25067d2cc777167be547fa6dc6a6aea65d87258840d92f8370628ec9638967e64bc3b7bbbb8cd218d9b42b65e5bb311a70b5dce1cf37692ef2aacd50b4b2a53c10eccf46446474b795e8e2a28aff00cd4bcc7c3db45c08c495832fd9ca63dc2767ce369c347caf6986d916674d6d71e248c3c0a9ba357a5832df2f15357a998fbb891a38941ea4542ab83a5421ed076fe1c0da4903a4924e06449da3a4e39acf58bcc5d3d5bd1746396351cd5aa1c9dbb7b8d89396ac53c343471d3c331a955d53b1981cc6f6e8d38e60aabd574b71abf7d54f789d8bb14d19e591e81eae028e85d83c5f63c58e65c813a69d64000cc9d2ebd58fabfa990ea9916f1424f62c3551c88bf178c71e2d9f27edb976d81438abb9522baf6a24a1e4fd056c72f5b03ee53504f54533e879a4e183e3ca33891ba0e86c8fa591c87e1c72e5b5934494d6da55913a3290c4a64fd3270948bb3e89b5229cf68d73b3cbf9020c596ce011f4750d3529cfa738615439fc9fbdee16b9c6a82be9a5a6954f5acc850fe26c59629c985aae3abb75529d9be222c14ff6d12afad8adb6c8325ada6969dbb00950a1fcb86a6906525333c0fb3686858c67f5712513b00973b6cf12276c90c8928f1ee2c98e69a53d1356fbee7d5956a09ff39fb6e558dc66af7bb72b0ed0d571e78e5f43d090d283e3c9ce1b21b58e671b7ec0f07fc78e686048cee3579647d36c26673ca9cf4ffac1c7290ffb5ff44e39bbfda2f83974636e0f5e78cc104f464768c152dba76919ec3f062c35ad3fb95343591493d40764510a3664c991da3d1c0a5a2269f956dce5e9031286a24db9cd28ea5fdd2b7f4b172e79aa43c000dbed608cb3398e2c83e0c9757ad84ada85324745152d4c3179f146ea5917c2d91f8d88ef562aa69682baa60667898a946f2a3932daacadbaebe7618c3b3691ac12493e1c1008057c3d7db9e36367e0cbec1cf6600f08c735e7ff00acc5fad0e3958740f787fd438aa5f368697f54e39876ecf7f5cbe4600383e2c1f0ecc73229de56a19724ecd20ff8b1c9399cd96e37c041eacc529ffe6c65f6d6962334b641555edf027017f4e618bcf0dcbc341153512fa2f1a6b71f2d8e2d9684d8d73aca6a307c334a07ff003600032036003a862b2926f6f156f3052daf21bc0c10cc909f816357f8bf7cd7d431282d5cc31dc3353d14f34c2a8265d862971a976839107c0768fcb8e67b72ae98a2b8492c20ec3a2a32947c5ce5c72b573777dfd6958f82b14d3e7fe5356296b9010b75b6c6f21ea32d3c8d16cfec8a7db72b4ae7248ef76e773d8ab551e67161918e6b2c34c7c5a75619b3cc1390fc27ec8f17f8f1ccff00ed1acfd76c27f03fef071ca1feb43f54e39bff00da2ff9307667960ab67a87a2c7f20c0cb51f8ac3f36092180f0ab7f8b1b9ab2cf2eeb7f8b0750040e9272c8622b3c00a50c793ddeb80d4b1423a8e7e5b65a625fe8629edf03c169b3d0c5c3a7696458801d1a9cb95ef11ab5621e6ae55aca6b8dc6cc8fef51d1ba3bcd4c01274b296df5e9c4f6d82a1d2d358e25a8a224f0de44d9a88f21f3ef69f8d80cdab531009452ca7b3a30482c48ead0d83b0fc86ff00160e65ba3cc638cc127c0465f8b0075e631cd47ff798ff00ce438e56ff005893f51b153fea14bf90e3980ffee0bfa98183e2c123b31cc4cfbba68a619f475103f2e391c9d84dc2fa7ffc6fb7e64bbb2ffa1d2535244fd5fccbb4920ff22b8be5dc8cbe90b854ce83b15a42a83c4aa31cbb0baea8a95e6ae93c069a26311fef48c55d7cff003347049512e5e6c6a5cfe438b556cdbdc1f7dbbd4e63a5991954ff0079511b7df2d5691e98af56c866793a9a7819e023c7c35871cbb7791b5cd576fa769dbfae58c24bfe503623af0070eed6e8a4f1c94ced11f87434785aca73954523a5440c3a9e170e0fe2c728734d3697a7598a713b52e100743eae71fdb0ab84e53533a4f191d4d1b87cff0016393ef94cd9255c14cc8e7a0a6a6fcc705d3ca0093d58dbd3f607fc3b71ccff00ed1abfd73fe3c2ff0003fef071ca3feb607e89c737f82e321fc589483e4e397a592db492caf471991de08d989ed272e9c7fe53479ffabc5ff271ff0094511f07022ff938bede23b55024d053b2c24c111ca493d983d1d3bdbb8042eb99902aa7492f26c198f870950b4e26bfd5e8693574cd5f3019173fbb8b21b3d1f4b0fcf3f5975d5174a69a4294169e2ba42da0e799543b23d5ba91afc6c43f4459e9ade6161227bb0e181e061d6ade52f958ace70e518447301c7bad9e35ca397493aa58465badd2cc8bdeef63fdddada5a6abb4df518c46a234678aaa107251afce00eee0eab4d082091b29e33d7e2c6cb4d17f711ffc9c2a8b4516f1def611f47c9c732c14f12430c73461238d4228f66bd006ee075e64639a7fdb31ff009c871cadfeb327ea362a076d052fe438e60ff682feae01c1c1cf60eb6ecc7323ab665a055571b32df53f9b1f57f4ae329a45bc5c08ed8ea6a1228cfc6101c78fed721d78e66e6890889eb1ebeae9e4e8394310a78573fe346da7d7c460e65f4a96cfa751da7f19c5faf7b0c543431d0a93d3c4a9938b98f890fe96398eaa37d334f4e2922ed26a9d61207c4766f571cc7772872a1a4a6b7c521e8f6ced2c807c1045abef9e5bbeaffd12ae6a0900e9cab230e0e7e89a6fd3c1b61cf8965ae9e9893d6b337bc27f9ed38e5fbea26fd25549473483a0475285973fed221f1b0572cc302a46796c20e2194a33d5d9a9544607487b64e61ccff6285b00a90558020f68fb5917a352b0cfb331963eaab9ca11af87470453ca7a44c91a6a07e389314d3ec1c78629748da06b51d183b767d8f87fc78e67cb2ffcc6b32f96709feaff00f7838e51f055afea1c737ece9b849f0ecc4dd5ba7f2639689da7dc62c678240cce398a1836353c4b500759e1b8639fc5cf16c9242029aaa76918f50d63a7b31cb260d4685a6a8e232f74b346ba331db967a71cbd2d2caaf1430b472644001c39cd4f8570321a8b1ccf8bb701bb0e7a366f83b3a316eb751642296eb0d5c3128c8c6b3465f48f47126acb493bb978baf1965f0e148da0e60e39ab219699e3ccff0066b81e318e69ff006cc7faf0e395cf57bc3edf88d89fc1434df90e3987fda03f5303073c05cc1cf12d28711bd75545104076b2282c47e1031cb96866cded3cbd6f8a40065949541ea9c7f965fb666eb0ac478c03962c76308564bac5414d329d8cb2549f7d9b67aeaeb8ea073cf6e2b2eac994976b84af1b1eb8200b145f258498b0597a1ee1706a9620f4c74519cc7c679e3c4f727c8b5e2e35150847eee1d34aa3e540edf1bef9e608a250d51450adc2127abdce4599f2f0989245f8d8bfd91a4212be921ada74cb21aa99b86e47c4962c730228ce5a3856ba1cbb68dc4c7f4159700f6807b71cd9c9f52e72e33385f360af838472f8f148d8968a5f9da4964a771e185da2cff47ed733b7b313dba30ed70e4aadce455eba7a891a589fd5d3269f898e5fae572cf1d3886624ed2e9b08383b32cbb704607fc3b71ccc3ff71acfd76c2ffab9ff00f20e394bfd6c7ea9c73703d57193137aa7f26396c8d83dca2fb1967962a68aa54494d571b412a11b087523f3e2e1cb75c8e95144cdee8ee0032404e714aa7ba47a587e55bb54a537335b42868f30ce1e1f9a9d54f7d19775b4fa589e86ed669ee5cbd58c5ea60a65e240c72d9242c0698d9bcb5c0a4e56e4cbbd65c580445a88f814b183b339a63ba88b9e2e3089d2ae9b9728529eb6ae94e747efb3b6a3144de5f0901566f3b17fe7c5557b172fbb505b6a40dd9ea154c65949e9e1af95e92e0a95ccb12ccc3a01ecc6446dc20076939fe5c735007699d33f1f0d7036f58c7350ff00dea31fa70e3957c354ff00891b153e1b7d37e46c730ffb43fa1f608c03d3a4e392f93e9c1a8a9aea85768fb44b32c601ecd84fc5c73054d3e5eec958f494b974702880a58b2f0688357db5a6c80e5f4ad6d3d2161d2ab248039f8ab9e3962c111c969e2a8ae9e21b069702084e5e8b2c9877d9a9119878c0d831cb96a39eb868617901d844930e2c83e2bbb616891b38ac56e8d2443e4cf505a7247ad098b1cbd667409351d040950a3a38c5034df86567fbe6a28ea175d3d4c6f0cc87a0a48a5587c20e2d14d5ce236a6aea8b25793d00b134e037f68b1e2a68a601a1aa89e19548cc15914a9047c38a9b5d465ef16e9e5a398af41681cc44fc665c7b848fa22bd50cb4e14f419a1613c5fa0255c73153690b1554eb70a7d3b174552073fa61bedb98394276029f9aad53431ab1cbf99a6cda3cbb4e9666c5ff0093ea735a9b4d499e14739eeb964703d568c6080731b336fb031ccfe0b8d5febb617fd5ff00ef071ca07afdec7ea9c73765ff00a83fe4c3a0eb046de8c5a2d3709ea52aa8a9921982c0c535274e473dbdb822396b1d57ca1037f8f0754f5881466c4d3b000f674e0e99ab197319bac0db3f1e29e92a2a2aa9aefad62b55d169d8c91c921c824a077e1627797095228ea1cd2387a7bd5a031cb2da1b66f7ac8d88e8da9c5d9c6e7f374322ca7ab33a34e67068ae350fcb36373a2a1c47eeaac9d6731a659065fb356dec2d9e9a6a9b072834a16f77b8d755cee0f22ef7080db08932d1adbbb16eae9f2a9acf6786a692db4aa1608529d81ddf298f5bb65a9999999b00b4b5815885d5c06cb561824d5ada7630f7761f0f4e3313d60cba09a76ff1e2f97eb56b36faf915a16906966d2aa09cbab7863c1b32fc38e69ff6dc7faf0e3957fd6a4fd46c54ff00b3e9bf21c7307fb47fe6c7d8d9d38588f4b9e81e0da73f831ccdcdb21496dfc8d45533d3907619e1430538f1b54b22e14392cf966ec4e64b124b667c79b7db5be7215e1b3d2d45c2507a3365f778f21daaf3065c5f1924e2d3db0436da7f47829ae65f8b50d262c9665232b8d7d342e4f527103b9f90a70140cb2e803a3207fc589631fccd35eefe21523a1adf4afa4b03d8296127efbbad5528e18ad14f7ba3c87ed32ca46f19a980fcbc5baef032b257d2c550ac8735cdd41207aa4e58bce95d34f73486e5065b07b6531cbf2a68e46c58ef63745beba196427a38658472e7e0e1b498e5de648103475b04b4334a9e5347eda1cfb771a5d2707239fdadaf9829f3d76ba88ea1947951e794a9f1a225714773858ffbbdcdb125443226ec462adcc667b784e35619542851b540cb683b73c667a41c0ff876e399fc170ab1fa6d841fd47fde0e3947c1583f54e39bf2ff00d45ff26028d8491b709cdd70b6477cbeddea5a9797ed55008a78638f6cb552af967a557c9c7d1b70e5d4b45ca71aa0beda8b2c54ea3a64ac47dde067de65d3a714f410d9e1e69bcd522541be55b676d78dc74512c677d23eeb6ad4cad8b85f692d9072ff0031582485af3494a18d3565254661268d4fcdcb0b64adebe2d44e5a4d6d365974ef38e8c364c48c812a768e8cbf3604ab4d11986c12695d43e1cb0bad010a4119e4d9e38999d2b59102bdbab3c161a4643afaf4f562d7ceb74a5acbeddefd4f2d247cb957188a35dbed668cba67a1721a5bcad5b8f8374e5b48f93db93925176a7ab06596a0c83389565077f53ac8ba9b532b7cac2ea006ac9866369d5b7aba70e47660788639a7c17b4fd6871cadfeb2ff00a8d8a91ff60a5fc871cc03ff007007f43fe2fb196ccfc38bddf672035253b0891720c6593d9c7b4f95a995b19d5484dd79eae6d575076666df6f209cff008b5ac3fbaf471b721e01f6dcd5ce55da529d5853473b6c290d146659f2ebd0ccebfdde2aee95673abb9544b5950475bcf2190fc1b702bdd15a0b251495209db9cb39e145b3b55788cbe6e2ff007a59047351d14a6959b60f787531c23e34a50605c5e32d05828259964f36a2ac8a7453e3885415fbeec1ccd1a66d4f2cb6daa23a4a5427161cfc52c453fb5c53d0bbab4f63a896859403a8461b89116f88f8e5ce658d06e3cd6baa7cb3278abc5833f54a4df2f0f16790752a49ead8467f8f16ebe20596e365829eaa461b5924a13c0aaf8dc212336065d196cf1757da9046608c88c25502cdcc3f57550a8cf1ed76b74c418e43e51e1a83fdcb362dd7267d55b020a5af3d2c648c0c989f49326f5b0da7a01cb3edcb00ff00c3af1cce3ff71acfd76c27f03fef071ca5b3fe943f50e39bc0ff00d45ff20c470448f354ca74c7044a5ddc9e8d2a0331c729cb73aba5b1494827a4682a5cc93492bc85e30ab0eac8b67a74f7bd1c4fcaafcccd4d74a80afccb5f4b0e664465dca35cc6a40b98e2aae9deefe0f294bcce6a219dc372f4d2c455a86adfa175e5b2190e4acaada75639f22adb6d3f354ad4b1d1c9151b0d4936f7b39237ded3d122e956d5a316b8a405268ebe99658994ab266e374a9d2c0e091d9960139e7e3c1233cfc7861db5b003fa5831c8485cfabb7665f8f1cb9cb57de60929f9ea91e58edb58d188e9e38231f3521eeb6c4dd6ef3627e5ae53bc5bf9a398b9b2e1f44ddfdf5592384216412451e5a5d559cbf13795b77477716cb0aa1bacd75e1ad35c208df8292bb64e926cd817bdabcdc2db2f89109264d74d5101d51cc8bd2c3ca5ebef6076820639a3fdb49faf16395bfd65ff00cdb62a4ffd8297f21c7310ea17103f43ec300336c864b9e44e2c3f561653c4a9ae9e392b555b3ce493d9a0932e811a371599bc9c494d6a70f63b143159ad0e3221e0a3d4924a34eeb7bcce669f579aff006cf21e84058fc188288848ee57aa7485b2d85e4ba4864973f4d6959fe4602f5280078bff008658bb5fa4501eeb5a628588cdb854aa233b7b1a5326ee2df6256024bcd729990f49a7a406573fde707173bf4b1e99af55ecb0c9e753518e127e098d47df77fb544a5eafdd9aa6882f78d452913c407aef1e8f8d8bb58647d105e6952b6951b6933531c885fec64d4dfc3c5fa9a15ceaa92115f4872cc8928db8a72f4a48d5e3f8f80ea32570194780edc734f245c0abc39b4c90b0ccb53d7c6639be2ac8bfa78abb555106a6db512d14e475bc1234648f45b4fdaf4e5f0678824b9106c3788dad77b8d8909eef38d0b23ff09f2d7fd56ac5c3922e7330b0de65fe41db646cb21ce0901cf4f41e1be248c13ba7255033d9e3f870a47467db9f51c733ff00b4ab3f5db09fc0ff00bc9c728ffad8fd538e6f396a2b7190e5f07fc58b55ead600e66e739a70b7a2a1cd1d1531db1404f7269186f32ef69c7309a8a792e6dcb717d3d68077dc571ca225cbf7d55329787e77ab8bcde79972b854d2b254a5039203cb3fb49266037885725513bb8b4def97e992dd535f5061aba58b308c137d66087a1d48de65c58b9868e39edf77e63ac2f75bb40dc22f25bc18e029a0eaf681cb696c4f2dca288736f2dcf495915ce18d50d65207c992a426ebcab92e976dec741008072cb68d9d181838c87fd6e1fcf80074679924663c4719ce34c64e52a8d8c23cc12abe16034ae3967eb069b9655abe08969f96e9a45e1d4493ae6339723a640ae0bf15b5b7cac7bdb4945ee864cfe8e302e9d39ed5e2f7c1f4b143cdb749ea2d535a91a9aeb6e570aa8e33c88949dc8fa595bcac5c6df0d4a55c347532434f5519dc963463a5b3edcbbd8e691d9794fd68b1cabfeb0ffa8d8aaff50a5fc871cc5fed01fa98cc6dc57df2b582d3504459f3d9adb6e9404f9c71cc5f5a970722fb7b965b3f2aead8cb24ebfcd558dbab4d252b7095b4b2f124d38545192a8017c407db59ec31819dceb218198e7908f56b949037b4f0c363977952999560a2864b8d440064173f614df884dbb867cb36542557b4e5b3c7b72c58acbbbc4a4a3884ec06906671ae56f8cec71f47c0c258797e8d2058c74fbd547b571e1dde02fad8b1584a0496868e25a90368350e35cedf1a6691befcc8670515a2ec3b8733f47579d4aa0795a609957d746f370d148a1a27055d4ed054820838bc72fbe65ad7592d3c448d3aa2d4cd1381d8c85716a0eec94b7857b5cc06dd4d28d50679f64ca315d50834c17ca786be1d9928976c33283d675c7c56fe27db10ddd6d87c470a9192dcf1c888ba5d4ea96aadc0eeb020ea261fd74f4b10c53b68bfda1569ebe33b1a454d89328ef10ca34b7a7ab01b220e6761f871cce7ff0072abfd76c27f03fef071ca2767fa503fa271cd8ca72617173b7a315bcb5cfd0cf5fcaf519cf6c8a18c492d2559d8ef1366ac9a949ddeefa38b45cf93ea92fd01b94b709da37e1544946abc234d3444edd80abaef2eac2def957de6dd4d784f79b64cabaf4ab9d72524ca3529e1b12aaade4e9c44bcc359515229544b5b50e8638e0a5439baaae5a51e461a74ae39b96b2997976cb0cb4b57655b8388a2a64a60c0e606aef236a6f39b14dcb5ca73cd5d25dae5482f9cc92442359d236c969e922cdb28d733aa4ddd5821760c864078303c5f61224567924ad8123451992c49c862f753cccefcb15549a16d1efaeb153d53ba93b5c9e85c955b4ab77b1c9d7be639c5fed95c934d758a921f79860785410350dd91353f79957bad8e5ce6fe5389e4b05baa668eaa254e1bc036039c437725d1e4f9382eb3abc609c80f47ac8ead58e666e619cd0d939ae55a5a7123f01a411a91ae26257bd99f938b9d9ad550f57436e9b811d5c83267d1b0fc0bddd5e5639ac8ff00d6a3f877a1c72a8e93ef2f9fc86c548eca0a5fc871cc1fed0047c8c28c98972000bb7ff87ad8a4faafe569d62a1825d778acfd9099333233b8e88e9a3d4f21f397d1c41456625796ac30fd1f634da35c68d9cd54475495b3673f9dc3e12f93f6f597a753c0b1d21543a7306a2b0e81b7a015895cf9d8bfdc95cc94d1547b8d093d020a3ce2d9e8b4bc493e3e397ed254b42f54b5359b352f028fdb1cc7631411fc7c4f5531d30c08d2c8dd8a80927f00c51d4d4032c372ba4978ab0e03014b4e4d4223e5d0180820fbf6cdcc91211157c2f6daa9146c59a0267a663e3569c7ab1e2c57666cea7dd969eb016d4c2a298f06424f5190af13ced2eb8a3bf468deef7ea4092b9da3de68c68d232e8d5098f115652be8a9a374a981c660892160eb97c2ba71cb7f5814299fb998a69f4b021692e0812452474b2540853d1f69e96323d23a7eda8b982dc0bcf48da67a727259e9df64b09f597bbe6b696c5a7eb6791889794398ceb9610331033ffa452c8a37577f5b2f9b2ea5d5bbab14777b44a27b7562078c8e95dddaade6ba9ef2e39a0f92d71aa2b9758d6d84ebf63a7e1e39c72a32679fbda9cc741d873c5fafd0d95ee16ab8d5b5453cb48c256546d99b201a95b12535416a5954e52433a98e40076838b1dee829e4aaa8e59a99686e91d366d2c30cc4cb1ccc89bc636274eac56dba592b61e53a85d55d79274436f910662a119c693fc25de6c4141cb9515379e4a834d4d7f37d13091ab667e9d6537a18e163a5a2ded2ddf7c7367315e84f1a5fe286d5643584892a37b399d50f92ba07b4c5a1801bb5d4d9ece8df18232cf3cbec1c514379b8b5a6d86be1351718c167894027351db8b671aa5eb795c5b217e5eab772639c141c59048bdf919f75b1ceb6fb555c54540f122dbeb6b417a74919584cb1eae92cb9eaef2ab69c5bac349608a7bad23fbb57c0ca12925854e4f37a724de52e2839ee5e558eba4ab78781410384cda619ed5eefb3ecd3dec72fd1d9aa74d651bf1d6862531c74e8cb93c7265baaeb9793858797ed1537562012d12911e59f4990eee398e86ff4e94f57517482ad62470f944cf101995e83ac7771ca818659d4c9f0ee362ab2eaa0a5cfe49c73164768b82819ec19e8c490d1ce0f31d7a70e929c1db144f983391d4761e1fa58a8b3c8c473b73744b3f3049ab54d436c9b3923a37f32a6b492f3ab6f2d3eeba7b45c64a325032007505eaf17db67d841cfb3177e6e9468aebac735753867c89d63dde8941cba58047f3b7f0a19b549d2ee7a4bb7493eb1c5ff0099e653c3a48a3b5d1b13b35c844f51b3ce5021def4db1738e3602aef1a6d74a35686cea730ec3ace98839ddc5fb9a1d376311da689cf832a8a8c87577a9d76799f7ede28e18c4b5d4918b85bd72ccf1e93da8503b6540f0ff698bf72abbee9e1dde8172da5640b154edf44f0348f4b1535d047aeb2c32adc22c973631ae71ce83c0d1b966f5319f7811b32c730f20563a996838d49096198482b54cb4ce4f5b473f15bd1d0987a7a9468eaa9dda19e361932c91b14607d2d9f6f59cadcd4bc7e47e603c3ae8cedf74a86d8b569e6752cba7d6d2da74b1e5fbd9f79e4ebcca2582a90eb468cec5a884e7b0ae638a9e57c9c730d54328969e7ae9e5a7957baf1bb1d24629792f9879805a26e194aa66dc910f14ba91a86961b57105df92feb028e49a9f2928e699d5254900d9915d5906f570826a4a2e63a763de53196c87592a63cb1253fd68fd5a54c3183a4d4980b8197648c15ba7cd7c35cbeaf79daab92ef722e87a7ac4269a52c7b92c728d0eaa4f9fbb8d4b77a5e71b645beb0dba68a38c03d07ddd34edf9589ec51d454f2e41249c6a8a09e1c94cbd7a3586011b21a957bd8170bfdce4b8ce8ba21248548c7588d40d29abced3ab16b4e8fe7e9b67f68307c0063c7839f5617319815d01cb66d3bd967f0e16879f2df4b5fcbd4f4a90d051d3d28256a23034484b6f0d59696d3a557145cbf5b69a5b6a50d5b5552351131a68dba54420f4e927533795bf8896cf60a99212418aa640618341eb32bee9184a9e7ce79a1b543992f434d371e5d9d5d2ca0faab80b62b1d7f375ce36dc9648da4d4ddaa582a9d5e9478e07257d5e8b6d1ab651cb531f0d427564ac634cf0d49cf1cc7416db44b93b52991044cea43005546a3a48f3b16ebd5ef9e609ae76d938b0d342c0a36c2326d3a9baf15574b4548aaa0f74a78567552aa5d0367913d231cc976b8b2bd44b5c7e8fa21b5e6942e4321d9ab2dec547d6df3d53c75f72b8b3af28da2a73d35350807b66873d94145df6eeab49bbab532e2a2e1709daaabeb2579eaaa24ef492b9ccb10bba3cd555dd55dd4eeafdbd159a901353749e3a488a8cc8333052d97628259bd1c72e7225bc08e1c96a6785540029e9070a9c789a63ddf430d21e855d5974e7d83f0e58b2524cba2b2b22370adcc64c65ab3c401bd28d0c71fc4c5b397a36d54f67a67abaa006d13d5020024f4e5029655f39b164b6ce852be487df2e208c9bde6a8f1a50de142fc3f89f7f470e621b4c35e62cbba9f47dd47b325bad298cab9fa54f89e8aa175d3d544f04e33cb38e452847c938b9582a81e35a6a25a639907340d9c6d9f5ea8cc6d8a1865902515f91edb51a8e4bc539494cd979ed228897f88d8ae9a2509477e45b9c19664095898ea41cfca69071777baaff6e4119823220f41f01f0617eaeb9fa526cf2954e5dbf31066b6d436c44763fb06396966dd5eebee69688f2f7d6752549b7ba814d76b6b2a82849d33c4086d71f4ea5d3a97ccc415f6de61ae6a5aa884945545a2963c9c66186eae7abcdc1f74e6b7cb668e246c99f8f41fd5c036ce705558cfb2293d4a6ceacc13a700477486ef4c363453b53491c83c2245d630cfcd5f56767e618cecf650aa4a3c3ae06c49513fd5ff003072dd4a0cde5b25549a40f0ac858e0426ff005f531a8d1f467315b3de8041d19cd1a6bcfe3604b576fa6a490832356da6531a48dd8609d99d3e4eac5a4d15571a2370a61a65c848bbe3a71983d58db8cdba09031a89017df620189c80e9cb1a2b2592b64d20f06291628cb74e4d239d3d588d2c8b6bb2b3a8596586965b95682bd0fabdb459fc5c70ee157cd9ccc02e858e9156829f4f670c2ae35d83ea6967908d31d55da69673eb307654d583159ac569b2c7dd514b0d2c450760e206f9580b74e6d3002016884e1181f1d3e919615ef1cdeb24aa7748e3ca40f1bb74e07d23ccd5326673916289431d9d4cda98605eaf770ba56e6da68adeb2c61aa1f2392e9d1f37e71ddc3f3cf38d3b51f28a4a458ec71c994f74a95398a78fad29972fe66a3cdee379b2de2eac866645829a9a15d10535346498a9e05f2218f3ddf299bdab6fb7dbf6e2aafd3287a5e5ea71c3273ff4bac0c8b979278708955bd26d58bcdce2935d153cbf47dbc82590c34bb85867d0b349a9f163e5d29aa0ada956ad19e9ca969c7167c8f53344a557d2c3c8ecb1c512967627255441b49ec0a311cf3a17a3bb5c5abaa237df0b6ea33ac44dd8ac91c508fe37dff67e6a813b85ad57023cc97392958f8125e227f6cb8b2dd2572d5d1c4292e04e5abde698f0a427b0c99097d57c5bb99214);
INSERT INTO `systemaccount` (`SA_No`, `ID`, `name`, `email_Address`, `password`, `username`, `contact_No`, `position`, `Picture`) VALUES
(5, '', 'Keren Boleche', '', 'krn213', 'regker', '0', 'Registrar', 0xffd8ffe000104a46494600010101012c012c0000ffe100704578696600004d4d002a00000008000503010005000000010000004a030200020000001600000052511000010000000101000000511100040000000100002e22511200040000000100002e2200000000000186a00000b18e50686f746f73686f70204943432070726f66696c6500ffe20c584943435f50524f46494c4500010100000c484c696e6f021000006d6e74725247422058595a2007ce00020009000600310000616373704d5346540000000049454320735247420000000000000000000000010000f6d6000100000000d32d4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006c77747074000001f000000014626b707400000204000000147258595a00000218000000146758595a0000022c000000146258595a0000024000000014646d6e640000025400000070646d6464000002c400000088767565640000034c0000008676696577000003d4000000246c756d69000003f8000000146d6561730000040c0000002474656368000004300000000c725452430000043c0000080c675452430000043c0000080c625452430000043c0000080c7465787400000000436f70797269676874202863292031393938204865776c6574742d5061636b61726420436f6d70616e790000646573630000000000000012735247422049454336313936362d322e31000000000000000000000012735247422049454336313936362d322e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f35100010000000116cc58595a200000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf64657363000000000000001649454320687474703a2f2f7777772e6965632e636800000000000000000000001649454320687474703a2f2f7777772e6965632e63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d207352474200000000000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d20735247420000000000000000000000000000000000000000000064657363000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e3100000000000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e31000000000000000000000000000000000000000000000000000076696577000000000013a4fe00145f2e0010cf140003edcc0004130b00035c9e0000000158595a2000000000004c09560050000000571fe76d6561730000000000000001000000000000000000000000000000000000028f0000000273696720000000004352542063757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffffffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108089409f603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28039ff00f84efc1fff00435e87ff0083187ff8aa3fe13bf07ffd0d7a1ffe0c61ff00e2abe20a2981f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051480fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a607dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145203edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2981f6fff00c277e0ff00fa1af43ffc18c3ff00c551ff0009df83ff00e86bd0ff00f0630fff00155f1051480fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a48679ad9cbc12c91394642c8c5495652ac38ec5490477048a8e8a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2981f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a607dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2);
INSERT INTO `systemaccount` (`SA_No`, `ID`, `name`, `email_Address`, `password`, `username`, `contact_No`, `position`, `Picture`) VALUES
(6, '0', 'Jessa Mae Bartolome', '', 'BO2023', 'BOJess', '0', 'BO', 0xffd8ffe000104a46494600010101012c012c0000ffe100704578696600004d4d002a00000008000503010005000000010000004a030200020000001600000052511000010000000101000000511100040000000100002e22511200040000000100002e2200000000000186a00000b18e50686f746f73686f70204943432070726f66696c6500ffe20c584943435f50524f46494c4500010100000c484c696e6f021000006d6e74725247422058595a2007ce00020009000600310000616373704d5346540000000049454320735247420000000000000000000000010000f6d6000100000000d32d4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006c77747074000001f000000014626b707400000204000000147258595a00000218000000146758595a0000022c000000146258595a0000024000000014646d6e640000025400000070646d6464000002c400000088767565640000034c0000008676696577000003d4000000246c756d69000003f8000000146d6561730000040c0000002474656368000004300000000c725452430000043c0000080c675452430000043c0000080c625452430000043c0000080c7465787400000000436f70797269676874202863292031393938204865776c6574742d5061636b61726420436f6d70616e790000646573630000000000000012735247422049454336313936362d322e31000000000000000000000012735247422049454336313936362d322e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f35100010000000116cc58595a200000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf64657363000000000000001649454320687474703a2f2f7777772e6965632e636800000000000000000000001649454320687474703a2f2f7777772e6965632e63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d207352474200000000000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d20735247420000000000000000000000000000000000000000000064657363000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e3100000000000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e31000000000000000000000000000000000000000000000000000076696577000000000013a4fe00145f2e0010cf140003edcc0004130b00035c9e0000000158595a2000000000004c09560050000000571fe76d6561730000000000000001000000000000000000000000000000000000028f0000000273696720000000004352542063757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffffffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108089409f603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28039ff00f84efc1fff00435e87ff0083187ff8aa3fe13bf07ffd0d7a1ffe0c61ff00e2abe20a2981f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051480fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a607dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145203edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2981f6fff00c277e0ff00fa1af43ffc18c3ff00c551ff0009df83ff00e86bd0ff00f0630fff00155f1051480fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a48679ad9cbc12c91394642c8c5495652ac38ec5490477048a8e8a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2981f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a607dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2);
INSERT INTO `systemaccount` (`SA_No`, `ID`, `name`, `email_Address`, `password`, `username`, `contact_No`, `position`, `Picture`) VALUES
(7, '00', 'Sheryl Mirth Cubal', '', 'Admin', 'SMadmin', '0', 'Teacher', 0xffd8ffe000104a46494600010101012c012c0000ffe100704578696600004d4d002a00000008000503010005000000010000004a030200020000001600000052511000010000000101000000511100040000000100002e22511200040000000100002e2200000000000186a00000b18e50686f746f73686f70204943432070726f66696c6500ffe20c584943435f50524f46494c4500010100000c484c696e6f021000006d6e74725247422058595a2007ce00020009000600310000616373704d5346540000000049454320735247420000000000000000000000010000f6d6000100000000d32d4850202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001163707274000001500000003364657363000001840000006c77747074000001f000000014626b707400000204000000147258595a00000218000000146758595a0000022c000000146258595a0000024000000014646d6e640000025400000070646d6464000002c400000088767565640000034c0000008676696577000003d4000000246c756d69000003f8000000146d6561730000040c0000002474656368000004300000000c725452430000043c0000080c675452430000043c0000080c625452430000043c0000080c7465787400000000436f70797269676874202863292031393938204865776c6574742d5061636b61726420436f6d70616e790000646573630000000000000012735247422049454336313936362d322e31000000000000000000000012735247422049454336313936362d322e31000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000058595a20000000000000f35100010000000116cc58595a200000000000000000000000000000000058595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf64657363000000000000001649454320687474703a2f2f7777772e6965632e636800000000000000000000001649454320687474703a2f2f7777772e6965632e63680000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000064657363000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d207352474200000000000000000000002e4945432036313936362d322e312044656661756c742052474220636f6c6f7572207370616365202d20735247420000000000000000000000000000000000000000000064657363000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e3100000000000000000000002c5265666572656e63652056696577696e6720436f6e646974696f6e20696e2049454336313936362d322e31000000000000000000000000000000000000000000000000000076696577000000000013a4fe00145f2e0010cf140003edcc0004130b00035c9e0000000158595a2000000000004c09560050000000571fe76d6561730000000000000001000000000000000000000000000000000000028f0000000273696720000000004352542063757276000000000000040000000005000a000f00140019001e00230028002d00320037003b00400045004a004f00540059005e00630068006d00720077007c00810086008b00900095009a009f00a400a900ae00b200b700bc00c100c600cb00d000d500db00e000e500eb00f000f600fb01010107010d01130119011f0125012b01320138013e0145014c0152015901600167016e0175017c0183018b0192019a01a101a901b101b901c101c901d101d901e101e901f201fa0203020c0214021d0226022f02380241024b0254025d02670271027a0284028e029802a202ac02b602c102cb02d502e002eb02f50300030b03160321032d03380343034f035a03660372037e038a039603a203ae03ba03c703d303e003ec03f9040604130420042d043b0448045504630471047e048c049a04a804b604c404d304e104f004fe050d051c052b053a05490558056705770586059605a605b505c505d505e505f6060606160627063706480659066a067b068c069d06af06c006d106e306f507070719072b073d074f076107740786079907ac07bf07d207e507f8080b081f08320846085a086e0882089608aa08be08d208e708fb09100925093a094f09640979098f09a409ba09cf09e509fb0a110a270a3d0a540a6a0a810a980aae0ac50adc0af30b0b0b220b390b510b690b800b980bb00bc80be10bf90c120c2a0c430c5c0c750c8e0ca70cc00cd90cf30d0d0d260d400d5a0d740d8e0da90dc30dde0df80e130e2e0e490e640e7f0e9b0eb60ed20eee0f090f250f410f5e0f7a0f960fb30fcf0fec1009102610431061107e109b10b910d710f511131131114f116d118c11aa11c911e81207122612451264128412a312c312e31303132313431363138313a413c513e5140614271449146a148b14ad14ce14f01512153415561578159b15bd15e0160316261649166c168f16b216d616fa171d17411765178917ae17d217f7181b18401865188a18af18d518fa19201945196b199119b719dd1a041a2a1a511a771a9e1ac51aec1b141b3b1b631b8a1bb21bda1c021c2a1c521c7b1ca31ccc1cf51d1e1d471d701d991dc31dec1e161e401e6a1e941ebe1ee91f131f3e1f691f941fbf1fea20152041206c209820c420f0211c2148217521a121ce21fb22272255228222af22dd230a23382366239423c223f0241f244d247c24ab24da250925382568259725c725f726272657268726b726e827182749277a27ab27dc280d283f287128a228d429062938296b299d29d02a022a352a682a9b2acf2b022b362b692b9d2bd12c052c392c6e2ca22cd72d0c2d412d762dab2de12e162e4c2e822eb72eee2f242f5a2f912fc72ffe3035306c30a430db3112314a318231ba31f2322a3263329b32d4330d3346337f33b833f1342b3465349e34d83513354d358735c235fd3637367236ae36e937243760379c37d738143850388c38c839053942397f39bc39f93a363a743ab23aef3b2d3b6b3baa3be83c273c653ca43ce33d223d613da13de03e203e603ea03ee03f213f613fa23fe24023406440a640e74129416a41ac41ee4230427242b542f7433a437d43c044034447448a44ce45124555459a45de4622466746ab46f04735477b47c04805484b489148d7491d496349a949f04a374a7d4ac44b0c4b534b9a4be24c2a4c724cba4d024d4a4d934ddc4e254e6e4eb74f004f494f934fdd5027507150bb51065150519b51e65231527c52c75313535f53aa53f65442548f54db5528557555c2560f565c56a956f75744579257e0582f587d58cb591a596959b85a075a565aa65af55b455b955be55c355c865cd65d275d785dc95e1a5e6c5ebd5f0f5f615fb36005605760aa60fc614f61a261f56249629c62f06343639763eb6440649464e9653d659265e7663d669266e8673d679367e9683f689668ec6943699a69f16a486a9f6af76b4f6ba76bff6c576caf6d086d606db96e126e6b6ec46f1e6f786fd1702b708670e0713a719571f0724b72a67301735d73b87414747074cc7528758575e1763e769b76f8775677b37811786e78cc792a798979e77a467aa57b047b637bc27c217c817ce17d417da17e017e627ec27f237f847fe5804780a8810a816b81cd8230829282f4835783ba841d848084e3854785ab860e867286d7873b879f8804886988ce8933899989fe8a648aca8b308b968bfc8c638cca8d318d988dff8e668ece8f368f9e9006906e90d6913f91a89211927a92e3934d93b69420948a94f4955f95c99634969f970a977597e0984c98b89924999099fc9a689ad59b429baf9c1c9c899cf79d649dd29e409eae9f1d9f8b9ffaa069a0d8a147a1b6a226a296a306a376a3e6a456a4c7a538a5a9a61aa68ba6fda76ea7e0a852a8c4a937a9a9aa1caa8fab02ab75abe9ac5cacd0ad44adb8ae2daea1af16af8bb000b075b0eab160b1d6b24bb2c2b338b3aeb425b49cb513b58ab601b679b6f0b768b7e0b859b8d1b94ab9c2ba3bbab5bb2ebba7bc21bc9bbd15bd8fbe0abe84beffbf7abff5c070c0ecc167c1e3c25fc2dbc358c3d4c451c4cec54bc5c8c646c6c3c741c7bfc83dc8bcc93ac9b9ca38cab7cb36cbb6cc35ccb5cd35cdb5ce36ceb6cf37cfb8d039d0bad13cd1bed23fd2c1d344d3c6d449d4cbd54ed5d1d655d6d8d75cd7e0d864d8e8d96cd9f1da76dafbdb80dc05dc8add10dd96de1cdea2df29dfafe036e0bde144e1cce253e2dbe363e3ebe473e4fce584e60de696e71fe7a9e832e8bce946e9d0ea5beae5eb70ebfbec86ed11ed9cee28eeb4ef40efccf058f0e5f172f1fff28cf319f3a7f434f4c2f550f5def66df6fbf78af819f8a8f938f9c7fa57fae7fb77fc07fc98fd29fdbafe4bfedcff6dffffffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108089409f603012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28039ff00f84efc1fff00435e87ff0083187ff8aa3fe13bf07ffd0d7a1ffe0c61ff00e2abe20a2981f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051401f6ff00fc277e0fff00a1af43ff00c18c3ffc551ff09df83ffe86bd0fff000630ff00f155f1051480fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a00fb7ffe13bf07ff00d0d7a1ff00e0c61ffe2a8ff84efc1fff00435e87ff0083187ff8aaf8828a607dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145007dbfff0009df83ff00e86bd0ff00f0630fff001547fc277e0fff00a1af43ff00c18c3ffc557c4145203edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2803edfff0084efc1ff00f435e87ff83187ff008aa3fe13bf07ff00d0d7a1ff00e0c61ffe2abe20a2981f6fff00c277e0ff00fa1af43ffc18c3ff00c551ff0009df83ff00e86bd0ff00f0630fff00155f1051480fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fb7ff00e13bf07ffd0d7a1ffe0c61ff00e2a8ff0084efc1ff00f435e87ff83187ff008aaf8828a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a2be00a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a6014514500145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145140051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2980514514005145140051451400514514005145140051451400514514005145140051451400514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a601451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007dff0045145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a601451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2980514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a6014514500145145200a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a298051451400514514005145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2803eff00a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a002a48679ad9cbc12c91394642c8c5495652ac38ec5490477048a8e8a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2981f7fd145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fbfe8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f8028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a607dff45145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e00a28a29805145148028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a60145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a29805145148028a28a60145145001451450014514500145145001451450014514500145145001451450014514500145145200a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803effa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2);

-- --------------------------------------------------------

--
-- Table structure for table `tcharges`
--

CREATE TABLE `tcharges` (
  `tc_ID` int(11) NOT NULL,
  `teacher_ID` varchar(90) NOT NULL,
  `date` varchar(90) NOT NULL,
  `description` varchar(90) NOT NULL,
  `Amount` int(90) NOT NULL,
  `ATM_Balance` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tcharges`
--

INSERT INTO `tcharges` (`tc_ID`, `teacher_ID`, `date`, `description`, `Amount`, `ATM_Balance`) VALUES
(2, 'NT202401', '09/16/2024 9:13:46 AM', 'Learning Materials', 500, '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_ID` varchar(90) NOT NULL,
  `last_Name` varchar(90) NOT NULL,
  `first_Name` varchar(90) NOT NULL,
  `middle_Name` varchar(90) NOT NULL,
  `sex` varchar(90) NOT NULL,
  `status` varchar(90) NOT NULL,
  `DOB` date NOT NULL,
  `age` int(90) NOT NULL,
  `home_Address` varchar(90) NOT NULL,
  `contact_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_ID`, `last_Name`, `first_Name`, `middle_Name`, `sex`, `status`, `DOB`, `age`, `home_Address`, `contact_No`) VALUES
('NT202401', 'Fuentes', 'Rhea Mae', 'M.', 'Female', 'Single', '2024-07-28', 20, 'NICS', 0),
('NT202402', 'Martinez', 'Angelyn', 'A.', 'Female', 'Single', '2024-07-28', 20, 'NICS', 1),
('NT202403', 'Laida', 'Geran Mae', 'P.', 'Female', 'Single', '2024-07-28', 20, 'NICS', 2),
('NT202404', 'Duabe', 'Christian Terenz', ' B.', 'Male', 'Single', '2024-07-28', 20, 'NICS', 3),
('NT202405', 'Matinong', 'Richel ', 'B.', 'Female', 'Single', '2024-07-28', 20, 'NICS', 4),
('NT202406', 'Ferrer', 'Daniel', 'B.', 'Male', 'Single', '2024-07-29', 20, 'NICS', 5),
('NT202407', 'De La Paz', 'Neriel Bless', 'B.', 'Female', 'Single', '2024-07-30', 20, 'NICS', 6),
('NT202408', 'Ang', 'Clint ', 'B.', 'Male', 'Single', '2024-07-31', 20, 'NICS', 7),
('NT202409', 'Vega', 'Lovelyn', 'D.', 'Female', 'Married', '0000-00-00', 20, 'NICS', 8),
('NT202410', 'Langreo', 'Romel John', 'S.', 'Male', 'Single', '0000-00-00', 20, 'NICS', 9);

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
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`Stud_ID`,`subject_Code`,`stud_Grade`,`grading_Period`) USING BTREE,
  ADD KEY `subject_Code` (`subject_Code`),
  ADD KEY `subject_Code_2` (`subject_Code`);

--
-- Indexes for table `gradelevels`
--
ALTER TABLE `gradelevels`
  ADD PRIMARY KEY (`grade_Level`) USING BTREE,
  ADD KEY `adviser` (`adviser`),
  ADD KEY `school_Year` (`school_Year`),
  ADD KEY `grade_Level` (`grade_Level`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`GID`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`mon_ID`),
  ADD KEY `teacher_ID` (`teacher_ID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `parentstudent`
--
ALTER TABLE `parentstudent`
  ADD PRIMARY KEY (`GID`,`Stud_ID`) USING BTREE,
  ADD KEY `GID` (`GID`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `preliminarycharges`
--
ALTER TABLE `preliminarycharges`
  ADD PRIMARY KEY (`PC_ID`);

--
-- Indexes for table `previousschooling`
--
ALTER TABLE `previousschooling`
  ADD PRIMARY KEY (`ps_ID`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No_2` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`req_ID`);

--
-- Indexes for table `requirementsbridge`
--
ALTER TABLE `requirementsbridge`
  ADD PRIMARY KEY (`req_ID`,`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No_2` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `scharges`
--
ALTER TABLE `scharges`
  ADD PRIMARY KEY (`table_PK`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `schoolexpenses`
--
ALTER TABLE `schoolexpenses`
  ADD PRIMARY KEY (`Ref`);

--
-- Indexes for table `schoolincome`
--
ALTER TABLE `schoolincome`
  ADD PRIMARY KEY (`Ref`);

--
-- Indexes for table `school_attendance`
--
ALTER TABLE `school_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_notice`
--
ALTER TABLE `school_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_studentextra`
--
ALTER TABLE `school_studentextra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `school_teacherextra`
--
ALTER TABLE `school_teacherextra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `spayment`
--
ALTER TABLE `spayment`
  ADD PRIMARY KEY (`Ref`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No_2` (`Stud_ID`) USING BTREE;

--
-- Indexes for table `standardfinancialdescription`
--
ALTER TABLE `standardfinancialdescription`
  ADD PRIMARY KEY (`financial_Description`);

--
-- Indexes for table `standardgradelevel`
--
ALTER TABLE `standardgradelevel`
  ADD PRIMARY KEY (`grade_Level_Name`);

--
-- Indexes for table `standardschoolyear`
--
ALTER TABLE `standardschoolyear`
  ADD PRIMARY KEY (`Ref`) USING BTREE;

--
-- Indexes for table `standardsubjecttime`
--
ALTER TABLE `standardsubjecttime`
  ADD PRIMARY KEY (`subject_Time_Name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Ref`) USING BTREE,
  ADD UNIQUE KEY `Ref` (`Ref`),
  ADD KEY `LRN_No` (`LRN_No`);

--
-- Indexes for table `studentenrollsubject`
--
ALTER TABLE `studentenrollsubject`
  ADD PRIMARY KEY (`Ref`),
  ADD KEY `subject_Code` (`subject_Code`),
  ADD KEY `SR_ID` (`SR_ID`);

--
-- Indexes for table `studentregister`
--
ALTER TABLE `studentregister`
  ADD PRIMARY KEY (`SR_ID`),
  ADD KEY `LRN_No` (`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No_2` (`Stud_ID`) USING BTREE,
  ADD KEY `LRN_No_3` (`Stud_ID`) USING BTREE;
ALTER TABLE `studentregister` ADD FULLTEXT KEY `SR_ID` (`SR_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Ref`) USING BTREE,
  ADD KEY `teacher_ID` (`teacher_ID`),
  ADD KEY `grade_Level` (`grade_Level`),
  ADD KEY `academic_Year` (`academic_Year`);

--
-- Indexes for table `systemaccount`
--
ALTER TABLE `systemaccount`
  ADD PRIMARY KEY (`SA_No`,`ID`,`username`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tcharges`
--
ALTER TABLE `tcharges`
  ADD PRIMARY KEY (`tc_ID`),
  ADD KEY `teacher_ID` (`teacher_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
  MODIFY `GID` int(90) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `mon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `PID` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

--
-- AUTO_INCREMENT for table `preliminarycharges`
--
ALTER TABLE `preliminarycharges`
  MODIFY `PC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `previousschooling`
--
ALTER TABLE `previousschooling`
  MODIFY `ps_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scharges`
--
ALTER TABLE `scharges`
  MODIFY `table_PK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6594;

--
-- AUTO_INCREMENT for table `schoolexpenses`
--
ALTER TABLE `schoolexpenses`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schoolincome`
--
ALTER TABLE `schoolincome`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `school_attendance`
--
ALTER TABLE `school_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_notice`
--
ALTER TABLE `school_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_studentextra`
--
ALTER TABLE `school_studentextra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_teacherextra`
--
ALTER TABLE `school_teacherextra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spayment`
--
ALTER TABLE `spayment`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=725;

--
-- AUTO_INCREMENT for table `standardschoolyear`
--
ALTER TABLE `standardschoolyear`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `studentenrollsubject`
--
ALTER TABLE `studentenrollsubject`
  MODIFY `Ref` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `systemaccount`
--
ALTER TABLE `systemaccount`
  MODIFY `SA_No` int(90) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tcharges`
--
ALTER TABLE `tcharges`
  MODIFY `tc_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `gradelevels`
--
ALTER TABLE `gradelevels`
  ADD CONSTRAINT `gradelevels_ibfk_2` FOREIGN KEY (`adviser`) REFERENCES `teacher` (`teacher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD CONSTRAINT `monitoring_ibfk_1` FOREIGN KEY (`teacher_ID`) REFERENCES `teacher` (`teacher_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `school_studentextra`
--
ALTER TABLE `school_studentextra`
  ADD CONSTRAINT `school_studentextra_user_id_6ef2ed3a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `school_teacherextra`
--
ALTER TABLE `school_teacherextra`
  ADD CONSTRAINT `school_teacherextra_user_id_2b7b0b48_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
