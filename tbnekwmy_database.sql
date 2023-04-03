-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2023 at 11:54 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbnekwmy_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Activity_Type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Activity_Weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `Activity_Type`, `Activity_Weight`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Loss of Hours -> Blow out', '14', 1, '2022-10-25 00:38:58', '2022-11-03 02:55:45'),
(2, 'Loss of Hours -> Lateness', '10', 1, '2022-10-25 00:39:19', '2022-10-25 00:39:19'),
(3, 'Service Complaint - Low', '15', 1, '2022-10-25 00:39:37', '2022-10-25 00:39:37'),
(4, 'Service Complaint - Medium', '20', 1, '2022-10-25 00:39:51', '2022-10-25 00:39:51'),
(5, 'Service Complaint - High', '25', 1, '2022-10-25 00:40:10', '2022-10-25 00:40:10'),
(6, 'Missed Checkcall', '30', 1, '2022-10-25 00:40:29', '2022-10-25 00:40:29'),
(7, 'Missed Patrol', '22', 1, '2022-10-25 00:40:50', '2022-11-14 08:02:08'),
(9, 'Missed Patrol', '0', 7, '2022-11-16 01:24:15', '2022-11-16 01:24:15'),
(10, 'Missed Checkcall', '0', 7, '2022-11-16 01:24:15', '2022-11-16 01:24:15'),
(11, 'Service Complaint - High', '0', 7, '2022-11-16 01:24:15', '2022-11-16 01:24:15'),
(12, 'Service Complaint - Medium', '10', 7, '2022-11-16 01:24:15', '2022-11-16 01:26:11'),
(13, 'Service Complaint - Low', '15', 7, '2022-11-16 01:24:15', '2022-11-16 01:26:02'),
(14, 'Loss of Hours -> Lateness', '10', 7, '2022-11-16 01:24:15', '2022-11-16 01:25:51'),
(15, 'Loss of Hours -> Blow out', '5', 7, '2022-11-16 01:24:15', '2022-11-16 01:24:59'),
(16, 'Missed Patrol', '5', 14, '2022-11-19 04:33:02', '2022-11-29 22:44:18'),
(17, 'Missed Checkcall', '5', 14, '2022-11-19 04:33:02', '2022-11-29 22:44:13'),
(18, 'Service Complaint - High', '20', 14, '2022-11-19 04:33:02', '2022-11-29 22:44:07'),
(19, 'Service Complaint - Medium', '10', 14, '2022-11-19 04:33:02', '2022-11-29 22:44:01'),
(20, 'Service Complaint - Low', '5', 14, '2022-11-19 04:33:02', '2022-11-29 22:43:53'),
(21, 'Loss of Hours -> Lateness', '5', 14, '2022-11-19 04:33:02', '2022-11-29 22:43:37'),
(22, 'Loss of Hours -> Blow out', '14', 14, '2022-11-19 04:33:02', '2022-11-28 18:40:02'),
(23, 'Missed Patrol', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(24, 'Missed Checkcall', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(25, 'Service Complaint - High', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(26, 'Service Complaint - Medium', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(27, 'Service Complaint - Low', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(28, 'Loss of Hours -> Lateness', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(29, 'Loss of Hours -> Blow out', '0', 15, '2022-11-19 05:42:10', '2022-11-19 05:42:10'),
(30, 'Missed Patrol', '10', 16, '2022-11-20 16:13:46', '2022-11-20 16:35:05'),
(31, 'Missed Checkcall', '10', 16, '2022-11-20 16:13:46', '2022-11-20 16:35:13'),
(32, 'Service Complaint - High', '0', 16, '2022-11-20 16:13:46', '2022-11-20 16:13:46'),
(33, 'Service Complaint - Medium', '0', 16, '2022-11-20 16:13:46', '2022-11-20 16:13:46'),
(34, 'Service Complaint - Low', '0', 16, '2022-11-20 16:13:46', '2022-11-20 16:13:46'),
(35, 'Loss of Hours -> Lateness', '10', 16, '2022-11-20 16:13:46', '2022-11-20 16:35:22'),
(36, 'Loss of Hours -> Blow out', '10', 16, '2022-11-20 16:13:46', '2022-11-20 16:34:53'),
(37, 'Missed Patrol', '5', 22, '2022-12-01 04:13:08', '2022-12-01 04:15:24'),
(38, 'Missed Checkcall', '5', 22, '2022-12-01 04:13:08', '2022-12-01 04:15:21'),
(39, 'Service Complaint - High', '20', 22, '2022-12-01 04:13:08', '2022-12-01 04:15:18'),
(40, 'Service Complaint - Medium', '15', 22, '2022-12-01 04:13:08', '2022-12-01 04:15:14'),
(41, 'Service Complaint - Low', '10', 22, '2022-12-01 04:13:08', '2022-12-01 04:13:08'),
(42, 'Loss of Hours -> Lateness', '5', 22, '2022-12-01 04:13:08', '2022-12-01 04:14:57'),
(43, 'Loss of Hours -> Blow out', '14', 22, '2022-12-01 04:13:08', '2022-12-01 04:15:05'),
(44, 'Missed Patrol', '10', 23, '2022-12-01 21:24:27', '2022-12-01 21:24:27'),
(45, 'Missed Checkcall', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(46, 'Service Complaint - High', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(47, 'Service Complaint - Medium', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(48, 'Service Complaint - Low', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(49, 'Loss of Hours -> Lateness', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(50, 'Loss of Hours -> Blow out', '10', 23, '2022-12-01 21:24:28', '2022-12-01 21:24:28'),
(51, 'Missed Patrol', '5', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(52, 'Missed Checkcall', '5', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(53, 'Service Complaint - High', '20', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(54, 'Service Complaint - Medium', '15', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(55, 'Service Complaint - Low', '10', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(56, 'Loss of Hours -> Lateness', '5', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(57, 'Loss of Hours -> Blow out', '14', 24, '2022-12-10 01:08:37', '2022-12-10 01:08:37'),
(58, 'Missed Patrol', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(59, 'Missed Checkcall', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(60, 'Service Complaint - High', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(61, 'Service Complaint - Medium', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(62, 'Service Complaint - Low', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(63, 'Loss of Hours -> Lateness', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(64, 'Loss of Hours -> Blow out', '10', 28, '2023-01-28 00:25:09', '2023-01-28 00:25:09'),
(65, 'Missed Patrol', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(66, 'Missed Checkcall', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(67, 'Service Complaint - High', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(68, 'Service Complaint - Medium', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(69, 'Service Complaint - Low', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(70, 'Loss of Hours -> Lateness', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(71, 'Loss of Hours -> Blow out', '10', 31, '2023-02-22 22:19:01', '2023-02-22 22:19:01'),
(72, 'Missed Patrol', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(73, 'Missed Checkcall', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(74, 'Service Complaint - High', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(75, 'Service Complaint - Medium', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(76, 'Service Complaint - Low', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(77, 'Loss of Hours -> Lateness', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(78, 'Loss of Hours -> Blow out', '10', 39, '2023-03-06 05:03:05', '2023-03-06 05:03:05'),
(79, 'Missed Patrol', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(80, 'Missed Checkcall', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(81, 'Service Complaint - High', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(82, 'Service Complaint - Medium', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(83, 'Service Complaint - Low', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(84, 'Loss of Hours -> Lateness', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17'),
(85, 'Loss of Hours -> Blow out', '10', 40, '2023-03-06 06:11:17', '2023-03-06 06:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `activitiesoccureds`
--

CREATE TABLE `activitiesoccureds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Week_Commencing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Activity_Type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_of_activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `complaint_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complain_recieved` text COLLATE utf8mb4_unicode_ci,
  `suplier_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_resolve` text COLLATE utf8mb4_unicode_ci,
  `supplier_communication` text COLLATE utf8mb4_unicode_ci,
  `controllers` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_handler` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activitiesoccureds`
--

INSERT INTO `activitiesoccureds` (`id`, `sitename_id`, `Week_Commencing`, `Activity_Type`, `reason_of_activity`, `day`, `status`, `user_id`, `created_at`, `updated_at`, `complaint_date`, `client_name`, `client_email`, `complain_recieved`, `suplier_name`, `supplier_guard_name`, `complaint_resolve`, `supplier_communication`, `controllers`, `complaint_handler`) VALUES
(45, '180', '381', '19', 'Winter Watch security guard left the site an hour early, leaving the concierge to complete his shift. A rough sleeper was still in the building when the security guard left the site. The client has explained that the rough sleepers have taken chairs from the activity room to use in the rough sleeper room which is not allowed. The security guard\'s job is to monitor the rough sleepers in order to avoid such activities from them.', '1', '2', 14, '2023-03-01 23:03:53', '2023-03-17 20:23:33', '2023-03-01', 'Chorley Council', NULL, 'CLIENT EMAIL:\r\nWe have had an issue today when the domestic staff have gone into the RSP at 09.05 hrs to clean there was a Rough sleeper still sleeping.\r\n \r\nConcierge informed me that the Security Guard left at 08.00hrs.\r\n \r\nWe were of the understanding that the Security were to ensure all Rough Sleepers had left the premises before they left in the morning and this should be by 08.30 hrs.\r\n \r\nThis is a serious H&S concern as we have a duty of care to all our current residents and the staff lone working.\r\n \r\nAs well as this some of the rough sleepers have taken chairs from our activity room to use in the Winter Watch Room.\r\n \r\nThe RSP is for bathing and sleeping and Security should be monitoring more closely.\r\n \r\nPlease can you look into this as a matter of urgency.', '3', '31', 'The Contract Manager has spoken with Muhammad Zubair, who has explained his reasons for leaving the site early. \r\n\r\nThe below correspondence has been sent to the client via email:\r\nHi Amanda,\r\n\r\nI’ve looked into the below issue, and I’ve spoken with the security guard who was on the winter watch shift.\r\n\r\nMuhammad Zubair explained that leaving the site early was due to a university emergency.\r\nI’ve explained to him the serious concerns for the health and safety of the residents and other staff members and the importance of monitoring rough sleepers as they are being accommodated on-site; therefore, I’ve issued his first and final warning.\r\n\r\nAll security guards know they cannot leave their duty without first speaking to either Control Team or myself, as it’s our responsibility to make sure another security guard is placed on site as a replacement. I do apologise for this behaviour; we do not condone it. \r\nI’ve asked him to reread the assignment instruction which I’ve placed on the site to familiarise himself with the rules and regulations.', 'The security guard was warned and asked to reread the assignment instruction we have placed on site to familiarise himself with the rules and regulations so he does not repeat the same mistake twice.', 'Hasnain, Emaan', 'Janeth'),
(46, '170', '353', '20', 'Complaint against Berhane Haile from Daniel Abera', '5', '2', 14, '2023-03-07 01:58:20', '2023-03-07 02:04:10', '2023-03-03', 'Leeds City Council', NULL, 'Daniel Abera has reported to the Contract Manager that the guard working alongside him on Friday 3rd (10:00-14:30)- Berhane Haile, wasn\'t doing his duty properly.\r\nDaniel explained that the guard was not responding to the radio and not completing the patrols.', 'N/A', '28', 'The contract Manager replaced Berhane with Shazaib Elahi.\r\nBerhane was removed from the site at 14:30, and Shazaib covered the rest of the remaining shift.', 'The supplier has been advised not to send their guard to this site again as they were previously advised by the Contract Manager that the guard lacked communication skills and didn\'t know how to use the radio.', 'N/A', 'Janeth'),
(47, '184', '370', '20', 'Security had noted 4 people were in the resident unit when he was conducting welfare checks, but he had not asked them to leave. \r\nThe site permits only one resident visitor per unit at any time.', '4', '2', 14, '2023-03-17 18:09:04', '2023-03-17 18:14:43', '2023-03-17', 'Blackpool Coastal Housing', NULL, 'Complaint sent by Heather O\'Hanlon via email: ---\r\nI understand the officers are just finding their feet. Please can you inform that only one resident visitor is permitted in a unit at any one time. The officer should ask any additional residents to leave the unit. \r\n\r\nIn regards to the visitor to the premises, staff will never approve an overnight guest. If there are any arrangements made with residents regarding visitors the officer will be informed at handover. Please can you inform the officers visitors should be asked to leave immediately? \r\nIt is likely the residents are just trying it on as we have new officers', '3', '177', 'I\'ve notified the security team of what the client has advised.', 'Not spoken with the supplier, as I\'ve talked to the guards directly.', 'N/A', 'Janeth'),
(49, '180', '368', '19', 'The security officer left the site at 08:34 instead of 09:00', '4', '2', 14, '2023-03-17 20:28:19', '2023-03-17 20:31:15', '2023-03-10', 'Chorley Council', NULL, 'Complaint was sent by Amanda Miller via email: ---\r\nPlease can you speak to Security Guard about the time he is supposed to work to.\r\n \r\nHe has left at 08.34 this morning instead of 09.00hrs.', '3', '31', 'Gave the security guard his last warning.', 'I have advised the supplier also to have a word with their security guard and make him understand this is the last time.', 'N/A', 'Janeth'),
(50, '180', '367', '19', 'The security guard on duty left the site before 09:00', '7', '2', 14, '2023-03-17 20:34:45', '2023-03-17 20:42:29', '2023-03-13', 'Chorley Council', NULL, 'Complaint was sent by Amanda Miller via email: ---\r\nThe guard on duty this morning also left before 09.00hrs.\r\n\r\nConcierge informed me they only work until 08.45 – can you confirm this as I have always been of the understanding it is until 09.00hrs.', '3', '32', 'I\'ve advised Awais if such a situation occurs again, I will have no choice but to remove him from the site, as we have now had 3 complaints regarding security guards leaving the site before 09:00. I have made sure to adjust their shift timing in our system to match the time they were on site.', 'I\'ve advised the supplier to communicate with their guards regarding finishing time and the importance of having guards on site until 09:00 no matter if the rough sleeper has already exited the building.', 'N/A', 'Janeth'),
(51, '179', '395', '20', 'The security guard turned up on site with the incorrect uniform.\r\nThe security guard was wearing tracksuit bottoms with black trainers.', '2', '2', 14, '2023-03-21 00:22:40', '2023-03-21 00:31:58', '2023-03-14', 'Chorley Council', NULL, 'The contract manager received a photo of the security guard from site manager Steven via WhatsApp.\r\nThe photo showed the security guard wearing tracksuit bottoms and black trainers.', '3', '183', 'The contract manager asked for Steven\'s permission to allow her to advise the guard to quickly head to the nearest shop on site and purchase suitable work trousers and shoes. Steven gave the contract manager permission, in which the contract manager advised the security guard to go into Asda and buy sensible workwear clothing.', 'The contract manager advised the supplier and security guard we shouldn\'t be asking the guard to purchase clothes during their shift as guards are expected to turn up to work in the correct uniforms. The contract manager advised the security guard moving forward, and he must always be in the proper uniform before arriving on site; otherwise, he will be removed from the site.', 'N/A', 'Janeth'),
(52, '184', '372', '19', 'data breach', '4', '2', 14, '2023-03-24 19:00:54', '2023-03-24 20:55:35', '2023-03-24', 'Blackpool Coastal Housing', NULL, 'Hi Janeth\r\n\r\nAs I was leaving Gorton Street last night around 6.45pm I noticed a lady wandering round the top floor of the building, she does not live at GS. I asked her who she was and what she was doing in the building. She informed the security officer let her in. The lady was the aunty of the couple in unit Ub. This corridor cannot be accessed without a staff member she was not escorted. I informed the lady no visitors were permitted at GS and escorted her from the building.\r\n\r\nI spoke with Rab he informed the lady worked for BCH I informed she did not and had no ID or lanyard. I informed Rab visitors are not permitted and the lady would not have been able to get onto the corridor without him giving access. \r\n\r\nWe discussed the following:\r\nOfficers should not confirm with people who attend the hostel or on the telephone whether a resident lives there or not due to data protection and often people fleeing violence. Professionals should be asked for ID.\r\n\r\nThe officer should inform anyone coming to the door they are not permitted to discuss or confirm who resides in the building. If the person does live in the building the officer should then go to the unit and inform there was someone at the door for them so they can decide if they want to go down and see the person. For clarity the officer should not tell the visitor they are doing this. \r\n\r\nRab mentioned he needed to pray for 5 minutes and what should he do. I informed he could close the office blinds and disable the front door when he needs to pray. \r\n\r\nPlease can you inform of timings of praying and how often?', '3', '178', 'I\'ve informed the client I will speak with Rab to ensure he understands where he\'s gone wrong.\r\nI\'ve provided prayer times to the client for guidance.', 'N/A', 'Bilal, Emaan', 'Janeth'),
(55, '178', '391', '18', 'Officers on shift failed to notice several incidents during their Sunday shift. \r\n\r\nEmail from client:\r\nI have spent the morning dealing with an incident that is alleged to have happened yesterday.  This was not reported to Concierge.\r\n \r\nIn looking into the incident I had to check CCTV and I was alarmed by what I saw.\r\n \r\nChildren left unattended in corridors\r\nChildren playing football and messing with light switches in the corridor.\r\nResidents going in and out of other flats\r\nChildren entering other flats without their parents\r\nChildren taking chairs into the corridors\r\nResidents and children eating food (Roast Dinner) in the corridor\r\nResidents visiting flats after 8pm\r\nResidents staying in the family lounge after 8pm\r\n \r\nNone of this has been reported by Concierge but should have been seen and dealt with by the officers on duty.\r\n \r\nPlease can you look into this as a matter of urgency.', '7', '1', 14, '2023-03-27 23:43:40', '2023-03-27 23:43:40', NULL, NULL, NULL, NULL, NULL, '9', NULL, NULL, NULL, NULL),
(56, '182', '394', '19', 'Issue regarding Ryan Bradley', '1', '2', 14, '2023-03-29 20:43:44', '2023-03-29 20:53:11', '2023-03-29', 'Chorley Council', NULL, 'The contract manager received the following email from the client:\r\n\r\nHi Janeth\r\n \r\nI hope you’re well. \r\n \r\nUnfortunately, I have an issue that I need to bring to your attention regarding Ryan.\r\n \r\nA resident has spoken to me about the behaviour & attitude of Ryan. She doesn’t want to make a formal complaint but wanted to bring it to my attention to have a word and remind him of how he is expected to behave.\r\n \r\nShe reports that on Monday evening when she was on site sorting her flat, she was in her flat talking to one of the carers who went to introduce herself and she invited her in. Her door was open and a few minutes later Ryan turned up and just walked in like he had the right to and also proceeded to butt into her conversation telling her things she could/couldn’t do in an authoritative manner.\r\n \r\nShe also mentioned that when leaving the building Ryan presented to be lounging in his chair with his feet up and on his phone, to which she commented ‘you look comfy there’ to which he replied ‘yeh I am’.\r\n \r\nShe said he has the manner more suited of a nightclub bouncer.\r\n \r\nPlease can you speak to Ryan and remind him of the behaviour and attitude that we expect from the concierge, which is to be professional and helpful at all times and provide a service on Reception with patrols throughout evening/night. He is not their friend, he is a representative of Chorley Council and we need him to know there are boundaries. These flats are their homes which he has no place entering once they have signed up and have the keys handed over.', 'N/A', '11', 'The contract manager has written a formal warning to Ryan, explaining the client\'s concerns in the email and the following steps we will take.\r\nRyan has been advised of his duties and protocols while on shift. The contract manager made it clear it\'s a formal warning and that he has been placed under monitoring for the next three weeks; which contract manager will analyse the type of complaints received about Ryan and monitor Ryan\'s professionalism at work. If Ryan fails the monitoring process, he has been advised this will mean removal from both Tatton Gardens and Market Walk. \r\nHR has been notified of the issue, and steps taken.', 'N/A', 'Hasnain, Emaan', 'Janeth');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `perform_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Clients', 'Added', NULL, '1', '1', '2022-11-10 06:04:23', '2022-11-10 06:04:23'),
(2, 'Clients', 'Updated', NULL, '1', '1', '2022-11-10 06:04:39', '2022-11-10 06:04:39'),
(3, 'Clients', 'deleted', NULL, '1', '1', '2022-11-10 06:04:47', '2022-11-10 06:04:47'),
(4, 'Sites', 'Added', NULL, '1', '1', '2022-11-10 06:24:27', '2022-11-10 06:24:27'),
(5, 'Roles Permissions', 'Updated', NULL, '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(6, 'Complaints', 'Added', NULL, '1', '1', '2022-11-10 07:44:44', '2022-11-10 07:44:44'),
(7, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-11 02:02:54', '2022-11-11 02:02:54'),
(8, 'Roles Permissions', 'Updated', NULL, '1', '1', '2022-11-11 02:23:28', '2022-11-11 02:23:28'),
(9, 'Monitoring', 'Added', NULL, '3', '1', '2022-11-11 05:33:39', '2022-11-11 05:33:39'),
(10, 'Supervisory Visits', 'Added', NULL, '3', '1', '2022-11-11 05:44:56', '2022-11-11 05:44:56'),
(11, 'Complaints', 'Added', NULL, '3', '1', '2022-11-11 05:58:25', '2022-11-11 05:58:25'),
(12, 'Monitoring', 'Added', NULL, '3', '1', '2022-11-11 06:09:28', '2022-11-11 06:09:28'),
(13, 'Roles Permissions', 'Updated', NULL, '1', '1', '2022-11-11 06:20:31', '2022-11-11 06:20:31'),
(14, 'Roles Permissions', 'Updated', NULL, '1', '1', '2022-11-11 06:21:24', '2022-11-11 06:21:24'),
(15, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:15', '2022-11-12 04:41:15'),
(16, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:19', '2022-11-12 04:41:19'),
(17, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:23', '2022-11-12 04:41:23'),
(18, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:27', '2022-11-12 04:41:27'),
(19, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:37', '2022-11-12 04:41:37'),
(20, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:42', '2022-11-12 04:41:42'),
(21, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:54', '2022-11-12 04:41:54'),
(22, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:41:59', '2022-11-12 04:41:59'),
(23, 'Monitoring', 'Deleted', NULL, '1', '1', '2022-11-12 04:42:03', '2022-11-12 04:42:03'),
(24, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-12 04:43:46', '2022-11-12 04:43:46'),
(25, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-12 04:44:30', '2022-11-12 04:44:30'),
(26, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-12 04:45:05', '2022-11-12 04:45:05'),
(27, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-12 04:46:02', '2022-11-12 04:46:02'),
(28, 'Complaints', 'Added', NULL, '1', '1', '2022-11-12 05:22:20', '2022-11-12 05:22:20'),
(29, 'Complaints', 'Added', NULL, '1', '1', '2022-11-12 05:23:00', '2022-11-12 05:23:00'),
(30, 'Complaints', 'Added', NULL, '1', '1', '2022-11-12 07:19:40', '2022-11-12 07:19:40'),
(31, 'Complaints', 'Added', NULL, '1', '1', '2022-11-12 07:19:51', '2022-11-12 07:19:51'),
(32, 'Internal Meetings', 'Added', NULL, '1', '1', '2022-11-12 07:26:20', '2022-11-12 07:26:20'),
(33, 'Internal Meetings', 'Deleted', NULL, '1', '1', '2022-11-12 07:26:28', '2022-11-12 07:26:28'),
(34, 'Complaints', 'Added', NULL, '1', '1', '2022-11-12 07:26:51', '2022-11-12 07:26:51'),
(35, 'Sites', 'Added', NULL, '1', '1', '2022-11-14 01:38:30', '2022-11-14 01:38:30'),
(36, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-14 01:39:21', '2022-11-14 01:39:21'),
(37, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-14 01:40:11', '2022-11-14 01:40:11'),
(38, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-14 01:41:29', '2022-11-14 01:41:29'),
(39, 'Clients', 'Added', NULL, '1', '1', '2022-11-14 05:11:09', '2022-11-14 05:11:09'),
(40, 'Sites', 'Added', NULL, '1', '1', '2022-11-14 05:11:45', '2022-11-14 05:11:45'),
(41, 'Monitoring', 'Added', NULL, '1', '1', '2022-11-14 06:29:31', '2022-11-14 06:29:31'),
(42, 'Monitoring', 'Added', NULL, '4', '1', '2022-11-14 06:42:19', '2022-11-14 06:42:19'),
(43, 'Activties', 'Updated', 'Updated Activity with id: 7, Activity Type: Missed Patrol', '1', '1', '2022-11-14 06:56:33', '2022-11-14 06:56:33'),
(44, 'Clients', 'Updated', 'Updated a Client with id: 4, Name 02345343452 ', '1', '1', '2022-11-14 07:49:44', '2022-11-14 07:49:44'),
(45, 'Clients', 'Added', 'Added a New Client with id: 5, Name 452345345 ', '1', '1', '2022-11-14 07:50:58', '2022-11-14 07:50:58'),
(46, 'Clients', 'Added', 'Added a New Client with id: 6, Name Premium ', '1', '1', '2022-11-14 07:51:54', '2022-11-14 07:51:54'),
(47, 'Clients', 'Deleted', 'Deleted Client with id: 6, Name Premium ', '1', '1', '2022-11-14 07:52:57', '2022-11-14 07:52:57'),
(48, 'Sites', 'Updated', 'Updated a site, name: demo site 2, id: 4, of client: test client', '1', '1', '2022-11-14 07:53:58', '2022-11-14 07:53:58'),
(49, 'Sites', 'Deleted', 'Deleted a site, name: demo site 2, id: 4, of client: test client', '1', '1', '2022-11-14 07:54:10', '2022-11-14 07:54:10'),
(50, 'Monitoring', 'Added', 'Added Monitoring of Site: test site, on week: 20/11/2022', '1', '1', '2022-11-14 07:56:57', '2022-11-14 07:56:57'),
(51, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: test siteShift Week : 20/11/2022, Monitoring Id: 20', '1', '1', '2022-11-14 07:57:10', '2022-11-14 07:57:10'),
(52, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 20, Site: test site, Week Commencing: 20/11/2022, Activity Type: Service Complaint - Medium', '1', '1', '2022-11-14 07:57:27', '2022-11-14 07:57:27'),
(53, 'Internal Meetings', 'Added', 'Added Internal Meeting of Date: , with Title: fasdfadfa', '1', '1', '2022-11-14 07:57:53', '2022-11-14 07:57:53'),
(54, 'Internal Meetings', 'Updated', 'Updated Internal Meeting of Date: , with Title: fasdfadfa', '1', '1', '2022-11-14 07:58:08', '2022-11-14 07:58:08'),
(55, 'Internal Meetings', 'Added', 'Added Internal Meeting of Date: , with Title: sdfasdfasdqfa', '1', '1', '2022-11-14 07:59:25', '2022-11-14 07:59:25'),
(56, 'Internal Meetings', 'Deleted', 'Deleted Internal Meeting of Date: , with Title: sdfasdfasdqfa', '1', '1', '2022-11-14 07:59:32', '2022-11-14 07:59:32'),
(57, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: svczcvsfdasdv', '1', '1', '2022-11-14 07:59:53', '2022-11-14 07:59:53'),
(58, 'External Meetings', 'Updated', 'Updated External Meeting of Date: , with Title: svczcvsfdasdv', '1', '1', '2022-11-14 08:00:07', '2022-11-14 08:00:07'),
(59, 'Supervisory Visits', 'Updated', 'Updated a supervisory vist of site', '1', '1', '2022-11-14 08:01:18', '2022-11-14 08:01:18'),
(60, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 7', '1', '1', '2022-11-14 08:01:23', '2022-11-14 08:01:23'),
(61, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '1', '1', '2022-11-14 08:01:45', '2022-11-14 08:01:45'),
(62, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 8', '1', '1', '2022-11-14 08:01:49', '2022-11-14 08:01:49'),
(63, 'Activties', 'Updated', 'Updated Activity with id: 7, Activity Type: Missed Patrol', '1', '1', '2022-11-14 08:02:08', '2022-11-14 08:02:08'),
(64, 'Banned Staff', 'Added', 'Banned a Staff with id: 1, name dfsgdfsd', '1', '1', '2022-11-14 08:02:52', '2022-11-14 08:02:52'),
(65, 'Banned Staff', 'Updated', 'Updated a Banned Staff with id: 1, name dfsgdfsd', '1', '1', '2022-11-14 08:03:54', '2022-11-14 08:03:54'),
(66, 'Banned Staff', 'Deleted', 'Updated a Banned Staff with id: 1, name dfsgdfsd', '1', '1', '2022-11-14 08:04:01', '2022-11-14 08:04:01'),
(67, 'Complaints', 'Updated', 'Updated a Complaint with id: 19, of site:test site 2', '1', '1', '2022-11-14 08:04:25', '2022-11-14 08:04:25'),
(68, 'Complaints', 'Added', 'Added a Complaint with id: 24, of site:test site 2', '1', '1', '2022-11-14 08:04:49', '2022-11-14 08:04:49'),
(69, 'Roles Permissions', 'Updated', 'Updaqted Permissions for ROle: Sub Admin', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(70, 'Roles', 'Added', 'Added Role with of name: test role ', '1', '1', '2022-11-14 08:05:44', '2022-11-14 08:05:44'),
(71, 'Roles', 'Updated', 'updated Role with id: 1, name: Admin ', '1', '1', '2022-11-14 08:05:52', '2022-11-14 08:05:52'),
(72, 'Roles', 'Deleted', 'Deleted Role of Name: Admin-dfsdf, id: 1', '1', '1', '2022-11-14 08:05:56', '2022-11-14 08:05:56'),
(73, 'Roles', 'Deleted', 'Deleted Role of Name: test role, id: 3', '1', '1', '2022-11-14 08:06:35', '2022-11-14 08:06:35'),
(74, 'Monitoring', 'Updated', 'Updated Monitoring of Site: test site, on week: 20/11/2022', '1', '1', '2022-11-15 02:51:22', '2022-11-15 02:51:22'),
(75, 'Monitoring', 'Added', 'Added Monitoring of Site: test site 2, on week: 28/11/2022', '1', '1', '2022-11-15 02:52:34', '2022-11-15 02:52:34'),
(76, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '1', '1', '2022-11-15 03:01:30', '2022-11-15 03:01:30'),
(77, 'Staff', 'Added', 'Added a staff with name: demo staff, id: 3', '1', '1', '2022-11-15 03:06:13', '2022-11-15 03:06:13'),
(78, 'Clients', 'Added', 'Added a New Client with id: 7, Name 42543523452 ', '1', '1', '2022-11-15 03:46:05', '2022-11-15 03:46:05'),
(79, 'Sites', 'Added', 'Added New Site with name: test site 420, id: 5, of client: test client 420', '1', '1', '2022-11-15 03:46:26', '2022-11-15 03:46:26'),
(80, 'Clients', 'Deleted', 'Deleted Client with id: 7, Name 42543523452 ', '1', '1', '2022-11-15 03:47:39', '2022-11-15 03:47:39'),
(81, 'Clients', 'Added', 'Added a New Client with id: 8, Name 2345678 ', '1', '1', '2022-11-15 03:54:59', '2022-11-15 03:54:59'),
(82, 'Sites', 'Added', 'Added New Site with name: test site420, id: 6, of client: test client 420', '1', '1', '2022-11-15 03:55:15', '2022-11-15 03:55:15'),
(83, 'Clients', 'Deleted', 'Deleted Client with id: 8, Name 2345678 ', '1', '1', '2022-11-15 03:55:24', '2022-11-15 03:55:24'),
(84, 'Sites', 'Updated', 'Updated a site, name: test site420, id: 6, of client: test client 2', '1', '1', '2022-11-15 03:56:44', '2022-11-15 03:56:44'),
(85, 'Sites', 'Deleted', 'Deleted a site, name: test site420, id: 6, of client: test client 2', '1', '1', '2022-11-15 03:56:52', '2022-11-15 03:56:52'),
(86, 'Clients', 'Added', 'Added a New Client with id: 9, Name 1423357689 ', '1', '1', '2022-11-15 04:00:13', '2022-11-15 04:00:13'),
(87, 'Clients', 'Added', 'Added a New Client with id: 10, Name 1243576890 ', '1', '1', '2022-11-15 04:00:32', '2022-11-15 04:00:32'),
(88, 'Sites', 'Added', 'Added New Site with name: demo site2342123, id: 7, of client: demo client 1', '1', '1', '2022-11-15 04:01:13', '2022-11-15 04:01:13'),
(89, 'Sites', 'Added', 'Added New Site with name: demo site234234242342342342343, id: 8, of client: demo client 1', '1', '1', '2022-11-15 04:01:24', '2022-11-15 04:01:24'),
(90, 'Clients', 'Deleted', 'Deleted Client with id: 10, Name 1243576890 ', '1', '1', '2022-11-15 04:01:39', '2022-11-15 04:01:39'),
(91, 'Sites', 'Updated', 'Updated a site, name: demo site234234242342342342343, id: 8, of client: demo client 1', '1', '1', '2022-11-15 04:04:19', '2022-11-15 04:04:19'),
(92, 'Clients', 'Deleted', 'Deleted Client with id: 9, Name 1423357689 ', '1', '1', '2022-11-15 04:04:25', '2022-11-15 04:04:25'),
(93, 'Clients', 'Added', 'Added a New Client with id: 11, Name 2124357689898 ', '1', '1', '2022-11-15 04:06:09', '2022-11-15 04:06:09'),
(94, 'Sites', 'Deleted', 'Deleted a site, name: demo site, id: 3, of client: test client', '1', '1', '2022-11-15 04:06:21', '2022-11-15 04:06:21'),
(95, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 3Shift Week : 14/11/2022, Monitoring Id: 15', '1', '1', '2022-11-15 04:06:31', '2022-11-15 04:06:31'),
(96, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 3Shift Week : 28/11/2022, Monitoring Id: 22', '1', '1', '2022-11-15 04:06:35', '2022-11-15 04:06:35'),
(97, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 3Shift Week : 28/11/2022, Monitoring Id: 17', '1', '1', '2022-11-15 04:06:40', '2022-11-15 04:06:40'),
(98, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 3Shift Week : 05/12/2022, Monitoring Id: 16', '1', '1', '2022-11-15 04:06:47', '2022-11-15 04:06:47'),
(99, 'Sites', 'Added', 'Added New Site with name: demo site, id: 9, of client: demo client 1312', '1', '1', '2022-11-15 04:07:15', '2022-11-15 04:07:15'),
(100, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '1', '1', '2022-11-15 04:08:20', '2022-11-15 04:08:20'),
(101, 'Clients', 'Deleted', 'Deleted Client with id: 11, Name 2124357689898 ', '1', '1', '2022-11-15 04:15:12', '2022-11-15 04:15:12'),
(102, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 9Shift Week : 28/11/2022, Monitoring Id: 23', '1', '1', '2022-11-15 04:17:12', '2022-11-15 04:17:12'),
(103, 'Clients', 'Added', 'Added a New Client with id: 12, Name 234567898765 ', '1', '1', '2022-11-15 04:23:56', '2022-11-15 04:23:56'),
(104, 'Clients', 'Added', 'Added a New Client with id: 13, Name 34565643 ', '1', '1', '2022-11-15 04:24:05', '2022-11-15 04:24:05'),
(105, 'Clients', 'Added', 'Added a New Client with id: 14, Name 23423235 ', '1', '1', '2022-11-15 04:24:15', '2022-11-15 04:24:15'),
(106, 'Clients', 'Added', 'Added a New Client with id: 15, Name 242342342 ', '1', '1', '2022-11-15 04:24:22', '2022-11-15 04:24:22'),
(107, 'Clients', 'Added', 'Added a New Client with id: 16, Name 2434 ', '1', '1', '2022-11-15 04:24:32', '2022-11-15 04:24:32'),
(108, 'Sites', 'Added', 'Added New Site with name: demo site, id: 10, of client: demo client', '1', '1', '2022-11-15 04:24:45', '2022-11-15 04:24:45'),
(109, 'Sites', 'Added', 'Added New Site with name: demo site 1, id: 11, of client: demo client 1', '1', '1', '2022-11-15 04:24:57', '2022-11-15 04:24:57'),
(110, 'Sites', 'Added', 'Added New Site with name: test site 2, id: 12, of client: test client 2', '1', '1', '2022-11-15 04:25:16', '2022-11-15 04:25:16'),
(111, 'Sites', 'Added', 'Added New Site with name: demo site 3, id: 13, of client: test client 3', '1', '1', '2022-11-15 04:25:32', '2022-11-15 04:25:32'),
(112, 'Sites', 'Added', 'Added New Site with name: demo site 4, id: 14, of client: test client 4', '1', '1', '2022-11-15 04:25:39', '2022-11-15 04:25:39'),
(113, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '1', '1', '2022-11-15 04:26:11', '2022-11-15 04:26:11'),
(114, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '1', '1', '2022-11-15 04:26:30', '2022-11-15 04:26:30'),
(115, 'Monitoring', 'Added', 'Added Monitoring of Site: test site 2, on week: 28/11/2022', '1', '1', '2022-11-15 04:26:52', '2022-11-15 04:26:52'),
(116, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site 3, on week: 28/11/2022', '1', '1', '2022-11-15 04:27:14', '2022-11-15 04:27:14'),
(117, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site 4, on week: 29/11/2022', '1', '1', '2022-11-15 04:27:39', '2022-11-15 04:27:39'),
(118, 'Clients', 'Deleted', 'Deleted Client with id: 14, Name 23423235 ', '1', '1', '2022-11-15 04:28:05', '2022-11-15 04:28:05'),
(119, 'Sites', 'Deleted', 'Deleted a site, name: demo site 4, id: 14, of client: test client 4', '1', '1', '2022-11-15 04:28:54', '2022-11-15 04:28:54'),
(120, 'Clients', 'Deleted', 'Deleted Client with id: 16, Name 2434 ', '1', '1', '2022-11-15 04:29:54', '2022-11-15 04:29:54'),
(121, 'Clients', 'Deleted', 'Deleted Client with id: 12, Name 234567898765 ', '1', '1', '2022-11-15 04:30:01', '2022-11-15 04:30:01'),
(122, 'Roles', 'Updated', 'updated Role with id: 2, name: Sub Admin ', '1', '1', '2022-11-15 05:01:29', '2022-11-15 05:01:29'),
(123, 'Roles', 'Added', 'Added Role with of name: Sub Admin ', '1', '1', '2022-11-15 05:04:17', '2022-11-15 05:04:17'),
(124, 'Roles Permissions', 'Updated', 'Updaqted Permissions for ROle: Sub Admin', '1', '1', '2022-11-15 05:04:39', '2022-11-15 05:04:39'),
(125, 'Clients', 'Added', 'Added a New Client with id: 17, Name 03001234567 ', '1', '1', '2022-11-15 05:16:13', '2022-11-15 05:16:13'),
(126, 'Clients', 'Deleted', 'Deleted Client with id: 17, Name 03001234567 ', '1', '1', '2022-11-15 06:05:54', '2022-11-15 06:05:54'),
(127, 'Clients', 'Deleted', 'Deleted Client with id: 15, Name 242342342 ', '1', '1', '2022-11-15 06:06:19', '2022-11-15 06:06:19'),
(128, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 2Shift Week : 05/12/2022, Monitoring Id: 14', '1', '1', '2022-11-15 06:13:30', '2022-11-15 06:13:30'),
(129, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test siteShift Week : 20/11/2022, Monitoring Id: 20', '1', '1', '2022-11-16 00:05:01', '2022-11-16 00:05:01'),
(130, 'Activties', 'Updated', 'Updated Activity with id: 15, Activity Type: Loss of Hours -> Blow out', '7', '7', '2022-11-16 01:24:59', '2022-11-16 01:24:59'),
(131, 'Activties', 'Updated', 'Updated Activity with id: 14, Activity Type: Loss of Hours -> Lateness', '7', '7', '2022-11-16 01:25:51', '2022-11-16 01:25:51'),
(132, 'Activties', 'Updated', 'Updated Activity with id: 13, Activity Type: Service Complaint - Low', '7', '7', '2022-11-16 01:26:02', '2022-11-16 01:26:02'),
(133, 'Activties', 'Updated', 'Updated Activity with id: 12, Activity Type: Service Complaint - Medium', '7', '7', '2022-11-16 01:26:11', '2022-11-16 01:26:11'),
(134, 'Clients', 'Added', 'Added a New Client with id: 18, Name 03001234567 ', '7', '7', '2022-11-16 01:33:09', '2022-11-16 01:33:09'),
(135, 'Sites', 'Added', 'Added New Site with name: demo site, id: 15, of client: demo client', '7', '7', '2022-11-16 01:33:26', '2022-11-16 01:33:26'),
(136, 'Staff', 'Added', 'Added a staff with name: demo staff, id: 4', '7', '7', '2022-11-16 01:34:18', '2022-11-16 01:34:18'),
(137, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '7', '7', '2022-11-16 01:36:08', '2022-11-16 01:36:08'),
(138, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 29, Site: demo site, Week Commencing: 28/11/2022, Activity Type: Loss of Hours -> Blow out', '7', '7', '2022-11-16 01:37:05', '2022-11-16 01:37:05'),
(139, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '7', '7', '2022-11-16 01:38:09', '2022-11-16 01:38:09'),
(140, 'Complaints', 'Added', 'Added a Complaint with id: 26, of site:demo site', '7', '7', '2022-11-16 01:38:57', '2022-11-16 01:38:57'),
(141, 'Roles', 'Added', 'Added Role with of name: Manager ', '7', '7', '2022-11-16 01:39:16', '2022-11-16 01:39:16'),
(142, 'Roles Permissions', 'Updated', 'Updaqted Permissions for ROle: Manager', '7', '7', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(143, 'Team', 'Added', 'Added a Team Member of name demo sub user', '7', '7', '2022-11-16 01:40:27', '2022-11-16 01:40:27'),
(144, 'Clients', 'Added', 'Added a New Client with id: 19, Name 03987654321 ', '8', '7', '2022-11-16 01:43:15', '2022-11-16 01:43:15'),
(145, 'Sites', 'Added', 'Added New Site with name: demo site 1, id: 16, of client: demo client 1', '8', '7', '2022-11-16 01:43:43', '2022-11-16 01:43:43'),
(146, 'Team', 'Added', 'Added a Team Member of name Test Sub User', '1', '1', '2022-11-16 02:28:20', '2022-11-16 02:28:20'),
(147, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '1', '1', '2022-11-16 03:57:05', '2022-11-16 03:57:05'),
(148, 'Monitoring', 'Updated', 'Updated Monitoring of Site: test site 2, on week: 21/11/2022', '1', '1', '2022-11-16 07:32:12', '2022-11-16 07:32:12'),
(149, 'Team', 'Added', 'Added a Team Member of name test sub user 21', '1', '1', '2022-11-16 07:34:33', '2022-11-16 07:34:33'),
(150, 'Team', 'Added', 'Added a Team Member of name demo staff', '1', '1', '2022-11-17 00:50:51', '2022-11-17 00:50:51'),
(151, 'Team', 'Added', 'Added a Team Member of name test sub user', '1', '1', '2022-11-17 01:06:09', '2022-11-17 01:06:09'),
(152, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 1', '1', '1', '2022-11-17 01:13:55', '2022-11-17 01:13:55'),
(153, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 4', '1', '1', '2022-11-17 01:14:13', '2022-11-17 01:14:13'),
(154, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '1', '1', '2022-11-17 01:15:11', '2022-11-17 01:15:11'),
(155, 'Sites', 'Deleted', 'Deleted a site, name: demo site 1, id: 11, of client: demo client 1', '1', '1', '2022-11-17 01:15:35', '2022-11-17 01:15:35'),
(156, 'Sites', 'Deleted', 'Deleted a site, name: test site 2, id: 2, of client: test client 2', '1', '1', '2022-11-17 01:18:14', '2022-11-17 01:18:14'),
(157, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 1Shift Week : 07/11/2022, Monitoring Id: 12', '1', '1', '2022-11-17 01:18:57', '2022-11-17 01:18:57'),
(158, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '1', '1', '2022-11-17 01:19:38', '2022-11-17 01:19:38'),
(159, 'Clients', 'Deleted', 'Deleted Client with id: 13, Name 34565643 ', '1', '1', '2022-11-17 01:20:22', '2022-11-17 01:20:22'),
(160, 'Clients', 'Deleted', 'Deleted Client with id: 2, Name 1234567890 ', '1', '1', '2022-11-17 01:20:26', '2022-11-17 01:20:26'),
(161, 'Clients', 'Added', 'Added a New Client with id: 20, Name: 03012345678 ', '1', '1', '2022-11-17 02:01:54', '2022-11-17 02:01:54'),
(162, 'Clients', 'Added', 'Added a New Client with id: 21, Name: 03001234567 ', '1', '1', '2022-11-17 02:02:14', '2022-11-17 02:02:14'),
(163, 'Clients', 'Added', 'Added a New Client with id: 22, Name: 02345343452 ', '1', '1', '2022-11-17 02:02:50', '2022-11-17 02:02:50'),
(164, 'Complaints', 'Added', 'Added a Complaint with id: 27, of site:test site', '1', '1', '2022-11-17 02:05:10', '2022-11-17 02:05:10'),
(165, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 18, Site: test site, Week Commencing: 05/12/2022, Activity Type: Loss of Hours -> Blow out', '1', '1', '2022-11-17 02:10:33', '2022-11-17 02:10:33'),
(166, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 20, Site: test site, Week Commencing: 20/11/2022, Activity Type: Loss of Hours -> Lateness', '1', '1', '2022-11-17 02:11:33', '2022-11-17 02:11:33'),
(167, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '1', '1', '2022-11-17 02:13:18', '2022-11-17 02:13:18'),
(168, 'Complaints', 'Added', 'Added a Complaint with id: 30, of site:test site', '1', '1', '2022-11-17 02:13:56', '2022-11-17 02:13:56'),
(169, 'Team', 'Added', 'Added a Team Member of name test sub user 2', '1', '1', '2022-11-17 02:14:44', '2022-11-17 02:14:44'),
(170, 'Clients', 'Added', 'Added a New Client with id: 23, Name: awdad ', '14', '14', '2022-11-19 04:38:59', '2022-11-19 04:38:59'),
(171, 'Sites', 'Added', 'Added New Site with name: dwadwa, id: 17, of client: wdadw', '14', '14', '2022-11-19 04:39:07', '2022-11-19 04:39:07'),
(172, 'Staff', 'Added', 'Added a staff with name: adwa, id: 5', '14', '14', '2022-11-19 04:39:32', '2022-11-19 04:39:32'),
(173, 'Monitoring', 'Added', 'Added Monitoring of Site: dwadwa, on week: 14/11/2022', '14', '14', '2022-11-19 04:40:02', '2022-11-19 04:40:02'),
(174, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 30, Site: dwadwa, Week Commencing: 14/11/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-11-19 04:43:00', '2022-11-19 04:43:00'),
(175, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: dwadwaShift Week : 14/11/2022, Monitoring Id: 30', '14', '14', '2022-11-19 04:43:11', '2022-11-19 04:43:11'),
(176, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 30, Site: dwadwa, Week Commencing: 14/11/2022, Activity Type: Missed Checkcall', '14', '14', '2022-11-19 05:37:22', '2022-11-19 05:37:22'),
(177, 'Clients', 'Added', 'Added a New Client with id: 24, Name: wadwa ', '14', '14', '2022-11-19 05:44:04', '2022-11-19 05:44:04'),
(178, 'Sites', 'Added', 'Added New Site with name: dwada, id: 18, of client: abrar', '14', '14', '2022-11-19 05:45:15', '2022-11-19 05:45:15'),
(179, 'Monitoring', 'Added', 'Added Monitoring of Site: dwadwa, on week: 14/11/2022', '14', '14', '2022-11-19 05:45:33', '2022-11-19 05:45:33'),
(180, 'Monitoring', 'Added', 'Added Monitoring of Site: dwada, on week: 14/11/2022', '14', '14', '2022-11-19 05:46:24', '2022-11-19 05:46:24'),
(181, 'Clients', 'Added', 'Added a New Client with id: 25, Name: wa ', '14', '14', '2022-11-19 05:46:43', '2022-11-19 05:46:43'),
(182, 'Sites', 'Added', 'Added New Site with name: sitesit, id: 19, of client: abrar1', '14', '14', '2022-11-19 05:46:57', '2022-11-19 05:46:57'),
(183, 'Monitoring', 'Added', 'Added Monitoring of Site: sitesit, on week: 14/11/2022', '14', '14', '2022-11-19 05:47:15', '2022-11-19 05:47:15'),
(184, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 32, Site: dwada, Week Commencing: 14/11/2022, Activity Type: Service Complaint - High', '14', '14', '2022-11-19 05:47:38', '2022-11-19 05:47:38'),
(185, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-19 05:54:14', '2022-11-19 05:54:14'),
(186, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-19 06:03:51', '2022-11-19 06:03:51'),
(187, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-19 06:49:37', '2022-11-19 06:49:37'),
(188, 'Clients', 'Added', 'Added a New Client with id: 26, Name: 03001234567 ', '16', '16', '2022-11-20 16:14:35', '2022-11-20 16:14:35'),
(189, 'Sites', 'Added', 'Added New Site with name: test site, id: 20, of client: test client', '16', '16', '2022-11-20 16:14:50', '2022-11-20 16:14:50'),
(190, 'Staff', 'Added', 'Added a staff with name: Test Staff, id: 6', '16', '16', '2022-11-20 16:15:20', '2022-11-20 16:15:20'),
(191, 'Monitoring', 'Added', 'Added Monitoring of Site: test site, on week: 28/11/2022', '16', '16', '2022-11-20 16:16:03', '2022-11-20 16:16:03'),
(192, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 34, Site: test site, Week Commencing: 28/11/2022, Activity Type: Missed Checkcall', '16', '16', '2022-11-20 16:16:53', '2022-11-20 16:16:53'),
(193, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '16', '16', '2022-11-20 16:30:48', '2022-11-20 16:30:48'),
(194, 'Activties', 'Updated', 'Updated Activity with id: 36, Activity Type: Loss of Hours -> Blow out', '16', '16', '2022-11-20 16:34:53', '2022-11-20 16:34:53'),
(195, 'Activties', 'Updated', 'Updated Activity with id: 30, Activity Type: Missed Patrol', '16', '16', '2022-11-20 16:35:05', '2022-11-20 16:35:05'),
(196, 'Activties', 'Updated', 'Updated Activity with id: 31, Activity Type: Missed Checkcall', '16', '16', '2022-11-20 16:35:13', '2022-11-20 16:35:13'),
(197, 'Activties', 'Updated', 'Updated Activity with id: 35, Activity Type: Loss of Hours -> Lateness', '16', '16', '2022-11-20 16:35:22', '2022-11-20 16:35:22'),
(198, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 33, Site: sitesit, Week Commencing: 14/11/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-11-21 02:30:34', '2022-11-21 02:30:34'),
(199, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test siteShift Week : 28/11/2022, Monitoring Id: 34', '16', '16', '2022-11-21 14:09:37', '2022-11-21 14:09:37'),
(200, 'Staff', 'Added', 'Added a staff with name: abrar, id: 7', '14', '14', '2022-11-21 22:28:27', '2022-11-21 22:28:27'),
(201, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: sitesitShift Week : 14/11/2022, Monitoring Id: 33', '14', '14', '2022-11-21 22:28:54', '2022-11-21 22:28:54'),
(202, 'Monitoring', 'Added', 'Added Monitoring of Site: dwada, on week: 21/11/2022', '14', '14', '2022-11-23 22:49:47', '2022-11-23 22:49:47'),
(203, 'Roles', 'Added', 'Added Role with of name: admin ', '14', '14', '2022-11-24 00:32:32', '2022-11-24 00:32:32'),
(204, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: admin', '14', '14', '2022-11-24 00:33:30', '2022-11-24 00:33:30'),
(205, 'Team', 'Added', 'Added a Team Member of name admin', '14', '14', '2022-11-24 00:33:49', '2022-11-24 00:33:49'),
(206, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: admin', '14', '14', '2022-11-24 00:36:17', '2022-11-24 00:36:17'),
(207, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: dwadwaShift Week : 14/11/2022, Monitoring Id: 31', '17', '14', '2022-11-24 00:36:55', '2022-11-24 00:36:55'),
(208, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: admin', '14', '14', '2022-11-24 00:37:51', '2022-11-24 00:37:51'),
(209, 'Clients', 'Added', 'Added a New Client with id: 27, Name: 03001234567 ', '16', '16', '2022-11-24 14:31:37', '2022-11-24 14:31:37'),
(210, 'Sites', 'Added', 'Added New Site with name: demo site, id: 21, of client: Demo Client', '16', '16', '2022-11-24 14:31:54', '2022-11-24 14:31:54'),
(211, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 28/11/2022', '16', '16', '2022-11-24 14:33:24', '2022-11-24 14:33:24'),
(212, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '16', '16', '2022-11-24 15:12:13', '2022-11-24 15:12:13'),
(213, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '16', '16', '2022-11-24 15:12:36', '2022-11-24 15:12:36'),
(214, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-26 01:04:26', '2022-11-26 01:04:26'),
(215, 'Complaints', 'Added', 'Added a Complaint with id: 36, of site:test site', '16', '16', '2022-11-26 19:28:12', '2022-11-26 19:28:12'),
(216, 'Complaints', 'Added', 'Added a Complaint with id: 37, of site:demo site', '16', '16', '2022-11-26 19:28:24', '2022-11-26 19:28:24'),
(217, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '16', '16', '2022-11-26 19:33:45', '2022-11-26 19:33:45'),
(218, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 35, Site: dwada, Week Commencing: 21/11/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-11-28 07:31:54', '2022-11-28 07:31:54'),
(219, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 35, Site: dwada, Week Commencing: 21/11/2022, Activity Type: Loss of Hours -> Blow out', '14', '14', '2022-11-28 18:39:47', '2022-11-28 18:39:47'),
(220, 'Activties', 'Updated', 'Updated Activity with id: 22, Activity Type: Loss of Hours -> Blow out', '14', '14', '2022-11-28 18:40:02', '2022-11-28 18:40:02'),
(221, 'Monitoring', 'Added', 'Added Monitoring of Site: sitesit, on week: 28/11/2022', '14', '14', '2022-11-28 18:40:57', '2022-11-28 18:40:57'),
(222, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 37, Site: sitesit, Week Commencing: 28/11/2022, Activity Type: Service Complaint - High', '14', '14', '2022-11-28 18:41:36', '2022-11-28 18:41:36'),
(223, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-28 18:42:47', '2022-11-28 18:42:47'),
(224, 'Monitoring', 'Added', 'Added Monitoring of Site: sitesit, on week: 28/11/2022', '14', '14', '2022-11-28 18:47:16', '2022-11-28 18:47:16'),
(225, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 38, Site: sitesit, Week Commencing: 28/11/2022, Activity Type: Loss of Hours -> Blow out', '14', '14', '2022-11-28 18:47:58', '2022-11-28 18:47:58'),
(226, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 38, Site: sitesit, Week Commencing: 28/11/2022, Activity Type: Service Complaint - High', '14', '14', '2022-11-28 18:48:14', '2022-11-28 18:48:14'),
(227, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-28 18:49:12', '2022-11-28 18:49:12'),
(228, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-29 08:19:28', '2022-11-29 08:19:28'),
(229, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-29 08:19:57', '2022-11-29 08:19:57'),
(230, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-29 08:20:33', '2022-11-29 08:20:33'),
(231, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-29 08:21:12', '2022-11-29 08:21:12'),
(232, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-11-29 08:21:46', '2022-11-29 08:21:46'),
(233, 'Activties', 'Updated', 'Updated Activity with id: 21, Activity Type: Loss of Hours -> Lateness', '14', '14', '2022-11-29 22:43:37', '2022-11-29 22:43:37'),
(234, 'Activties', 'Updated', 'Updated Activity with id: 20, Activity Type: Service Complaint - Low', '14', '14', '2022-11-29 22:43:53', '2022-11-29 22:43:53'),
(235, 'Activties', 'Updated', 'Updated Activity with id: 19, Activity Type: Service Complaint - Medium', '14', '14', '2022-11-29 22:44:01', '2022-11-29 22:44:01'),
(236, 'Activties', 'Updated', 'Updated Activity with id: 18, Activity Type: Service Complaint - High', '14', '14', '2022-11-29 22:44:07', '2022-11-29 22:44:07'),
(237, 'Activties', 'Updated', 'Updated Activity with id: 17, Activity Type: Missed Checkcall', '14', '14', '2022-11-29 22:44:13', '2022-11-29 22:44:13'),
(238, 'Activties', 'Updated', 'Updated Activity with id: 16, Activity Type: Missed Patrol', '14', '14', '2022-11-29 22:44:18', '2022-11-29 22:44:18'),
(239, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 19Shift Week : 28/11/2022, Monitoring Id: 38', '14', '14', '2022-11-29 22:45:03', '2022-11-29 22:45:03'),
(240, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 19Shift Week : 28/11/2022, Monitoring Id: 37', '14', '14', '2022-11-29 22:45:07', '2022-11-29 22:45:07'),
(241, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 18Shift Week : 21/11/2022, Monitoring Id: 35', '14', '14', '2022-11-29 22:45:22', '2022-11-29 22:45:22'),
(242, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 19Shift Week : 14/11/2022, Monitoring Id: 33', '14', '14', '2022-11-29 22:45:37', '2022-11-29 22:45:37'),
(243, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 18Shift Week : 14/11/2022, Monitoring Id: 32', '14', '14', '2022-11-29 22:45:45', '2022-11-29 22:45:45'),
(244, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 17Shift Week : 14/11/2022, Monitoring Id: 31', '14', '14', '2022-11-29 22:45:49', '2022-11-29 22:45:49'),
(245, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 17Shift Week : 14/11/2022, Monitoring Id: 30', '14', '14', '2022-11-29 22:45:54', '2022-11-29 22:45:54'),
(246, 'Clients', 'Deleted', 'Deleted Client with id: 25, Name wa ', '14', '14', '2022-11-29 22:47:11', '2022-11-29 22:47:11'),
(247, 'Clients', 'Deleted', 'Deleted Client with id: 24, Name wadwa ', '14', '14', '2022-11-29 22:47:14', '2022-11-29 22:47:14'),
(248, 'Clients', 'Deleted', 'Deleted Client with id: 23, Name awdad ', '14', '14', '2022-11-29 22:47:17', '2022-11-29 22:47:17'),
(249, 'Roles', 'Added', 'Added Role with of name: Contract Manager ', '14', '14', '2022-11-29 22:48:08', '2022-11-29 22:48:08'),
(250, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2022-11-29 22:56:03', '2022-11-29 22:56:03'),
(251, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2022-11-29 22:56:23', '2022-11-29 22:56:23'),
(252, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2022-11-29 22:58:28', '2022-11-29 22:58:28'),
(253, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2022-11-29 22:58:48', '2022-11-29 22:58:48'),
(254, 'Team', 'Added', 'Added a Team Member of name Janeth Mwasa', '14', '14', '2022-11-29 22:59:14', '2022-11-29 22:59:14'),
(255, 'Clients', 'Added', 'Added a New Client with id: 28, Name: Lorraine McIntrye ', '18', '14', '2022-11-29 23:00:50', '2022-11-29 23:00:50'),
(256, 'Clients', 'Added', 'Added a New Client with id: 29, Name: Chris Ashby ', '18', '14', '2022-11-29 23:08:26', '2022-11-29 23:08:26'),
(257, 'Clients', 'Added', 'Added a New Client with id: 30, Name: Lisa Anthony ', '18', '14', '2022-11-29 23:09:52', '2022-11-29 23:09:52'),
(258, 'Clients', 'Added', 'Added a New Client with id: 31, Name: Dawn Mered ', '18', '14', '2022-11-29 23:24:20', '2022-11-29 23:24:20'),
(259, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD FAISAL IQBAL, id: 8', '18', '14', '2022-11-29 23:28:59', '2022-11-29 23:28:59'),
(260, 'Staff', 'Added', 'Added a staff with name: AHMED RAZA JAMIL, id: 9', '18', '14', '2022-11-29 23:30:49', '2022-11-29 23:30:49'),
(261, 'Staff', 'Added', 'Added a staff with name: OBAID MAQSOOD, id: 10', '18', '14', '2022-11-29 23:32:33', '2022-11-29 23:32:33'),
(262, 'Staff', 'Updated', 'Updated a staff with name: AHMED RAZA JAMIL, id: 9', '18', '14', '2022-11-29 23:33:19', '2022-11-29 23:33:19'),
(263, 'Staff', 'Added', 'Added a staff with name: RYAN BRADLEY, id: 11', '18', '14', '2022-11-29 23:35:38', '2022-11-29 23:35:38'),
(264, 'Staff', 'Added', 'Added a staff with name: DAVID HUDSON, id: 12', '18', '14', '2022-11-29 23:37:52', '2022-11-29 23:37:52'),
(265, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 3', '18', '14', '2022-11-29 23:41:22', '2022-11-29 23:41:22'),
(266, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 4', '18', '14', '2022-11-29 23:46:48', '2022-11-29 23:46:48'),
(267, 'Sites', 'Added', 'Added New Site with name: Tredomen Business Park, id: 22, of client: Caerphilly County Borough Council', '18', '14', '2022-11-29 23:49:56', '2022-11-29 23:49:56'),
(268, 'Sites', 'Added', 'Added New Site with name: South Wales Fire & Rescue Service Headquarters, id: 23, of client: South Wales Fire & Rescue Service', '18', '14', '2022-11-29 23:51:12', '2022-11-29 23:51:12'),
(269, 'Clients', 'Updated', 'Updated a Client with id: 30, Name Lisa Anthony ', '18', '14', '2022-11-29 23:51:27', '2022-11-29 23:51:27'),
(270, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 28/11/2022', '18', '14', '2022-11-29 23:53:40', '2022-11-29 23:53:40'),
(271, 'Staff', 'Added', 'Added a staff with name: SALIMAN ADEBAYO, id: 13', '18', '14', '2022-11-30 00:19:45', '2022-11-30 00:19:45'),
(272, 'Staff', 'Added', 'Added a staff with name: SALAH MOHAMED, id: 14', '18', '14', '2022-11-30 00:23:00', '2022-11-30 00:23:00'),
(273, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 5', '18', '14', '2022-11-30 00:30:26', '2022-11-30 00:30:26'),
(274, 'Staff', 'Updated', 'Updated a staff with name: SALAH MOHAMED, id: 14', '18', '14', '2022-11-30 00:30:48', '2022-11-30 00:30:48'),
(275, 'Staff', 'Added', 'Added a staff with name: GARETH JAMES, id: 15', '18', '14', '2022-11-30 00:34:24', '2022-11-30 00:34:24'),
(276, 'Staff', 'Added', 'Added a staff with name: DAVID BAILEY, id: 16', '18', '14', '2022-11-30 00:36:15', '2022-11-30 00:36:15'),
(277, 'Staff', 'Added', 'Added a staff with name: OMAR ZEN SALIM, id: 17', '18', '14', '2022-11-30 00:37:36', '2022-11-30 00:37:36'),
(278, 'Staff', 'Added', 'Added a staff with name: ANTHONY FRANCE, id: 18', '18', '14', '2022-11-30 00:41:26', '2022-11-30 00:41:26'),
(279, 'Staff', 'Added', 'Added a staff with name: ABDUL RAUF TALPUR, id: 19', '18', '14', '2022-11-30 00:44:21', '2022-11-30 00:44:21'),
(280, 'Staff', 'Added', 'Added a staff with name: YOSEPH MASIH, id: 20', '18', '14', '2022-11-30 00:48:37', '2022-11-30 00:48:37'),
(281, 'Staff', 'Added', 'Added a staff with name: SYED NISAR ABBAS, id: 21', '18', '14', '2022-11-30 00:54:51', '2022-11-30 00:54:51'),
(282, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 23Shift Week : 28/11/2022, Monitoring Id: 39', '18', '14', '2022-11-30 01:02:32', '2022-11-30 01:02:32'),
(283, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 01/12/2022', '18', '14', '2022-11-30 01:04:29', '2022-11-30 01:04:29'),
(284, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 01/12/2022', '18', '14', '2022-11-30 01:05:45', '2022-11-30 01:05:45'),
(285, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 01/12/2022', '18', '14', '2022-11-30 01:06:44', '2022-11-30 01:06:44'),
(286, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 01/12/2022', '18', '14', '2022-11-30 01:07:32', '2022-11-30 01:07:32'),
(287, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 23Shift Week : 01/12/2022, Monitoring Id: 43', '14', '14', '2022-11-30 01:15:26', '2022-11-30 01:15:26'),
(288, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 23Shift Week : 01/12/2022, Monitoring Id: 42', '14', '14', '2022-11-30 01:15:27', '2022-11-30 01:15:27'),
(289, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 23Shift Week : 01/12/2022, Monitoring Id: 41', '14', '14', '2022-11-30 01:15:28', '2022-11-30 01:15:28'),
(290, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 23Shift Week : 01/12/2022, Monitoring Id: 40', '14', '14', '2022-11-30 01:15:30', '2022-11-30 01:15:30'),
(291, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 28/11/2022', '18', '14', '2022-11-30 01:17:38', '2022-11-30 01:17:38'),
(292, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 28/11/2022, Monitoring Id: 44', '18', '14', '2022-11-30 01:18:55', '2022-11-30 01:18:55'),
(293, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 28/11/2022, Monitoring Id: 44', '18', '14', '2022-11-30 01:19:06', '2022-11-30 01:19:06'),
(294, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 28/11/2022, Monitoring Id: 44', '18', '14', '2022-11-30 01:19:29', '2022-11-30 01:19:29'),
(295, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 28/11/2022, Monitoring Id: 44', '18', '14', '2022-11-30 01:19:32', '2022-11-30 01:19:32'),
(296, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 28/11/2022, Monitoring Id: 44', '18', '14', '2022-11-30 01:20:02', '2022-11-30 01:20:02'),
(297, 'Monitoring', 'Updated', 'Updated Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 28/11/2022', '18', '14', '2022-11-30 01:20:52', '2022-11-30 01:20:52'),
(298, 'Sites', 'Added', 'Added New Site with name: Market Walk Chorley, id: 24, of client: Chorley Council', '18', '14', '2022-11-30 01:23:02', '2022-11-30 01:23:02'),
(299, 'Sites', 'Added', 'Added New Site with name: Cotswold House Chorley, id: 25, of client: Chorley Council', '18', '14', '2022-11-30 01:23:54', '2022-11-30 01:23:54'),
(300, 'Sites', 'Added', 'Added New Site with name: Primrose Gardens Chorley, id: 26, of client: Chorley Council', '18', '14', '2022-11-30 01:25:02', '2022-11-30 01:25:02'),
(301, 'Sites', 'Added', 'Added New Site with name: Leeds Kirkgate Market, id: 27, of client: Leeds City Council', '18', '14', '2022-11-30 01:26:17', '2022-11-30 01:26:17'),
(302, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley, on week: 28/11/2022', '18', '14', '2022-11-30 01:31:16', '2022-11-30 01:31:16'),
(303, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 28/11/2022, Monitoring Id: 45', '18', '14', '2022-11-30 01:33:07', '2022-11-30 01:33:07'),
(304, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 28/11/2022, Monitoring Id: 45', '18', '14', '2022-11-30 01:33:16', '2022-11-30 01:33:16'),
(305, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 28/11/2022, Monitoring Id: 45', '18', '14', '2022-11-30 01:33:25', '2022-11-30 01:33:25'),
(306, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 28/11/2022, Monitoring Id: 45', '18', '14', '2022-11-30 01:33:33', '2022-11-30 01:33:33'),
(307, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 28/11/2022', '18', '14', '2022-11-30 01:43:44', '2022-11-30 01:43:44'),
(308, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Cotswold House ChorleyShift Week : 28/11/2022, Monitoring Id: 46', '18', '14', '2022-11-30 01:44:17', '2022-11-30 01:44:17'),
(309, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Cotswold House ChorleyShift Week : 28/11/2022, Monitoring Id: 46', '18', '14', '2022-11-30 01:44:27', '2022-11-30 01:44:27'),
(310, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Cotswold House ChorleyShift Week : 28/11/2022, Monitoring Id: 46', '18', '14', '2022-11-30 01:45:04', '2022-11-30 01:45:04'),
(311, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Cotswold House ChorleyShift Week : 28/11/2022, Monitoring Id: 46', '18', '14', '2022-11-30 01:45:29', '2022-11-30 01:45:29'),
(312, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Cotswold House Chorley, on week: 28/11/2022', '18', '14', '2022-11-30 01:46:16', '2022-11-30 01:46:16'),
(313, 'Sub Contractor', 'Added', 'Updated a subcontractor with name: , id: 3', '14', '14', '2022-11-30 08:43:01', '2022-11-30 08:43:01'),
(314, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 46, Site: Cotswold House Chorley, Week Commencing: 28/11/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-11-30 08:59:42', '2022-11-30 08:59:42'),
(315, 'Sites', 'Added', 'Added New Site with name: Tatton Gardens Chorley, id: 28, of client: Chorley Council', '18', '14', '2022-11-30 23:39:47', '2022-11-30 23:39:47'),
(316, 'Clients', 'Added', 'Added a New Client with id: 32, Name: Rashida Dixon ', '18', '14', '2022-11-30 23:50:36', '2022-11-30 23:50:36'),
(317, 'Clients', 'Updated', 'Updated a Client with id: 32, Name Rashida Dixon (receptionist & office assistant) ', '18', '14', '2022-11-30 23:51:15', '2022-11-30 23:51:15'),
(318, 'Clients', 'Added', 'Added a New Client with id: 33, Name: Daniela (Reception) ', '18', '14', '2022-11-30 23:56:21', '2022-11-30 23:56:21'),
(319, 'Clients', 'Added', 'Added a New Client with id: 34, Name: Harriet Edwards ', '18', '14', '2022-11-30 23:59:00', '2022-11-30 23:59:00'),
(320, 'Sites', 'Added', 'Added New Site with name: 111 Farringdon Road EC1R 3BW, id: 29, of client: Phantom Studios', '18', '14', '2022-12-01 00:00:49', '2022-12-01 00:00:49'),
(321, 'Sites', 'Added', 'Added New Site with name: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, id: 30, of client: Connexus-Group', '18', '14', '2022-12-01 00:01:24', '2022-12-01 00:01:24'),
(322, 'Sites', 'Added', 'Added New Site with name: Territory Studio 132-140 Goswell road EC1V 7DY, id: 31, of client: Territory Studio London', '18', '14', '2022-12-01 00:02:08', '2022-12-01 00:02:08'),
(323, 'Staff', 'Added', 'Added a staff with name: NARESH ANNAM, id: 22', '18', '14', '2022-12-01 00:07:55', '2022-12-01 00:07:55'),
(324, 'Staff', 'Added', 'Added a staff with name: MILTON MERGULHAO, id: 23', '18', '14', '2022-12-01 00:09:35', '2022-12-01 00:09:35'),
(325, 'Staff', 'Added', 'Added a staff with name: AHSAN IFTIKHAR, id: 24', '18', '14', '2022-12-01 00:14:01', '2022-12-01 00:14:01'),
(326, 'Staff', 'Added', 'Added a staff with name: KAMALUDDIN MUZIB, id: 25', '18', '14', '2022-12-01 00:15:44', '2022-12-01 00:15:44'),
(327, 'Staff', 'Updated', 'Updated a staff with name: KAMALUDDIN MUZIB, id: 25', '18', '14', '2022-12-01 00:16:07', '2022-12-01 00:16:07'),
(328, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD ABUBAKAR, id: 26', '18', '14', '2022-12-01 00:27:39', '2022-12-01 00:27:39'),
(329, 'Staff', 'Added', 'Added a staff with name: ZULQERNAIN-HAIDER GHAZANFAR NAZIR, id: 27', '18', '14', '2022-12-01 00:32:36', '2022-12-01 00:32:36'),
(330, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 28/11/2022', '18', '14', '2022-12-01 00:42:43', '2022-12-01 00:42:43'),
(331, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Primrose Gardens Chorley, on week: 28/11/2022', '18', '14', '2022-12-01 00:45:12', '2022-12-01 00:45:12'),
(332, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Primrose Gardens Chorley, on week: 28/11/2022', '18', '14', '2022-12-01 00:52:56', '2022-12-01 00:52:56'),
(333, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 28/11/2022, Monitoring Id: 47', '18', '14', '2022-12-01 00:56:18', '2022-12-01 00:56:18'),
(334, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 28/11/2022, Monitoring Id: 47', '18', '14', '2022-12-01 00:56:27', '2022-12-01 00:56:27'),
(335, 'Sites', 'Added', 'Added New Site with name: PRD068162 Cotswold House, id: 32, of client: Chorley Council', '18', '14', '2022-12-01 01:08:17', '2022-12-01 01:08:17'),
(336, 'Team', 'Added', 'Added a Team Member of name Muhammad Abdullah', '14', '14', '2022-12-01 01:30:00', '2022-12-01 01:30:00'),
(337, 'Roles', 'Updated', 'updated Role with id: 6, name: admin ', '14', '14', '2022-12-01 01:30:27', '2022-12-01 01:30:27'),
(338, 'Roles', 'Updated', 'updated Role with id: 6, name: Admin ', '14', '14', '2022-12-01 01:30:34', '2022-12-01 01:30:34'),
(339, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Administrator', '14', '14', '2022-12-01 01:35:31', '2022-12-01 01:35:31'),
(340, 'Team', 'Added', 'Added a Team Member of name Muhammad Bilal', '14', '14', '2022-12-01 01:49:24', '2022-12-01 01:49:24'),
(341, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Administrator', '14', '14', '2022-12-01 01:53:25', '2022-12-01 01:53:25'),
(342, 'Team', 'Added', 'Added a Team Member of name Secure FM Control', '14', '14', '2022-12-01 01:55:21', '2022-12-01 01:55:21'),
(343, 'Activties', 'Updated', 'Updated Activity with id: 42, Activity Type: Loss of Hours -> Lateness', '22', '22', '2022-12-01 04:14:57', '2022-12-01 04:14:57'),
(344, 'Activties', 'Updated', 'Updated Activity with id: 43, Activity Type: Loss of Hours -> Blow out', '22', '22', '2022-12-01 04:15:01', '2022-12-01 04:15:01'),
(345, 'Activties', 'Updated', 'Updated Activity with id: 43, Activity Type: Loss of Hours -> Blow out', '22', '22', '2022-12-01 04:15:05', '2022-12-01 04:15:05');
INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(346, 'Activties', 'Updated', 'Updated Activity with id: 40, Activity Type: Service Complaint - Medium', '22', '22', '2022-12-01 04:15:14', '2022-12-01 04:15:14'),
(347, 'Activties', 'Updated', 'Updated Activity with id: 39, Activity Type: Service Complaint - High', '22', '22', '2022-12-01 04:15:18', '2022-12-01 04:15:18'),
(348, 'Activties', 'Updated', 'Updated Activity with id: 38, Activity Type: Missed Checkcall', '22', '22', '2022-12-01 04:15:21', '2022-12-01 04:15:21'),
(349, 'Activties', 'Updated', 'Updated Activity with id: 37, Activity Type: Missed Patrol', '22', '22', '2022-12-01 04:15:24', '2022-12-01 04:15:24'),
(350, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 47, Site: Primrose Gardens Chorley, Week Commencing: 28/11/2022, Activity Type: Service Complaint - Low', '14', '14', '2022-12-01 04:21:12', '2022-12-01 04:21:12'),
(351, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 47, Site: Primrose Gardens Chorley, Week Commencing: 28/11/2022, Activity Type: Loss of Hours -> Lateness', '14', '14', '2022-12-01 04:21:28', '2022-12-01 04:21:28'),
(352, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 44, Site: South Wales Fire & Rescue Service Headquarters, Week Commencing: 28/11/2022, Activity Type: Loss of Hours -> Lateness', '14', '14', '2022-12-01 04:21:54', '2022-12-01 04:21:54'),
(353, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 44, Site: South Wales Fire & Rescue Service Headquarters, Week Commencing: 28/11/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-12-01 04:22:01', '2022-12-01 04:22:01'),
(354, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 46, Site: Cotswold House Chorley, Week Commencing: 28/11/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-01 04:22:58', '2022-12-01 04:22:58'),
(355, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-12-02 00:14:09', '2022-12-02 00:14:09'),
(356, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-12-02 00:14:39', '2022-12-02 00:14:39'),
(357, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-12-02 00:16:42', '2022-12-02 00:16:42'),
(358, 'Supervisory Visits', 'Updated', 'Updated a supervisory vist of site', '14', '14', '2022-12-02 00:16:52', '2022-12-02 00:16:52'),
(359, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2022-12-02 00:17:39', '2022-12-02 00:17:39'),
(360, 'Staff', 'Added', 'Added a staff with name: DANIEL ABERA, id: 28', '18', '14', '2022-12-02 00:35:45', '2022-12-02 00:35:45'),
(361, 'Staff', 'Added', 'Added a staff with name: TEDROS MHARI, id: 29', '18', '14', '2022-12-02 00:37:14', '2022-12-02 00:37:14'),
(362, 'Staff', 'Added', 'Added a staff with name: HAILU HAGOS, id: 30', '18', '14', '2022-12-02 00:38:40', '2022-12-02 00:38:40'),
(363, 'Staff', 'Updated', 'Updated a staff with name: HAILU HAGOS, id: 30', '18', '14', '2022-12-02 00:39:00', '2022-12-02 00:39:00'),
(364, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 6', '18', '14', '2022-12-02 00:43:39', '2022-12-02 00:43:39'),
(365, 'Staff', 'Updated', 'Updated a staff with name: HAILU HAGOS, id: 30', '18', '14', '2022-12-02 00:45:13', '2022-12-02 00:45:13'),
(366, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 28/11/2022', '18', '14', '2022-12-02 00:47:10', '2022-12-02 00:47:10'),
(367, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Leeds Kirkgate Market, on week: 28/11/2022', '18', '14', '2022-12-02 00:48:45', '2022-12-02 00:48:45'),
(368, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 28/11/2022, Monitoring Id: 48', '18', '14', '2022-12-02 00:49:13', '2022-12-02 00:49:13'),
(369, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Leeds Kirkgate Market, on week: 28/11/2022', '18', '14', '2022-12-02 00:50:47', '2022-12-02 00:50:47'),
(370, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 Farringdon Road EC1R 3BW, on week: 28/11/2022', '18', '14', '2022-12-02 00:56:52', '2022-12-02 00:56:52'),
(371, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 28/11/2022, Monitoring Id: 49', '18', '14', '2022-12-02 00:58:10', '2022-12-02 00:58:10'),
(372, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 28/11/2022, Monitoring Id: 49', '18', '14', '2022-12-02 00:58:30', '2022-12-02 00:58:30'),
(373, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 28/11/2022, Monitoring Id: 49', '18', '14', '2022-12-02 00:59:03', '2022-12-02 00:59:03'),
(374, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 28/11/2022, Monitoring Id: 49', '18', '14', '2022-12-02 00:59:39', '2022-12-02 00:59:39'),
(375, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 28/11/2022, Monitoring Id: 49', '18', '14', '2022-12-02 01:00:24', '2022-12-02 01:00:24'),
(376, 'Monitoring', 'Updated', 'Updated Monitoring of Site: 111 Farringdon Road EC1R 3BW, on week: 28/11/2022', '18', '14', '2022-12-02 01:01:58', '2022-12-02 01:01:58'),
(377, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 28/11/2022', '18', '14', '2022-12-02 01:05:19', '2022-12-02 01:05:19'),
(378, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 28/11/2022, Monitoring Id: 50', '18', '14', '2022-12-02 01:06:57', '2022-12-02 01:06:57'),
(379, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 28/11/2022, Monitoring Id: 50', '18', '14', '2022-12-02 01:07:45', '2022-12-02 01:07:45'),
(380, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 28/11/2022', '18', '14', '2022-12-02 01:08:50', '2022-12-02 01:08:50'),
(381, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD ZUBAIR, id: 31', '18', '14', '2022-12-02 01:12:43', '2022-12-02 01:12:43'),
(382, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AWAIS FARID CHAUDARY, id: 32', '18', '14', '2022-12-02 01:14:07', '2022-12-02 01:14:07'),
(383, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 28/11/2022', '18', '14', '2022-12-02 01:15:14', '2022-12-02 01:15:14'),
(384, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 28/11/2022, Monitoring Id: 51', '18', '14', '2022-12-02 01:16:00', '2022-12-02 01:16:00'),
(385, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 28/11/2022, Monitoring Id: 51', '18', '14', '2022-12-02 01:16:24', '2022-12-02 01:16:24'),
(386, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 28/11/2022, Monitoring Id: 51', '18', '14', '2022-12-02 01:16:33', '2022-12-02 01:16:33'),
(387, 'Staff', 'Added', 'Added a staff with name: MUNIR HUSSAIN, id: 33', '18', '14', '2022-12-02 01:20:13', '2022-12-02 01:20:13'),
(388, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 28/11/2022', '18', '14', '2022-12-02 01:24:26', '2022-12-02 01:24:26'),
(389, 'Monitoring', 'Updated', 'Updated Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 28/11/2022', '18', '14', '2022-12-02 01:27:38', '2022-12-02 01:27:38'),
(390, 'Staff', 'Added', 'Added a staff with name: ABU HURARA HUSSAIN, id: 34', '18', '14', '2022-12-02 01:31:59', '2022-12-02 01:31:59'),
(391, 'Monitoring', 'Added', 'Added Monitoring of Site: Tatton Gardens Chorley, on week: 15/12/2022', '18', '14', '2022-12-02 01:37:17', '2022-12-02 01:37:17'),
(392, 'Staff', 'Added', 'Added a staff with name: AHMED UMAIR, id: 35', '18', '14', '2022-12-02 01:52:06', '2022-12-02 01:52:06'),
(393, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens ChorleyShift Week : 15/12/2022, Monitoring Id: 53', '18', '14', '2022-12-02 01:52:58', '2022-12-02 01:52:58'),
(394, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens ChorleyShift Week : 15/12/2022, Monitoring Id: 53', '18', '14', '2022-12-02 01:53:49', '2022-12-02 01:53:49'),
(395, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Tatton Gardens Chorley, on week: 15/12/2022', '18', '14', '2022-12-02 01:54:43', '2022-12-02 01:54:43'),
(396, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 53, Site: Tatton Gardens Chorley, Week Commencing: 15/12/2022, Activity Type: Service Complaint - Medium', '19', '14', '2022-12-02 02:17:56', '2022-12-02 02:17:56'),
(397, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 53, Site: Tatton Gardens Chorley, Week Commencing: 15/12/2022, Activity Type: Loss of Hours -> Lateness', '19', '14', '2022-12-02 02:18:08', '2022-12-02 02:18:08'),
(398, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 52, Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, Week Commencing: 28/11/2022, Activity Type: Service Complaint - High', '19', '14', '2022-12-02 02:19:27', '2022-12-02 02:19:27'),
(399, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 52, Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, Week Commencing: 28/11/2022, Activity Type: Loss of Hours -> Blow out', '19', '14', '2022-12-02 02:19:38', '2022-12-02 02:19:38'),
(400, 'Monitoring', 'Updated', 'Updated Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 05/12/2022', '18', '14', '2022-12-02 19:35:12', '2022-12-02 19:35:12'),
(401, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 05/12/2022, Monitoring Id: 44', '18', '14', '2022-12-02 19:36:28', '2022-12-02 19:36:28'),
(402, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 05/12/2022, Monitoring Id: 44', '18', '14', '2022-12-02 19:36:45', '2022-12-02 19:36:45'),
(403, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 05/12/2022, Monitoring Id: 44', '18', '14', '2022-12-02 19:37:24', '2022-12-02 19:37:24'),
(404, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: South Wales Fire & Rescue Service HeadquartersShift Week : 05/12/2022, Monitoring Id: 44', '18', '14', '2022-12-02 19:37:53', '2022-12-02 19:37:53'),
(405, 'Monitoring', 'Updated', 'Updated Monitoring of Site: South Wales Fire & Rescue Service Headquarters, on week: 05/12/2022', '18', '14', '2022-12-02 19:41:00', '2022-12-02 19:41:00'),
(406, 'Sites', 'Added', 'Added New Site with name: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, id: 33, of client: Caerphilly County Borough Council', '18', '14', '2022-12-03 00:59:53', '2022-12-03 00:59:53'),
(407, 'Monitoring', 'Added', 'Added Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, on week: 05/12/2022', '18', '14', '2022-12-03 01:03:50', '2022-12-03 01:03:50'),
(408, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 05/12/2022, Monitoring Id: 54', '18', '14', '2022-12-03 01:05:15', '2022-12-03 01:05:15'),
(409, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 05/12/2022, Monitoring Id: 54', '18', '14', '2022-12-03 01:31:25', '2022-12-03 01:31:25'),
(410, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 05/12/2022, Monitoring Id: 54', '18', '14', '2022-12-03 01:31:44', '2022-12-03 01:31:44'),
(411, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, on week: 05/12/2022', '18', '14', '2022-12-03 01:33:09', '2022-12-03 01:33:09'),
(412, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 05/12/2022, Monitoring Id: 54', '18', '14', '2022-12-03 01:34:02', '2022-12-03 01:34:02'),
(413, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 05/12/2022, Monitoring Id: 54', '18', '14', '2022-12-03 01:34:12', '2022-12-03 01:34:12'),
(414, 'Clients', 'Added', 'Added a New Client with id: 35, Name: 24/7 Control Room ', '24', '24', '2022-12-10 01:12:53', '2022-12-10 01:12:53'),
(415, 'Sites', 'Added', 'Added New Site with name: 111 Farringdon EC1M 5NR, id: 34, of client: Secure FM LTD', '24', '24', '2022-12-10 01:13:30', '2022-12-10 01:13:30'),
(416, 'Staff', 'Added', 'Added a staff with name: ASHAN IFTIKAR, id: 36', '24', '24', '2022-12-10 01:14:11', '2022-12-10 01:14:11'),
(417, 'Staff', 'Updated', 'Updated a staff with name: ASHAN IFTIKAR, id: 36', '24', '24', '2022-12-10 01:14:38', '2022-12-10 01:14:38'),
(418, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 Farringdon EC1M 5NR, on week: 12/12/2022', '24', '24', '2022-12-10 01:15:47', '2022-12-10 01:15:47'),
(419, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 55, Site: 111 Farringdon EC1M 5NR, Week Commencing: 12/12/2022, Activity Type: Service Complaint - High', '24', '24', '2022-12-10 01:17:26', '2022-12-10 01:17:26'),
(420, 'Roles', 'Added', 'Added Role with of name: Controller ', '24', '24', '2022-12-10 01:20:36', '2022-12-10 01:20:36'),
(421, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '24', '24', '2022-12-10 01:21:10', '2022-12-10 01:21:10'),
(422, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 55, Site: 111 Farringdon EC1M 5NR, Week Commencing: 12/12/2022, Activity Type: Missed Patrol', '24', '24', '2022-12-10 01:21:30', '2022-12-10 01:21:30'),
(423, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Controller', '24', '24', '2022-12-10 01:23:12', '2022-12-10 01:23:12'),
(424, 'Team', 'Added', 'Added a Team Member of name Haroon', '24', '24', '2022-12-10 01:23:52', '2022-12-10 01:23:52'),
(425, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Controller', '24', '24', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(426, 'Roles', 'Added', 'Added Role with of name: Owner ', '24', '24', '2022-12-10 01:32:46', '2022-12-10 01:32:46'),
(427, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Owner', '24', '24', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(428, 'Team', 'Added', 'Added a Team Member of name Younas Bhatti', '24', '24', '2022-12-10 01:33:44', '2022-12-10 01:33:44'),
(429, 'Sites', 'Added', 'Added New Site with name: 111 FARRINGDON ROAD, id: 35, of client: Secure FM LTD', '25', '24', '2022-12-12 19:42:26', '2022-12-12 19:42:26'),
(430, 'Sites', 'Deleted', 'Deleted a site, name: 111 Farringdon EC1M 5NR, id: 34, of client: Secure FM LTD', '25', '24', '2022-12-12 19:43:13', '2022-12-12 19:43:13'),
(431, 'Staff', 'Added', 'Added a staff with name: ASHAN IFTIKAR, id: 37', '25', '24', '2022-12-12 19:48:46', '2022-12-12 19:48:46'),
(432, 'Staff', 'Updated', 'Updated a staff with name: ASHAN IFTIKAR, id: 37', '25', '24', '2022-12-12 19:51:38', '2022-12-12 19:51:38'),
(433, 'Staff', 'Updated', 'Updated a staff with name: RITHISH MACHARLA, id: 36', '25', '24', '2022-12-12 19:54:31', '2022-12-12 19:54:31'),
(434, 'Sites', 'Added', 'Added New Site with name: Aldi Colindale Capitol Way, id: 36, of client: Secure FM LTD', '25', '24', '2022-12-12 20:01:39', '2022-12-12 20:01:39'),
(435, 'Sites', 'Added', 'Added New Site with name: Aldi Leicester St Georges Way, id: 37, of client: Secure FM LTD', '25', '24', '2022-12-12 20:03:56', '2022-12-12 20:03:56'),
(436, 'Sites', 'Added', 'Added New Site with name: Aldi Leicester Woodgate, id: 38, of client: Secure FM LTD', '25', '24', '2022-12-12 20:05:06', '2022-12-12 20:05:06'),
(437, 'Sites', 'Added', 'Added New Site with name: Aldi Westcliff On Sea London Road, id: 39, of client: Secure FM LTD', '25', '24', '2022-12-12 20:06:22', '2022-12-12 20:06:22'),
(438, 'Sites', 'Added', 'Added New Site with name: ARRIVA/ FIRST BUS BOLTON, id: 40, of client: Secure FM LTD', '25', '24', '2022-12-12 20:07:32', '2022-12-12 20:07:32'),
(439, 'Sites', 'Added', 'Added New Site with name: Farm Foods 67 High Street, Ponders End, Enfield,, id: 41, of client: Secure FM LTD', '25', '24', '2022-12-12 20:08:24', '2022-12-12 20:08:24'),
(440, 'Sites', 'Added', 'Added New Site with name: James Corbett Rd, Salford, Manchester, id: 42, of client: Secure FM LTD', '25', '24', '2022-12-12 20:09:39', '2022-12-12 20:09:39'),
(441, 'Sites', 'Added', 'Added New Site with name: HFS Lightfoot Hall Chelsea London, id: 43, of client: Secure FM LTD', '25', '24', '2022-12-12 20:10:41', '2022-12-12 20:10:41'),
(442, 'Sites', 'Added', 'Added New Site with name: M&S - WATERSIDE -, id: 44, of client: Secure FM LTD', '25', '24', '2022-12-12 20:15:14', '2022-12-12 20:15:14'),
(443, 'Staff', 'Added', 'Added a staff with name: Muhammad Bilal Mazhar, id: 38', '25', '24', '2022-12-12 20:23:24', '2022-12-12 20:23:24'),
(444, 'Staff', 'Added', 'Added a staff with name: KULDIP KAUR, id: 39', '25', '24', '2022-12-12 20:28:39', '2022-12-12 20:28:39'),
(445, 'Staff', 'Added', 'Added a staff with name: ALI ARSHAD, id: 40', '25', '24', '2022-12-12 20:30:57', '2022-12-12 20:30:57'),
(446, 'Staff', 'Added', 'Added a staff with name: Owolabi	Aladetan, id: 41', '25', '24', '2022-12-12 20:33:40', '2022-12-12 20:33:40'),
(447, 'Staff', 'Added', 'Added a staff with name: NARESH ANNAM, id: 42', '25', '24', '2022-12-12 20:36:01', '2022-12-12 20:36:01'),
(448, 'Staff', 'Added', 'Added a staff with name: MUFTI MAZID, id: 43', '25', '24', '2022-12-12 20:37:04', '2022-12-12 20:37:04'),
(449, 'Staff', 'Added', 'Added a staff with name: UMAIR AHMED, id: 44', '25', '24', '2022-12-12 20:39:14', '2022-12-12 20:39:14'),
(450, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD, on week: 05/12/2022', '25', '24', '2022-12-12 21:02:01', '2022-12-12 21:02:01'),
(451, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Colindale Capitol Way, on week: 05/12/2022', '25', '24', '2022-12-12 21:04:18', '2022-12-12 21:04:18'),
(452, 'Sites', 'Added', 'Added New Site with name: LEVESON MEWS, BATH STREET, HEREFORD,, id: 45, of client: Secure FM LTD', '25', '24', '2022-12-12 21:07:01', '2022-12-12 21:07:01'),
(453, 'Sites', 'Added', 'Added New Site with name: Magnet Ltd, Greyfriars Place, Stafford, Staffordshire, England,, id: 46, of client: Secure FM LTD', '25', '24', '2022-12-12 21:08:18', '2022-12-12 21:08:18'),
(454, 'Sites', 'Added', 'Added New Site with name: Territory Studio 132-140 Goswell road, id: 47, of client: Secure FM LTD', '25', '24', '2022-12-12 21:09:39', '2022-12-12 21:09:39'),
(455, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 56, Site: 111 FARRINGDON ROAD, Week Commencing: 05/12/2022, Activity Type: Loss of Hours -> Lateness', '24', '24', '2022-12-12 21:27:50', '2022-12-12 21:27:50'),
(456, 'Sites', 'Added', 'Added New Site with name: Tesco Shaw 3253, id: 48, of client: Secure FM LTD', '25', '24', '2022-12-12 22:54:27', '2022-12-12 22:54:27'),
(457, 'Sites', 'Added', 'Added New Site with name: Tesco Superstore, Crossley St, Little Lever Bolton, id: 49, of client: Secure FM LTD', '25', '24', '2022-12-12 22:57:51', '2022-12-12 22:57:51'),
(458, 'Sites', 'Added', 'Added New Site with name: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport,, id: 50, of client: Secure FM LTD', '25', '24', '2022-12-12 23:00:06', '2022-12-12 23:00:06'),
(459, 'Sites', 'Added', 'Added New Site with name: The Fragrance Shop, Unit 23, Arndale Shopping Centre,, id: 51, of client: Secure FM LTD', '25', '24', '2022-12-12 23:01:48', '2022-12-12 23:01:48'),
(460, 'Sites', 'Added', 'Added New Site with name: Wilko St Helens 1 Cotham St, Saint Helens, id: 52, of client: Secure FM LTD', '25', '24', '2022-12-12 23:04:13', '2022-12-12 23:04:13'),
(461, 'Sites', 'Added', 'Added New Site with name: Bescot Compound, In Sandy Lane, Wednesbury, WALSALL WS10 0LH, id: 53, of client: Secure FM LTD', '25', '24', '2022-12-12 23:05:44', '2022-12-12 23:05:44'),
(462, 'Sites', 'Added', 'Added New Site with name: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, id: 54, of client: Secure FM LTD', '25', '24', '2022-12-12 23:06:58', '2022-12-12 23:06:58'),
(463, 'Sites', 'Added', 'Added New Site with name: Aldi London Little Venice W2 1EJ, id: 55, of client: Secure FM LTD', '25', '24', '2022-12-12 23:08:26', '2022-12-12 23:08:26'),
(464, 'Sites', 'Added', 'Added New Site with name: Market Walk Chorley PR7 1DR, id: 56, of client: Secure FM LTD', '25', '24', '2022-12-12 23:09:40', '2022-12-12 23:09:40'),
(465, 'Sites', 'Added', 'Added New Site with name: Atlantic Park, Dunnings Bridge Road, Liverpool, L30 4AB, id: 57, of client: Secure FM LTD', '25', '24', '2022-12-12 23:15:30', '2022-12-12 23:15:30'),
(466, 'Sites', 'Added', 'Added New Site with name: Aldi Fenton Victoria Road 27 Fenton, Stoke-on-Trent ST4 2HX, id: 58, of client: Secure FM LTD', '25', '24', '2022-12-12 23:18:35', '2022-12-12 23:18:35'),
(467, 'Sites', 'Added', 'Added New Site with name: Holland & Barrett St Annes 51 St. Annes Road West St Annes FY8 1SB, id: 59, of client: Secure FM LTD', '25', '24', '2022-12-12 23:19:06', '2022-12-12 23:19:06'),
(468, 'Sites', 'Added', 'Added New Site with name: The Icon Outlet. Peninsula Square, London SE10 0DX, id: 60, of client: Secure FM LTD', '25', '24', '2022-12-12 23:20:01', '2022-12-12 23:20:01'),
(469, 'Sites', 'Added', 'Added New Site with name: Wilko Acocks Green B27 6BH, id: 61, of client: Secure FM LTD', '25', '24', '2022-12-12 23:22:13', '2022-12-12 23:22:13'),
(470, 'Sites', 'Added', 'Added New Site with name: 19 Briset Street Clerkenwell London EC1M 5NR, id: 62, of client: Secure FM LTD', '25', '24', '2022-12-12 23:25:09', '2022-12-12 23:25:09'),
(471, 'Sites', 'Added', 'Added New Site with name: Cineworld Cinema Ilford IG1 1BP, id: 63, of client: Secure FM LTD', '25', '24', '2022-12-12 23:25:39', '2022-12-12 23:25:39'),
(472, 'Sites', 'Added', 'Added New Site with name: 250 Camden High street London NW1 8QS, id: 64, of client: Secure FM LTD', '25', '24', '2022-12-12 23:26:55', '2022-12-12 23:26:55'),
(473, 'Sites', 'Added', 'Added New Site with name: Aldi Stockport Newbridge Lane SK1 2NA, id: 65, of client: Secure FM LTD', '25', '24', '2022-12-12 23:28:18', '2022-12-12 23:28:18'),
(474, 'Sites', 'Added', 'Added New Site with name: Aldi Grays London Road RM17 5YB, id: 66, of client: Secure FM LTD', '25', '24', '2022-12-12 23:29:27', '2022-12-12 23:29:27'),
(475, 'Sites', 'Added', 'Added New Site with name: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, id: 67, of client: Secure FM LTD', '25', '24', '2022-12-12 23:30:44', '2022-12-12 23:30:44'),
(476, 'Sites', 'Added', 'Added New Site with name: Cotswold House Chorley PR7 3HW, id: 68, of client: Secure FM LTD', '25', '24', '2022-12-12 23:32:06', '2022-12-12 23:32:06'),
(477, 'Sites', 'Updated', 'Updated a site, name: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, id: 52, of client: Secure FM LTD', '25', '24', '2022-12-12 23:35:35', '2022-12-12 23:35:35'),
(478, 'Sites', 'Added', 'Added New Site with name: COTSWOLD HOUSE, id: 69, of client: Secure FM LTD', '25', '24', '2022-12-12 23:42:23', '2022-12-12 23:42:23'),
(479, 'Staff', 'Added', 'Added a staff with name: ASIER LARRANAGA URQUIRI, id: 45', '25', '24', '2022-12-12 23:46:35', '2022-12-12 23:46:35'),
(480, 'Staff', 'Added', 'Added a staff with name: VAMSI KRISHNA NAIDU AMIRESETTY, id: 46', '25', '24', '2022-12-12 23:48:35', '2022-12-12 23:48:35'),
(481, 'Staff', 'Added', 'Added a staff with name: ABDUL HUSSAIN, id: 47', '25', '24', '2022-12-12 23:50:23', '2022-12-12 23:50:23'),
(482, 'Roles', 'Added', 'Added Role with of name: Sub Admin ', '23', '23', '2022-12-13 16:27:39', '2022-12-13 16:27:39'),
(483, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Sub Admin', '23', '23', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(484, 'Team', 'Added', 'Added a Team Member of name sub admin demo', '23', '23', '2022-12-13 18:19:04', '2022-12-13 18:19:04'),
(485, 'Staff', 'Added', 'Added a staff with name: demo staff, id: 48', '23', '23', '2022-12-14 12:26:24', '2022-12-14 12:26:24'),
(486, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 54, Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, Week Commencing: 05/12/2022, Activity Type: Missed Checkcall', '14', '14', '2022-12-15 07:39:57', '2022-12-15 07:39:57'),
(487, 'Clients', 'Added', 'Added a New Client with id: 36, Name: 911 ', '23', '23', '2022-12-16 17:21:47', '2022-12-16 17:21:47'),
(488, 'Sites', 'Added', 'Added New Site with name: demo site, id: 70, of client: demo client 1', '23', '23', '2022-12-16 17:21:57', '2022-12-16 17:21:57'),
(489, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 25/12/2022', '23', '23', '2022-12-16 17:26:02', '2022-12-16 17:26:02'),
(490, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 25/12/2022, Monitoring Id: 61', '23', '23', '2022-12-16 17:27:16', '2022-12-16 17:27:16'),
(491, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '23', '23', '2022-12-16 17:28:12', '2022-12-16 17:28:12'),
(492, 'Monitoring', 'Added', 'Added Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, on week: 26/12/2022', '14', '14', '2022-12-16 21:10:04', '2022-12-16 21:10:04'),
(493, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 33Shift Week : 26/12/2022, Monitoring Id: 62', '14', '14', '2022-12-16 21:16:24', '2022-12-16 21:16:24'),
(494, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 25/12/2022', '14', '14', '2022-12-16 22:46:42', '2022-12-16 22:46:42'),
(495, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-16 22:48:22', '2022-12-16 22:48:22'),
(496, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 64', '24', '24', '2022-12-16 22:48:42', '2022-12-16 22:48:42'),
(497, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 25/12/2022, Monitoring Id: 61', '23', '23', '2022-12-17 15:38:42', '2022-12-17 15:38:42'),
(498, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 04/12/2022', '23', '23', '2022-12-17 15:39:29', '2022-12-17 15:39:29'),
(499, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 04/12/2022, Monitoring Id: 65', '23', '23', '2022-12-17 15:40:02', '2022-12-17 15:40:02'),
(500, 'Staff', 'Added', 'Added a staff with name: AHMED UMAIR, id: 49', '25', '24', '2022-12-17 22:15:22', '2022-12-17 22:15:22'),
(501, 'Staff', 'Added', 'Added a staff with name: TALHA WAHAB, id: 50', '25', '24', '2022-12-17 22:19:33', '2022-12-17 22:19:33'),
(502, 'Staff', 'Added', 'Added a staff with name: ADNAN ASLAM, id: 51', '25', '24', '2022-12-17 22:20:54', '2022-12-17 22:20:54'),
(503, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AWAIS FARID CHAUDARY, id: 52', '25', '24', '2022-12-17 22:22:40', '2022-12-17 22:22:40'),
(504, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AZAM PARVEZ, id: 53', '25', '24', '2022-12-17 22:25:45', '2022-12-17 22:25:45'),
(505, 'Staff', 'Added', 'Added a staff with name: RAB NAWAZ MIAN, id: 54', '25', '24', '2022-12-17 22:29:42', '2022-12-17 22:29:42'),
(506, 'Staff', 'Added', 'Added a staff with name: MUNIR HUSSAIN, id: 55', '25', '24', '2022-12-17 22:31:41', '2022-12-17 22:31:41'),
(507, 'Staff', 'Added', 'Added a staff with name: ALI IRFAN, id: 56', '25', '24', '2022-12-17 22:33:29', '2022-12-17 22:33:29'),
(508, 'Staff', 'Added', 'Added a staff with name: JOVENJEET SINGH, id: 57', '25', '24', '2022-12-17 22:37:52', '2022-12-17 22:37:52'),
(509, 'Staff', 'Added', 'Added a staff with name: PRABH JOT KAUR, id: 58', '25', '24', '2022-12-17 22:39:30', '2022-12-17 22:39:30'),
(510, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD ZUBAIR, id: 59', '25', '24', '2022-12-17 22:44:51', '2022-12-17 22:44:51'),
(511, 'Staff', 'Added', 'Added a staff with name: MILTON MERGULHAO, id: 60', '25', '24', '2022-12-17 22:47:38', '2022-12-17 22:47:38'),
(512, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD NAEEM KHAN KHAN, id: 61', '25', '24', '2022-12-17 22:50:15', '2022-12-17 22:50:15'),
(513, 'Staff', 'Added', 'Added a staff with name: UMAR HAMEED, id: 62', '25', '24', '2022-12-17 22:52:16', '2022-12-17 22:52:16'),
(514, 'Staff', 'Added', 'Added a staff with name: KAWSER MURSHED, id: 63', '25', '24', '2022-12-17 22:53:58', '2022-12-17 22:53:58'),
(515, 'Staff', 'Added', 'Added a staff with name: ASGHAR MOHAMMAD, id: 64', '25', '24', '2022-12-17 22:55:49', '2022-12-17 22:55:49'),
(516, 'Staff', 'Added', 'Added a staff with name: AFZAL KHAN BIBI, id: 65', '25', '24', '2022-12-17 22:57:40', '2022-12-17 22:57:40'),
(517, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD SHAHID, id: 66', '25', '24', '2022-12-17 22:59:31', '2022-12-17 22:59:31'),
(518, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD ZUBAIR., id: 67', '25', '24', '2022-12-17 23:03:42', '2022-12-17 23:03:42'),
(519, 'Staff', 'Added', 'Added a staff with name: GAGANDEEP SINGH, id: 68', '25', '24', '2022-12-17 23:05:21', '2022-12-17 23:05:21'),
(520, 'Staff', 'Added', 'Added a staff with name: MR ROHIT ROHIT, id: 69', '25', '24', '2022-12-17 23:07:12', '2022-12-17 23:07:12'),
(521, 'Staff', 'Added', 'Added a staff with name: HAFIZ YOUSAF, id: 70', '25', '24', '2022-12-17 23:08:37', '2022-12-17 23:08:37'),
(522, 'Staff', 'Added', 'Added a staff with name: UMAR RIAZ, id: 71', '25', '24', '2022-12-17 23:10:35', '2022-12-17 23:10:35'),
(523, 'Staff', 'Added', 'Added a staff with name: AHMED SABOOR, id: 72', '25', '24', '2022-12-17 23:13:00', '2022-12-17 23:13:00'),
(524, 'Staff', 'Added', 'Added a staff with name: BABAR SIDDIQUE, id: 73', '25', '24', '2022-12-17 23:16:04', '2022-12-17 23:16:04'),
(525, 'Staff', 'Added', 'Added a staff with name: AKHIL REDDY PAKKER, id: 74', '25', '24', '2022-12-17 23:17:22', '2022-12-17 23:17:22'),
(526, 'Staff', 'Added', 'Added a staff with name: NARESH ANNAM, id: 75', '25', '24', '2022-12-17 23:19:40', '2022-12-17 23:19:40'),
(527, 'Staff', 'Added', 'Added a staff with name: KAMRAN AZMAT, id: 76', '25', '24', '2022-12-17 23:21:17', '2022-12-17 23:21:17'),
(528, 'Staff', 'Added', 'Added a staff with name: ALTHAF MOHAMMAD, id: 77', '25', '24', '2022-12-17 23:22:39', '2022-12-17 23:22:39'),
(529, 'Staff', 'Added', 'Added a staff with name: FAROOQ HUSSAIN, id: 78', '25', '24', '2022-12-17 23:25:58', '2022-12-17 23:25:58'),
(530, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD HAIDER, id: 79', '25', '24', '2022-12-17 23:27:55', '2022-12-17 23:27:55'),
(531, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD BILAL, id: 80', '25', '24', '2022-12-17 23:29:25', '2022-12-17 23:29:25'),
(532, 'Staff', 'Added', 'Added a staff with name: HABTON BEYENE, id: 81', '25', '24', '2022-12-17 23:32:07', '2022-12-17 23:32:07'),
(533, 'Staff', 'Added', 'Added a staff with name: SHAHRUKH AHSAN, id: 82', '25', '24', '2022-12-17 23:34:16', '2022-12-17 23:34:16'),
(534, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD SAJID, id: 83', '25', '24', '2022-12-17 23:36:29', '2022-12-17 23:36:29'),
(535, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 36Shift Week : 05/12/2022, Monitoring Id: 57', '24', '24', '2022-12-18 00:06:58', '2022-12-18 00:06:58'),
(536, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 35Shift Week : 05/12/2022, Monitoring Id: 56', '24', '24', '2022-12-18 00:07:01', '2022-12-18 00:07:01'),
(537, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-18 00:10:06', '2022-12-18 00:10:06'),
(538, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 66', '24', '24', '2022-12-18 00:11:06', '2022-12-18 00:11:06'),
(539, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 66', '24', '24', '2022-12-18 00:14:53', '2022-12-18 00:14:53'),
(540, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 66', '24', '24', '2022-12-18 00:16:21', '2022-12-18 00:16:21'),
(541, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-18 00:19:44', '2022-12-18 00:19:44'),
(542, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 67', '24', '24', '2022-12-18 00:21:16', '2022-12-18 00:21:16'),
(543, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-18 01:09:16', '2022-12-18 01:09:16'),
(544, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 68', '24', '24', '2022-12-18 01:09:43', '2022-12-18 01:09:43'),
(545, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 68', '24', '24', '2022-12-18 01:09:56', '2022-12-18 01:09:56'),
(546, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 68', '24', '24', '2022-12-18 01:10:09', '2022-12-18 01:10:09'),
(547, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 68', '24', '24', '2022-12-18 02:08:49', '2022-12-18 02:08:49'),
(548, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley PR7 3HW, on week: 19/12/2022', '24', '24', '2022-12-18 02:37:34', '2022-12-18 02:37:34'),
(549, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 68Shift Week : 19/12/2022, Monitoring Id: 69', '24', '24', '2022-12-18 03:35:33', '2022-12-18 03:35:33'),
(550, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-18 07:51:52', '2022-12-18 07:51:52'),
(551, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 70', '24', '24', '2022-12-18 07:52:15', '2022-12-18 07:52:15'),
(552, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 70', '25', '24', '2022-12-18 22:50:40', '2022-12-18 22:50:40'),
(553, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD, on week: 12/12/2022', '25', '24', '2022-12-18 22:54:28', '2022-12-18 22:54:28'),
(554, 'Staff', 'Added', 'Added a staff with name: BALAWAL ALI, id: 84', '25', '24', '2022-12-18 22:58:46', '2022-12-18 22:58:46'),
(555, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 FARRINGDON ROADShift Week : 12/12/2022, Monitoring Id: 71', '24', '24', '2022-12-19 03:33:54', '2022-12-19 03:33:54'),
(556, 'Monitoring', 'Updated', 'Updated Monitoring of Site: 111 FARRINGDON ROAD, on week: 18/12/2022', '24', '24', '2022-12-19 17:59:23', '2022-12-19 17:59:23'),
(557, 'Monitoring', 'Updated', 'Updated Monitoring of Site: 111 FARRINGDON ROAD, on week: 19/12/2022', '24', '24', '2022-12-19 18:04:12', '2022-12-19 18:04:12'),
(558, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-19 18:07:04', '2022-12-19 18:07:04'),
(559, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 69Shift Week : 19/12/2022, Monitoring Id: 72', '24', '24', '2022-12-19 18:08:09', '2022-12-19 18:08:09'),
(560, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 19/12/2022', '24', '24', '2022-12-19 18:11:08', '2022-12-19 18:11:08'),
(561, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD,, on week: 19/12/2022', '24', '24', '2022-12-19 18:16:30', '2022-12-19 18:16:30'),
(562, 'Monitoring', 'Updated', 'Updated Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD,, on week: 19/12/2022', '24', '24', '2022-12-19 18:19:08', '2022-12-19 18:19:08'),
(563, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 35Shift Week : 19/12/2022, Monitoring Id: 71', '25', '24', '2022-12-19 18:53:07', '2022-12-19 18:53:07'),
(564, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD, on week: 19/12/2022', '25', '24', '2022-12-19 19:00:15', '2022-12-19 19:00:15'),
(565, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road, on week: 19/12/2022', '25', '24', '2022-12-19 19:03:06', '2022-12-19 19:03:06'),
(566, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON, on week: 19/12/2022', '25', '24', '2022-12-19 19:06:14', '2022-12-19 19:06:14'),
(567, 'Monitoring', 'Added', 'Added Monitoring of Site: Atlantic Park, Dunnings Bridge Road, Liverpool, L30 4AB, on week: 19/12/2022', '25', '24', '2022-12-19 19:07:37', '2022-12-19 19:07:37'),
(568, 'Staff', 'Added', 'Added a staff with name: RAJASHEKAR NERELLA, id: 85', '25', '24', '2022-12-19 19:12:45', '2022-12-19 19:12:45'),
(569, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield,, on week: 19/12/2022', '25', '24', '2022-12-19 19:16:35', '2022-12-19 19:16:35'),
(570, 'Monitoring', 'Added', 'Added Monitoring of Site: HFS Lightfoot Hall Chelsea London, on week: 19/12/2022', '25', '24', '2022-12-19 19:18:49', '2022-12-19 19:18:49'),
(571, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester, on week: 19/12/2022', '25', '24', '2022-12-19 19:23:23', '2022-12-19 19:23:23'),
(572, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD,Shift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-19 19:25:16', '2022-12-19 19:25:16'),
(573, 'Sites', 'Added', 'Added New Site with name: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BU, id: 71, of client: Secure FM LTD', '25', '24', '2022-12-19 19:29:24', '2022-12-19 19:29:24'),
(574, 'Sites', 'Updated', 'Updated a site, name: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, id: 51, of client: Secure FM LTD', '25', '24', '2022-12-19 19:31:13', '2022-12-19 19:31:13'),
(575, 'Sites', 'Updated', 'Updated a site, name: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport, SK1 1QN, id: 50, of client: Secure FM LTD', '25', '24', '2022-12-19 19:31:51', '2022-12-19 19:31:51'),
(576, 'Sites', 'Updated', 'Updated a site, name: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, id: 49, of client: Secure FM LTD', '25', '24', '2022-12-19 19:32:24', '2022-12-19 19:32:24'),
(577, 'Sites', 'Updated', 'Updated a site, name: Tesco Shaw 3253 OL2 8NH, id: 48, of client: Secure FM LTD', '25', '24', '2022-12-19 19:32:50', '2022-12-19 19:32:50'),
(578, 'Sites', 'Updated', 'Updated a site, name: Territory Studio 132-140 Goswell road EC1V 7DY, id: 47, of client: Secure FM LTD', '25', '24', '2022-12-19 19:33:16', '2022-12-19 19:33:16'),
(579, 'Sites', 'Updated', 'Updated a site, name: Magnet Ltd, Greyfriars Place, Stafford, Staffordshire, England, ST16 2SD, id: 46, of client: Secure FM LTD', '25', '24', '2022-12-19 19:33:42', '2022-12-19 19:33:42'),
(580, 'Sites', 'Updated', 'Updated a site, name: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, id: 45, of client: Secure FM LTD', '25', '24', '2022-12-19 19:34:12', '2022-12-19 19:34:12'),
(581, 'Sites', 'Updated', 'Updated a site, name: M&S - WATERSIDE - W2 1NW, id: 44, of client: Secure FM LTD', '25', '24', '2022-12-19 19:34:35', '2022-12-19 19:34:35'),
(582, 'Sites', 'Updated', 'Updated a site, name: HFS Lightfoot Hall Chelsea London SW3 6NA, id: 43, of client: Secure FM LTD', '25', '24', '2022-12-19 19:35:00', '2022-12-19 19:35:00'),
(583, 'Sites', 'Updated', 'Updated a site, name: James Corbett Rd, Salford, Manchester M50 1DE, id: 42, of client: Secure FM LTD', '25', '24', '2022-12-19 19:35:47', '2022-12-19 19:35:47'),
(584, 'Sites', 'Updated', 'Updated a site, name: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, id: 41, of client: Secure FM LTD', '25', '24', '2022-12-19 19:36:15', '2022-12-19 19:36:15'),
(585, 'Sites', 'Updated', 'Updated a site, name: ARRIVA/ FIRST BUS BOLTON BL1 1UN, id: 40, of client: Secure FM LTD', '25', '24', '2022-12-19 19:36:46', '2022-12-19 19:36:46'),
(586, 'Sites', 'Updated', 'Updated a site, name: Aldi Westcliff On Sea London Road SS0 9HQ, id: 39, of client: Secure FM LTD', '25', '24', '2022-12-19 19:37:16', '2022-12-19 19:37:16'),
(587, 'Sites', 'Updated', 'Updated a site, name: Aldi Leicester Woodgate LE3 5GH, id: 38, of client: Secure FM LTD', '25', '24', '2022-12-19 19:37:49', '2022-12-19 19:37:49'),
(588, 'Sites', 'Updated', 'Updated a site, name: Aldi Colindale Capitol Way NW9 0AW, id: 36, of client: Secure FM LTD', '25', '24', '2022-12-19 19:38:13', '2022-12-19 19:38:13'),
(589, 'Sites', 'Updated', 'Updated a site, name: 111 FARRINGDON ROAD EC1R 3BW, id: 35, of client: Secure FM LTD', '25', '24', '2022-12-19 19:38:38', '2022-12-19 19:38:38'),
(590, 'Sites', 'Updated', 'Updated a site, name: Aldi Leicester St Georges Way LE1 1SG, id: 37, of client: Secure FM LTD', '25', '24', '2022-12-19 19:40:49', '2022-12-19 19:40:49'),
(591, 'Monitoring', 'Added', 'Added Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BU, on week: 19/12/2022', '25', '24', '2022-12-19 19:55:33', '2022-12-19 19:55:33'),
(592, 'Sites', 'Added', 'Added New Site with name: Northface Cheshire Oaks Outlet Kinsey Rd CH65 9JJ, id: 72, of client: Secure FM LTD', '25', '24', '2022-12-19 20:00:05', '2022-12-19 20:00:05'),
(593, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 19/12/2022', '25', '24', '2022-12-19 20:24:26', '2022-12-19 20:24:26'),
(594, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 19/12/2022', '25', '24', '2022-12-19 20:31:04', '2022-12-19 20:31:04'),
(595, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 19/12/2022', '25', '24', '2022-12-19 20:33:30', '2022-12-19 20:33:30'),
(596, 'Sites', 'Added', 'Added New Site with name: The Fragrance Shop 25CA Briar Hill Way, Salford Shopping City M6 5FD, id: 73, of client: Secure FM LTD', '25', '24', '2022-12-19 20:36:26', '2022-12-19 20:36:26'),
(597, 'Monitoring', 'Added', 'Added Monitoring of Site: The Icon Outlet. Peninsula Square, London SE10 0DX, on week: 19/12/2022', '25', '24', '2022-12-19 20:38:53', '2022-12-19 20:38:53'),
(598, 'Sites', 'Added', 'Added New Site with name: Schuh 015 Tottenham Court Road Unit 2, 38-42 Oxford Street London W1D 1BB, id: 74, of client: Secure FM LTD', '25', '24', '2022-12-19 20:40:56', '2022-12-19 20:40:56'),
(599, 'Staff', 'Added', 'Added a staff with name: PARDIV PRAKASH THURAKA, id: 86', '25', '24', '2022-12-19 20:46:45', '2022-12-19 20:46:45'),
(600, 'Monitoring', 'Added', 'Added Monitoring of Site: Schuh 015 Tottenham Court Road Unit 2, 38-42 Oxford Street London W1D 1BB, on week: 19/12/2022', '25', '24', '2022-12-19 20:50:11', '2022-12-19 20:50:11'),
(601, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AHMED, id: 87', '25', '24', '2022-12-19 20:57:35', '2022-12-19 20:57:35'),
(602, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AWAIS ZAHID, id: 88', '25', '24', '2022-12-19 21:01:04', '2022-12-19 21:01:04'),
(603, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 19/12/2022', '25', '24', '2022-12-19 21:06:14', '2022-12-19 21:06:14'),
(604, 'Sites', 'Added', 'Added New Site with name: Pets at Home Basildon 1A, Old Market Retail Park High Street SS13 3BY, id: 75, of client: Secure FM LTD', '25', '24', '2022-12-19 21:08:49', '2022-12-19 21:08:49'),
(605, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Basildon 1A, Old Market Retail Park High Street SS13 3BY, on week: 19/12/2022', '25', '24', '2022-12-19 21:10:46', '2022-12-19 21:10:46'),
(606, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester Woodgate LE3 5GH, on week: 19/12/2022', '25', '24', '2022-12-19 21:12:47', '2022-12-19 21:12:47'),
(607, 'Complaints', 'Added', 'Added a Complaint with id: 48, of site:South Wales Fire & Rescue Service Headquarters', '14', '14', '2022-12-19 21:19:31', '2022-12-19 21:19:31'),
(608, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-19 21:21:09', '2022-12-19 21:21:09'),
(609, 'Clients', 'Added', 'Added a New Client with id: 37, Name: Standard ', '23', '23', '2022-12-19 21:30:09', '2022-12-19 21:30:09'),
(610, 'Sites', 'Added', 'Added New Site with name: Newport Street Gallery, Newport Street, London , SE11 6AJ, id: 76, of client: Secure FM LTD', '25', '24', '2022-12-19 22:30:57', '2022-12-19 22:30:57'),
(611, 'Monitoring', 'Added', 'Added Monitoring of Site: Newport Street Gallery, Newport Street, London , SE11 6AJ, on week: 19/12/2022', '25', '24', '2022-12-19 22:35:32', '2022-12-19 22:35:32'),
(612, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Newport Street Gallery, Newport Street, London , SE11 6AJShift Week : 19/12/2022, Monitoring Id: 91', '24', '24', '2022-12-19 22:48:49', '2022-12-19 22:48:49'),
(613, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 19/12/2022, Monitoring Id: 76', '24', '24', '2022-12-19 22:54:53', '2022-12-19 22:54:53'),
(614, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 19/12/2022, Monitoring Id: 76', '24', '24', '2022-12-19 22:55:19', '2022-12-19 22:55:19'),
(615, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley PR7 1DR, on week: 19/12/2022', '25', '24', '2022-12-19 23:01:07', '2022-12-19 23:01:07'),
(616, 'Sites', 'Added', 'Added New Site with name: Aldi Fenton Victoria Road 27 Fenton, Stoke-on-Trent ST4 2HX, id: 77, of client: Secure FM LTD', '25', '24', '2022-12-19 23:06:42', '2022-12-19 23:06:42'),
(617, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Fenton Victoria Road 27 Fenton, Stoke-on-Trent ST4 2HX, on week: 19/12/2022', '25', '24', '2022-12-19 23:11:12', '2022-12-19 23:11:12'),
(618, 'Sites', 'Added', 'Added New Site with name: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TT, id: 78, of client: Secure FM LTD', '25', '24', '2022-12-19 23:16:20', '2022-12-19 23:16:20'),
(619, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 73', '25', '24', '2022-12-19 23:41:43', '2022-12-19 23:41:43'),
(620, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 73', '25', '24', '2022-12-19 23:41:58', '2022-12-19 23:41:58'),
(621, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 73', '25', '24', '2022-12-19 23:42:09', '2022-12-19 23:42:09'),
(622, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 19/12/2022, Monitoring Id: 73', '25', '24', '2022-12-19 23:42:25', '2022-12-19 23:42:25'),
(623, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Missed Checkcall', '14', '14', '2022-12-20 09:31:22', '2022-12-20 09:31:22'),
(624, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - Low', '14', '14', '2022-12-20 09:31:29', '2022-12-20 09:31:29'),
(625, 'Roles', 'Added', 'Added Role with of name: Manager ', '14', '14', '2022-12-20 09:34:16', '2022-12-20 09:34:16'),
(626, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Manager', '14', '14', '2022-12-20 09:34:46', '2022-12-20 09:34:46'),
(627, 'Team', 'Added', 'Added a Team Member of name uzair', '14', '14', '2022-12-20 09:35:33', '2022-12-20 09:35:33'),
(628, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '28', '14', '2022-12-20 09:36:40', '2022-12-20 09:36:40'),
(629, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 27', '14', '14', '2022-12-20 09:37:47', '2022-12-20 09:37:47'),
(630, 'Monitoring', 'Added', 'Added Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, on week: 19/12/2022', '14', '14', '2022-12-20 09:38:41', '2022-12-20 09:38:41'),
(631, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FNShift Week : 19/12/2022, Monitoring Id: 94', '14', '14', '2022-12-20 09:39:13', '2022-12-20 09:39:13'),
(632, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 33Shift Week : 19/12/2022, Monitoring Id: 94', '14', '14', '2022-12-20 09:39:49', '2022-12-20 09:39:49'),
(633, 'Roles', 'Deleted', 'Deleted Role of Name: Manager, id: 11', '14', '14', '2022-12-20 09:41:20', '2022-12-20 09:41:20'),
(634, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Missed Checkcall', '14', '14', '2022-12-20 10:08:50', '2022-12-20 10:08:50');
INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(635, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Missed Patrol', '14', '14', '2022-12-20 10:08:57', '2022-12-20 10:08:57'),
(636, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Loss of Hours -> Lateness', '14', '14', '2022-12-20 10:09:04', '2022-12-20 10:09:04'),
(637, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Loss of Hours -> Blow out', '14', '14', '2022-12-20 10:09:12', '2022-12-20 10:09:12'),
(638, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - Medium', '14', '14', '2022-12-20 10:09:26', '2022-12-20 10:09:26'),
(639, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-20 10:09:35', '2022-12-20 10:09:35'),
(640, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Missed Patrol', '14', '14', '2022-12-20 10:09:49', '2022-12-20 10:09:49'),
(641, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Missed Patrol', '14', '14', '2022-12-20 10:09:49', '2022-12-20 10:09:49'),
(642, 'Monitoring', 'Added', 'Added Monitoring of Site: Tredomen Business Park, Ystrad Mynach, Hengoed, CF82 7FN, on week: 21/12/2022', '14', '14', '2022-12-21 00:10:12', '2022-12-21 00:10:12'),
(643, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley, on week: 21/12/2022', '14', '14', '2022-12-21 00:50:45', '2022-12-21 00:50:45'),
(644, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Market Walk ChorleyShift Week : 21/12/2022, Monitoring Id: 96', '14', '14', '2022-12-21 00:51:30', '2022-12-21 00:51:30'),
(645, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 33Shift Week : 21/12/2022, Monitoring Id: 95', '14', '14', '2022-12-21 00:52:14', '2022-12-21 00:52:14'),
(646, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 24Shift Week : 21/12/2022, Monitoring Id: 96', '14', '14', '2022-12-21 00:52:21', '2022-12-21 00:52:21'),
(647, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2022-12-22 08:21:38', '2022-12-22 08:21:38'),
(648, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2022-12-22 08:21:48', '2022-12-22 08:21:48'),
(649, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2022-12-22 08:23:04', '2022-12-22 08:23:04'),
(650, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-22 21:01:45', '2022-12-22 21:01:45'),
(651, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-22 21:01:54', '2022-12-22 21:01:54'),
(652, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - Low', '14', '14', '2022-12-22 21:02:04', '2022-12-22 21:02:04'),
(653, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 63, Site: PRD068162 Cotswold House, Week Commencing: 25/12/2022, Activity Type: Service Complaint - High', '14', '14', '2022-12-22 21:02:22', '2022-12-22 21:02:22'),
(654, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 58Shift Week : 19/12/2022, Monitoring Id: 93', '25', '24', '2022-12-22 22:25:46', '2022-12-22 22:25:46'),
(655, 'Monitoring', 'Added', 'Added Monitoring of Site: Atlantic Park, Dunnings Bridge Road, Liverpool, L30 4AB, on week: 19/12/2022', '25', '24', '2022-12-22 22:39:02', '2022-12-22 22:39:02'),
(656, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 57Shift Week : 19/12/2022, Monitoring Id: 97', '25', '24', '2022-12-22 22:41:30', '2022-12-22 22:41:30'),
(657, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Atlantic Park, Dunnings Bridge Road, Liverpool, L30 4AB, on week: 19/12/2022', '25', '24', '2022-12-22 22:46:46', '2022-12-22 22:46:46'),
(658, 'Sites', 'Added', 'Added New Site with name: Holland & Barrett Wandsworth SU93 Southside Shopping Centre Wandsworth SW18 4DG, id: 79, of client: Secure FM LTD', '25', '24', '2022-12-22 22:49:54', '2022-12-22 22:49:54'),
(659, 'Monitoring', 'Added', 'Added Monitoring of Site: Holland & Barrett Wandsworth SU93 Southside Shopping Centre Wandsworth SW18 4DG, on week: 19/12/2022', '25', '24', '2022-12-22 22:52:32', '2022-12-22 22:52:32'),
(660, 'Monitoring', 'Added', 'Added Monitoring of Site: Northface Cheshire Oaks Outlet Kinsey Rd CH65 9JJ, on week: 19/12/2022', '25', '24', '2022-12-22 23:03:54', '2022-12-22 23:03:54'),
(661, 'Sites', 'Added', 'Added New Site with name: Tatton Gardens Chorley PR6 0PR, id: 80, of client: Secure FM LTD', '25', '24', '2022-12-22 23:08:48', '2022-12-22 23:08:48'),
(662, 'Monitoring', 'Added', 'Added Monitoring of Site: Tatton Gardens Chorley PR6 0PR, on week: 19/12/2022', '25', '24', '2022-12-22 23:15:30', '2022-12-22 23:15:30'),
(663, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop 25CA Briar Hill Way, Salford Shopping City M6 5FD, on week: 19/12/2022', '25', '24', '2022-12-22 23:27:53', '2022-12-22 23:27:53'),
(664, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport, SK1 1QN, on week: 19/12/2022', '25', '24', '2022-12-22 23:33:00', '2022-12-22 23:33:00'),
(665, 'Staff', 'Added', 'Added a staff with name: ABDUL HANNAN, id: 89', '25', '24', '2022-12-22 23:36:51', '2022-12-22 23:36:51'),
(666, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AMJAD, id: 90', '25', '24', '2022-12-22 23:45:19', '2022-12-22 23:45:19'),
(667, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 19/12/2022', '25', '24', '2022-12-22 23:46:23', '2022-12-22 23:46:23'),
(668, 'Monitoring', 'Updated', 'Updated Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 19/12/2022', '25', '24', '2022-12-22 23:49:25', '2022-12-22 23:49:25'),
(669, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 65, Site: demo site, Week Commencing: 04/12/2022, Activity Type: Service Complaint - Medium', '23', '23', '2022-12-23 11:28:30', '2022-12-23 11:28:30'),
(670, 'Complaints', 'Added', 'Added a Complaint with id: 39, of site:demo site', '23', '23', '2022-12-23 11:31:30', '2022-12-23 11:31:30'),
(671, 'Staff', 'Added', 'Added a staff with name: IMTIAZ KHAN, id: 91', '25', '24', '2022-12-23 22:05:51', '2022-12-23 22:05:51'),
(672, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Leicester Woodgate LE3 5GHShift Week : 19/12/2022, Monitoring Id: 90', '25', '24', '2022-12-23 22:07:10', '2022-12-23 22:07:10'),
(673, 'Staff', 'Added', 'Added a staff with name: AHMED IMTIAZ, id: 92', '25', '24', '2022-12-23 22:09:41', '2022-12-23 22:09:41'),
(674, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UNShift Week : 19/12/2022, Monitoring Id: 77', '25', '24', '2022-12-23 22:11:09', '2022-12-23 22:11:09'),
(675, 'Staff', 'Added', 'Added a staff with name: SAJAWAL HUSSAIN, id: 93', '25', '24', '2022-12-23 22:17:49', '2022-12-23 22:17:49'),
(676, 'Monitoring', 'Added', 'Added Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TT, on week: 19/12/2022', '25', '24', '2022-12-23 22:19:11', '2022-12-23 22:19:11'),
(677, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TT, on week: 19/12/2022', '25', '24', '2022-12-23 22:20:39', '2022-12-23 22:20:39'),
(678, 'Monitoring', 'Updated', 'Updated Monitoring of Site: HFS Lightfoot Hall Chelsea London SW3 6NA, on week: 19/12/2022', '25', '24', '2022-12-23 22:23:04', '2022-12-23 22:23:04'),
(679, 'Staff', 'Added', 'Added a staff with name: ARIF AHMED, id: 94', '25', '24', '2022-12-23 22:27:07', '2022-12-23 22:27:07'),
(680, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BUShift Week : 19/12/2022, Monitoring Id: 82', '25', '24', '2022-12-23 22:29:01', '2022-12-23 22:29:01'),
(681, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens Chorley PR6 0PRShift Week : 19/12/2022, Monitoring Id: 100', '25', '24', '2022-12-23 22:31:19', '2022-12-23 22:31:19'),
(682, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 19/12/2022, Monitoring Id: 83', '25', '24', '2022-12-23 22:32:23', '2022-12-23 22:32:23'),
(683, 'Sites', 'Added', 'Added New Site with name: Tesco Accrington Eagle Street BB5 1LN, id: 81, of client: Secure FM LTD', '25', '24', '2022-12-23 22:34:28', '2022-12-23 22:34:28'),
(684, 'Staff', 'Added', 'Added a staff with name: AKHTAR JAVED, id: 95', '25', '24', '2022-12-23 22:36:06', '2022-12-23 22:36:06'),
(685, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Accrington Eagle Street BB5 1LN, on week: 19/12/2022', '25', '24', '2022-12-23 22:38:47', '2022-12-23 22:38:47'),
(686, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Market Walk Chorley PR7 1DR, on week: 19/12/2022', '25', '24', '2022-12-23 22:47:07', '2022-12-23 22:47:07'),
(687, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk Chorley PR7 1DRShift Week : 19/12/2022, Monitoring Id: 92', '25', '24', '2022-12-23 22:47:52', '2022-12-23 22:47:52'),
(688, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk Chorley PR7 1DRShift Week : 19/12/2022, Monitoring Id: 92', '25', '24', '2022-12-23 22:48:13', '2022-12-23 22:48:13'),
(689, 'Sites', 'Added', 'Added New Site with name: NP Areospace 473 Foleshill Road Coventry CV6 5AQ, id: 82, of client: Secure FM LTD', '25', '24', '2022-12-23 22:51:30', '2022-12-23 22:51:30'),
(690, 'Sites', 'Added', 'Added New Site with name: Tesco Blackpool Ansdell Road Express  FY1 6PU, id: 83, of client: Secure FM LTD', '25', '24', '2022-12-23 22:54:22', '2022-12-23 22:54:22'),
(691, 'Sites', 'Added', 'Added New Site with name: Pirate 23 Hampshire Street, London, NW5 2TE, id: 84, of client: Secure FM LTD', '25', '24', '2022-12-23 22:56:45', '2022-12-23 22:56:45'),
(692, 'Sites', 'Added', 'Added New Site with name: Solvay Baronet Works, Baronet Rd, Warrington WA4 6HA, id: 85, of client: Secure FM LTD', '25', '24', '2022-12-23 23:03:48', '2022-12-23 23:03:48'),
(693, 'Sites', 'Added', 'Added New Site with name: North Face Brent Cross 10 Prince Charles Drive Brent Cross London NW4 3FP, id: 86, of client: Secure FM LTD', '25', '24', '2022-12-23 23:04:52', '2022-12-23 23:04:52'),
(694, 'Sites', 'Added', 'Added New Site with name: Preston Corporation St Depot/Dock Sidings, Off Corporation St, Preston PR1 2UP, id: 87, of client: Secure FM LTD', '25', '24', '2022-12-23 23:06:51', '2022-12-23 23:06:51'),
(695, 'Staff', 'Added', 'Added a staff with name: IMRAN NAZIR, id: 96', '25', '24', '2022-12-23 23:11:53', '2022-12-23 23:11:53'),
(696, 'Staff', 'Added', 'Added a staff with name: MURALI MODIGARI, id: 97', '25', '24', '2022-12-23 23:13:37', '2022-12-23 23:13:37'),
(697, 'Staff', 'Added', 'Added a staff with name: MUHAMMED YAZIN, id: 98', '25', '24', '2022-12-23 23:15:18', '2022-12-23 23:15:18'),
(698, 'Staff', 'Added', 'Added a staff with name: MUHAMMED THARAYIL, id: 99', '25', '24', '2022-12-23 23:17:01', '2022-12-23 23:17:01'),
(699, 'Staff', 'Added', 'Added a staff with name: ASADULALAM RASHEEDA, id: 100', '25', '24', '2022-12-23 23:19:16', '2022-12-23 23:19:16'),
(700, 'Staff', 'Added', 'Added a staff with name: Nabeel Ur Rahman, id: 101', '25', '24', '2022-12-23 23:26:11', '2022-12-23 23:26:11'),
(701, 'Monitoring', 'Added', 'Added Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQ, on week: 19/12/2022', '25', '24', '2022-12-23 23:31:07', '2022-12-23 23:31:07'),
(702, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Blackpool Ansdell Road Express  FY1 6PU, on week: 19/12/2022', '25', '24', '2022-12-23 23:32:35', '2022-12-23 23:32:35'),
(703, 'Monitoring', 'Added', 'Added Monitoring of Site: Pirate 23 Hampshire Street, London, NW5 2TE, on week: 19/12/2022', '25', '24', '2022-12-23 23:36:14', '2022-12-23 23:36:14'),
(704, 'Monitoring', 'Added', 'Added Monitoring of Site: Solvay Baronet Works, Baronet Rd, Warrington WA4 6HA, on week: 19/12/2022', '25', '24', '2022-12-23 23:37:46', '2022-12-23 23:37:46'),
(705, 'Staff', 'Added', 'Added a staff with name: SWATHI SAPPIDI, id: 102', '25', '24', '2022-12-23 23:41:29', '2022-12-23 23:41:29'),
(706, 'Monitoring', 'Added', 'Added Monitoring of Site: North Face Brent Cross 10 Prince Charles Drive Brent Cross London NW4 3FP, on week: 19/12/2022', '25', '24', '2022-12-23 23:48:42', '2022-12-23 23:48:42'),
(707, 'Monitoring', 'Added', 'Added Monitoring of Site: Preston Corporation St Depot/Dock Sidings, Off Corporation St, Preston PR1 2UP, on week: 19/12/2022', '25', '24', '2022-12-23 23:50:39', '2022-12-23 23:50:39'),
(708, 'Monitoring', 'Added', 'Added Monitoring of Site: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, on week: 19/12/2022', '25', '24', '2022-12-23 23:52:04', '2022-12-23 23:52:04'),
(709, 'Sites', 'Added', 'Added New Site with name: Matalan smethwick, Lime Grove, Smethwick B66 3ER, id: 88, of client: Secure FM LTD', '25', '24', '2022-12-23 23:54:22', '2022-12-23 23:54:22'),
(710, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 19/12/2022', '25', '24', '2022-12-23 23:55:52', '2022-12-23 23:55:52'),
(711, 'Staff', 'Added', 'Added a staff with name: SHOAIB IFTIKHAR, id: 103', '25', '24', '2022-12-24 20:41:46', '2022-12-24 20:41:46'),
(712, 'Staff', 'Added', 'Added a staff with name: HABTON BEYENE, id: 104', '25', '24', '2022-12-24 20:46:24', '2022-12-24 20:46:24'),
(713, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD TARIQ, id: 105', '25', '24', '2022-12-24 20:48:24', '2022-12-24 20:48:24'),
(714, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BUShift Week : 19/12/2022, Monitoring Id: 82', '25', '24', '2022-12-24 20:49:43', '2022-12-24 20:49:43'),
(715, 'Monitoring', 'Updated', 'Updated Monitoring of Site: North Face Brent Cross 10 Prince Charles Drive Brent Cross London NW4 3FP, on week: 19/12/2022', '25', '24', '2022-12-24 20:51:45', '2022-12-24 20:51:45'),
(716, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens Chorley PR6 0PRShift Week : 19/12/2022, Monitoring Id: 100', '25', '24', '2022-12-24 20:53:52', '2022-12-24 20:53:52'),
(717, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 19/12/2022, Monitoring Id: 83', '25', '24', '2022-12-24 20:55:08', '2022-12-24 20:55:08'),
(718, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 19/12/2022, Monitoring Id: 83', '25', '24', '2022-12-24 20:55:24', '2022-12-24 20:55:24'),
(719, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Accrington Eagle Street BB5 1LNShift Week : 19/12/2022, Monitoring Id: 105', '25', '24', '2022-12-24 20:57:03', '2022-12-24 20:57:03'),
(720, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3ABShift Week : 19/12/2022, Monitoring Id: 103', '25', '24', '2022-12-24 20:58:35', '2022-12-24 20:58:35'),
(721, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: The Icon Outlet. Peninsula Square, London SE10 0DXShift Week : 19/12/2022, Monitoring Id: 86', '25', '24', '2022-12-24 20:59:51', '2022-12-24 20:59:51'),
(722, 'Monitoring', 'Updated', 'Updated Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQ, on week: 19/12/2022', '25', '24', '2022-12-24 21:03:49', '2022-12-24 21:03:49'),
(723, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQShift Week : 19/12/2022, Monitoring Id: 106', '25', '24', '2022-12-24 21:04:23', '2022-12-24 21:04:23'),
(724, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQShift Week : 19/12/2022, Monitoring Id: 106', '25', '24', '2022-12-24 21:04:31', '2022-12-24 21:04:31'),
(725, 'Monitoring', 'Updated', 'Updated Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQ, on week: 19/12/2022', '25', '24', '2022-12-24 21:06:50', '2022-12-24 21:06:50'),
(726, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Preston Corporation St Depot/Dock Sidings, Off Corporation St, Preston PR1 2UP, on week: 19/12/2022', '25', '24', '2022-12-24 21:08:56', '2022-12-24 21:08:56'),
(727, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 19/12/2022', '25', '24', '2022-12-24 21:12:21', '2022-12-24 21:12:21'),
(728, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 19/12/2022', '25', '24', '2022-12-24 21:13:30', '2022-12-24 21:13:30'),
(729, 'Sites', 'Added', 'Added New Site with name: Windsor House L8 7LF, id: 89, of client: Secure FM LTD', '25', '24', '2022-12-24 21:17:16', '2022-12-24 21:17:16'),
(730, 'Staff', 'Added', 'Added a staff with name: ABDUL ALAM, id: 106', '25', '24', '2022-12-24 21:19:11', '2022-12-24 21:19:11'),
(731, 'Staff', 'Added', 'Added a staff with name: Muhammad  Adnan, id: 107', '25', '24', '2022-12-24 21:21:34', '2022-12-24 21:21:34'),
(732, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-24 21:31:25', '2022-12-24 21:31:25'),
(733, 'Monitoring', 'Added', 'Added Monitoring of Site: Windsor House L8 7LF, on week: 19/12/2022', '25', '24', '2022-12-24 21:38:57', '2022-12-24 21:38:57'),
(734, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQShift Week : 19/12/2022, Monitoring Id: 106', '25', '24', '2022-12-24 21:47:45', '2022-12-24 21:47:45'),
(735, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 19/12/2022, Monitoring Id: 76', '25', '24', '2022-12-26 23:04:00', '2022-12-26 23:04:00'),
(736, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 19/12/2022, Monitoring Id: 76', '25', '24', '2022-12-26 23:04:16', '2022-12-26 23:04:16'),
(737, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 19/12/2022, Monitoring Id: 76', '25', '24', '2022-12-26 23:04:41', '2022-12-26 23:04:41'),
(738, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:06:51', '2022-12-26 23:06:51'),
(739, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:07:14', '2022-12-26 23:07:14'),
(740, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:07:53', '2022-12-26 23:07:53'),
(741, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:08:10', '2022-12-26 23:08:10'),
(742, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:08:30', '2022-12-26 23:08:30'),
(743, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Banbury Road, Lighthorne Heath, Warwickshire, CV33 9TTShift Week : 19/12/2022, Monitoring Id: 104', '25', '24', '2022-12-26 23:08:45', '2022-12-26 23:08:45'),
(744, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Holland & Barrett Wandsworth SU93 Southside Shopping Centre Wandsworth SW18 4DGShift Week : 19/12/2022, Monitoring Id: 98', '25', '24', '2022-12-26 23:11:28', '2022-12-26 23:11:28'),
(745, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 19/12/2022, Monitoring Id: 81', '25', '24', '2022-12-26 23:17:39', '2022-12-26 23:17:39'),
(746, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 19/12/2022, Monitoring Id: 81', '25', '24', '2022-12-26 23:18:17', '2022-12-26 23:18:17'),
(747, 'Staff', 'Added', 'Added a staff with name: HASSAN RAZA, id: 108', '25', '24', '2022-12-26 23:24:06', '2022-12-26 23:24:06'),
(748, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-26 23:34:18', '2022-12-26 23:34:18'),
(749, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-26 23:35:20', '2022-12-26 23:35:20'),
(750, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-26 23:35:42', '2022-12-26 23:35:42'),
(751, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-26 23:36:20', '2022-12-26 23:36:20'),
(752, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BUShift Week : 19/12/2022, Monitoring Id: 82', '25', '24', '2022-12-26 23:52:50', '2022-12-26 23:52:50'),
(753, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens Chorley PR6 0PRShift Week : 19/12/2022, Monitoring Id: 100', '25', '24', '2022-12-26 23:55:05', '2022-12-26 23:55:05'),
(754, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 25', '14', '14', '2022-12-27 02:16:27', '2022-12-27 02:16:27'),
(755, 'Supervisory Visits', 'Deleted', 'Deleted a Supervisory Visit of id: 24', '14', '14', '2022-12-27 02:16:30', '2022-12-27 02:16:30'),
(756, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 19/12/2022, Monitoring Id: 83', '25', '24', '2022-12-28 22:00:57', '2022-12-28 22:00:57'),
(757, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 19/12/2022, Monitoring Id: 83', '25', '24', '2022-12-28 22:01:17', '2022-12-28 22:01:17'),
(758, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2ASShift Week : 19/12/2022, Monitoring Id: 74', '25', '24', '2022-12-28 22:04:49', '2022-12-28 22:04:49'),
(759, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Aldi Leicester St Georges Way LE1 1SGShift Week : 19/12/2022, Monitoring Id: 88', '25', '24', '2022-12-28 22:09:35', '2022-12-28 22:09:35'),
(760, 'Monitoring', 'Updated', 'Updated Monitoring of Site: NP Areospace 473 Foleshill Road Coventry CV6 5AQ, on week: 19/12/2022', '25', '24', '2022-12-28 22:14:30', '2022-12-28 22:14:30'),
(761, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Windsor House L8 7LF, on week: 19/12/2022', '25', '24', '2022-12-28 22:17:23', '2022-12-28 22:17:23'),
(762, 'Sites', 'Added', 'Added New Site with name: Monier Bedworth Bayton Road Industrial Estate Coventry Warwickshire CV9 9EJ, id: 90, of client: Secure FM LTD', '25', '24', '2022-12-28 22:20:12', '2022-12-28 22:20:12'),
(763, 'Sites', 'Added', 'Added New Site with name: Biffa Cannock Lichfield Road 887 WS11 8NQ, id: 91, of client: Secure FM LTD', '25', '24', '2022-12-28 22:21:39', '2022-12-28 22:21:39'),
(764, 'Staff', 'Added', 'Added a staff with name: Vinod  Sharma, id: 109', '25', '24', '2022-12-28 22:28:41', '2022-12-28 22:28:41'),
(765, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD HIKMETYER MALIK., id: 110', '25', '24', '2022-12-28 22:31:59', '2022-12-28 22:31:59'),
(766, 'Staff', 'Added', 'Added a staff with name: TAUQEER AHMED, id: 111', '25', '24', '2022-12-28 22:35:22', '2022-12-28 22:35:22'),
(767, 'Monitoring', 'Added', 'Added Monitoring of Site: Monier Bedworth Bayton Road Industrial Estate Coventry Warwickshire CV9 9EJ, on week: 19/12/2022', '25', '24', '2022-12-28 22:37:46', '2022-12-28 22:37:46'),
(768, 'Monitoring', 'Added', 'Added Monitoring of Site: Biffa Cannock Lichfield Road 887 WS11 8NQ, on week: 19/12/2022', '25', '24', '2022-12-28 22:40:58', '2022-12-28 22:40:58'),
(769, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 26/12/2022', '25', '24', '2022-12-29 21:29:55', '2022-12-29 21:29:55'),
(770, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 26/12/2022', '25', '24', '2022-12-29 21:32:32', '2022-12-29 21:32:32'),
(771, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 26/12/2022, Monitoring Id: 119', '25', '24', '2022-12-29 21:33:38', '2022-12-29 21:33:38'),
(772, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 26/12/2022, Monitoring Id: 119', '25', '24', '2022-12-29 21:34:14', '2022-12-29 21:34:14'),
(773, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 26/12/2022, Monitoring Id: 119', '25', '24', '2022-12-29 21:34:42', '2022-12-29 21:34:42'),
(774, 'Monitoring', 'Added', 'Added Monitoring of Site: Northface Cheshire Oaks Outlet Kinsey Rd CH65 9JJ, on week: 26/12/2022', '25', '24', '2022-12-29 21:39:26', '2022-12-29 21:39:26'),
(775, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 26/12/2022', '25', '24', '2022-12-29 21:42:01', '2022-12-29 21:42:01'),
(776, 'Monitoring', 'Added', 'Added Monitoring of Site: Tatton Gardens Chorley PR6 0PR, on week: 26/12/2022', '25', '24', '2022-12-29 21:46:26', '2022-12-29 21:46:26'),
(777, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens Chorley PR6 0PRShift Week : 26/12/2022, Monitoring Id: 122', '25', '24', '2022-12-29 21:47:19', '2022-12-29 21:47:19'),
(778, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tatton Gardens Chorley PR6 0PRShift Week : 26/12/2022, Monitoring Id: 122', '25', '24', '2022-12-29 21:48:55', '2022-12-29 21:48:55'),
(779, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 26/12/2022', '25', '24', '2022-12-29 21:53:06', '2022-12-29 21:53:06'),
(780, 'Monitoring', 'Added', 'Added Monitoring of Site: The Icon Outlet. Peninsula Square, London SE10 0DX, on week: 26/12/2022', '25', '24', '2022-12-29 21:55:07', '2022-12-29 21:55:07'),
(781, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: The Icon Outlet. Peninsula Square, London SE10 0DXShift Week : 26/12/2022, Monitoring Id: 124', '25', '24', '2022-12-29 21:56:43', '2022-12-29 21:56:43'),
(782, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 26/12/2022', '25', '24', '2022-12-29 21:59:04', '2022-12-29 21:59:04'),
(783, 'Staff', 'Added', 'Added a staff with name: VINEET MALIK, id: 112', '25', '24', '2022-12-29 22:02:20', '2022-12-29 22:02:20'),
(784, 'Monitoring', 'Added', 'Added Monitoring of Site: North Face Brent Cross 10 Prince Charles Drive Brent Cross London NW4 3FP, on week: 26/12/2022', '25', '24', '2022-12-29 22:05:20', '2022-12-29 22:05:20'),
(785, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 26/12/2022', '25', '24', '2022-12-29 22:08:31', '2022-12-29 22:08:31'),
(786, 'Monitoring', 'Added', 'Added Monitoring of Site: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, on week: 26/12/2022', '25', '24', '2022-12-29 22:09:52', '2022-12-29 22:09:52'),
(787, 'Sites', 'Added', 'Added New Site with name: Biffa Leicester Beaumont Leys Lane 496 LE4 2BN, id: 92, of client: Secure FM LTD', '25', '24', '2022-12-29 22:17:28', '2022-12-29 22:17:28'),
(788, 'Staff', 'Added', 'Added a staff with name: AMRAT SINGH, id: 113', '25', '24', '2022-12-29 22:19:50', '2022-12-29 22:19:50'),
(789, 'Staff', 'Added', 'Added a staff with name: HASAAN AMJAD, id: 114', '25', '24', '2022-12-29 22:24:51', '2022-12-29 22:24:51'),
(790, 'Monitoring', 'Added', 'Added Monitoring of Site: Biffa Leicester Beaumont Leys Lane 496 LE4 2BN, on week: 26/12/2022', '25', '24', '2022-12-29 22:27:46', '2022-12-29 22:27:46'),
(791, 'Monitoring', 'Added', 'Added Monitoring of Site: Monier Bedworth Bayton Road Industrial Estate Coventry Warwickshire CV9 9EJ, on week: 26/12/2022', '25', '24', '2022-12-29 22:30:45', '2022-12-29 22:30:45'),
(792, 'Sites', 'Added', 'Added New Site with name: Tesco Chorley Ackhurst Ind Extra PR7 1NW, id: 93, of client: Secure FM LTD', '25', '24', '2022-12-30 20:11:18', '2022-12-30 20:11:18'),
(793, 'Sites', 'Added', 'Added New Site with name: Wilko Hounslow - Wilko Hounslow TW3 1ES, id: 94, of client: Secure FM LTD', '25', '24', '2022-12-30 20:12:29', '2022-12-30 20:12:29'),
(794, 'Sites', 'Added', 'Added New Site with name: Tesco Tulketh Mill Preston Express 6384 (L) PR2 2BT, id: 95, of client: Secure FM LTD', '25', '24', '2022-12-30 20:13:27', '2022-12-30 20:13:27'),
(795, 'Sites', 'Added', 'Added New Site with name: Currys Highgate Unit 2, Apex Retail Park, 1 Upper Conybere St, Birmingham B12 0EB, id: 96, of client: Secure FM LTD', '25', '24', '2022-12-30 20:14:47', '2022-12-30 20:14:47'),
(796, 'Sites', 'Added', 'Added New Site with name: Wilko Sutton in Surrey 78-82 High St SM1 1EZ, id: 97, of client: Secure FM LTD', '25', '24', '2022-12-30 20:17:02', '2022-12-30 20:17:02'),
(797, 'Sites', 'Added', 'Added New Site with name: Ralph Lauren Braintree Unit 25 Charter Way, Braintree CM77 8YH, id: 98, of client: Secure FM LTD', '25', '24', '2022-12-30 20:20:21', '2022-12-30 20:20:21'),
(798, 'Sites', 'Added', 'Added New Site with name: Asda Oldham Huddersfield Rd, (SIN:014116)Oldham OL4 2RB, id: 99, of client: Secure FM LTD', '25', '24', '2022-12-30 20:21:21', '2022-12-30 20:21:21'),
(799, 'Sites', 'Added', 'Added New Site with name: Aldi Stockport Newbridge Lane SK1 2NA, id: 100, of client: Secure FM LTD', '25', '24', '2022-12-30 20:24:54', '2022-12-30 20:24:54'),
(800, 'Sites', 'Added', 'Added New Site with name: Currys Castle Vale Unit 3-4, Castle Vale Retail Park, Chester Rd, Birmingham B35 6HB, id: 101, of client: Secure FM LTD', '25', '24', '2022-12-30 20:26:53', '2022-12-30 20:26:53'),
(801, 'Sites', 'Added', 'Added New Site with name: Aldi Anerley Croydon Road SE20 7SX, id: 102, of client: Secure FM LTD', '25', '24', '2022-12-30 20:28:20', '2022-12-30 20:28:20'),
(802, 'Sites', 'Added', 'Added New Site with name: Aldi Grays London Road RM17 5YB, id: 103, of client: Secure FM LTD', '25', '24', '2022-12-30 20:29:13', '2022-12-30 20:29:13'),
(803, 'Sites', 'Added', 'Added New Site with name: Aldi manchester arndale M1 1WR, id: 104, of client: Secure FM LTD', '25', '24', '2022-12-30 20:30:38', '2022-12-30 20:30:38'),
(804, 'Sites', 'Added', 'Added New Site with name: Midcounties coop New Invention, 10 The Square, New Invention, Willenhall, WV12 5EA, id: 105, of client: Secure FM LTD', '25', '24', '2022-12-30 20:31:40', '2022-12-30 20:31:40'),
(805, 'Sites', 'Added', 'Added New Site with name: Midcounties Coop Cheslyn Hay WS6 7AD, id: 106, of client: Secure FM LTD', '25', '24', '2022-12-30 20:32:40', '2022-12-30 20:32:40'),
(806, 'Sites', 'Added', 'Added New Site with name: Midcounties Coop Lichfield Road  WS4 1PS, id: 107, of client: Secure FM LTD', '25', '24', '2022-12-30 20:33:47', '2022-12-30 20:33:47'),
(807, 'Sites', 'Added', 'Added New Site with name: Pirate Hackney Wick 13 Rothbury Road E9 5HA, id: 108, of client: Secure FM LTD', '25', '24', '2022-12-30 20:34:49', '2022-12-30 20:34:49'),
(808, 'Sites', 'Added', 'Added New Site with name: Hobbycraft Basildon Westgate Park Fodderwick SS14 1WP, id: 109, of client: Secure FM LTD', '25', '24', '2022-12-30 20:36:03', '2022-12-30 20:36:03'),
(809, 'Sites', 'Added', 'Added New Site with name: Wilko St Helens  1 Cotham St, Saint Helens WA10 1SB, id: 110, of client: Secure FM LTD', '25', '24', '2022-12-30 20:37:00', '2022-12-30 20:37:00'),
(810, 'Sites', 'Deleted', 'Deleted a site, name: Wilko St Helens  1 Cotham St, Saint Helens WA10 1SB, id: 110, of client: Secure FM LTD', '25', '24', '2022-12-30 20:37:44', '2022-12-30 20:37:44'),
(811, 'Sites', 'Added', 'Added New Site with name: Pets at Home Thamesmead Unit E, Cannon retail park SE28 8RD, id: 111, of client: Secure FM LTD', '25', '24', '2022-12-30 20:38:57', '2022-12-30 20:38:57'),
(812, 'Sites', 'Added', 'Added New Site with name: Halfords Walsall Bescot Retail Park WS1 4SB, id: 112, of client: Secure FM LTD', '25', '24', '2022-12-30 20:40:39', '2022-12-30 20:40:39'),
(813, 'Sites', 'Added', 'Added New Site with name: Swarovski Oxford St W1C 1JE, id: 113, of client: Secure FM LTD', '25', '24', '2022-12-30 20:42:01', '2022-12-30 20:42:01'),
(814, 'Sites', 'Added', 'Added New Site with name: Tesco Middleton Langley 6243 M24 5RA, id: 114, of client: Secure FM LTD', '25', '24', '2022-12-30 20:42:59', '2022-12-30 20:42:59'),
(815, 'Sites', 'Added', 'Added New Site with name: Barclays Radbroke Hall Knutsford WA16 9EU, id: 115, of client: Secure FM LTD', '25', '24', '2022-12-30 20:45:33', '2022-12-30 20:45:33'),
(816, 'Sites', 'Added', 'Added New Site with name: Tesco Rochdale 3101 OL11 3ER, id: 116, of client: Secure FM LTD', '25', '24', '2022-12-30 20:47:27', '2022-12-30 20:47:27'),
(817, 'Sites', 'Added', 'Added New Site with name: Pets At Home Wolverhampton WV2 4SJ, id: 117, of client: Secure FM LTD', '25', '24', '2022-12-30 20:49:17', '2022-12-30 20:49:17'),
(818, 'Sites', 'Added', 'Added New Site with name: Dunelm Stockport St Mary\'s Way SK1 2HU, id: 118, of client: Secure FM LTD', '25', '24', '2022-12-30 20:50:49', '2022-12-30 20:50:49'),
(819, 'Staff', 'Added', 'Added a staff with name: SULTAN MAHMOOD AHMED BEGUM, id: 115', '25', '24', '2022-12-30 20:52:52', '2022-12-30 20:52:52'),
(820, 'Staff', 'Added', 'Added a staff with name: ZEB AURANG, id: 116', '25', '24', '2022-12-30 20:54:19', '2022-12-30 20:54:19'),
(821, 'Staff', 'Added', 'Added a staff with name: FAIZAN MALIK, id: 117', '25', '24', '2022-12-30 20:56:17', '2022-12-30 20:56:17'),
(822, 'Staff', 'Added', 'Added a staff with name: OSMAN ELSHEIKH, id: 118', '25', '24', '2022-12-30 20:57:52', '2022-12-30 20:57:52'),
(823, 'Staff', 'Added', 'Added a staff with name: WAQAR ALI AKHTAR, id: 119', '25', '24', '2022-12-30 20:59:44', '2022-12-30 20:59:44'),
(824, 'Staff', 'Added', 'Added a staff with name: ABOLFAZL GHADERY, id: 120', '25', '24', '2022-12-30 21:01:27', '2022-12-30 21:01:27'),
(825, 'Staff', 'Added', 'Added a staff with name: ABOLFAZL GHADERY, id: 121', '25', '24', '2022-12-30 21:02:24', '2022-12-30 21:02:24'),
(826, 'Staff', 'Added', 'Added a staff with name: AAMER SHARIF, id: 122', '25', '24', '2022-12-30 21:11:10', '2022-12-30 21:11:10'),
(827, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD QASIM AKRAM, id: 123', '25', '24', '2022-12-30 21:14:01', '2022-12-30 21:14:01'),
(828, 'Staff', 'Added', 'Added a staff with name: JAFEER IQBAL, id: 124', '25', '24', '2022-12-30 21:15:53', '2022-12-30 21:15:53'),
(829, 'Staff', 'Added', 'Added a staff with name: UMAR IJAZ, id: 125', '25', '24', '2022-12-30 21:18:28', '2022-12-30 21:18:28'),
(830, 'Staff', 'Added', 'Added a staff with name: ANKUSH DHUNNA, id: 126', '25', '24', '2022-12-30 21:20:37', '2022-12-30 21:20:37'),
(831, 'Staff', 'Added', 'Added a staff with name: AMAR AHMAD, id: 127', '25', '24', '2022-12-30 21:23:51', '2022-12-30 21:23:51'),
(832, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD NAWAZ, id: 128', '25', '24', '2022-12-30 21:31:23', '2022-12-30 21:31:23'),
(833, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AWAIS, id: 129', '25', '24', '2022-12-30 21:35:39', '2022-12-30 21:35:39'),
(834, 'Staff', 'Added', 'Added a staff with name: ILYAS ALI, id: 130', '25', '24', '2022-12-30 21:38:19', '2022-12-30 21:38:19'),
(835, 'Staff', 'Added', 'Added a staff with name: JAWAD ANWAR, id: 131', '25', '24', '2022-12-30 21:53:07', '2022-12-30 21:53:07'),
(836, 'Staff', 'Added', 'Added a staff with name: DEEPIKA, id: 132', '25', '24', '2022-12-30 21:54:47', '2022-12-30 21:54:47'),
(837, 'Staff', 'Added', 'Added a staff with name: SHAHWAIZ ALI, id: 133', '25', '24', '2022-12-30 21:57:12', '2022-12-30 21:57:12'),
(838, 'Staff', 'Added', 'Added a staff with name: VISHNU VARDHAN REDDY VUNDELA, id: 134', '25', '24', '2022-12-30 21:59:03', '2022-12-30 21:59:03'),
(839, 'Staff', 'Added', 'Added a staff with name: WAHID MEHMMOOD, id: 135', '25', '24', '2022-12-30 22:00:40', '2022-12-30 22:00:40'),
(840, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Chorley Ackhurst Ind Extra PR7 1NW, on week: 31/10/2022', '25', '24', '2022-12-30 22:03:32', '2022-12-30 22:03:32'),
(841, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Hounslow - Wilko Hounslow TW3 1ES, on week: 31/10/2022', '25', '24', '2022-12-30 22:06:08', '2022-12-30 22:06:08'),
(842, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 31/10/2022', '25', '24', '2022-12-30 22:08:38', '2022-12-30 22:08:38'),
(843, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Shaw 3253 OL2 8NHShift Week : 31/10/2022, Monitoring Id: 133', '25', '24', '2022-12-30 22:09:25', '2022-12-30 22:09:25'),
(844, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Shaw 3253 OL2 8NHShift Week : 31/10/2022, Monitoring Id: 133', '25', '24', '2022-12-30 22:09:50', '2022-12-30 22:09:50'),
(845, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Shaw 3253 OL2 8NHShift Week : 31/10/2022, Monitoring Id: 133', '25', '24', '2022-12-30 22:10:14', '2022-12-30 22:10:14'),
(846, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Tulketh Mill Preston Express 6384 (L) PR2 2BT, on week: 31/10/2022', '25', '24', '2022-12-30 22:12:24', '2022-12-30 22:12:24'),
(847, 'Monitoring', 'Added', 'Added Monitoring of Site: Currys Highgate Unit 2, Apex Retail Park, 1 Upper Conybere St, Birmingham B12 0EB, on week: 31/10/2022', '25', '24', '2022-12-30 22:13:42', '2022-12-30 22:13:42'),
(848, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 31/10/2022', '25', '24', '2022-12-30 22:15:42', '2022-12-30 22:15:42'),
(849, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UNShift Week : 31/10/2022, Monitoring Id: 136', '25', '24', '2022-12-30 22:16:41', '2022-12-30 22:16:41'),
(850, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Tulketh Mill Preston Express 6384 (L) PR2 2BTShift Week : 31/10/2022, Monitoring Id: 134', '25', '24', '2022-12-30 22:17:38', '2022-12-30 22:17:38'),
(851, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Tulketh Mill Preston Express 6384 (L) PR2 2BTShift Week : 31/10/2022, Monitoring Id: 134', '25', '24', '2022-12-30 22:18:02', '2022-12-30 22:18:02'),
(852, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Tesco Tulketh Mill Preston Express 6384 (L) PR2 2BTShift Week : 31/10/2022, Monitoring Id: 134', '25', '24', '2022-12-30 22:18:26', '2022-12-30 22:18:26'),
(853, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Sutton in Surrey 78-82 High St SM1 1EZ, on week: 31/10/2022', '25', '24', '2022-12-30 22:22:43', '2022-12-30 22:22:43'),
(854, 'Monitoring', 'Added', 'Added Monitoring of Site: Ralph Lauren Braintree Unit 25 Charter Way, Braintree CM77 8YH, on week: 31/10/2022', '25', '24', '2022-12-30 22:24:40', '2022-12-30 22:24:40'),
(855, 'Monitoring', 'Added', 'Added Monitoring of Site: Asda Oldham Huddersfield Rd, (SIN:014116)Oldham OL4 2RB, on week: 31/10/2022', '25', '24', '2022-12-30 22:26:48', '2022-12-30 22:26:48'),
(856, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Asda Oldham Huddersfield Rd, (SIN:014116)Oldham OL4 2RBShift Week : 31/10/2022, Monitoring Id: 139', '25', '24', '2022-12-30 22:29:54', '2022-12-30 22:29:54'),
(857, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Asda Oldham Huddersfield Rd, (SIN:014116)Oldham OL4 2RBShift Week : 31/10/2022, Monitoring Id: 139', '25', '24', '2022-12-30 22:30:10', '2022-12-30 22:30:10'),
(858, 'Staff', 'Updated', 'Updated a staff with name: , id: 121', '25', '24', '2022-12-30 22:33:02', '2022-12-30 22:33:02'),
(859, 'Staff', 'Updated', 'Updated a staff with name: , id: 81', '25', '24', '2022-12-30 22:34:49', '2022-12-30 22:34:49'),
(860, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 31/10/2022', '25', '24', '2022-12-30 22:39:34', '2022-12-30 22:39:34'),
(861, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 31/10/2022', '25', '24', '2022-12-30 22:41:54', '2022-12-30 22:41:54'),
(862, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 31/10/2022', '25', '24', '2022-12-30 22:46:06', '2022-12-30 22:46:06'),
(863, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NAShift Week : 31/10/2022, Monitoring Id: 141', '25', '24', '2022-12-30 22:47:11', '2022-12-30 22:47:11'),
(864, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 31/10/2022', '25', '24', '2022-12-30 22:48:47', '2022-12-30 22:48:47'),
(865, 'Monitoring', 'Added', 'Added Monitoring of Site: Currys Castle Vale Unit 3-4, Castle Vale Retail Park, Chester Rd, Birmingham B35 6HB, on week: 31/10/2022', '25', '24', '2022-12-30 22:50:43', '2022-12-30 22:50:43'),
(866, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 31/10/2022', '25', '24', '2022-12-30 22:56:47', '2022-12-30 22:56:47'),
(867, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 22:58:30', '2022-12-30 22:58:30'),
(868, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 22:59:05', '2022-12-30 22:59:05'),
(869, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 22:59:28', '2022-12-30 22:59:28'),
(870, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 22:59:28', '2022-12-30 22:59:28'),
(871, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 22:59:55', '2022-12-30 22:59:55'),
(872, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:00:48', '2022-12-30 23:00:48'),
(873, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:01:21', '2022-12-30 23:01:21'),
(874, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:01:58', '2022-12-30 23:01:58'),
(875, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:02:57', '2022-12-30 23:02:57'),
(876, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:03:28', '2022-12-30 23:03:28'),
(877, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DEShift Week : 31/10/2022, Monitoring Id: 143', '25', '24', '2022-12-30 23:04:02', '2022-12-30 23:04:02'),
(878, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Anerley Croydon Road SE20 7SX, on week: 31/10/2022', '25', '24', '2022-12-30 23:08:11', '2022-12-30 23:08:11'),
(879, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Wilko Sutton in Surrey 78-82 High St SM1 1EZShift Week : 31/10/2022, Monitoring Id: 137', '25', '24', '2022-12-30 23:09:20', '2022-12-30 23:09:20'),
(880, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Anerley Croydon Road SE20 7SXShift Week : 31/10/2022, Monitoring Id: 144', '25', '24', '2022-12-30 23:10:57', '2022-12-30 23:10:57'),
(881, 'Monitoring', 'Added', 'Added Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BU, on week: 31/10/2022', '25', '24', '2022-12-30 23:16:11', '2022-12-30 23:16:11'),
(882, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQ, on week: 31/10/2022', '25', '24', '2022-12-30 23:24:39', '2022-12-30 23:24:39'),
(883, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 31/10/2022, Monitoring Id: 146', '25', '24', '2022-12-30 23:25:26', '2022-12-30 23:25:26'),
(884, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 31/10/2022, Monitoring Id: 146', '25', '24', '2022-12-30 23:25:46', '2022-12-30 23:25:46'),
(885, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 31/10/2022, Monitoring Id: 146', '25', '24', '2022-12-30 23:25:59', '2022-12-30 23:25:59'),
(886, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQShift Week : 31/10/2022, Monitoring Id: 146', '25', '24', '2022-12-30 23:26:19', '2022-12-30 23:26:19'),
(887, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi manchester arndale M1 1WR, on week: 31/10/2022', '25', '24', '2022-12-30 23:27:54', '2022-12-30 23:27:54'),
(888, 'Monitoring', 'Added', 'Added Monitoring of Site: Midcounties coop New Invention, 10 The Square, New Invention, Willenhall, WV12 5EA, on week: 31/10/2022', '25', '24', '2022-12-30 23:29:58', '2022-12-30 23:29:58'),
(889, 'Monitoring', 'Added', 'Added Monitoring of Site: Midcounties Coop Lichfield Road  WS4 1PS, on week: 31/10/2022', '25', '24', '2022-12-30 23:31:18', '2022-12-30 23:31:18'),
(890, 'Monitoring', 'Added', 'Added Monitoring of Site: Midcounties Coop Cheslyn Hay WS6 7AD, on week: 31/10/2022', '25', '24', '2022-12-30 23:32:06', '2022-12-30 23:32:06'),
(891, 'Monitoring', 'Added', 'Added Monitoring of Site: Pirate Hackney Wick 13 Rothbury Road E9 5HA, on week: 31/10/2022', '25', '24', '2022-12-30 23:34:06', '2022-12-30 23:34:06'),
(892, 'Monitoring', 'Added', 'Added Monitoring of Site: Hobbycraft Basildon Westgate Park Fodderwick SS14 1WP, on week: 31/10/2022', '25', '24', '2022-12-30 23:36:52', '2022-12-30 23:36:52'),
(893, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, on week: 31/10/2022', '25', '24', '2022-12-30 23:38:41', '2022-12-30 23:38:41'),
(894, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Thamesmead Unit E, Cannon retail park SE28 8RD, on week: 31/10/2022', '25', '24', '2022-12-30 23:39:56', '2022-12-30 23:39:56'),
(895, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 31/10/2022', '25', '24', '2022-12-31 19:07:04', '2022-12-31 19:07:04');
INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(896, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 31/10/2022', '25', '24', '2022-12-31 19:09:26', '2022-12-31 19:09:26'),
(897, 'Monitoring', 'Added', 'Added Monitoring of Site: Swarovski Oxford St W1C 1JE, on week: 31/10/2022', '25', '24', '2022-12-31 19:14:14', '2022-12-31 19:14:14'),
(898, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Swarovski Oxford St W1C 1JEShift Week : 31/10/2022, Monitoring Id: 157', '25', '24', '2022-12-31 19:14:37', '2022-12-31 19:14:37'),
(899, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Middleton Langley 6243 M24 5RA, on week: 31/10/2022', '25', '24', '2022-12-31 19:16:20', '2022-12-31 19:16:20'),
(900, 'Monitoring', 'Added', 'Added Monitoring of Site: Barclays Radbroke Hall Knutsford WA16 9EU, on week: 31/10/2022', '25', '24', '2022-12-31 19:18:25', '2022-12-31 19:18:25'),
(901, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 31/10/2022', '25', '24', '2022-12-31 19:20:19', '2022-12-31 19:20:19'),
(902, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Rochdale 3101 OL11 3ER, on week: 31/10/2022', '25', '24', '2022-12-31 19:22:09', '2022-12-31 19:22:09'),
(903, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets At Home Wolverhampton WV2 4SJ, on week: 31/10/2022', '25', '24', '2022-12-31 19:29:37', '2022-12-31 19:29:37'),
(904, 'Monitoring', 'Added', 'Added Monitoring of Site: Dunelm Stockport St Mary\'s Way SK1 2HU, on week: 31/10/2022', '25', '24', '2022-12-31 19:30:51', '2022-12-31 19:30:51'),
(905, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Midcounties Coop Cheslyn Hay WS6 7ADShift Week : 31/10/2022, Monitoring Id: 150', '25', '24', '2022-12-31 19:34:33', '2022-12-31 19:34:33'),
(906, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SBShift Week : 31/10/2022, Monitoring Id: 153', '25', '24', '2022-12-31 19:35:29', '2022-12-31 19:35:29'),
(907, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Pets at Home Thamesmead Unit E, Cannon retail park SE28 8RDShift Week : 31/10/2022, Monitoring Id: 154', '25', '24', '2022-12-31 19:36:11', '2022-12-31 19:36:11'),
(908, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SBShift Week : 31/10/2022, Monitoring Id: 155', '25', '24', '2022-12-31 19:37:17', '2022-12-31 19:37:17'),
(909, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SBShift Week : 31/10/2022, Monitoring Id: 155', '25', '24', '2022-12-31 19:37:43', '2022-12-31 19:37:43'),
(910, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Barclays Radbroke Hall Knutsford WA16 9EUShift Week : 31/10/2022, Monitoring Id: 159', '25', '24', '2022-12-31 19:39:15', '2022-12-31 19:39:15'),
(911, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Barclays Radbroke Hall Knutsford WA16 9EUShift Week : 31/10/2022, Monitoring Id: 159', '25', '24', '2022-12-31 19:39:32', '2022-12-31 19:39:32'),
(912, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Barclays Radbroke Hall Knutsford WA16 9EUShift Week : 31/10/2022, Monitoring Id: 159', '25', '24', '2022-12-31 19:40:09', '2022-12-31 19:40:09'),
(913, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Barclays Radbroke Hall Knutsford WA16 9EUShift Week : 31/10/2022, Monitoring Id: 159', '25', '24', '2022-12-31 19:40:37', '2022-12-31 19:40:37'),
(914, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Pets At Home Wolverhampton WV2 4SJShift Week : 31/10/2022, Monitoring Id: 162', '25', '24', '2022-12-31 19:41:45', '2022-12-31 19:41:45'),
(915, 'Sites', 'Added', 'Added New Site with name: Pets at Home Hendon NW9 7TH, id: 119, of client: Secure FM LTD', '25', '24', '2022-12-31 20:32:25', '2022-12-31 20:32:25'),
(916, 'Sites', 'Added', 'Added New Site with name: Odeon Manchester AMC M3 4EN, id: 120, of client: Secure FM LTD', '25', '24', '2022-12-31 20:33:18', '2022-12-31 20:33:18'),
(917, 'Sites', 'Added', 'Added New Site with name: Wilko Leigh WN7 1AB, id: 121, of client: Secure FM LTD', '25', '24', '2022-12-31 20:34:28', '2022-12-31 20:34:28'),
(918, 'Sites', 'Deleted', 'Deleted a site, name: Aldi Stockport Newbridge Lane SK1 2NA, id: 100, of client: Secure FM LTD', '25', '24', '2022-12-31 20:42:47', '2022-12-31 20:42:47'),
(919, 'Sites', 'Added', 'Added New Site with name: Midcounties Coop Kineton 486 CV35 0JS, id: 122, of client: Secure FM LTD', '25', '24', '2022-12-31 20:46:23', '2022-12-31 20:46:23'),
(920, 'Sites', 'Added', 'Added New Site with name: Dunelm Enfield EN1 3RR, id: 123, of client: Secure FM LTD', '25', '24', '2022-12-31 20:48:24', '2022-12-31 20:48:24'),
(921, 'Sites', 'Added', 'Added New Site with name: Primark walsall WS1 1QA, id: 124, of client: Secure FM LTD', '25', '24', '2022-12-31 20:59:59', '2022-12-31 20:59:59'),
(922, 'Sites', 'Added', 'Added New Site with name: Waitrose - Stratford Upon Avon Rosebird Centre, Shipston Road The, Stratford-upon-Avon CV37 8LU, id: 125, of client: Secure FM LTD', '25', '24', '2022-12-31 21:07:00', '2022-12-31 21:07:00'),
(923, 'Sites', 'Added', 'Added New Site with name: Halfords Wolverhampton Fox Lane 013370 WV1 1PB, id: 126, of client: Secure FM LTD', '25', '24', '2022-12-31 21:08:35', '2022-12-31 21:08:35'),
(924, 'Sites', 'Added', 'Added New Site with name: Waitrose 677 Sanderstead CR2 9LE, id: 127, of client: Secure FM LTD', '25', '24', '2022-12-31 21:14:05', '2022-12-31 21:14:05'),
(925, 'Sites', 'Added', 'Added New Site with name: Tesco Rochdale Whitworth Road Express OL12 6ER, id: 128, of client: Secure FM LTD', '25', '24', '2022-12-31 21:14:55', '2022-12-31 21:14:55'),
(926, 'Sites', 'Added', 'Added New Site with name: Aldi Pitsea (SIN:024069) SS13 3DU, id: 129, of client: Secure FM LTD', '25', '24', '2022-12-31 21:41:40', '2022-12-31 21:41:40'),
(927, 'Sites', 'Added', 'Added New Site with name: Wilko Cathedral Lane Shopping Centre, Broadgate, Coventry CV1 1LL (B), id: 130, of client: Secure FM LTD', '25', '24', '2022-12-31 21:49:22', '2022-12-31 21:49:22'),
(928, 'Sites', 'Added', 'Added New Site with name: Cineworld Telford TF3 4HS, id: 131, of client: Secure FM LTD', '25', '24', '2022-12-31 21:50:42', '2022-12-31 21:50:42'),
(929, 'Staff', 'Added', 'Added a staff with name: BABAR HUSSAIN, id: 136', '25', '24', '2022-12-31 21:54:54', '2022-12-31 21:54:54'),
(930, 'Staff', 'Added', 'Added a staff with name: ASMA IQBAL, id: 137', '25', '24', '2022-12-31 21:56:49', '2022-12-31 21:56:49'),
(931, 'Staff', 'Added', 'Added a staff with name: ABDUL RAZAQ, id: 138', '25', '24', '2022-12-31 21:59:16', '2022-12-31 21:59:16'),
(932, 'Staff', 'Added', 'Added a staff with name: EYHAB GOUDA, id: 139', '25', '24', '2022-12-31 22:07:02', '2022-12-31 22:07:02'),
(933, 'Staff', 'Added', 'Added a staff with name: TAIMOOR AHMED, id: 140', '25', '24', '2022-12-31 22:09:58', '2022-12-31 22:09:58'),
(934, 'Staff', 'Added', 'Added a staff with name: SOURAV NAHAR, id: 141', '25', '24', '2022-12-31 22:12:05', '2022-12-31 22:12:05'),
(935, 'Staff', 'Added', 'Added a staff with name: SHAHEER AHMAD, id: 142', '25', '24', '2022-12-31 22:15:47', '2022-12-31 22:15:47'),
(936, 'Staff', 'Added', 'Added a staff with name: AMINUL ISLAM FAHIM, id: 143', '25', '24', '2022-12-31 22:17:25', '2022-12-31 22:17:25'),
(937, 'Staff', 'Added', 'Added a staff with name: ABU HURARA HUSSAIN, id: 144', '25', '24', '2022-12-31 22:19:57', '2022-12-31 22:19:57'),
(938, 'Staff', 'Added', 'Added a staff with name: MOHAMMAD RAFIQ, id: 145', '25', '24', '2022-12-31 22:23:57', '2022-12-31 22:23:57'),
(939, 'Staff', 'Added', 'Added a staff with name: ZAIN ALI, id: 146', '25', '24', '2022-12-31 22:25:15', '2022-12-31 22:25:15'),
(940, 'Staff', 'Added', 'Added a staff with name: ZIA ZUBAIR, id: 147', '25', '24', '2022-12-31 22:26:36', '2022-12-31 22:26:36'),
(941, 'Staff', 'Added', 'Added a staff with name: IBRAR HUSSAIN, id: 148', '25', '24', '2022-12-31 22:28:03', '2022-12-31 22:28:03'),
(942, 'Staff', 'Added', 'Added a staff with name: TAUQEER AHMED, id: 149', '25', '24', '2022-12-31 22:29:42', '2022-12-31 22:29:42'),
(943, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 07/11/2022', '25', '24', '2022-12-31 23:25:48', '2022-12-31 23:25:48'),
(944, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 07/11/2022', '25', '24', '2022-12-31 23:26:56', '2022-12-31 23:26:56'),
(945, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Hendon NW9 7TH, on week: 07/11/2022', '25', '24', '2023-01-01 15:31:46', '2023-01-01 15:31:46'),
(946, 'Monitoring', 'Added', 'Added Monitoring of Site: Odeon Manchester AMC M3 4EN, on week: 07/11/2022', '25', '24', '2023-01-01 20:29:35', '2023-01-01 20:29:35'),
(947, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Leigh WN7 1AB, on week: 07/11/2022', '25', '24', '2023-01-01 22:00:28', '2023-01-01 22:00:28'),
(948, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 07/11/2022', '25', '24', '2023-01-01 22:02:18', '2023-01-01 22:02:18'),
(949, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD AQEEL, id: 150', '25', '24', '2023-01-01 22:06:59', '2023-01-01 22:06:59'),
(950, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Chorley Ackhurst Ind Extra PR7 1NW, on week: 07/11/2022', '25', '24', '2023-01-01 22:16:28', '2023-01-01 22:16:28'),
(951, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 31/10/2022', '25', '24', '2023-01-01 22:21:28', '2023-01-01 22:21:28'),
(952, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Tesco Chorley Ackhurst Ind Extra PR7 1NW, on week: 07/11/2022', '25', '24', '2023-01-01 22:22:53', '2023-01-01 22:22:53'),
(953, 'Sites', 'Added', 'Added New Site with name: Tesco Preston Friargate PR1 2ED, id: 132, of client: Secure FM LTD', '25', '24', '2023-01-01 22:25:50', '2023-01-01 22:25:50'),
(954, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Preston Friargate PR1 2ED, on week: 07/11/2022', '25', '24', '2023-01-01 22:27:41', '2023-01-01 22:27:41'),
(955, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 07/11/2022', '25', '24', '2023-01-01 22:31:41', '2023-01-01 22:31:41'),
(956, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 07/11/2022', '25', '24', '2023-01-01 22:42:47', '2023-01-01 22:42:47'),
(957, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 07/11/2022', '25', '24', '2023-01-01 22:44:10', '2023-01-01 22:44:10'),
(958, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, on week: 07/11/2022', '25', '24', '2023-01-01 22:46:23', '2023-01-01 22:46:23'),
(959, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 07/11/2022', '25', '24', '2023-01-01 22:51:59', '2023-01-01 22:51:59'),
(960, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 07/11/2022', '25', '24', '2023-01-01 22:58:33', '2023-01-01 22:58:33'),
(961, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NAShift Week : 07/11/2022, Monitoring Id: 177', '25', '24', '2023-01-01 23:00:17', '2023-01-01 23:00:17'),
(962, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 07/11/2022', '25', '24', '2023-01-02 23:02:00', '2023-01-02 23:02:00'),
(963, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 07/11/2022', '25', '24', '2023-01-02 23:06:31', '2023-01-02 23:06:31'),
(964, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQ, on week: 07/11/2022', '25', '24', '2023-01-02 23:10:12', '2023-01-02 23:10:12'),
(965, 'Monitoring', 'Added', 'Added Monitoring of Site: Pirate Hackney Wick 13 Rothbury Road E9 5HA, on week: 07/11/2022', '25', '24', '2023-01-02 23:13:19', '2023-01-02 23:13:19'),
(966, 'Monitoring', 'Added', 'Added Monitoring of Site: Midcounties Coop Kineton 486 CV35 0JS, on week: 07/11/2022', '25', '24', '2023-01-02 23:14:43', '2023-01-02 23:14:43'),
(967, 'Monitoring', 'Added', 'Added Monitoring of Site: Dunelm Enfield EN1 3RR, on week: 07/11/2022', '25', '24', '2023-01-02 23:16:11', '2023-01-02 23:16:11'),
(968, 'Monitoring', 'Added', 'Added Monitoring of Site: Primark walsall WS1 1QA, on week: 07/11/2022', '25', '24', '2023-01-02 23:18:06', '2023-01-02 23:18:06'),
(969, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 07/11/2022', '25', '24', '2023-01-04 21:19:15', '2023-01-04 21:19:15'),
(970, 'Monitoring', 'Added', 'Added Monitoring of Site: Waitrose - Stratford Upon Avon Rosebird Centre, Shipston Road The, Stratford-upon-Avon CV37 8LU, on week: 07/11/2022', '25', '24', '2023-01-04 21:30:23', '2023-01-04 21:30:23'),
(971, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley PR7 1DR, on week: 07/11/2022', '25', '24', '2023-01-04 22:20:10', '2023-01-04 22:20:10'),
(972, 'Sites', 'Added', 'Added New Site with name: Wilko Preston - Friargate PR1 2EJ, id: 133, of client: Secure FM LTD', '25', '24', '2023-01-04 22:24:23', '2023-01-04 22:24:23'),
(973, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Preston - Friargate PR1 2EJ, on week: 07/11/2022', '25', '24', '2023-01-04 22:27:13', '2023-01-04 22:27:13'),
(974, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 07/11/2022', '25', '24', '2023-01-04 22:35:52', '2023-01-04 22:35:52'),
(975, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Wolverhampton Fox Lane 013370 WV1 1PB, on week: 07/11/2022', '25', '24', '2023-01-04 22:38:54', '2023-01-04 22:38:54'),
(976, 'Monitoring', 'Added', 'Added Monitoring of Site: Waitrose 677 Sanderstead CR2 9LE, on week: 07/11/2022', '25', '24', '2023-01-04 22:40:54', '2023-01-04 22:40:54'),
(977, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Rochdale Whitworth Road Express OL12 6ER, on week: 07/11/2022', '25', '24', '2023-01-04 22:42:59', '2023-01-04 22:42:59'),
(978, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Pitsea (SIN:024069) SS13 3DU, on week: 07/11/2022', '25', '24', '2023-01-04 22:43:55', '2023-01-04 22:43:55'),
(979, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Cathedral Lane Shopping Centre, Broadgate, Coventry CV1 1LL (B), on week: 07/11/2022', '25', '24', '2023-01-04 22:44:51', '2023-01-04 22:44:51'),
(980, 'Monitoring', 'Added', 'Added Monitoring of Site: Cineworld Telford TF3 4HS, on week: 07/11/2022', '25', '24', '2023-01-04 22:46:03', '2023-01-04 22:46:03'),
(981, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 14/11/2022', '25', '24', '2023-01-04 22:55:20', '2023-01-04 22:55:20'),
(982, 'Monitoring', 'Added', 'Added Monitoring of Site: Northface Cheshire Oaks Outlet Kinsey Rd CH65 9JJ, on week: 14/11/2022', '25', '24', '2023-01-04 22:59:28', '2023-01-04 22:59:28'),
(983, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 07/11/2022', '25', '24', '2023-01-04 23:02:45', '2023-01-04 23:02:45'),
(984, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Hendon NW9 7TH, on week: 14/11/2022', '25', '24', '2023-01-04 23:04:20', '2023-01-04 23:04:20'),
(985, 'Monitoring', 'Updated', 'Updated Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 14/11/2022', '25', '24', '2023-01-04 23:04:53', '2023-01-04 23:04:53'),
(986, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Leigh WN7 1AB, on week: 14/11/2022', '25', '24', '2023-01-04 23:09:21', '2023-01-04 23:09:21'),
(987, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Wilko Leigh WN7 1AB, on week: 14/11/2022', '25', '24', '2023-01-04 23:11:05', '2023-01-04 23:11:05'),
(988, 'Staff', 'Added', 'Added a staff with name: SADIA FAYYAZ, id: 151', '25', '24', '2023-01-04 23:14:50', '2023-01-04 23:14:50'),
(989, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Chorley Ackhurst Ind Extra PR7 1NW, on week: 14/11/2022', '25', '24', '2023-01-04 23:19:37', '2023-01-04 23:19:37'),
(990, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 14/11/2022', '25', '24', '2023-01-04 23:23:06', '2023-01-04 23:23:06'),
(991, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 14/11/2022', '25', '24', '2023-01-04 23:25:29', '2023-01-04 23:25:29'),
(992, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 14/11/2022', '25', '24', '2023-01-04 23:26:52', '2023-01-04 23:26:52'),
(993, 'Sites', 'Added', 'Added New Site with name: Wilko Stratford E15 1NG, id: 134, of client: Secure FM LTD', '25', '24', '2023-01-05 22:09:03', '2023-01-05 22:09:03'),
(994, 'Sites', 'Added', 'Added New Site with name: Primark Cambridge 62-74 Burleigh St, Cambridge CB1 1DJ, id: 135, of client: Secure FM LTD', '25', '24', '2023-01-05 22:14:17', '2023-01-05 22:14:17'),
(995, 'Staff', 'Added', 'Added a staff with name: JAYAMURUGAN SEKAR, id: 152', '25', '24', '2023-01-05 22:15:38', '2023-01-05 22:15:38'),
(996, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Stratford E15 1NG, on week: 14/11/2022', '25', '24', '2023-01-05 22:18:34', '2023-01-05 22:18:34'),
(997, 'Monitoring', 'Added', 'Added Monitoring of Site: Primark Cambridge 62-74 Burleigh St, Cambridge CB1 1DJ, on week: 14/11/2022', '25', '24', '2023-01-05 22:19:25', '2023-01-05 22:19:25'),
(998, 'Sites', 'Added', 'Added New Site with name: Aldi Abbey lane LE4 0BR, id: 136, of client: Secure FM LTD', '25', '24', '2023-01-05 22:21:27', '2023-01-05 22:21:27'),
(999, 'Sites', 'Added', 'Added New Site with name: Ralph Lauren 108 Cheshire Oaks Way, Ellesmere Port CH65 9JJ, id: 137, of client: Secure FM LTD', '25', '24', '2023-01-05 22:24:39', '2023-01-05 22:24:39'),
(1000, 'Sites', 'Added', 'Added New Site with name: Waitrose 202 Banstead SM7 2NB, id: 138, of client: Secure FM LTD', '25', '24', '2023-01-05 22:26:16', '2023-01-05 22:26:16'),
(1001, 'Sites', 'Added', 'Added New Site with name: Wilko Kensington High Street - Wilko Kensington High Street W8 7RG, id: 139, of client: Secure FM LTD', '25', '24', '2023-01-05 22:37:44', '2023-01-05 22:37:44'),
(1002, 'Sites', 'Added', 'Added New Site with name: D H L Express (UK) Ltd, Unit 1 Portal Way, Liverpool, Merseyside, England, L11 0JA, id: 140, of client: Secure FM LTD', '25', '24', '2023-01-05 22:39:16', '2023-01-05 22:39:16'),
(1003, 'Sites', 'Added', 'Added New Site with name: Aldi Chingford Cork Tree RP 194 5 Cork Tree Way, London E4 8JA, id: 141, of client: Secure FM LTD', '25', '24', '2023-01-05 22:40:35', '2023-01-05 22:40:35'),
(1004, 'Sites', 'Added', 'Added New Site with name: Aldi Dagenham Retail Park Merrielands Cres 103 Rp, Unit 1 Merrielands Cres, Dagenham RM9 6SJ, id: 142, of client: Secure FM LTD', '25', '24', '2023-01-05 22:42:45', '2023-01-05 22:42:45'),
(1005, 'Sites', 'Added', 'Added New Site with name: Wilko Ilford, 2-4 Balfour Rd, IG1 4JF, id: 143, of client: Secure FM LTD', '25', '24', '2023-01-05 22:44:13', '2023-01-05 22:44:13'),
(1006, 'Sites', 'Added', 'Added New Site with name: Tesco Bispham Blackpool (021373) FY2 0AS, id: 144, of client: Secure FM LTD', '25', '24', '2023-01-05 22:45:34', '2023-01-05 22:45:34'),
(1007, 'Sites', 'Added', 'Added New Site with name: Primrose Gardens Chorley PR7 2EE, id: 145, of client: Secure FM LTD', '25', '24', '2023-01-05 22:47:48', '2023-01-05 22:47:48'),
(1008, 'Sites', 'Added', 'Added New Site with name: Primark Bolton BL1 1EA, id: 146, of client: Secure FM LTD', '25', '24', '2023-01-05 22:48:56', '2023-01-05 22:48:56'),
(1009, 'Sites', 'Added', 'Added New Site with name: Tesco Ashton Under Lyne Oldham Road Express 6661 397 Oldham Rd, Ashton-under-Lyne OL7 9NU, id: 147, of client: Secure FM LTD', '25', '24', '2023-01-05 22:49:50', '2023-01-05 22:49:50'),
(1010, 'Staff', 'Added', 'Added a staff with name: MOHSIN NISAR, id: 153', '25', '24', '2023-01-05 23:20:55', '2023-01-05 23:20:55'),
(1011, 'Staff', 'Added', 'Added a staff with name: NAGALAKSHMI GOPIDESI, id: 154', '25', '24', '2023-01-05 23:22:45', '2023-01-05 23:22:45'),
(1012, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 14/11/2022', '25', '24', '2023-01-09 22:21:27', '2023-01-09 22:21:27'),
(1013, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Abbey lane LE4 0BR, on week: 14/11/2022', '25', '24', '2023-01-09 22:31:43', '2023-01-09 22:31:43'),
(1014, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 14/11/2022', '25', '24', '2023-01-09 22:37:03', '2023-01-09 22:37:03'),
(1015, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 14/11/2022', '25', '24', '2023-01-09 22:41:05', '2023-01-09 22:41:05'),
(1016, 'Staff', 'Added', 'Added a staff with name: SADIA KHAN, id: 155', '25', '24', '2023-01-09 23:07:26', '2023-01-09 23:07:26'),
(1017, 'Staff', 'Added', 'Added a staff with name: HAFIZ KHALID, id: 156', '25', '24', '2023-01-09 23:09:47', '2023-01-09 23:09:47'),
(1018, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD USMAN, id: 157', '25', '24', '2023-01-09 23:15:27', '2023-01-09 23:15:27'),
(1019, 'Staff', 'Added', 'Added a staff with name: FEROZ MOHAMMAD, id: 158', '25', '24', '2023-01-09 23:18:50', '2023-01-09 23:18:50'),
(1020, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester Woodgate LE3 5GH, on week: 14/11/2022', '25', '24', '2023-01-12 21:52:38', '2023-01-12 21:52:38'),
(1021, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 14/11/2022', '25', '24', '2023-01-12 22:05:53', '2023-01-12 22:05:53'),
(1022, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 14/11/2022', '25', '24', '2023-01-12 22:19:53', '2023-01-12 22:19:53'),
(1023, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 14/11/2022', '25', '24', '2023-01-12 22:38:09', '2023-01-12 22:38:09'),
(1024, 'Monitoring', 'Added', 'Added Monitoring of Site: Ralph Lauren 108 Cheshire Oaks Way, Ellesmere Port CH65 9JJ, on week: 14/11/2022', '25', '24', '2023-01-12 22:40:31', '2023-01-12 22:40:31'),
(1025, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 14/11/2022', '25', '24', '2023-01-12 22:45:59', '2023-01-12 22:45:59'),
(1026, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 14/11/2022', '25', '24', '2023-01-12 22:53:51', '2023-01-12 22:53:51'),
(1027, 'Staff', 'Added', 'Added a staff with name: ADNAN SOHAIL, id: 159', '18', '14', '2023-01-13 20:20:00', '2023-01-13 20:20:00'),
(1028, 'Monitoring', 'Added', 'Added Monitoring of Site: Waitrose 202 Banstead SM7 2NB, on week: 14/11/2022', '25', '24', '2023-01-13 21:42:04', '2023-01-13 21:42:04'),
(1029, 'Monitoring', 'Added', 'Added Monitoring of Site: Waitrose - Stratford Upon Avon Rosebird Centre, Shipston Road The, Stratford-upon-Avon CV37 8LU, on week: 14/11/2022', '25', '24', '2023-01-13 21:46:11', '2023-01-13 21:46:11'),
(1030, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Kensington High Street - Wilko Kensington High Street W8 7RG, on week: 14/11/2022', '25', '24', '2023-01-13 21:49:14', '2023-01-13 21:49:14'),
(1031, 'Monitoring', 'Added', 'Added Monitoring of Site: D H L Express (UK) Ltd, Unit 1 Portal Way, Liverpool, Merseyside, England, L11 0JA, on week: 14/11/2022', '25', '24', '2023-01-13 21:52:01', '2023-01-13 21:52:01'),
(1032, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Chingford Cork Tree RP 194 5 Cork Tree Way, London E4 8JA, on week: 14/11/2022', '25', '24', '2023-01-13 21:59:00', '2023-01-13 21:59:00'),
(1033, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Dagenham Retail Park Merrielands Cres 103 Rp, Unit 1 Merrielands Cres, Dagenham RM9 6SJ, on week: 14/11/2022', '25', '24', '2023-01-13 22:00:06', '2023-01-13 22:00:06'),
(1034, 'Monitoring', 'Added', 'Added Monitoring of Site: Hobbycraft Basildon Westgate Park Fodderwick SS14 1WP, on week: 14/11/2022', '25', '24', '2023-01-13 22:02:37', '2023-01-13 22:02:37'),
(1035, 'Staff', 'Added', 'Added a staff with name: SATTAR ABDUS, id: 160', '25', '24', '2023-01-13 22:32:00', '2023-01-13 22:32:00'),
(1036, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Ilford, 2-4 Balfour Rd, IG1 4JF, on week: 14/11/2022', '25', '24', '2023-01-13 22:36:11', '2023-01-13 22:36:11'),
(1037, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Bispham Blackpool (021373) FY2 0AS, on week: 14/11/2022', '25', '24', '2023-01-13 22:38:45', '2023-01-13 22:38:45'),
(1038, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley PR7 3HW, on week: 14/11/2022', '25', '24', '2023-01-13 22:52:42', '2023-01-13 22:52:42'),
(1039, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley PR7 2EE, on week: 14/11/2022', '25', '24', '2023-01-13 23:06:31', '2023-01-13 23:06:31'),
(1040, 'Staff', 'Added', 'Added a staff with name: KASHIF AHMAD BIBI, id: 161', '25', '24', '2023-01-13 23:14:44', '2023-01-13 23:14:44'),
(1041, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley PR7 1DR, on week: 14/11/2022', '25', '24', '2023-01-13 23:18:18', '2023-01-13 23:18:18'),
(1042, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 14/11/2022', '25', '24', '2023-01-13 23:20:26', '2023-01-13 23:20:26'),
(1043, 'Monitoring', 'Added', 'Added Monitoring of Site: Primark Bolton BL1 1EA, on week: 14/11/2022', '25', '24', '2023-01-13 23:21:34', '2023-01-13 23:21:34'),
(1044, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Ashton Under Lyne Oldham Road Express 6661 397 Oldham Rd, Ashton-under-Lyne OL7 9NU, on week: 14/11/2022', '25', '24', '2023-01-13 23:22:29', '2023-01-13 23:22:29'),
(1045, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 21/11/2022', '25', '24', '2023-01-16 20:43:26', '2023-01-16 20:43:26'),
(1046, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 21/11/2022', '25', '24', '2023-01-16 21:24:59', '2023-01-16 21:24:59'),
(1047, 'Staff', 'Added', 'Added a staff with name: SURYATEJA KANDIMALLA, id: 162', '25', '24', '2023-01-18 23:03:40', '2023-01-18 23:03:40'),
(1048, 'Staff', 'Added', 'Added a staff with name: ASHOK BELLALA, id: 163', '25', '24', '2023-01-18 23:59:49', '2023-01-18 23:59:49'),
(1049, 'Staff', 'Added', 'Added a staff with name: AMIER SHOKERI, id: 164', '25', '24', '2023-01-20 20:38:39', '2023-01-20 20:38:39'),
(1050, 'Staff', 'Added', 'Added a staff with name: MOHSIN JAMIL, id: 165', '25', '24', '2023-01-20 20:40:11', '2023-01-20 20:40:11'),
(1051, 'Staff', 'Added', 'Added a staff with name: ABUBAKAR MOHAMMAD, id: 166', '25', '24', '2023-01-20 20:43:08', '2023-01-20 20:43:08'),
(1052, 'Sites', 'Added', 'Added New Site with name: Pets at Home Charlton SE7 7TZ, id: 148, of client: Secure FM LTD', '25', '24', '2023-01-20 21:17:56', '2023-01-20 21:17:56'),
(1053, 'Sites', 'Added', 'Added New Site with name: Pets at Home Wimbledon SW17 0BW, id: 149, of client: Secure FM LTD', '25', '24', '2023-01-20 21:19:31', '2023-01-20 21:19:31'),
(1054, 'Sites', 'Added', 'Added New Site with name: Cineworld Runcorn Trident Park WA7 2FQ, id: 150, of client: Secure FM LTD', '25', '24', '2023-01-20 21:43:14', '2023-01-20 21:43:14'),
(1055, 'Sites', 'Added', 'Added New Site with name: Primark Oxford Street West 499-517 Oxford Street London W1K 7DA, id: 151, of client: Secure FM LTD', '25', '24', '2023-01-20 22:59:17', '2023-01-20 22:59:17'),
(1056, 'Sites', 'Added', 'Added New Site with name: HFS Hawley Cresc, Hawley Crescent, NW1 8NP, id: 152, of client: Secure FM LTD', '25', '24', '2023-01-20 23:00:25', '2023-01-20 23:00:25'),
(1057, 'Sites', 'Added', 'Added New Site with name: Tesco Blackpool Westclife FY3 7DR, id: 153, of client: Secure FM LTD', '25', '24', '2023-01-20 23:08:45', '2023-01-20 23:08:45'),
(1058, 'Sites', 'Added', 'Added New Site with name: Tesco Blackpool South Shore Express 3266 FY4 2JD, id: 154, of client: Secure FM LTD', '25', '24', '2023-01-20 23:09:41', '2023-01-20 23:09:41'),
(1059, 'Sites', 'Added', 'Added New Site with name: Pirate Manchester 1 Augustus St, Cheetham Hill, Manchester, M3 1HZ, id: 155, of client: Secure FM LTD', '25', '24', '2023-01-20 23:10:50', '2023-01-20 23:10:50'),
(1060, 'Sites', 'Added', 'Added New Site with name: H&M 660 Regent Street  W1B 3BR, id: 156, of client: Secure FM LTD', '25', '24', '2023-01-20 23:14:03', '2023-01-20 23:14:03'),
(1061, 'Sites', 'Updated', 'Updated a site, name: H&M 660 Regent Street  W1B 3BR, id: 156, of client: Secure FM LTD', '25', '24', '2023-01-20 23:14:52', '2023-01-20 23:14:52'),
(1062, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester Woodgate LE3 5GH, on week: 21/11/2022', '25', '24', '2023-01-20 23:17:08', '2023-01-20 23:17:08'),
(1063, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 21/11/2022', '25', '24', '2023-01-20 23:25:24', '2023-01-20 23:25:24'),
(1064, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQ, on week: 21/11/2022', '25', '24', '2023-01-20 23:29:21', '2023-01-20 23:29:21'),
(1065, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 21/11/2022', '25', '24', '2023-01-20 23:31:09', '2023-01-20 23:31:09'),
(1066, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 21/11/2022', '25', '24', '2023-01-20 23:38:53', '2023-01-20 23:38:53'),
(1067, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley PR7 3HW, on week: 21/11/2022', '25', '24', '2023-01-20 23:41:30', '2023-01-20 23:41:30'),
(1068, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 21/11/2022', '25', '24', '2023-01-20 23:44:16', '2023-01-20 23:44:16'),
(1069, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EFShift Week : 21/11/2022, Monitoring Id: 240', '25', '24', '2023-01-20 23:46:19', '2023-01-20 23:46:19'),
(1070, 'Monitoring', 'Updated', 'Updated Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 21/11/2022', '25', '24', '2023-01-20 23:47:28', '2023-01-20 23:47:28'),
(1071, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 21/11/2022', '25', '24', '2023-01-21 17:02:27', '2023-01-21 17:02:27'),
(1072, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 21/11/2022', '25', '24', '2023-01-21 17:13:50', '2023-01-21 17:13:50'),
(1073, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 21/11/2022', '25', '24', '2023-01-21 17:15:25', '2023-01-21 17:15:25'),
(1074, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 21/11/2022', '25', '24', '2023-01-21 18:52:15', '2023-01-21 18:52:15'),
(1075, 'Monitoring', 'Added', 'Added Monitoring of Site: Northface Cheshire Oaks Outlet Kinsey Rd CH65 9JJ, on week: 21/11/2022', '25', '24', '2023-01-21 19:00:12', '2023-01-21 19:00:12'),
(1076, 'Sites', 'Added', 'Added New Site with name: test site 2, id: 157, of client: demo client 1', '23', '23', '2023-01-21 22:02:50', '2023-01-21 22:02:50'),
(1077, 'Sites', 'Added', 'Added New Site with name: demo site, id: 158, of client: test client 3', '23', '23', '2023-01-21 22:03:03', '2023-01-21 22:03:03'),
(1078, 'Staff', 'Added', 'Added a staff with name: Test Staff, id: 167', '23', '23', '2023-01-21 22:05:13', '2023-01-21 22:05:13'),
(1079, 'Monitoring', 'Added', 'Added Monitoring of Site: test site 2, on week: 22/01/2023', '23', '23', '2023-01-21 22:08:51', '2023-01-21 22:08:51'),
(1080, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Charlton SE7 7TZ, on week: 21/11/2022', '25', '24', '2023-01-22 22:30:14', '2023-01-22 22:30:14'),
(1081, 'Monitoring', 'Added', 'Added Monitoring of Site: Pets at Home Wimbledon SW17 0BW, on week: 21/11/2022', '25', '24', '2023-01-22 22:31:50', '2023-01-22 22:31:50'),
(1082, 'Monitoring', 'Added', 'Added Monitoring of Site: Ralph Lauren 108 Cheshire Oaks Way, Ellesmere Port CH65 9JJ, on week: 21/11/2022', '25', '24', '2023-01-22 22:33:21', '2023-01-22 22:33:21'),
(1083, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Chorley Ackhurst Ind Extra PR7 1NW, on week: 21/11/2022', '25', '24', '2023-01-22 22:37:14', '2023-01-22 22:37:14'),
(1084, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 21/11/2022', '25', '24', '2023-01-22 22:38:34', '2023-01-22 22:38:34'),
(1085, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 21/11/2022', '25', '24', '2023-01-22 22:39:57', '2023-01-22 22:39:57'),
(1086, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport, SK1 1QN, on week: 21/11/2022', '25', '24', '2023-01-22 22:41:23', '2023-01-22 22:41:23'),
(1087, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 21/11/2022', '25', '24', '2023-01-22 22:43:33', '2023-01-22 22:43:33'),
(1088, 'Monitoring', 'Added', 'Added Monitoring of Site: Waitrose - Stratford Upon Avon Rosebird Centre, Shipston Road The, Stratford-upon-Avon CV37 8LU, on week: 21/11/2022', '25', '24', '2023-01-22 22:46:58', '2023-01-22 22:46:58'),
(1089, 'Sites', 'Added', 'Added New Site with name: Wilko Ilford IG4 4JF, id: 159, of client: Secure FM LTD', '25', '24', '2023-01-22 22:49:05', '2023-01-22 22:49:05'),
(1090, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Ilford IG4 4JF, on week: 21/11/2022', '25', '24', '2023-01-22 22:56:49', '2023-01-22 22:56:49'),
(1091, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, on week: 21/11/2022', '25', '24', '2023-01-22 23:03:45', '2023-01-22 23:03:45'),
(1092, 'Monitoring', 'Added', 'Added Monitoring of Site: Hobbycraft Basildon Westgate Park Fodderwick SS14 1WP, on week: 21/11/2022', '25', '24', '2023-01-22 23:06:44', '2023-01-22 23:06:44'),
(1093, 'Monitoring', 'Added', 'Added Monitoring of Site: Cineworld Runcorn Trident Park WA7 2FQ, on week: 21/11/2022', '25', '24', '2023-01-22 23:09:35', '2023-01-22 23:09:35'),
(1094, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 21/11/2022', '25', '24', '2023-01-22 23:16:05', '2023-01-22 23:16:05'),
(1095, 'Monitoring', 'Added', 'Added Monitoring of Site: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, on week: 21/11/2022', '25', '24', '2023-01-22 23:17:43', '2023-01-22 23:17:43'),
(1096, 'Monitoring', 'Added', 'Added Monitoring of Site: Primark Oxford Street West 499-517 Oxford Street London W1K 7DA, on week: 21/11/2022', '25', '24', '2023-01-22 23:23:20', '2023-01-22 23:23:20'),
(1097, 'Monitoring', 'Added', 'Added Monitoring of Site: HFS Hawley Cresc, Hawley Crescent, NW1 8NP, on week: 21/11/2022', '25', '24', '2023-01-22 23:25:39', '2023-01-22 23:25:39'),
(1098, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Preston - Friargate PR1 2EJ, on week: 21/11/2022', '25', '24', '2023-01-22 23:27:12', '2023-01-22 23:27:12'),
(1099, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Blackpool Westclife FY3 7DR, on week: 21/11/2022', '25', '24', '2023-01-22 23:28:31', '2023-01-22 23:28:31'),
(1100, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Blackpool South Shore Express 3266 FY4 2JD, on week: 21/11/2022', '25', '24', '2023-01-22 23:29:15', '2023-01-22 23:29:15'),
(1101, 'Monitoring', 'Added', 'Added Monitoring of Site: Pirate Manchester 1 Augustus St, Cheetham Hill, Manchester, M3 1HZ, on week: 21/11/2022', '25', '24', '2023-01-22 23:30:45', '2023-01-22 23:30:45'),
(1102, 'Monitoring', 'Added', 'Added Monitoring of Site: North Face Bullring Shopping Centre Bullring Middle Mall Birmingham B5 4BU, on week: 21/11/2022', '25', '24', '2023-01-22 23:32:05', '2023-01-22 23:32:05'),
(1103, 'Monitoring', 'Added', 'Added Monitoring of Site: H&M 660 Regent Street  W1B 3BR, on week: 21/11/2022', '25', '24', '2023-01-22 23:33:47', '2023-01-22 23:33:47'),
(1104, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 28/11/2022', '25', '24', '2023-01-26 20:05:40', '2023-01-26 20:05:40'),
(1105, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 28/11/2022', '25', '24', '2023-01-26 20:07:35', '2023-01-26 20:07:35'),
(1106, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 28/11/2022', '25', '24', '2023-01-26 20:09:36', '2023-01-26 20:09:36'),
(1107, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 28/11/2022', '25', '24', '2023-01-26 20:13:25', '2023-01-26 20:13:25'),
(1108, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 28/11/2022', '25', '24', '2023-01-26 20:26:06', '2023-01-26 20:26:06'),
(1109, 'Staff', 'Added', 'Added a staff with name: YAKUBPASHA MOHAMMED, id: 168', '25', '24', '2023-01-26 20:30:34', '2023-01-26 20:30:34'),
(1110, 'Staff', 'Added', 'Added a staff with name: NAUMAN SHABIR, id: 169', '25', '24', '2023-01-26 20:39:01', '2023-01-26 20:39:01'),
(1111, 'Staff', 'Added', 'Added a staff with name: AHMED RUSHDY MOHMMED MAHDI, id: 170', '25', '24', '2023-01-26 20:46:03', '2023-01-26 20:46:03'),
(1112, 'Staff', 'Added', 'Added a staff with name: JAVID IQBAL, id: 171', '25', '24', '2023-01-26 20:56:12', '2023-01-26 20:56:12'),
(1113, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQ, on week: 28/11/2022', '25', '24', '2023-01-26 21:02:04', '2023-01-26 21:02:04'),
(1114, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 28/11/2022', '25', '24', '2023-01-26 21:04:02', '2023-01-26 21:04:02'),
(1115, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, on week: 28/11/2022', '25', '24', '2023-01-26 21:08:05', '2023-01-26 21:08:05'),
(1116, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 28/11/2022', '25', '24', '2023-01-26 21:11:49', '2023-01-26 21:11:49'),
(1117, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 28/11/2022', '25', '24', '2023-01-26 21:17:02', '2023-01-26 21:17:02'),
(1118, 'Monitoring', 'Added', 'Added Monitoring of Site: HFS Hawley Cresc, Hawley Crescent, NW1 8NP, on week: 28/11/2022', '25', '24', '2023-01-26 21:25:49', '2023-01-26 21:25:49'),
(1119, 'Sites', 'Added', 'Added New Site with name: Holland & Barrett Croydon Central North End Croydon CR0 1UG, id: 160, of client: Secure FM LTD', '25', '24', '2023-01-26 21:30:32', '2023-01-26 21:30:32'),
(1120, 'Sites', 'Added', 'Added New Site with name: Wilko Ashton - Wilko Ashton OL6 6BH, id: 161, of client: Secure FM LTD', '25', '24', '2023-01-26 21:32:17', '2023-01-26 21:32:17'),
(1121, 'Sites', 'Added', 'Added New Site with name: Foxtons Hackney Estate Agents E8 1HA, id: 162, of client: Secure FM LTD', '25', '24', '2023-01-26 21:33:39', '2023-01-26 21:33:39'),
(1122, 'Sites', 'Added', 'Added New Site with name: Foxtons 28-30, Stoke Newington Church Street, LONDON, N16 0LU, id: 163, of client: Secure FM LTD', '25', '24', '2023-01-26 21:34:36', '2023-01-26 21:34:36'),
(1123, 'Sites', 'Added', 'Added New Site with name: Foxtons Unit 2, Canary Wharf, Upper Bank Street, 20 Canada Square, London, E14 5NN, id: 164, of client: Secure FM LTD', '25', '24', '2023-01-26 21:36:24', '2023-01-26 21:36:24'),
(1124, 'Sites', 'Added', 'Added New Site with name: Foxtons 9, Lee Road, Blackheath, London, SE3 9RQ, id: 165, of client: Secure FM LTD', '25', '24', '2023-01-26 21:37:18', '2023-01-26 21:37:18'),
(1125, 'Sites', 'Added', 'Added New Site with name: Wilko Preston - Friargate - Wilko Preston - Friargate PR1 2EJ, id: 166, of client: Secure FM LTD', '25', '24', '2023-01-26 21:39:13', '2023-01-26 21:39:13'),
(1126, 'Sites', 'Added', 'Added New Site with name: Wilko Manchester - Harpurhey M9 4DH, id: 167, of client: Secure FM LTD', '25', '24', '2023-01-26 21:39:51', '2023-01-26 21:39:51'),
(1127, 'Sites', 'Added', 'Added New Site with name: H&M Southend High Street 29-35 High St, Southend-on-Sea SS1 1JD, id: 168, of client: Secure FM LTD', '25', '24', '2023-01-26 21:41:23', '2023-01-26 21:41:23'),
(1128, 'Sites', 'Added', 'Added New Site with name: H&M Brixton 457-461 Brixton Rd, London SW9 8HH, id: 169, of client: Secure FM LTD', '25', '24', '2023-01-26 21:42:18', '2023-01-26 21:42:18'),
(1129, 'Monitoring', 'Added', 'Added Monitoring of Site: Holland & Barrett Croydon Central North End Croydon CR0 1UG, on week: 28/11/2022', '25', '24', '2023-01-26 21:45:54', '2023-01-26 21:45:54'),
(1130, 'Monitoring', 'Added', 'Added Monitoring of Site: Ralph Lauren 108 Cheshire Oaks Way, Ellesmere Port CH65 9JJ, on week: 28/11/2022', '25', '24', '2023-01-26 21:47:55', '2023-01-26 21:47:55'),
(1131, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 28/11/2022', '25', '24', '2023-01-26 21:49:46', '2023-01-26 21:49:46'),
(1132, 'Monitoring', 'Added', 'Added Monitoring of Site: Cineworld Cinema Ilford IG1 1BP, on week: 28/11/2022', '25', '24', '2023-01-26 21:53:38', '2023-01-26 21:53:38'),
(1133, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Leigh WN7 1AB, on week: 28/11/2022', '25', '24', '2023-01-26 21:57:03', '2023-01-26 21:57:03'),
(1134, 'Monitoring', 'Added', 'Added Monitoring of Site: Halfords Walsall Bescot Retail Park WS1 4SB, on week: 28/11/2022', '25', '24', '2023-01-26 22:01:14', '2023-01-26 22:01:14'),
(1135, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Ashton - Wilko Ashton OL6 6BH, on week: 28/11/2022', '25', '24', '2023-01-26 22:02:24', '2023-01-26 22:02:24'),
(1136, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester Woodgate LE3 5GH, on week: 28/11/2022', '25', '24', '2023-01-26 22:03:49', '2023-01-26 22:03:49'),
(1137, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 28/11/2022', '25', '24', '2023-01-26 22:06:32', '2023-01-26 22:06:32'),
(1138, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 28/11/2022', '25', '24', '2023-01-26 22:08:22', '2023-01-26 22:08:22'),
(1139, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport, SK1 1QN, on week: 28/11/2022', '25', '24', '2023-01-26 22:10:11', '2023-01-26 22:10:11'),
(1140, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 28/11/2022', '25', '24', '2023-01-26 22:13:00', '2023-01-26 22:13:00'),
(1141, 'Monitoring', 'Added', 'Added Monitoring of Site: Solvay Baronet Works, Baronet Rd, Warrington WA4 6HA, on week: 28/11/2022', '25', '24', '2023-01-26 22:14:20', '2023-01-26 22:14:20'),
(1142, 'Monitoring', 'Added', 'Added Monitoring of Site: Bescot Compound, In Sandy Lane, Wednesbury, WALSALL WS10 0LH, on week: 28/11/2022', '25', '24', '2023-01-26 22:20:54', '2023-01-26 22:20:54'),
(1143, 'Monitoring', 'Added', 'Added Monitoring of Site: Foxtons Hackney Estate Agents E8 1HA, on week: 28/11/2022', '25', '24', '2023-01-26 22:23:06', '2023-01-26 22:23:06'),
(1144, 'Monitoring', 'Added', 'Added Monitoring of Site: Foxtons Unit 2, Canary Wharf, Upper Bank Street, 20 Canada Square, London, E14 5NN, on week: 28/11/2022', '25', '24', '2023-01-26 22:29:25', '2023-01-26 22:29:25'),
(1145, 'Monitoring', 'Added', 'Added Monitoring of Site: Foxtons 28-30, Stoke Newington Church Street, LONDON, N16 0LU, on week: 28/11/2022', '25', '24', '2023-01-26 22:31:46', '2023-01-26 22:31:46'),
(1146, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Preston - Friargate PR1 2EJ, on week: 28/11/2022', '25', '24', '2023-01-27 21:41:04', '2023-01-27 21:41:04'),
(1147, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 28/11/2022', '25', '24', '2023-01-27 21:42:47', '2023-01-27 21:42:47'),
(1148, 'Monitoring', 'Added', 'Added Monitoring of Site: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, on week: 28/11/2022', '25', '24', '2023-01-27 21:46:08', '2023-01-27 21:46:08'),
(1149, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Manchester - Harpurhey M9 4DH, on week: 28/11/2022', '25', '24', '2023-01-27 21:47:34', '2023-01-27 21:47:34'),
(1150, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi manchester arndale M1 1WR, on week: 28/11/2022', '25', '24', '2023-01-27 21:49:58', '2023-01-27 21:49:58'),
(1151, 'Monitoring', 'Added', 'Added Monitoring of Site: Foxtons 9, Lee Road, Blackheath, London, SE3 9RQ, on week: 28/11/2022', '25', '24', '2023-01-27 21:50:39', '2023-01-27 21:50:39'),
(1152, 'Monitoring', 'Added', 'Added Monitoring of Site: HFS Lightfoot Hall Chelsea London SW3 6NA, on week: 28/11/2022', '25', '24', '2023-01-27 21:52:21', '2023-01-27 21:52:21'),
(1153, 'Monitoring', 'Added', 'Added Monitoring of Site: H&M Brixton 457-461 Brixton Rd, London SW9 8HH, on week: 28/11/2022', '25', '24', '2023-01-27 21:53:54', '2023-01-27 21:53:54'),
(1154, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 05/12/2022', '25', '24', '2023-01-30 22:33:52', '2023-01-30 22:33:52'),
(1155, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Colindale Capitol Way NW9 0AW, on week: 05/12/2022', '25', '24', '2023-01-30 22:44:18', '2023-01-30 22:44:18'),
(1156, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester St Georges Way LE1 1SG, on week: 05/12/2022', '25', '24', '2023-01-30 22:51:54', '2023-01-30 22:51:54'),
(1157, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Aldi Leicester St Georges Way LE1 1SGShift Week : 05/12/2022, Monitoring Id: 308', '25', '24', '2023-01-30 22:52:32', '2023-01-30 22:52:32'),
(1158, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Leicester Woodgate LE3 5GH, on week: 05/12/2022', '25', '24', '2023-01-30 22:54:40', '2023-01-30 22:54:40'),
(1159, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Westcliff On Sea London Road SS0 9HQ, on week: 05/12/2022', '25', '24', '2023-01-30 22:57:57', '2023-01-30 22:57:57'),
(1160, 'Monitoring', 'Added', 'Added Monitoring of Site: ARRIVA/ FIRST BUS BOLTON BL1 1UN, on week: 05/12/2022', '25', '24', '2023-01-30 23:00:09', '2023-01-30 23:00:09'),
(1161, 'Monitoring', 'Added', 'Added Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EF, on week: 05/12/2022', '25', '24', '2023-01-30 23:03:49', '2023-01-30 23:03:49'),
(1162, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Farm Foods 67 High Street, Ponders End, Enfield, EN4 4EFShift Week : 05/12/2022, Monitoring Id: 312', '25', '24', '2023-01-30 23:05:05', '2023-01-30 23:05:05'),
(1163, 'Monitoring', 'Added', 'Added Monitoring of Site: HFS Lightfoot Hall Chelsea London SW3 6NA, on week: 05/12/2022', '25', '24', '2023-01-30 23:06:52', '2023-01-30 23:06:52'),
(1164, 'Monitoring', 'Added', 'Added Monitoring of Site: James Corbett Rd, Salford, Manchester M50 1DE, on week: 05/12/2022', '25', '24', '2023-01-30 23:15:44', '2023-01-30 23:15:44'),
(1165, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 05/12/2022', '25', '24', '2023-01-30 23:17:14', '2023-01-30 23:17:14'),
(1166, 'Monitoring', 'Added', 'Added Monitoring of Site: Magnet Ltd, Greyfriars Place, Stafford, Staffordshire, England, ST16 2SD, on week: 05/12/2022', '25', '24', '2023-01-30 23:18:56', '2023-01-30 23:18:56'),
(1167, 'Monitoring', 'Added', 'Added Monitoring of Site: Matalan smethwick, Lime Grove, Smethwick B66 3ER, on week: 05/12/2022', '25', '24', '2023-01-30 23:21:04', '2023-01-30 23:21:04'),
(1168, 'Monitoring', 'Added', 'Added Monitoring of Site: COTSWOLD HOUSE, on week: 05/12/2022', '25', '24', '2023-01-30 23:23:27', '2023-01-30 23:23:27'),
(1169, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 05/12/2022', '25', '24', '2023-01-30 23:26:07', '2023-01-30 23:26:07'),
(1170, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 05/12/2022', '25', '24', '2023-01-30 23:27:19', '2023-01-30 23:27:19'),
(1171, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 48Shift Week : 05/12/2022, Monitoring Id: 320', '25', '24', '2023-02-01 21:21:43', '2023-02-01 21:21:43'),
(1172, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Shaw 3253 OL2 8NH, on week: 05/12/2022', '25', '24', '2023-02-01 22:07:11', '2023-02-01 22:07:11'),
(1173, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 05/12/2022, Monitoring Id: 318', '25', '24', '2023-02-01 22:08:40', '2023-02-01 22:08:40'),
(1174, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 05/12/2022, Monitoring Id: 318', '25', '24', '2023-02-01 22:08:54', '2023-02-01 22:08:54');
INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(1175, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 05/12/2022, Monitoring Id: 318', '25', '24', '2023-02-01 22:09:26', '2023-02-01 22:09:26'),
(1176, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: COTSWOLD HOUSEShift Week : 05/12/2022, Monitoring Id: 318', '25', '24', '2023-02-01 22:09:41', '2023-02-01 22:09:41'),
(1177, 'Monitoring', 'Added', 'Added Monitoring of Site: Tesco Superstore, Crossley St, Little Lever Bolton BL3 1RG, on week: 05/12/2022', '25', '24', '2023-02-01 22:11:33', '2023-02-01 22:11:33'),
(1178, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, 90 Merseyway, Unit B14, Stockport, SK1 1QN, on week: 05/12/2022', '25', '24', '2023-02-01 22:13:25', '2023-02-01 22:13:25'),
(1179, 'Monitoring', 'Added', 'Added Monitoring of Site: The Fragrance Shop, Unit 23, Arndale Shopping Centre, M4 3AB, on week: 05/12/2022', '25', '24', '2023-02-01 22:15:07', '2023-02-01 22:15:07'),
(1180, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko St Helens 1 Cotham St, Saint Helens WA10 1SB, on week: 05/12/2022', '25', '24', '2023-02-01 22:16:35', '2023-02-01 22:16:35'),
(1181, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Leigh WN7 1AB, on week: 05/12/2022', '25', '24', '2023-02-01 22:18:30', '2023-02-01 22:18:30'),
(1182, 'Monitoring', 'Added', 'Added Monitoring of Site: Bescot Compound, In Sandy Lane, Wednesbury, WALSALL WS10 0LH, on week: 05/12/2022', '25', '24', '2023-02-01 22:28:45', '2023-02-01 22:28:45'),
(1183, 'Monitoring', 'Added', 'Added Monitoring of Site: Vans McArthurGlen Designer Outlet  Cheshire Oaks, Kinsey Rd,  Ellesmere Port CH65 9JJ, on week: 05/12/2022', '25', '24', '2023-02-01 22:32:54', '2023-02-01 22:32:54'),
(1184, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi London Little Venice W2 1EJ, on week: 05/12/2022', '25', '24', '2023-02-01 22:34:50', '2023-02-01 22:34:50'),
(1185, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley PR7 1DR, on week: 05/12/2022', '25', '24', '2023-02-02 21:25:38', '2023-02-02 21:25:38'),
(1186, 'Monitoring', 'Added', 'Added Monitoring of Site: Atlantic Park, Dunnings Bridge Road, Liverpool, L30 4AB, on week: 05/12/2022', '25', '24', '2023-02-02 21:45:00', '2023-02-02 21:45:00'),
(1187, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Fenton Victoria Road 27 Fenton, Stoke-on-Trent ST4 2HX, on week: 05/12/2022', '25', '24', '2023-02-02 21:46:22', '2023-02-02 21:46:22'),
(1188, 'Monitoring', 'Added', 'Added Monitoring of Site: Holland & Barrett St Annes 51 St. Annes Road West St Annes FY8 1SB, on week: 05/12/2022', '25', '24', '2023-02-02 21:47:40', '2023-02-02 21:47:40'),
(1189, 'Monitoring', 'Added', 'Added Monitoring of Site: The Icon Outlet. Peninsula Square, London SE10 0DX, on week: 05/12/2022', '25', '24', '2023-02-02 21:55:04', '2023-02-02 21:55:04'),
(1190, 'Monitoring', 'Added', 'Added Monitoring of Site: Wilko Acocks Green B27 6BH, on week: 05/12/2022', '25', '24', '2023-02-02 21:57:15', '2023-02-02 21:57:15'),
(1191, 'Monitoring', 'Added', 'Added Monitoring of Site: 19 Briset Street Clerkenwell London EC1M 5NR, on week: 05/12/2022', '25', '24', '2023-02-02 21:59:43', '2023-02-02 21:59:43'),
(1192, 'Monitoring', 'Added', 'Added Monitoring of Site: Cineworld Cinema Ilford IG1 1BP, on week: 05/12/2022', '25', '24', '2023-02-02 22:38:03', '2023-02-02 22:38:03'),
(1193, 'Monitoring', 'Added', 'Added Monitoring of Site: 250 Camden High street London NW1 8QS, on week: 05/12/2022', '25', '24', '2023-02-02 22:44:13', '2023-02-02 22:44:13'),
(1194, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Stockport Newbridge Lane SK1 2NA, on week: 05/12/2022', '25', '24', '2023-02-02 22:49:17', '2023-02-02 22:49:17'),
(1195, 'Monitoring', 'Added', 'Added Monitoring of Site: Aldi Grays London Road RM17 5YB, on week: 05/12/2022', '25', '24', '2023-02-02 22:51:08', '2023-02-02 22:51:08'),
(1196, 'Monitoring', 'Added', 'Added Monitoring of Site: Tommy Hilfiger Cheschire Unit 123, Mcarthur Glen 124 Kinsey Road Cheshire CH65 9JJ, on week: 05/12/2022', '25', '24', '2023-02-02 22:52:54', '2023-02-02 22:52:54'),
(1197, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley PR7 3HW, on week: 05/12/2022', '25', '24', '2023-02-02 22:54:26', '2023-02-02 22:54:26'),
(1198, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 12/02/2023', '23', '23', '2023-02-08 23:48:20', '2023-02-08 23:48:20'),
(1199, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 19/02/2023', '23', '23', '2023-02-09 01:33:40', '2023-02-09 01:33:40'),
(1200, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 19/02/2023, Monitoring Id: 344', '23', '23', '2023-02-09 01:34:29', '2023-02-09 01:34:29'),
(1201, 'Monitoring', 'Added', 'Added Monitoring of Site: test site 2, on week: 26/02/2023', '23', '23', '2023-02-10 19:10:27', '2023-02-10 19:10:27'),
(1202, 'Monitoring', 'Added', 'Added Monitoring of Site: demo site, on week: 05/02/2023', '23', '23', '2023-02-11 01:48:07', '2023-02-11 01:48:07'),
(1203, 'Monitoring', 'Added', 'Added Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DY, on week: 28/02/2023', '14', '14', '2023-02-12 04:35:54', '2023-02-12 04:35:54'),
(1204, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 28/02/2023, Monitoring Id: 347', '14', '14', '2023-02-12 04:36:28', '2023-02-12 04:36:28'),
(1205, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Territory Studio 132-140 Goswell road EC1V 7DYShift Week : 28/02/2023, Monitoring Id: 347', '14', '14', '2023-02-12 04:37:09', '2023-02-12 04:37:09'),
(1206, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 31Shift Week : 28/02/2023, Monitoring Id: 347', '14', '14', '2023-02-12 04:37:24', '2023-02-12 04:37:24'),
(1207, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 12/02/2023, Monitoring Id: 343', '23', '23', '2023-02-14 20:42:14', '2023-02-14 20:42:14'),
(1208, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: demo siteShift Week : 12/02/2023, Monitoring Id: 343', '23', '23', '2023-02-14 20:42:33', '2023-02-14 20:42:33'),
(1209, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 FARRINGDON ROAD EC1R 3BW, on week: 12/12/2022', '25', '24', '2023-02-16 23:45:06', '2023-02-16 23:45:06'),
(1210, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test site 2Shift Week : 26/02/2023, Monitoring Id: 345', '23', '23', '2023-02-20 17:16:20', '2023-02-20 17:16:20'),
(1211, 'Roles', 'Added', 'Added Role with of name: New Role ', '23', '23', '2023-02-20 17:16:40', '2023-02-20 17:16:40'),
(1212, 'Roles', 'Deleted', 'Deleted Role of Name: New Role, id: 11', '23', '23', '2023-02-20 17:17:22', '2023-02-20 17:17:22'),
(1213, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test site 2Shift Week : 26/02/2023, Monitoring Id: 345', '23', '23', '2023-02-20 17:18:19', '2023-02-20 17:18:19'),
(1214, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test site 2Shift Week : 26/02/2023, Monitoring Id: 345', '23', '23', '2023-02-20 17:18:33', '2023-02-20 17:18:33'),
(1215, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2023-02-20 17:36:18', '2023-02-20 17:36:18'),
(1216, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2023-02-20 17:36:36', '2023-02-20 17:36:36'),
(1217, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 7', '23', '23', '2023-02-21 14:24:47', '2023-02-21 14:24:47'),
(1218, 'Staff', 'Added', 'Added a staff with name: code staff, id: 172', '23', '23', '2023-02-21 14:25:58', '2023-02-21 14:25:58'),
(1219, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: test site 2Shift Week : 26/02/2023, Monitoring Id: 345', '27', '23', '2023-02-21 16:23:53', '2023-02-21 16:23:53'),
(1220, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 32Shift Week : 25/12/2022, Monitoring Id: 63', '14', '14', '2023-02-21 19:04:05', '2023-02-21 19:04:05'),
(1221, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '14', '14', '2023-02-21 19:05:25', '2023-02-21 19:05:25'),
(1222, 'Clients', 'Added', 'Added a New Client with id: 38, Name: Kevin Bradbury ', '18', '14', '2023-02-21 19:57:49', '2023-02-21 19:57:49'),
(1223, 'Sites', 'Added', 'Added New Site with name: Leeds Kirkgate Market, id: 170, of client: Leeds City Council', '18', '14', '2023-02-21 19:58:40', '2023-02-21 19:58:40'),
(1224, 'Staff', 'Added', 'Added a staff with name: SHAZAIB ELAHI, id: 173', '18', '14', '2023-02-21 20:09:50', '2023-02-21 20:09:50'),
(1225, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 8', '18', '14', '2023-02-21 20:15:43', '2023-02-21 20:15:43'),
(1226, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 30/01/2023', '18', '14', '2023-02-21 20:20:06', '2023-02-21 20:20:06'),
(1227, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 06/02/2023', '18', '14', '2023-02-21 20:23:08', '2023-02-21 20:23:08'),
(1228, 'Staff', 'Added', 'Added a staff with name: RAJA JAVED, id: 174', '18', '14', '2023-02-21 20:24:38', '2023-02-21 20:24:38'),
(1229, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 06/02/2023, Monitoring Id: 350', '18', '14', '2023-02-21 20:25:12', '2023-02-21 20:25:12'),
(1230, 'Staff', 'Added', 'Added a staff with name: BERHANE HAILE, id: 175', '18', '14', '2023-02-21 20:27:05', '2023-02-21 20:27:05'),
(1231, 'Staff', 'Updated', 'Updated a staff with name: BERHANE HAILE, id: 175', '18', '14', '2023-02-21 20:27:24', '2023-02-21 20:27:24'),
(1232, 'Roles', 'Added', 'Added Role with of name: Leeds City Council ', '14', '14', '2023-02-21 20:29:12', '2023-02-21 20:29:12'),
(1233, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Leeds City Council', '14', '14', '2023-02-21 20:30:06', '2023-02-21 20:30:06'),
(1234, 'Roles', 'Updated', 'updated Role with id: 12, name: Leeds City Council ', '14', '14', '2023-02-21 20:30:16', '2023-02-21 20:30:16'),
(1235, 'Team', 'Added', 'Added a Team Member of name Leeds City Council', '14', '14', '2023-02-21 20:30:53', '2023-02-21 20:30:53'),
(1236, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 13/02/2023', '18', '14', '2023-02-21 20:32:03', '2023-02-21 20:32:03'),
(1237, 'Clients', 'Added', 'Added a New Client with id: 39, Name: ygugugyug ', '14', '14', '2023-02-21 20:33:43', '2023-02-21 20:33:43'),
(1238, 'Clients', 'Added', 'Added a New Client with id: 40, Name: wadawd ', '14', '14', '2023-02-21 20:40:08', '2023-02-21 20:40:08'),
(1239, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 20/02/2023', '18', '14', '2023-02-21 21:39:51', '2023-02-21 21:39:51'),
(1240, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 27/02/2023', '18', '14', '2023-02-21 21:41:57', '2023-02-21 21:41:57'),
(1241, 'Clients', 'Added', 'Added a New Client with id: 41, Name: Rashida Dixon (receptionist & office assistant) ', '18', '14', '2023-02-21 21:56:24', '2023-02-21 21:56:24'),
(1242, 'Team', 'Added', 'Added a Team Member of name Janeth Mwasa', '14', '14', '2023-02-21 22:00:37', '2023-02-21 22:00:37'),
(1243, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Administrator', '14', '14', '2023-02-21 22:03:24', '2023-02-21 22:03:24'),
(1244, 'Clients', 'Deleted', 'Deleted Client with id: 40, Name wadawd ', '30', '14', '2023-02-21 22:04:43', '2023-02-21 22:04:43'),
(1245, 'Clients', 'Deleted', 'Deleted Client with id: 39, Name ygugugyug ', '30', '14', '2023-02-21 22:04:46', '2023-02-21 22:04:46'),
(1246, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '30', '14', '2023-02-21 22:29:47', '2023-02-21 22:29:47'),
(1247, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '30', '14', '2023-02-21 22:45:15', '2023-02-21 22:45:15'),
(1248, 'Supervisory Visits', 'Updated', 'Updated a supervisory vist of site', '30', '14', '2023-02-21 22:47:04', '2023-02-21 22:47:04'),
(1249, 'Clients', 'Added', 'Added a New Client with id: 42, Name: Lisa Anthony ', '30', '14', '2023-02-22 20:17:40', '2023-02-22 20:17:40'),
(1250, 'Clients', 'Added', 'Added a New Client with id: 43, Name: 2165484568541 ', '31', '31', '2023-02-22 22:19:54', '2023-02-22 22:19:54'),
(1251, 'Sites', 'Added', 'Added New Site with name: Test site 1, id: 171, of client: Test client 1', '31', '31', '2023-02-22 22:20:14', '2023-02-22 22:20:14'),
(1252, 'Sub Contractor', 'Added', 'Added a subcontractor with name: , id: 9', '31', '31', '2023-02-22 22:21:10', '2023-02-22 22:21:10'),
(1253, 'Staff', 'Added', 'Added a staff with name: test staff, id: 176', '31', '31', '2023-02-22 22:21:56', '2023-02-22 22:21:56'),
(1254, 'Monitoring', 'Added', 'Added Monitoring of Site: Test site 1, on week: 26/02/2023', '31', '31', '2023-02-22 22:22:49', '2023-02-22 22:22:49'),
(1255, 'Roles', 'Added', 'Added Role with of name: Sub user ', '31', '31', '2023-02-22 22:23:20', '2023-02-22 22:23:20'),
(1256, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Sub user', '31', '31', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(1257, 'Team', 'Added', 'Added a Team Member of name Test sub user', '31', '31', '2023-02-22 22:39:39', '2023-02-22 22:39:39'),
(1258, 'Clients', 'Added', 'Added a New Client with id: 44, Name: Lisa Anthony ', '30', '14', '2023-02-23 20:23:19', '2023-02-23 20:23:19'),
(1259, 'Clients', 'Added', 'Added a New Client with id: 45, Name: Dawn Mered ', '30', '14', '2023-02-23 20:24:26', '2023-02-23 20:24:26'),
(1260, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Administrator', '14', '14', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(1261, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 04:42:09', '2023-02-24 04:42:09'),
(1262, 'Roles', 'Deleted', 'Deleted Role of Name: Administrator, id: 6', '14', '14', '2023-02-24 04:43:20', '2023-02-24 04:43:20'),
(1263, 'Team', 'Added', 'Added a Team Member of name Janeth Mwasa', '14', '14', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(1264, 'Clients', 'Deleted', 'Deleted Client with id: 42, Name Lisa Anthony ', '33', '14', '2023-02-24 04:45:31', '2023-02-24 04:45:31'),
(1265, 'Clients', 'Added', 'Added a New Client with id: 46, Name: wadwad ', '33', '14', '2023-02-24 04:46:06', '2023-02-24 04:46:06'),
(1266, 'Clients', 'Deleted', 'Deleted Client with id: 46, Name wadwad ', '14', '14', '2023-02-24 04:46:35', '2023-02-24 04:46:35'),
(1267, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 04:52:19', '2023-02-24 04:52:19'),
(1268, 'Clients', 'Added', 'Added a New Client with id: 47, Name: wdad ', '33', '14', '2023-02-24 04:55:50', '2023-02-24 04:55:50'),
(1269, 'Clients', 'Deleted', 'Deleted Client with id: 47, Name wdad ', '33', '14', '2023-02-24 05:02:45', '2023-02-24 05:02:45'),
(1270, 'Sites', 'Added', 'Added New Site with name: awdwa, id: 172, of client: Caerphilly County Borough Council', '14', '14', '2023-02-24 05:16:52', '2023-02-24 05:16:52'),
(1271, 'Sites', 'Added', 'Added New Site with name: adwad, id: 173, of client: South Wales Fire & Rescue Service', '33', '14', '2023-02-24 05:17:28', '2023-02-24 05:17:28'),
(1272, 'Sites', 'Deleted', 'Deleted a site, name: awdwa, id: 172, of client: Caerphilly County Borough Council', '33', '14', '2023-02-24 05:17:37', '2023-02-24 05:17:37'),
(1273, 'Sites', 'Deleted', 'Deleted a site, name: adwad, id: 173, of client: South Wales Fire & Rescue Service', '33', '14', '2023-02-24 05:17:41', '2023-02-24 05:17:41'),
(1274, 'Team', 'Added', 'Added a Team Member of name Janeth Mwasa', '14', '14', '2023-02-24 05:28:19', '2023-02-24 05:28:19'),
(1275, 'Clients', 'Added', 'Added a New Client with id: 48, Name: wdadwa ', '34', '14', '2023-02-24 06:37:59', '2023-02-24 06:37:59'),
(1276, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 06:39:57', '2023-02-24 06:39:57'),
(1277, 'Clients', 'Added', 'Added a New Client with id: 49, Name: wadwa ', '34', '14', '2023-02-24 06:40:14', '2023-02-24 06:40:14'),
(1278, 'Clients', 'Deleted', 'Deleted Client with id: 49, Name wadwa ', '14', '14', '2023-02-24 06:40:36', '2023-02-24 06:40:36'),
(1279, 'Clients', 'Deleted', 'Deleted Client with id: 48, Name wdadwa ', '14', '14', '2023-02-24 06:40:39', '2023-02-24 06:40:39'),
(1280, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 06:42:17', '2023-02-24 06:42:17'),
(1281, 'Clients', 'Updated', 'Updated a Client with id: 45, Name Dawn Mered ', '34', '14', '2023-02-24 06:42:43', '2023-02-24 06:42:43'),
(1282, 'Clients', 'Deleted', 'Deleted Client with id: 45, Name Dawn Mered ', '34', '14', '2023-02-24 06:42:52', '2023-02-24 06:42:52'),
(1283, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 06:43:29', '2023-02-24 06:43:29'),
(1284, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 06:44:10', '2023-02-24 06:44:10'),
(1285, 'Clients', 'Added', 'Added a New Client with id: 50, Name: wadw ', '34', '14', '2023-02-24 06:46:02', '2023-02-24 06:46:02'),
(1286, 'Clients', 'Deleted', 'Deleted Client with id: 50, Name wadw ', '14', '14', '2023-02-24 06:47:31', '2023-02-24 06:47:31'),
(1287, 'Clients', 'Added', 'Added a New Client with id: 51, Name: wda ', '34', '14', '2023-02-24 06:50:28', '2023-02-24 06:50:28'),
(1288, 'Sites', 'Added', 'Added New Site with name: wdadw, id: 174, of client: South Wales Fire & Rescue Service', '14', '14', '2023-02-24 06:56:23', '2023-02-24 06:56:23'),
(1289, 'Monitoring', 'Added', 'Added Monitoring of Site: wdadw, on week: 24/02/2023', '14', '14', '2023-02-24 06:56:44', '2023-02-24 06:56:44'),
(1290, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 174Shift Week : 24/02/2023, Monitoring Id: 355', '14', '14', '2023-02-24 06:59:23', '2023-02-24 06:59:23'),
(1291, 'Clients', 'Deleted', 'Deleted Client with id: 51, Name wda ', '14', '14', '2023-02-24 06:59:28', '2023-02-24 06:59:28'),
(1292, 'Sites', 'Deleted', 'Deleted a site, name: wdadw, id: 174, of client: South Wales Fire & Rescue Service', '14', '14', '2023-02-24 06:59:36', '2023-02-24 06:59:36'),
(1293, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 07:02:29', '2023-02-24 07:02:29'),
(1294, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Contract Manager', '14', '14', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(1295, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Client', '14', '14', '2023-02-24 07:17:45', '2023-02-24 07:17:45'),
(1296, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Client', '14', '14', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(1297, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 353, Site: Leeds Kirkgate Market, Week Commencing: 27/02/2023, Activity Type: Service Complaint - High', '29', '14', '2023-02-24 07:22:13', '2023-02-24 07:22:13'),
(1298, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 353, Site: Leeds Kirkgate Market, Week Commencing: 27/02/2023, Activity Type: Service Complaint - Low', '34', '14', '2023-02-24 08:03:02', '2023-02-24 08:03:02'),
(1299, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '34', '14', '2023-02-24 08:06:24', '2023-02-24 08:06:24'),
(1300, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '34', '14', '2023-02-24 08:07:30', '2023-02-24 08:07:30'),
(1301, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '34', '14', '2023-02-24 08:07:48', '2023-02-24 08:07:48'),
(1302, 'Sites', 'Added', 'Added New Site with name: 111 Farringdon Road EC1R 3BW, id: 175, of client: Phantom Studios', '34', '14', '2023-02-24 19:45:08', '2023-02-24 19:45:08'),
(1303, 'Sites', 'Added', 'Added New Site with name: South Wales Fire & Rescue Service Headquarters CF72 8LX, id: 176, of client: South Wales Fire & Rescue Service', '34', '14', '2023-02-24 19:46:17', '2023-02-24 19:46:17'),
(1304, 'Clients', 'Updated', 'Updated a Client with id: 44, Name Lisa Anthony ', '34', '14', '2023-02-24 19:57:56', '2023-02-24 19:57:56'),
(1305, 'Team', 'Added', 'Added a Team Member of name sub user', '31', '31', '2023-02-25 09:54:52', '2023-02-25 09:54:52'),
(1306, 'Clients', 'Added', 'Added a New Client with id: 52, Name: 911 ', '31', '31', '2023-02-25 09:55:49', '2023-02-25 09:55:49'),
(1307, 'Team', 'Added', 'Added a Team Member of name Leeds City Council', '14', '14', '2023-02-26 18:36:36', '2023-02-26 18:36:36'),
(1308, 'Team', 'Added', 'Added a Team Member of name Janeth Mwasa', '14', '14', '2023-02-26 18:38:08', '2023-02-26 18:38:08'),
(1309, 'Clients', 'Added', 'Added a New Client with id: 53, Name: Bshshs ', '14', '14', '2023-02-26 18:38:53', '2023-02-26 18:38:53'),
(1310, 'Clients', 'Added', 'Added a New Client with id: 54, Name: Hevev ', '37', '14', '2023-02-26 18:39:58', '2023-02-26 18:39:58'),
(1311, 'Clients', 'Deleted', 'Deleted Client with id: 54, Name Hevev ', '14', '14', '2023-02-26 18:41:07', '2023-02-26 18:41:07'),
(1312, 'Clients', 'Added', 'Added a New Client with id: 55, Name: 911 ', '31', '31', '2023-02-26 22:00:51', '2023-02-26 22:00:51'),
(1313, 'Team', 'Added', 'Added a Team Member of name sub user 2', '31', '31', '2023-02-26 22:03:48', '2023-02-26 22:03:48'),
(1314, 'Clients', 'Added', 'Added a New Client with id: 56, Name: 911 ', '31', '31', '2023-02-26 22:04:28', '2023-02-26 22:04:28'),
(1315, 'Clients', 'Added', 'Added a New Client with id: 57, Name: 911 ', '32', '31', '2023-02-27 12:31:54', '2023-02-27 12:31:54'),
(1316, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '37', '14', '2023-02-27 22:05:26', '2023-02-27 22:05:26'),
(1317, 'Clients', 'Added', 'Added a New Client with id: 58, Name: 911 ', '38', '31', '2023-02-27 22:36:49', '2023-02-27 22:36:49'),
(1318, 'Clients', 'Added', 'Added a New Client with id: 59, Name: Hahsvs ', '37', '14', '2023-02-28 04:01:45', '2023-02-28 04:01:45'),
(1319, 'Clients', 'Deleted', 'Deleted Client with id: 59, Name Hahsvs ', '37', '14', '2023-02-28 04:01:57', '2023-02-28 04:01:57'),
(1320, 'Clients', 'Deleted', 'Deleted Client with id: 53, Name Bshshs ', '37', '14', '2023-02-28 04:02:01', '2023-02-28 04:02:01'),
(1321, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 06/03/2023', '37', '14', '2023-02-28 20:09:05', '2023-02-28 20:09:05'),
(1322, 'Clients', 'Added', 'Added a New Client with id: 60, Name: Dawn Mered ', '37', '14', '2023-02-28 20:11:12', '2023-02-28 20:11:12'),
(1323, 'Clients', 'Added', 'Added a New Client with id: 61, Name: Lorraine McIntyre ', '37', '14', '2023-02-28 20:14:59', '2023-02-28 20:14:59'),
(1324, 'Sites', 'Added', 'Added New Site with name: Tredomen Business Park, id: 177, of client: Caerphilly County Borough Council', '37', '14', '2023-02-28 20:15:43', '2023-02-28 20:15:43'),
(1325, 'Sites', 'Added', 'Added New Site with name: Cotswold House Chorley, id: 178, of client: Chorley Council', '37', '14', '2023-02-28 20:16:26', '2023-02-28 20:16:26'),
(1326, 'Sites', 'Added', 'Added New Site with name: Market Walk Chorley, id: 179, of client: Chorley Council', '37', '14', '2023-02-28 20:17:00', '2023-02-28 20:17:00'),
(1327, 'Sites', 'Added', 'Added New Site with name: PRD068162 Cotswold House, id: 180, of client: Chorley Council', '37', '14', '2023-02-28 20:17:52', '2023-02-28 20:17:52'),
(1328, 'Sites', 'Added', 'Added New Site with name: Primrose Gardens Chorley, id: 181, of client: Chorley Council', '37', '14', '2023-02-28 20:18:37', '2023-02-28 20:18:37'),
(1329, 'Sites', 'Added', 'Added New Site with name: PRD068839 Tatton Gardens Chorley, id: 182, of client: Chorley Council', '37', '14', '2023-02-28 20:19:35', '2023-02-28 20:19:35'),
(1330, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '37', '14', '2023-02-28 20:51:08', '2023-02-28 20:51:08'),
(1331, 'Supervisory Visits', 'Updated', 'Updated a supervisory vist of site', '37', '14', '2023-02-28 20:53:49', '2023-02-28 20:53:49'),
(1332, 'Supervisory Visits', 'Added', 'Added a supervisory vist of site', '37', '14', '2023-02-28 21:06:40', '2023-02-28 21:06:40'),
(1333, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 20/02/2023', '37', '14', '2023-02-28 21:32:59', '2023-02-28 21:32:59'),
(1334, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 27/02/2023', '37', '14', '2023-02-28 21:37:02', '2023-02-28 21:37:02'),
(1335, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Cotswold House ChorleyShift Week : 20/02/2023, Monitoring Id: 357', '37', '14', '2023-02-28 21:37:54', '2023-02-28 21:37:54'),
(1336, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 06/03/2023', '37', '14', '2023-02-28 21:48:05', '2023-02-28 21:48:05'),
(1337, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 20/02/2023', '37', '14', '2023-02-28 21:51:07', '2023-02-28 21:51:07'),
(1338, 'Staff', 'Added', 'Added a staff with name: UZAIR KHAN, id: 177', '37', '14', '2023-02-28 21:52:19', '2023-02-28 21:52:19'),
(1339, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 20/02/2023, Monitoring Id: 360', '37', '14', '2023-02-28 21:52:45', '2023-02-28 21:52:45'),
(1340, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 27/02/2023', '37', '14', '2023-03-01 20:09:54', '2023-03-01 20:09:54'),
(1341, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 06/03/2023', '37', '14', '2023-03-01 21:29:03', '2023-03-01 21:29:03'),
(1342, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 361, Site: PRD068839 Tatton Gardens Chorley, Week Commencing: 27/02/2023, Activity Type: Service Complaint - Medium', '37', '14', '2023-03-01 21:37:09', '2023-03-01 21:37:09'),
(1343, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 361, Site: PRD068839 Tatton Gardens Chorley, Week Commencing: 27/02/2023, Activity Type: Service Complaint - Medium', '37', '14', '2023-03-01 21:38:59', '2023-03-01 21:38:59'),
(1344, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 20/02/2023', '37', '14', '2023-03-01 22:21:24', '2023-03-01 22:21:24'),
(1345, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 20/02/2023, Monitoring Id: 363', '37', '14', '2023-03-01 22:21:46', '2023-03-01 22:21:46'),
(1346, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 27/02/2023', '37', '14', '2023-03-01 22:26:43', '2023-03-01 22:26:43'),
(1347, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 06/03/2023', '37', '14', '2023-03-01 22:29:49', '2023-03-01 22:29:49'),
(1348, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 20/02/2023, Monitoring Id: 363', '37', '14', '2023-03-01 22:30:49', '2023-03-01 22:30:49'),
(1349, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 20/02/2023', '37', '14', '2023-03-01 22:35:23', '2023-03-01 22:35:23'),
(1350, 'Staff', 'Added', 'Added a staff with name: RAB NAWAZ MIAN, id: 178', '37', '14', '2023-03-01 22:37:25', '2023-03-01 22:37:25'),
(1351, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 20/02/2023, Monitoring Id: 366', '37', '14', '2023-03-01 22:39:37', '2023-03-01 22:39:37'),
(1352, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 20/02/2023, Monitoring Id: 366', '37', '14', '2023-03-01 22:39:48', '2023-03-01 22:39:48'),
(1353, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 20/02/2023, Monitoring Id: 366', '37', '14', '2023-03-01 22:39:57', '2023-03-01 22:39:57'),
(1354, 'Complaints', 'Added', 'Added a Complaint with id: 44, of site:Cotswold House Chorley', '37', '14', '2023-03-01 22:42:48', '2023-03-01 22:42:48'),
(1355, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:48:24', '2023-03-01 22:48:24'),
(1356, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:48:58', '2023-03-01 22:48:58'),
(1357, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:50:00', '2023-03-01 22:50:00'),
(1358, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:51:00', '2023-03-01 22:51:00'),
(1359, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:51:39', '2023-03-01 22:51:39'),
(1360, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:52:04', '2023-03-01 22:52:04'),
(1361, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 182Shift Week : 27/02/2023, Monitoring Id: 361', '37', '14', '2023-03-01 22:53:42', '2023-03-01 22:53:42'),
(1362, 'Monitoring', 'Deleted', 'Deleted MOnitoring of Site: 182Shift Week : 06/03/2023, Monitoring Id: 362', '37', '14', '2023-03-01 22:54:17', '2023-03-01 22:54:17'),
(1363, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 27/03/2023', '37', '14', '2023-03-01 22:58:09', '2023-03-01 22:58:09'),
(1364, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 06/03/2023', '37', '14', '2023-03-01 22:59:41', '2023-03-01 22:59:41'),
(1365, 'Complaints', 'Added', 'Added a Complaint with id: 45, of site:PRD068162 Cotswold House', '37', '14', '2023-03-01 23:03:53', '2023-03-01 23:03:53'),
(1366, 'Complaints', 'Updated', 'Updated a Complaint with id: 45, of site:PRD068162 Cotswold House', '37', '14', '2023-03-01 23:12:14', '2023-03-01 23:12:14'),
(1367, 'Complaints', 'Updated', 'Updated a Complaint with id: 45, of site:PRD068162 Cotswold House', '37', '14', '2023-03-02 20:06:21', '2023-03-02 20:06:21'),
(1368, 'Team', 'Added', 'Added a Team Member of name Chorley Borough Council', '14', '14', '2023-03-06 09:24:36', '2023-03-06 09:24:36'),
(1369, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '37', '14', '2023-03-06 23:48:55', '2023-03-06 23:48:55'),
(1370, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 27/02/2023, Monitoring Id: 353', '37', '14', '2023-03-07 01:13:29', '2023-03-07 01:13:29'),
(1371, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 13/03/2023', '37', '14', '2023-03-07 01:54:44', '2023-03-07 01:54:44'),
(1372, 'Complaints', 'Added', 'Added a Complaint with id: 46, of site:Leeds Kirkgate Market', '37', '14', '2023-03-07 01:58:20', '2023-03-07 01:58:20'),
(1373, 'Complaints', 'Updated', 'Updated a Complaint with id: 46, of site:Leeds Kirkgate Market', '37', '14', '2023-03-07 02:02:56', '2023-03-07 02:02:56'),
(1374, 'Complaints', 'Updated', 'Updated a Complaint with id: 46, of site:Leeds Kirkgate Market', '37', '14', '2023-03-07 02:04:10', '2023-03-07 02:04:10'),
(1375, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 06/03/2023, Monitoring Id: 356', '14', '14', '2023-03-08 00:38:31', '2023-03-08 00:38:31'),
(1376, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Leeds Kirkgate MarketShift Week : 06/03/2023, Monitoring Id: 356', '14', '14', '2023-03-08 00:38:49', '2023-03-08 00:38:49'),
(1377, 'Internal Meetings', 'Added', 'Added Internal Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:24:28', '2023-03-08 01:24:28'),
(1378, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:24:50', '2023-03-08 01:24:50'),
(1379, 'Internal Meetings', 'Deleted', 'Deleted Internal Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:26:25', '2023-03-08 01:26:25'),
(1380, 'Internal Meetings', 'Added', 'Added Internal Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:27:12', '2023-03-08 01:27:12'),
(1381, 'External Meetings', 'Deleted', 'Deleted External Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:29:53', '2023-03-08 01:29:53'),
(1382, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: wadawdwa', '14', '14', '2023-03-08 01:30:12', '2023-03-08 01:30:12'),
(1383, 'External Meetings', 'Deleted', 'Deleted External Meeting of Date: , with Title: wadawdwa', '14', '14', '2023-03-08 01:31:18', '2023-03-08 01:31:18'),
(1384, 'Internal Meetings', 'Updated', 'Updated Internal Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:31:40', '2023-03-08 01:31:40'),
(1385, 'Internal Meetings', 'Deleted', 'Deleted Internal Meeting of Date: , with Title: wadwadwa', '14', '14', '2023-03-08 01:31:56', '2023-03-08 01:31:56'),
(1386, 'Clients', 'Added', 'Added a New Client with id: 62, Name: Heather O’Hanlon ', '14', '14', '2023-03-16 20:58:01', '2023-03-16 20:58:01'),
(1387, 'Sites', 'Added', 'Added New Site with name: William Lyons House, Blackpool FY1 2DX, id: 183, of client: Blackpool Coastal Housing', '14', '14', '2023-03-16 20:58:30', '2023-03-16 20:58:30'),
(1388, 'Sites', 'Added', 'Added New Site with name: 53 Gorton Street Hostel, Blackpool FY1 3JW, id: 184, of client: Blackpool Coastal Housing', '14', '14', '2023-03-16 20:58:40', '2023-03-16 20:58:40'),
(1389, 'Staff', 'Added', 'Added a staff with name: JOHN O\'NEIL, id: 179', '37', '14', '2023-03-16 22:18:16', '2023-03-16 22:18:16'),
(1390, 'Staff', 'Added', 'Added a staff with name: MAAZ SUBHANI, id: 180', '37', '14', '2023-03-16 22:20:17', '2023-03-16 22:20:17'),
(1391, 'Staff', 'Added', 'Added a staff with name: MUHAMMAD ASIM, id: 181', '37', '14', '2023-03-16 22:22:18', '2023-03-16 22:22:18'),
(1392, 'Monitoring', 'Added', 'Added Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JW, on week: 13/03/2023', '37', '14', '2023-03-16 22:30:03', '2023-03-16 22:30:03'),
(1393, 'Monitoring', 'Added', 'Added Monitoring of Site: William Lyons House, Blackpool FY1 2DX, on week: 13/03/2023', '37', '14', '2023-03-16 22:32:21', '2023-03-16 22:32:21'),
(1394, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: William Lyons House, Blackpool FY1 2DXShift Week : 13/03/2023, Monitoring Id: 371', '37', '14', '2023-03-16 22:32:51', '2023-03-16 22:32:51'),
(1395, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: William Lyons House, Blackpool FY1 2DXShift Week : 13/03/2023, Monitoring Id: 371', '37', '14', '2023-03-16 22:33:15', '2023-03-16 22:33:15'),
(1396, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: service review meeting', '37', '14', '2023-03-17 01:54:32', '2023-03-17 01:54:32'),
(1397, 'Complaints', 'Added', 'Added a Complaint with id: 47, of site:53 Gorton Street Hostel, Blackpool FY1 3JW', '37', '14', '2023-03-17 18:09:04', '2023-03-17 18:09:04'),
(1398, 'Complaints', 'Updated', 'Updated a Complaint with id: 47, of site:53 Gorton Street Hostel, Blackpool FY1 3JW', '37', '14', '2023-03-17 18:14:43', '2023-03-17 18:14:43'),
(1399, 'Team', 'Added', 'Added a Team Member of name Blackpool Coastal Housing', '14', '14', '2023-03-17 18:50:33', '2023-03-17 18:50:33'),
(1400, 'Monitoring', 'Added', 'Added Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JW, on week: 20/03/2023', '37', '14', '2023-03-17 19:01:15', '2023-03-17 19:01:15'),
(1401, 'Monitoring', 'Added', 'Added Monitoring of Site: William Lyons House, Blackpool FY1 2DX, on week: 27/03/2023', '37', '14', '2023-03-17 19:03:51', '2023-03-17 19:03:51'),
(1402, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 20/03/2023', '37', '14', '2023-03-17 19:08:23', '2023-03-17 19:08:23'),
(1403, 'Monitoring', 'Added', 'Added Monitoring of Site: Leeds Kirkgate Market, on week: 27/03/2023', '37', '14', '2023-03-17 19:12:01', '2023-03-17 19:12:01'),
(1404, 'Roles', 'Added', 'Added Role with of name: Admin ', '14', '14', '2023-03-17 19:13:39', '2023-03-17 19:13:39'),
(1405, 'Roles Permissions', 'Updated', 'Updated Permissions for Role: Admin', '14', '14', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(1406, 'Team', 'Added', 'Added a Team Member of name Muhammad Abdullah', '14', '14', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(1407, 'Team', 'Added', 'Added a Team Member of name Muhammad Bilal', '14', '14', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(1408, 'Monitoring', 'Updated', 'Updated Monitoring of Site: William Lyons House, Blackpool FY1 2DX, on week: 20/03/2023', '37', '14', '2023-03-17 19:16:41', '2023-03-17 19:16:41'),
(1409, 'Monitoring', 'Added', 'Added Monitoring of Site: William Lyons House, Blackpool FY1 2DX, on week: 27/03/2023', '37', '14', '2023-03-17 19:22:51', '2023-03-17 19:22:51'),
(1410, 'Monitoring', 'Added', 'Added Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JW, on week: 27/03/2023', '37', '14', '2023-03-17 19:25:50', '2023-03-17 19:25:50'),
(1411, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 367, Site: PRD068162 Cotswold House, Week Commencing: 27/03/2023, Activity Type: Loss of Hours -> Blow out', '14', '14', '2023-03-17 19:29:06', '2023-03-17 19:29:06'),
(1412, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 364', '37', '14', '2023-03-17 19:32:03', '2023-03-17 19:32:03'),
(1413, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 27/02/2023, Monitoring Id: 364', '37', '14', '2023-03-17 19:32:38', '2023-03-17 19:32:38'),
(1414, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:34:13', '2023-03-17 19:34:13'),
(1415, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:34:36', '2023-03-17 19:34:36'),
(1416, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:34:42', '2023-03-17 19:34:42'),
(1417, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:35:02', '2023-03-17 19:35:02'),
(1418, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:35:09', '2023-03-17 19:35:09'),
(1419, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:35:26', '2023-03-17 19:35:26'),
(1420, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:35:35', '2023-03-17 19:35:35'),
(1421, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:36:00', '2023-03-17 19:36:00'),
(1422, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:36:12', '2023-03-17 19:36:12'),
(1423, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Primrose Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 365', '37', '14', '2023-03-17 19:36:36', '2023-03-17 19:36:36'),
(1424, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 13/03/2023', '37', '14', '2023-03-17 19:42:57', '2023-03-17 19:42:57'),
(1425, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 20/03/2023', '37', '14', '2023-03-17 19:46:53', '2023-03-17 19:46:53'),
(1426, 'Monitoring', 'Added', 'Added Monitoring of Site: Primrose Gardens Chorley, on week: 27/03/2023', '37', '14', '2023-03-17 19:50:31', '2023-03-17 19:50:31'),
(1427, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 27/02/2023', '37', '14', '2023-03-17 20:04:12', '2023-03-17 20:04:12'),
(1428, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 27/02/2023, Monitoring Id: 381', '37', '14', '2023-03-17 20:04:55', '2023-03-17 20:04:55'),
(1429, 'Complaints', 'Updated', 'Updated a Complaint with id: 45, of site:PRD068162 Cotswold House', '37', '14', '2023-03-17 20:23:33', '2023-03-17 20:23:33'),
(1430, 'Monitoring', 'Updated', 'Updated Monitoring of Site: PRD068162 Cotswold House, on week: 13/03/2023', '37', '14', '2023-03-17 20:24:40', '2023-03-17 20:24:40'),
(1431, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 06/03/2023, Monitoring Id: 368', '37', '14', '2023-03-17 20:26:15', '2023-03-17 20:26:15'),
(1432, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 368, Site: PRD068162 Cotswold House, Week Commencing: 06/03/2023, Activity Type: Service Complaint - Medium', '37', '14', '2023-03-17 20:28:19', '2023-03-17 20:28:19'),
(1433, 'Complaints', 'Updated', 'Updated a Complaint with id: 49, of site:PRD068162 Cotswold House', '37', '14', '2023-03-17 20:31:15', '2023-03-17 20:31:15'),
(1434, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 13/03/2023, Monitoring Id: 367', '37', '14', '2023-03-17 20:33:58', '2023-03-17 20:33:58'),
(1435, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 367, Site: PRD068162 Cotswold House, Week Commencing: 13/03/2023, Activity Type: Service Complaint - Medium', '37', '14', '2023-03-17 20:34:45', '2023-03-17 20:34:45'),
(1436, 'Complaints', 'Updated', 'Updated a Complaint with id: 50, of site:PRD068162 Cotswold House', '37', '14', '2023-03-17 20:42:29', '2023-03-17 20:42:29'),
(1437, 'Staff', 'Added', 'Added a staff with name: ADNAN ASLAM, id: 182', '37', '14', '2023-03-17 21:07:02', '2023-03-17 21:07:02'),
(1438, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 13/03/2023, Monitoring Id: 367', '37', '14', '2023-03-17 21:08:09', '2023-03-17 21:08:09'),
(1439, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 13/03/2023, Monitoring Id: 367', '37', '14', '2023-03-17 21:08:22', '2023-03-17 21:08:22'),
(1440, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068162 Cotswold HouseShift Week : 13/03/2023, Monitoring Id: 367', '37', '14', '2023-03-17 21:08:45', '2023-03-17 21:08:45'),
(1441, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 20/03/2023', '37', '14', '2023-03-17 21:11:44', '2023-03-17 21:11:44'),
(1442, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068162 Cotswold House, on week: 27/03/2023', '37', '14', '2023-03-17 21:13:01', '2023-03-17 21:13:01'),
(1443, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 27/02/2023', '37', '14', '2023-03-17 21:29:59', '2023-03-17 21:29:59'),
(1444, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 06/03/2023', '37', '14', '2023-03-17 21:41:56', '2023-03-17 21:41:56'),
(1445, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 06/03/2023, Monitoring Id: 385', '37', '14', '2023-03-17 21:42:30', '2023-03-17 21:42:30'),
(1446, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 13/03/2023', '37', '14', '2023-03-17 21:51:18', '2023-03-17 21:51:18'),
(1447, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 13/03/2023, Monitoring Id: 386', '37', '14', '2023-03-17 21:59:53', '2023-03-17 21:59:53'),
(1448, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 13/03/2023, Monitoring Id: 386', '37', '14', '2023-03-17 22:00:06', '2023-03-17 22:00:06'),
(1449, 'Clients', 'Added', 'Added a New Client with id: 63, Name: Harriet Edwards ', '37', '14', '2023-03-20 20:39:17', '2023-03-20 20:39:17'),
(1450, 'Sites', 'Added', 'Added New Site with name: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, id: 185, of client: Connexus-Group', '37', '14', '2023-03-20 20:40:55', '2023-03-20 20:40:55'),
(1451, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 13/03/2023', '37', '14', '2023-03-20 20:42:03', '2023-03-20 20:42:03'),
(1452, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 20/03/2023', '37', '14', '2023-03-20 20:42:49', '2023-03-20 20:42:49'),
(1453, 'Monitoring', 'Added', 'Added Monitoring of Site: LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS, on week: 27/03/2023', '37', '14', '2023-03-20 20:43:51', '2023-03-20 20:43:51'),
(1454, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 13/03/2023', '37', '14', '2023-03-20 23:15:51', '2023-03-20 23:15:51'),
(1455, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 20/03/2023', '37', '14', '2023-03-20 23:32:52', '2023-03-20 23:32:52'),
(1456, 'Monitoring', 'Added', 'Added Monitoring of Site: Cotswold House Chorley, on week: 27/03/2023', '37', '14', '2023-03-20 23:54:30', '2023-03-20 23:54:30'),
(1457, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 20/03/2023', '37', '14', '2023-03-21 00:06:39', '2023-03-21 00:06:39'),
(1458, 'Monitoring', 'Added', 'Added Monitoring of Site: PRD068839 Tatton Gardens Chorley, on week: 27/03/2023', '37', '14', '2023-03-21 00:09:22', '2023-03-21 00:09:22'),
(1459, 'Staff', 'Added', 'Added a staff with name: HAMZA ASHIQ, id: 183', '37', '14', '2023-03-21 00:12:20', '2023-03-21 00:12:20'),
(1460, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley, on week: 13/03/2023', '37', '14', '2023-03-21 00:13:24', '2023-03-21 00:13:24'),
(1461, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley, on week: 20/03/2023', '37', '14', '2023-03-21 00:19:25', '2023-03-21 00:19:25'),
(1462, 'Monitoring shift', 'Deleted', 'Deleted Shift of Monitoring of Site: Market Walk ChorleyShift Week : 20/03/2023, Monitoring Id: 396', '37', '14', '2023-03-21 00:19:58', '2023-03-21 00:19:58'),
(1463, 'Complaints', 'Added', 'Added Activity Occured on a Monitoring with Monitoring id: 395, Site: Market Walk Chorley, Week Commencing: 13/03/2023, Activity Type: Service Complaint - Low', '37', '14', '2023-03-21 00:22:40', '2023-03-21 00:22:40'),
(1464, 'Complaints', 'Updated', 'Updated a Complaint with id: 51, of site:Market Walk Chorley', '37', '14', '2023-03-21 00:31:00', '2023-03-21 00:31:00'),
(1465, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters CF72 8LX, on week: 13/03/2023', '37', '14', '2023-03-21 00:37:52', '2023-03-21 00:37:52'),
(1466, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters CF72 8LX, on week: 20/03/2023', '37', '14', '2023-03-21 00:40:07', '2023-03-21 00:40:07'),
(1467, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: service review meeting', '37', '14', '2023-03-21 19:20:09', '2023-03-21 19:20:09'),
(1468, 'Internal Meetings', 'Added', 'Added Internal Meeting of Date: , with Title: TUPE consultation', '37', '14', '2023-03-21 20:50:13', '2023-03-21 20:50:13'),
(1469, 'External Meetings', 'Added', 'Added External Meeting on  Date: , with Title: Mobilisation meeting', '37', '14', '2023-03-21 21:49:51', '2023-03-21 21:49:51'),
(1470, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JWShift Week : 20/03/2023, Monitoring Id: 372', '37', '14', '2023-03-21 22:12:30', '2023-03-21 22:12:30'),
(1471, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JWShift Week : 20/03/2023, Monitoring Id: 372', '37', '14', '2023-03-21 22:13:20', '2023-03-21 22:13:20');
INSERT INTO `activity_logs` (`id`, `module`, `activity`, `description`, `perform_by`, `user_id`, `created_at`, `updated_at`) VALUES
(1472, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JWShift Week : 20/03/2023, Monitoring Id: 372', '37', '14', '2023-03-21 22:13:54', '2023-03-21 22:13:54'),
(1473, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 53 Gorton Street Hostel, Blackpool FY1 3JWShift Week : 20/03/2023, Monitoring Id: 372', '37', '14', '2023-03-21 22:14:25', '2023-03-21 22:14:25'),
(1474, 'Monitoring', 'Added', 'Added Monitoring of Site: South Wales Fire & Rescue Service Headquarters CF72 8LX, on week: 27/03/2023', '37', '14', '2023-03-21 22:48:16', '2023-03-21 22:48:16'),
(1475, 'Monitoring', 'Added', 'Added Monitoring of Site: Market Walk Chorley, on week: 27/03/2023', '37', '14', '2023-03-21 23:28:57', '2023-03-21 23:28:57'),
(1476, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 Farringdon Road EC1R 3BW, on week: 13/03/2023', '37', '14', '2023-03-22 00:12:53', '2023-03-22 00:12:53'),
(1477, 'Monitoring', 'Added', 'Added Monitoring of Site: 111 Farringdon Road EC1R 3BW, on week: 20/03/2023', '37', '14', '2023-03-22 00:18:02', '2023-03-22 00:18:02'),
(1478, 'Complaints', 'Added', 'Added a Complaint with id: 52, of site:53 Gorton Street Hostel, Blackpool FY1 3JW', '37', '14', '2023-03-24 19:00:54', '2023-03-24 19:00:54'),
(1479, 'Complaints', 'Updated', 'Updated a Complaint with id: 52, of site:53 Gorton Street Hostel, Blackpool FY1 3JW', '37', '14', '2023-03-24 19:20:22', '2023-03-24 19:20:22'),
(1480, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 20/03/2023, Monitoring Id: 396', '37', '14', '2023-03-24 23:58:06', '2023-03-24 23:58:06'),
(1481, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: 111 Farringdon Road EC1R 3BWShift Week : 20/03/2023, Monitoring Id: 402', '37', '14', '2023-03-25 00:01:48', '2023-03-25 00:01:48'),
(1482, 'Complaints', 'Added', 'Added a Complaint with id: 53, of site:Cotswold House Chorley', '37', '14', '2023-03-27 23:17:37', '2023-03-27 23:17:37'),
(1483, 'Complaints', 'Added', 'Added a Complaint with id: 54, of site:Cotswold House Chorley', '37', '14', '2023-03-27 23:31:47', '2023-03-27 23:31:47'),
(1484, 'Staff', 'Added', 'Added a staff with name: SARWAR DIN, id: 184', '37', '14', '2023-03-27 23:36:42', '2023-03-27 23:36:42'),
(1485, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-27 23:37:01', '2023-03-27 23:37:01'),
(1486, 'Complaints', 'Added', 'Added a Complaint with id: 55, of site:Cotswold House Chorley', '37', '14', '2023-03-27 23:43:40', '2023-03-27 23:43:40'),
(1487, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-28 20:02:34', '2023-03-28 20:02:34'),
(1488, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-28 20:02:42', '2023-03-28 20:02:42'),
(1489, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-28 20:02:51', '2023-03-28 20:02:51'),
(1490, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-28 20:03:21', '2023-03-28 20:03:21'),
(1491, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: Market Walk ChorleyShift Week : 27/03/2023, Monitoring Id: 400', '37', '14', '2023-03-28 20:03:30', '2023-03-28 20:03:30'),
(1492, 'Monitoring shift', 'Updated', 'Updated a Shift of Monitoring of Site: PRD068839 Tatton Gardens ChorleyShift Week : 27/03/2023, Monitoring Id: 394', '37', '14', '2023-03-29 00:44:05', '2023-03-29 00:44:05'),
(1493, 'Complaints', 'Added', 'Added a Complaint with id: 56, of site:PRD068839 Tatton Gardens Chorley', '37', '14', '2023-03-29 20:43:44', '2023-03-29 20:43:44'),
(1494, 'Complaints', 'Updated', 'Updated a Complaint with id: 56, of site:PRD068839 Tatton Gardens Chorley', '37', '14', '2023-03-29 20:53:11', '2023-03-29 20:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emailaddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_clients`
--

CREATE TABLE `assigned_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_clients`
--

INSERT INTO `assigned_clients` (`id`, `user_id`, `client_id`, `created_at`, `updated_at`) VALUES
(58, '29', '38', '2023-02-21 20:39:36', '2023-02-21 20:39:36'),
(60, '30', '39', '2023-02-21 22:00:37', '2023-02-21 22:00:37'),
(61, '30', '40', '2023-02-21 22:00:37', '2023-02-21 22:00:37'),
(63, '30', '38', '2023-02-21 22:17:45', '2023-02-21 22:17:45'),
(64, '30', '41', '2023-02-21 22:17:48', '2023-02-21 22:17:48'),
(67, '33', '38', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(68, '33', '41', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(69, '33', '42', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(70, '33', '44', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(71, '33', '45', '2023-02-24 04:44:49', '2023-02-24 04:44:49'),
(72, '33', '47', '2023-02-24 04:57:55', '2023-02-24 04:57:55'),
(73, '34', '38', '2023-02-24 05:28:19', '2023-02-24 05:28:19'),
(74, '34', '41', '2023-02-24 05:28:19', '2023-02-24 05:28:19'),
(75, '34', '44', '2023-02-24 05:28:19', '2023-02-24 05:28:19'),
(76, '34', '45', '2023-02-24 05:28:19', '2023-02-24 05:28:19'),
(79, '32', '52', '2023-02-25 09:55:49', '2023-02-25 09:55:49'),
(84, '36', '38', '2023-02-26 18:37:02', '2023-02-26 18:37:02'),
(85, '37', '38', '2023-02-26 18:38:08', '2023-02-26 18:38:08'),
(86, '37', '41', '2023-02-26 18:38:08', '2023-02-26 18:38:08'),
(87, '37', '44', '2023-02-26 18:38:08', '2023-02-26 18:38:08'),
(88, '37', '53', '2023-02-26 18:38:53', '2023-02-26 18:38:53'),
(89, '32', '55', '2023-02-26 22:00:51', '2023-02-26 22:00:51'),
(91, '38', '43', '2023-02-26 22:03:48', '2023-02-26 22:03:48'),
(92, '38', '52', '2023-02-26 22:03:48', '2023-02-26 22:03:48'),
(93, '38', '55', '2023-02-26 22:03:48', '2023-02-26 22:03:48'),
(94, '32', '56', '2023-02-26 22:04:28', '2023-02-26 22:04:28'),
(96, '38', '56', '2023-02-26 22:04:28', '2023-02-26 22:04:28'),
(97, '32', '57', '2023-02-27 12:31:54', '2023-02-27 12:31:54'),
(99, '38', '57', '2023-02-27 12:31:54', '2023-02-27 12:31:54'),
(100, '32', '58', '2023-02-27 22:36:49', '2023-02-27 22:36:49'),
(102, '38', '58', '2023-02-27 22:36:49', '2023-02-27 22:36:49'),
(103, '37', '59', '2023-02-28 04:01:45', '2023-02-28 04:01:45'),
(104, '37', '60', '2023-02-28 20:11:12', '2023-02-28 20:11:12'),
(105, '37', '61', '2023-02-28 20:14:59', '2023-02-28 20:14:59'),
(110, '41', '61', '2023-03-06 09:24:36', '2023-03-06 09:24:36'),
(111, '35', '55', '2023-03-07 17:36:38', '2023-03-07 17:36:38'),
(112, '37', '62', '2023-03-16 20:58:01', '2023-03-16 20:58:01'),
(118, '42', '62', '2023-03-17 18:50:33', '2023-03-17 18:50:33'),
(119, '43', '38', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(120, '43', '41', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(121, '43', '44', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(122, '43', '60', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(123, '43', '61', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(124, '43', '62', '2023-03-17 19:14:37', '2023-03-17 19:14:37'),
(125, '44', '38', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(126, '44', '41', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(127, '44', '44', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(128, '44', '60', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(129, '44', '61', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(130, '44', '62', '2023-03-17 19:15:09', '2023-03-17 19:15:09'),
(131, '37', '63', '2023-03-20 20:39:17', '2023-03-20 20:39:17'),
(132, '43', '63', '2023-03-20 20:39:17', '2023-03-20 20:39:17'),
(133, '44', '63', '2023-03-20 20:39:17', '2023-03-20 20:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `bannedofficers`
--

CREATE TABLE `bannedofficers` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `Staff_Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SIA_License_Number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reason_of_Ban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `clientname`, `name`, `number`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(38, 'Leeds City Council', 'Kevin Bradbury', '07545604113', 'Kevin.Bradbury@leeds.gov.uk', 14, '2023-02-21 19:57:49', '2023-02-21 19:57:49'),
(41, 'Phantom Studios', 'Rashida Dixon (receptionist & office assistant)', '02074905639', 'rashida@phntms.com', 14, '2023-02-21 21:56:24', '2023-02-21 21:56:24'),
(43, 'Test client 1', '2165484568541', '21321654846954165', 'test@client.com', 31, '2023-02-22 22:19:54', '2023-02-22 22:19:54'),
(44, 'South Wales Fire & Rescue Service Headquarters', 'Lisa Anthony', '07747693354', 'l-anthony@southwales-fire.gov.uk', 14, '2023-02-23 20:23:19', '2023-02-24 19:57:56'),
(52, 'Yousuf', '911', '+932434234233', 'demo@user.com', 31, '2023-02-25 09:55:49', '2023-02-25 09:55:49'),
(55, 'ali', '911', '023423423423', 'ali@gmail.com', 31, '2023-02-26 22:00:51', '2023-02-26 22:00:51'),
(56, 'ahmed', '911', '34234234234234', 'test@user.com', 31, '2023-02-26 22:04:28', '2023-02-26 22:04:28'),
(57, 'Hamza', '911', '0423423423', 'netaro5960@bymercy.com', 31, '2023-02-27 12:31:54', '2023-02-27 12:31:54'),
(58, 'test client 3--updated', '911', '34234234234234', 'demo@user.com', 31, '2023-02-27 22:36:49', '2023-02-27 22:36:49'),
(60, 'Caerphilly County Borough Council', 'Dawn Mered', '01443 866202', 'meredd@caerphilly.gov.uk', 14, '2023-02-28 20:11:12', '2023-02-28 20:11:12'),
(61, 'Chorley Council', 'Lorraine McIntyre', '07858166868', 'lorraine.mcintyre@chorley.gov.uk', 14, '2023-02-28 20:14:59', '2023-02-28 20:14:59'),
(62, 'Blackpool Coastal Housing', 'Heather O’Hanlon', '01253476938', 'heather.o\'hanlon@bch.co.uk', 14, '2023-03-16 20:58:01', '2023-03-16 20:58:01'),
(63, 'Connexus-Group', 'Harriet Edwards', '03332313233', 'harriet.edwards@connexus-group.co.uk', 14, '2023-03-20 20:39:17', '2023-03-20 20:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_meetings_models`
--

CREATE TABLE `external_meetings_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Meeting_Date_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_attendees` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_Title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_minutes` longtext COLLATE utf8mb4_unicode_ci,
  `Meeting_outcomes` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `external_meetings_models`
--

INSERT INTO `external_meetings_models` (`id`, `Meeting_Date_time`, `Meeting_attendees`, `Meeting_Title`, `Meeting_minutes`, `Meeting_outcomes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '16/03/2023', 'Amanda, Jacqui, Janeth', 'service review meeting', 'Side note: Jacqui had to speak on behalf of Nicola as she could not attend the meeting. \r\n\r\nCotswold House\r\nThere have been some issues on site:\r\n-	Concierge has not correctly checked the names provided on the rough sleeper list, which ended with the admission of the wrong rough sleeper on site – this is a major health and safety issue – guard on shift: Adnan Sohail\r\n**I have already discussed with the suspected person and the rest of the team to remind them of the importance of being sure about the people they allow entrance.\r\n\r\n-	Security officers for the Winter Watch scheme have left the site early (on three occasions) – guard on shift: Zubair and Muhammad Awais \r\n**Both security officers are on their last warning. Another complaint from this will be removed from the site. \r\n\r\n-	Timekeeping issue with one of the concierges – Adnan Sohail \r\n**I have also received two health and safety concerns regarding Adnan previously, and now it has come to my attention of his timekeeping, so I will discuss with HR how to monitor his performance.\r\n\r\n-	Concierges not familiarising themselves with the residents’ risk assessment provided to them which could help them to detect possible suspicious behaviour. For example, there was a situation where a resident had gone out at around 4am, which is not authorised as per site rules. Although the concierge warned the resident about this and marked them on paper as unauthorised, the concierge hadn’t taken the initiative to monitor the resident on the CCTV to figure out what the resident could be doing at the time. Amanda explained that if the concierge had taken the time to read the risk assessment, they would have had in mind that this was suspicious for that particular person leaving the site at that time and coming back 7mins later. \r\n-	Concierge not fully understanding what an incident is and if something requires reporting, or if it’s just general communication that needs passing to day staff\r\n**I want to provide ‘using your own initiative’ training and how to read risk assessments effectively. It will be a general one-to-one discussion with the officers. I will provide them with scenarios, test their reactions and actions, and offer information packages for future reference. \r\nAlthough I have already trained them on reporting incidents and provided them with an information sheet for future reference, I will have to have a quick word on what can be considered an incident.\r\n\r\n-	Not enough monitoring of the rough sleepers. \r\n**I will discuss with the security guards to kindly remind them why they are there in the first place and to be literate about their tasks.\r\n\r\n-	Amanda has mentioned that the door access system is currently down, so the concierge has had to open the door physically. They have done a great job on this, but there have been occasions where the doors have not been closed properly. \r\n**I will send a kind reminder to everyone to be mindful of this. \r\n\r\n-	Amanda has suggested arranging a fire alarm procedure training as a refresher for the officers as it’s been a while since they had to deal with the fire alarm on-site, so it will be good for the officers to have that knowledge.\r\n**I can advise each concierge to arrive on site early so day staff or Amanda can quickly go through this with them.\r\n\r\n\r\nPrimrose Gardens\r\n-	When concierges pick up the phone, they sometimes forget to introduce themselves and mention the site name.\r\n**I will kindly remind them about this\r\n\r\n-	Jacqui mentioned that the concierge should be more detailed when reporting things on-site. \r\n\r\nTatton Gardens\r\n-	There have been occasions where the concierge was occupied elsewhere on site instead of being available for handover. Jacqui has explained that Nicola wants the concierge to spend time at the reception when they come in and be attentive to the handover.\r\n**I will be advising all on this. \r\n\r\n-	One of the concierge has been slightly oversharing and becoming too friendly with the local people from the site, which is unprofessional. – guard in question: Ryan Bradley\r\n**I will advise Ryan to maintain that professionalism. I understand he’s probably trying to be nice, but we need boundaries in the workplace. \r\n\r\n-	As the site is now ready to have residents move in, Jacqui has explained that Nicola needs the concierge to be ready for this change, as they have been dealing with an empty site for a while, and now the site will be filled with people; therefore things will be very different in terms of dealing with people and dealing with certain situations which means concierges will need assertive and prepared.\r\n\r\nA common issue on all sites:\r\nDOBs and other company booklets are falling apart due to binders.', 'Meeting reflection:\r\nThe residents at Primrose Gardens are pleased with our security personnel because they are friendly and take time to chat with them and do welfare checks. \r\nBesides the issues mentioned above for Cotswold, the concierges and extra security try their best to keep the site safe. Communication has improved as well. \r\nAs Tatton Gardens is still relatively new, the major test will come once residents move in, and this will show us how the concierges handle situations.\r\n\r\n**Contract Manager to provide more training and discuss with the security guards to improve service.', 14, '2023-03-17 01:54:32', '2023-03-17 01:54:32'),
(2, '03/03/2023', 'Steven, Abhi, Janeth', 'service review meeting', 'Time and location: Market Walk Office @ 15:15\r\n\r\nAttendees:\r\nSteven \r\nAbhi - attended via phone call\r\nJaneth\r\n\r\nJaneth and Steven reviewed some of the points mentioned in the previous meeting: \r\nPaperwork completion \r\nTraining extra guards \r\nQR tags site reports\r\n\r\nSteven has confirmed that the guards have been completing the paperwork more often now; however, Ryan has been slightly lazy with it. Although Ryan does complete the site diary, but he doesn\'t log the diary with enough information. Steven has suggested that Ryan could start detailing the events in more detail so when staff are reading can have a clear picture of what has happened on site. \r\nThere are also gaps in the DOBs. Steven has given various dates from December and January which are missing. \r\nMost of these dates were covered by Ryan. \r\n\r\nWe now have three guards trained at Market Walk; Muhammad Awais, Ahmed and Hamza. \r\nHamza is reletectvely new but has shown good potential so far. Mo and Ahmed have covered the site multiple times, and Steven is pleased. \r\n\r\nQR tags reports have been emailed to Steven and Elle per the discussion from the previous meeting.\r\nSteven has suggested installing electronic tag points. We have been having issues with the current QR tags, such as tags being damaged from wet weather conditions, removed by bypasses, or sometimes tags not scanning on the app.\r\n\r\nBody cam cameras - Steven has explained the council have purchased some body cam cameras, which our guards can start using if Secure FM can have an agreement that if the cameras get damaged, then it is Secure FM responsibility to have them fixed or replaced. I have advised Steven that I will check this with the team before I can provide him with an answer on this. \r\n\r\nEvents team - Steven has mentioned the council usually organises a couple of events around the area in which security is always needed; in the past, different security companies have handled security, but as we are currently the contract holder, Steven wants to look into whether Secure FM can provide security on these events. Steven has advised he will speak with the events team and possibly have them contact Secure FM to organise security for future events.', 'Overall, site security is being met, besides the odd paperwork issue with one of the guards.\r\nThe contract manager will speak with Ryan regarding paperwork and identify what we can do to help.\r\n\r\nThe contract manager is to liaise with the management team on installing a different type of tag system for the site, which will eventually remove the current issues with weather conditions, tags being ripped off, or tags not scanning on the app. \r\n\r\nThe contract manager will discuss the body cam cameras agreement with the team.', 14, '2023-03-21 19:20:09', '2023-03-21 19:20:09'),
(3, '02/03/2023', 'Dionne Nicholson, Heather O\'Hanlon, Janeth, Farah, Abhi', 'Mobilisation meeting', 'Meeting via Teams at 16:30--\r\n\r\nWe discussed the following points:\r\n\r\nWe have asked the client for more information with the TUPE so we could know how many holidays the officers have already taken, shift pattern and hours, rates, etc.\r\n-	The client has referred us to check with Vistech Services (the current service provider) \r\n\r\nWe have asked them about signing the contract, to which they responded that Sarah Gordon would deal with this, but they were still determining whether it would need to be done face-to-face or via email.\r\n\r\nThe client wants us to cover two sites; William Lyons House and Gorton Street Hostel. The cover should start Monday the 13th of March, although their email says the contract mobilisation is Sunday the 12th of March. \r\nThere is a third site, Central Drive Hostel, which is currently under review with the current service provider, and they will continue to cover this site until the end of March 2023. \r\nAbhi and I hope that providing fantastic service with the current two sites will also convince the client to take us on board with the 3rd site. \r\n\r\nThe shift pattern for William Lyons House is 17:00-04:00 (guards arrive on site by 16:50). The two officers working on this site will be TUPE to us. Farah will need contact details for Vistech Services so she can begin the TUPE process. We have arranged a meeting with one of the guards, Maaz, tomorrow as he will be on shift. Farah will have further discussions with him regarding the transfer and check his documents. John cannot meet us tomorrow; therefore, Farah has arranged to contact him via email to retrieve documents. \r\n\r\nThere was a bit of confusion with the shift timing for Gorton Street Hostel, but the client has said information is available on the tender.\r\n\r\nOfficers’ uniforms must be dressed as smart casual;\r\n-	Badge on display\r\n-	No jeans/branded clothing\r\n-	No shirt and tie\r\n-	Officers can wear polo shirts\r\n-	Preferably no hi-vis jackets; however, Farah has advised the client to allow us to leave each site a hi-vis vest in case they need to patrol outside the building – the client has agreed to this.\r\n\r\nThe client has strongly advised our officers to commute using a car or bike between sites as it is unsuitable for walking or public transport, especially at night.', 'We organised the following meetings to move forward with the contract.\r\n\r\nWe have a meeting with the client on Wednesday 8th, at 1pm for risk assessment and site survey.\r\nAddress: 32 Exchange Street FY1 2DX\r\n\r\nWe have a meeting on Thursday 9th, for the Training and Induction of our officers.\r\nAddress: 53 Gorton Street, and then we will head to William Lyons House.', 14, '2023-03-21 21:49:51', '2023-03-21 21:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incident_reports`
--

CREATE TABLE `incident_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_staff` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_sia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Week_Commencing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci,
  `action` text COLLATE utf8mb4_unicode_ci,
  `people_informed` text COLLATE utf8mb4_unicode_ci,
  `police_involved` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `witness_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `witness_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `witness_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `witness_statement` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incident_reports`
--

INSERT INTO `incident_reports` (`id`, `client_id`, `site_id`, `site_staff`, `guard_id`, `guard_sia`, `guard_phone`, `Week_Commencing`, `shift_day`, `time`, `report_date`, `detail`, `action`, `people_informed`, `police_involved`, `witness_name`, `witness_phone`, `witness_email`, `witness_statement`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(14, '38', '170', 'Daniel Abera, Shazaib Elahi', '173', '1012597546605457', '07732779098', '06/02/2023', 'Friday', '11:30', '13/02/2023', 'The client emailed on 13th February explaining there was an incident on Friday 10th and now they need the body cam footage of the officers. \r\n\r\nClient email:\r\nThere was an incident on Friday 10/02/2023 on the outdoor market. At around 11.30 Shazaib approached a group of members of the public who were sat on an empty stall on the outdoor market. He suspected at least one of the group was smoking marijuana so he asked them to leave. One of the group became particularly abusive and threatening.\r\n \r\nShazaib called for Daniel who also became involved and abuse was directed at him also.\r\n \r\nIve checked the cameras, but Dan mentions you downloaded and cleared them on Saturday.\r\n \r\nCan you please review the footage for Friday. The incident will have started with Shazaib at around 11.30am, and Daniel soon after.\r\n \r\nThe individual concerned who was abusive and threatening will be pushing a bike. We know the individual and want to progress to banning him from the market once again.', 'I\'ve reviewed the body footage from Daniel\'s camera and Shazaib\'s camera to locate the footage which the client requested for. \r\nOnce the footage was located, I created two folders on OneDrive for the client to access the footage. One folder is named \'Daniel Abera Bodycam.\' \r\nand the other is \'Shazaib Elahi Bodycam\'. I\'ve passed login details to the OneDrive account to the client via email. \r\n\r\nhttps://onedrive.live.com/?id=root&cid=7EE7AE59692F7F68\r\n\r\nEmail: securefm-kirkgatemarket@outlook.com\r\nPassword: Secure0411-leeds', 'Contract Manager, Control Team', 'No', 'Daniel Abera', '07469927438', 'danielabera500@gmail.com', 'No statement. The incident was reported directly to the client by the guards.', '1677240768-supporting_evidence.zip', '14', '2023-02-24 19:12:48', '2023-02-24 19:12:48'),
(15, '61', '178', 'N/A', NULL, NULL, NULL, NULL, 'Thursday', '16:45', '24/02/2023', 'Unsure as to when the incident took place or who has done it. But as the client sent an email on Friday afternoon, the incident would have occurred on the Thursday 23rd Feb night shift; Adnan Sohail and Muhammad Ubair were on shift.\r\n\r\nOn Friday, 24th Feb, Amanda Miller emailed the Contract Manager regarding the chair, which looked broken from the photo Amanda had attached to the email.\r\n\r\nClient email:\r\nHi Janeth\r\n\r\nPlease see picture of the security officers chair.\r\n \r\nWould you be able to replace this.', 'When we arrived on site, we investigated and checked the chair to find the source of the problem. We realised the chair wasn\'t broken and needed the top bit pushed and shifted towards the front. We had also labelled the chair as Secure FM property for the concierge and security guards.', 'Contract Manager', 'No', 'no witness', 'N/A', 'N/A', 'N/A', '1677594314-security_chair.jpg', '14', '2023-02-28 21:25:14', '2023-02-28 21:25:14'),
(16, '38', '170', 'Daniel Abera, Tedros Mhari', '28', '1012161649209858', '07469927438', '13/03/2023', 'Saturday', '16:30', '20/03/2023', 'Kevin Bradbury sent an email to Contract Manager outlining details of an incident on Saturday, 18th March, around 16:30. \r\n\r\nEmail from the client:\r\nHi Janeth,\r\nJust copying you in to details of an incident we reported to Police on Saturday.\r\nIt is really difficult when dealing with youths and very frustrating for the guards as they are limited to what they can do with younger people. Although Daniel caught the culprit\r\nI had to tell him to let the person go because we could not hold on to him while waiting for the Police to attend.\r\nPlease pass on our thanks to Dan and Teddy for dealing with the incident professionally and avoiding further issues within the market.\r\nWe will do what we can to try to identify the perpetrators and deal with them through the Police.', 'The Contract Manager has spoken with Tedros and Daniel on call and checked on their well-being.\r\nBoth security officers have explained their frustration in dealing with the youth and stated feeling a little disappointed because some things were damaged on site.  \r\n\r\nThe Contract Manager has reassured officers they have done an amazing job in doing all they could and that the client has expressed immersed gratitude. The contract manager has also explained we are all extremely thankful for their hard work and should not feel disappointed at all.', 'Contract Manager', 'Yes', 'Daniel Abera, Tedros Mhari, Kevin Bradbury (site manager)', '07469927438 (Daniel), 07939231868 (Tedros), 07545604113 (Kevin)', 'danielabera500@gmail.com -(Daniel), yodittedi@gmail.com -(Tedros)', '\'\'At around 4.30pm on Saturday 18th April 2 x female and 1 x male youth came into Kirkgate market. They started pushing each other into stalls, kicking over bins and sign boards, then jumping on them, generally causing a nuisance. They were asked to leave several times and refused and their behaviour became confrontational with security guards. After some time the three were removed from the market but kept running to another door and coming back into the market. This continued until the market was closing at 5.30pm. The three were removed from the market by security via a door on Kirkgate and the door locked as the market was closing down. The male ran and kicked the door causing the glass to break. The three then left but came back into the market via another door which had not been locked at that point. They were eventually walked out of the market at New York Street exit opposite the Post Office. The male then ran around and found a stone to throw at the door. He threw the stone and broke the glass on the door. The three then went to a shutter where traders were still packing away and the male started to kick the shutter causing it to bend. These incidents were captured on security boy cams and footage of the three individuals is available on site.\r\nI would describe the male as white aged around 14 years, just under 5ft tall, slim build with fair hair short back and sides and curly on top, wearing a hoodie part camouflage pattern with dark blue arms and front (possibly ADIDAS. Dark tracksuit trousers with white stripes and trainers. Female 1 just over 5 ft approx. 14 years old white female with long (half way down back) mousey / dark hair with a dark sweatshirt with Mickie and Minnie Mouse on it, blue jeans and trainers. Female 2 approx. 14 years of age white female long fair hair half way down her back, grey jeans and white shirt and blue puffer jacket. We have images of all three.\'\'', NULL, '14', '2023-03-20 19:21:17', '2023-03-20 19:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `internal_meetings_models`
--

CREATE TABLE `internal_meetings_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Meeting_Date_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_attendees` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_Title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Meeting_minutes` longtext COLLATE utf8mb4_unicode_ci,
  `Meeting_outcomes` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internal_meetings_models`
--

INSERT INTO `internal_meetings_models` (`id`, `Meeting_Date_time`, `Meeting_attendees`, `Meeting_Title`, `Meeting_minutes`, `Meeting_outcomes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '03/03/2023', 'Janeth, Farah, Maaz Subhani, John O\'Neil', 'TUPE consultation', 'The meeting took place at Williams Lyon House at 17:40\r\n\r\nJaneth and Farah introduced themselves to the guards and explained why they were on site. \r\n\r\nWe have asked the guards if they know the TUPE process and if they are happy to continue with Secure FM Ltd.\r\nThe guards responded they did want to continue with us.\r\n\r\nFarah has provided the officers with a welcome pack which consists of an application form, a medical questionnaire and a competency test for screening and vetting purposes. Farah has explained that the application can also be completed online and that she has already sent the officers a link to the form via email. \r\n\r\nFarah has taken photos of the officers\' documents and a photo of the company ID card.\r\n\r\nWe have requested the officers\' uniform sizes;\r\nMaaz - medium polo shirt\r\nJohn - medium polo shirt\r\n\r\nThe officers have mentioned they do not need a hi-vis vest or jacket; however, Farah has insisted on leaving one hi-vis vest on site for both officers to use. \r\n\r\nThe officers have explained that they are being paid £9.84 per hour 10th of every month. \r\nJohn has explained he has taken 20 holidays since working for Vistech. \r\nMaaz has explained he has not taken any holidays; however, he has informed us that he has already booked holidays 24th/25th July- 7th August (yet to be confirmed). He has also mentioned he\'s trying to book another holiday with Vistech—dates to be confirmed. \r\n\r\nBoth officers have completed ACT Training and First Aid. \r\n\r\nOFFICERS\' SHIFT TIMING:\r\nMAAZ Thursday-Friday 17:00-04:00\r\nMAAZ Saturday-Sunday 19:00-04:00\r\n\r\nJOHN Monday-Wednesday 17:00-04:00\r\nJOHN Saturday-Sunday 09:00-19:00\r\n\r\n04:00-08:30 site is left unattended. Officers are allowed to take the master key home. \r\nDay staff have their master key. \r\n\r\nSITE SPECIFICATION:\r\n14 flats for age 17-24-year-olds with mental health issues\r\n\r\nMaaz has asked about fuel expenses as he drives from Blackburn - Farah has responded we will look into it, but as of yet, the company do not cover officers\' transport expenses to work. \r\n\r\nWe have provided contact details in case officers have further questions or queries.', 'Officers are happy to transfer over to Secure FM Ltd.', 14, '2023-03-21 20:50:13', '2023-03-21 20:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_171436_create_admins_table', 1),
(6, '2022_09_09_230733_create_clients_table', 1),
(7, '2022_09_11_143553_create_sites_table', 1),
(8, '2022_09_12_000753_create_bannedofficers_table', 1),
(9, '2022_09_12_021905_create_activities_table', 1),
(10, '2022_09_13_004830_create_monitorings_table', 1),
(11, '2022_09_13_013021_create_activitiesoccureds_table', 1),
(12, '2022_10_12_151103_create_internal_meetings_models_table', 1),
(13, '2022_10_12_151110_create_external_meetings_models_table', 1),
(14, '2022_10_12_151631_create_supervisoryvisits_models_table', 1),
(15, '2022_10_12_201033_create_stafflist_models_table', 1),
(16, '2022_10_12_201056_create_subcontractor_models_table', 1),
(17, '2022_10_18_114440_create_roles_table', 2),
(18, '2022_10_18_114547_create_permissions_table', 2),
(19, '2022_10_18_114722_create_tabs_table', 2),
(20, '2022_10_19_064801_add_user_role_column_in_users_table', 3),
(21, '2022_10_22_062942_add_status_is_paid_columns_in_users_table', 4),
(22, '2022_10_22_073213_create_complains_table', 5),
(23, '2022_10_25_060125_add_status_column_in_activitiesoccureds_table', 6),
(24, '2022_10_27_055905_create_plans_table', 7),
(25, '2022_10_27_072347_add_plan_column_in_users_table', 8),
(26, '2022_10_27_075051_add_requested_plan_column_in_users_table', 9),
(27, '2022_10_28_054317_add_subscription_date_column_in_users_table', 10),
(28, '2019_05_03_000001_create_customer_columns', 11),
(29, '2019_05_03_000002_create_subscriptions_table', 11),
(30, '2019_05_03_000003_create_subscription_items_table', 11),
(31, '2022_10_31_110402_add_multiple_columns_in_monitoring_table', 12),
(32, '2022_11_01_061607_create_monitoring_staff_table', 13),
(33, '2022_11_03_075808_add_day_column_in_activities_occured_table', 14),
(34, '2022_11_03_103022_add_multiple_columsn_in_activities_occured_table', 15),
(35, '2022_11_03_103601_remvoe_multiple_columsn_in_activities_occured_table', 16),
(36, '2022_11_03_103800_add_multiple_columsn_in_activities_occured_table', 17),
(37, '2022_11_03_103907_remvoe_multiple_columsn_in_activities_occured_table', 18),
(38, '2022_11_03_103957_add_multiple_columsn_in_activities_occured_table', 19),
(39, '2022_11_07_053705_create_supervisory_visits_table', 20),
(40, '2022_11_07_054934_add_user_id_in_supervisory_visits_table', 21),
(41, '2022_11_07_083305_add_day_column_in_supervisory_visits_table', 22),
(42, '2022_11_10_072420_create_activity_logs_table', 23),
(43, '2022_11_11_070937_create_assigned_clients_table', 24),
(44, '2022_11_14_114508_add_description_column_in_activity_logs_table', 25),
(45, '2022_11_16_055058_add_column_in_users_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `monitorings`
--

CREATE TABLE `monitorings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Week_Commencing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total_hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_day_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_day_7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_time_day1_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day1_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day1_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day1_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day2_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day2_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day2_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day2_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day3_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day3_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day3_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day3_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day4_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day4_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day4_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day4_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day5_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day5_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day5_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day5_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day6_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day6_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day6_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day6_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time_day7_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time_day7_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardname_day7_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift_hours_day7_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitorings`
--

INSERT INTO `monitorings` (`id`, `sitename_id`, `Week_Commencing`, `Total_hours`, `shift_day_1`, `start_time_day1`, `end_time_day1`, `guardname_day1`, `shift_hours_day1`, `shift_day_2`, `start_time_day2`, `end_time_day2`, `guardname_day2`, `shift_hours_day2`, `shift_day_3`, `start_time_day3`, `end_time_day3`, `guardname_day3`, `shift_hours_day3`, `shift_day_4`, `start_time_day4`, `end_time_day4`, `guardname_day4`, `shift_hours_day4`, `shift_day_5`, `start_time_day5`, `end_time_day5`, `guardname_day5`, `shift_hours_day5`, `shift_day_6`, `start_time_day6`, `end_time_day6`, `guardname_day6`, `shift_hours_day6`, `shift_day_7`, `start_time_day7`, `end_time_day7`, `guardname_day7`, `shift_hours_day7`, `user_id`, `created_at`, `updated_at`, `start_time_day1_2`, `end_time_day1_2`, `guardname_day1_2`, `shift_hours_day1_2`, `start_time_day2_2`, `end_time_day2_2`, `guardname_day2_2`, `shift_hours_day2_2`, `start_time_day3_2`, `end_time_day3_2`, `guardname_day3_2`, `shift_hours_day3_2`, `start_time_day4_2`, `end_time_day4_2`, `guardname_day4_2`, `shift_hours_day4_2`, `start_time_day5_2`, `end_time_day5_2`, `guardname_day5_2`, `shift_hours_day5_2`, `start_time_day6_2`, `end_time_day6_2`, `guardname_day6_2`, `shift_hours_day6_2`, `start_time_day7_2`, `end_time_day7_2`, `guardname_day7_2`, `shift_hours_day7_2`) VALUES
(349, '170', '30/01/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-21 20:20:06', '2023-02-21 20:20:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '170', '06/02/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-21 20:23:08', '2023-02-21 20:25:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '170', '13/02/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-21 20:32:03', '2023-02-21 20:32:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '170', '20/02/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-21 21:39:51', '2023-02-21 21:39:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '170', '27/02/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-21 21:41:57', '2023-03-07 01:13:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '171', '26/02/2023', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, '2023-02-22 22:22:49', '2023-02-22 22:22:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '170', '06/03/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-28 20:09:05', '2023-03-08 00:38:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '178', '20/02/2023', '136.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-28 21:32:59', '2023-02-28 21:37:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '178', '27/02/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-28 21:37:02', '2023-02-28 21:37:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '178', '06/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-28 21:48:05', '2023-02-28 21:48:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '180', '20/02/2023', '78.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-02-28 21:51:07', '2023-02-28 21:52:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '181', '20/02/2023', '131.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:21:24', '2023-03-01 22:30:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '181', '27/02/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:26:43', '2023-03-17 19:32:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '181', '06/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:29:49', '2023-03-17 19:36:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '182', '20/02/2023', '131.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:35:23', '2023-03-01 22:39:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '180', '13/03/2023', '78.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:58:09', '2023-03-17 21:08:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '180', '06/03/2023', '78.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-01 22:59:41', '2023-03-17 20:26:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '170', '13/03/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-07 01:54:44', '2023-03-07 01:54:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '184', '13/03/2023', '64.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-16 22:30:03', '2023-03-16 22:30:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '183', '13/03/2023', '94.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-16 22:32:21', '2023-03-16 22:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '184', '20/03/2023', '64.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:01:15', '2023-03-21 22:14:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '183', '20/03/2023', '94.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:03:51', '2023-03-17 19:16:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '170', '20/03/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:08:23', '2023-03-17 19:08:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '170', '27/03/2023', '131.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:12:01', '2023-03-17 19:12:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '183', '27/03/2023', '94.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:22:51', '2023-03-17 19:22:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '184', '27/03/2023', '64.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:25:50', '2023-03-17 19:25:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '181', '13/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:42:57', '2023-03-17 19:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '181', '20/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:46:53', '2023-03-17 19:46:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '181', '27/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 19:50:31', '2023-03-17 19:50:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '180', '27/02/2023', '77.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 20:04:12', '2023-03-17 20:04:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '180', '20/03/2023', '78.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 21:11:44', '2023-03-17 21:11:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '180', '27/03/2023', '78.75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 21:13:01', '2023-03-17 21:13:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '182', '27/02/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 21:29:59', '2023-03-17 21:29:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '182', '06/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 21:41:56', '2023-03-17 21:42:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '182', '13/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-17 21:51:18', '2023-03-17 22:00:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '185', '13/03/2023', '80.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 20:42:03', '2023-03-20 20:42:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '185', '20/03/2023', '80.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 20:42:49', '2023-03-20 20:42:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '185', '27/03/2023', '80.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 20:43:51', '2023-03-20 20:43:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '178', '13/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 23:15:51', '2023-03-20 23:15:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '178', '20/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 23:32:52', '2023-03-20 23:32:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '178', '27/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-20 23:54:30', '2023-03-20 23:54:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '182', '20/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:06:39', '2023-03-21 00:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '182', '27/03/2023', '130.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:09:22', '2023-03-29 00:44:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '179', '13/03/2023', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:13:24', '2023-03-21 00:13:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '179', '20/03/2023', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:19:25', '2023-03-24 23:58:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '176', '13/03/2023', '128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:37:52', '2023-03-21 00:37:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '176', '20/03/2023', '128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 00:40:07', '2023-03-21 00:40:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '176', '27/03/2023', '128', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 22:48:16', '2023-03-21 22:48:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '179', '27/03/2023', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-21 23:28:57', '2023-03-28 20:03:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, '175', '13/03/2023', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-22 00:12:53', '2023-03-22 00:12:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '175', '20/03/2023', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2023-03-22 00:18:02', '2023-03-25 00:01:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monitoring_staff`
--

CREATE TABLE `monitoring_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monitoring_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shift_day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_out` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `guard_time_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_time_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_sia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monitoring_staff`
--

INSERT INTO `monitoring_staff` (`id`, `monitoring_id`, `shift_day`, `time_in`, `time_out`, `staff_id`, `total_hours`, `guard_hours`, `created_at`, `updated_at`, `guard_time_in`, `guard_time_out`, `staff_sia`, `staff_phone`) VALUES
(1415, '349', '1', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1416, '349', '2', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1417, '349', '3', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1418, '349', '4', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1419, '349', '5', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1420, '349', '6', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1012161649209858', '07469927438'),
(1421, '349', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '10:00', '19:30', '1017873574846367', '07939231868'),
(1422, '349', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '10:00', '19:30', '1017873574846367', '07939231868'),
(1423, '349', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '10:00', '19:30', '1017873574846367', '07939231868'),
(1424, '349', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '10:00', '19:30', '1017873574846367', '07939231868'),
(1425, '349', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '10:00', '19:30', '1012597546605457', '07732779098'),
(1426, '349', '6', '07:30', '19:30', '29', '12', '12', '2023-02-21 20:20:06', '2023-02-21 20:20:06', '07:30', '19:30', '1017873574846367', '07939231868'),
(1427, '350', '1', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1428, '350', '2', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1429, '350', '3', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1430, '350', '4', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1431, '350', '5', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1432, '350', '6', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '07:30', '19:30', '1012161649209858', '07469927438'),
(1433, '350', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '10:00', '19:30', '1017873574846367', '07939231868'),
(1434, '350', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '10:00', '19:30', '1017873574846367', '07939231868'),
(1435, '350', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '10:00', '19:30', '1017873574846367', '07939231868'),
(1436, '350', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '10:00', '19:30', '1017873574846367', '07939231868'),
(1437, '350', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-21 20:23:08', '2023-02-21 20:23:08', '10:00', '19:30', '1012597546605457', '07732779098'),
(1438, '350', '6', '07:30', '19:30', '174', '12', '12', '2023-02-21 20:23:08', '2023-02-21 20:25:12', '07:30', '19:30', '1033399734814764', '07708657786'),
(1439, '351', '1', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1012161649209858', '07469927438'),
(1440, '351', '2', '07:30', '19:30', '28', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1012161649209858', '07469927438'),
(1441, '351', '3', '07:30', '19:30', '29', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1017873574846367', '07939231868'),
(1442, '351', '4', '07:30', '19:30', '29', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1017873574846367', '07939231868'),
(1443, '351', '5', '07:30', '19:30', '29', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1017873574846367', '07939231868'),
(1444, '351', '6', '07:30', '19:30', '29', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1017873574846367', '07939231868'),
(1445, '351', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '10:00', '19:30', '1012597546605457', '07732779098'),
(1446, '351', '6', '07:30', '19:30', '173', '12', '12', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '07:30', '19:30', '1012597546605457', '07732779098'),
(1447, '351', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '10:00', '19:30', '1017873574846367', '07939231868'),
(1448, '351', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '10:00', '19:30', '1017873574846367', '07939231868'),
(1449, '351', '3', '10:00', '19:30', '175', '9.5', '9.5', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '10:00', '19:30', '1017221991587585', '07306821905'),
(1450, '351', '4', '10:00', '19:30', '175', '9.5', '9.5', '2023-02-21 20:32:03', '2023-02-21 20:32:03', '10:00', '19:30', '1017221991587585', '07306821905'),
(1451, '352', '1', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1452, '352', '2', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1453, '352', '3', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1454, '352', '4', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1455, '352', '5', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1456, '352', '6', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1012161649209858', '07469927438'),
(1457, '352', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '10:00', '19:30', '1017873574846367', '07939231868'),
(1458, '352', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '10:00', '19:30', '1017873574846367', '07939231868'),
(1459, '352', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '10:00', '19:30', '1017873574846367', '07939231868'),
(1460, '352', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '10:00', '19:30', '1017873574846367', '07939231868'),
(1461, '352', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '10:00', '19:30', '1012597546605457', '07732779098'),
(1462, '352', '6', '07:30', '19:30', '29', '12', '12', '2023-02-21 21:39:51', '2023-02-21 21:39:51', '07:30', '19:30', '1017873574846367', '07939231868'),
(1463, '353', '1', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:41:57', '2023-02-24 08:07:48', '07:30', '19:30', '1017873574846367', '07939231868'),
(1464, '353', '2', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '07:30', '19:30', '1012161649209858', '07469927438'),
(1465, '353', '3', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '07:30', '19:30', '1012161649209858', '07469927438'),
(1466, '353', '4', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '07:30', '19:30', '1012161649209858', '07469927438'),
(1467, '353', '5', '07:30', '19:30', '28', '12', '12', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '07:30', '19:30', '1012161649209858', '07469927438'),
(1468, '353', '6', '07:30', '19:30', '173', '12', '12', '2023-02-21 21:41:57', '2023-02-27 22:05:26', '07:30', '19:30', '1012597546605457', '07732779098'),
(1469, '353', '6', '07:30', '19:30', '29', '12', '12', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '07:30', '19:30', '1017873574846367', '07939231868'),
(1470, '353', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-21 21:41:57', '2023-03-07 01:13:29', '10:00', '19:30', '1012597546605457', '07732779098'),
(1471, '353', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '10:00', '19:30', '1017873574846367', '07939231868'),
(1472, '353', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '10:00', '19:30', '1017873574846367', '07939231868'),
(1473, '353', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '10:00', '19:30', '1017873574846367', '07939231868'),
(1474, '353', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-21 21:41:57', '2023-02-21 21:41:57', '10:00', '19:30', '1017873574846367', '07939231868'),
(1475, '354', '1', '00:00', '23:45', '176', '23.75', '23.75', '2023-02-22 22:22:49', '2023-02-22 22:22:49', '00:00', '23:45', '1234567890123456', '030016468498'),
(1476, '354', '3', '00:00', '23:45', '176', '23.75', '23.75', '2023-02-22 22:22:49', '2023-02-22 22:22:49', '00:00', '23:45', '1234567890123456', '030016468498'),
(1477, '354', '5', '00:00', '23:45', '176', '23.75', '23.75', '2023-02-22 22:22:49', '2023-02-22 22:22:49', '00:00', '23:45', '1234567890123456', '030016468498'),
(1478, '354', '7', '00:00', '23:45', '176', '23.75', '23.75', '2023-02-22 22:22:49', '2023-02-22 22:22:49', '00:00', '23:45', '1234567890123456', '030016468498'),
(1481, '356', '1', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-03-08 00:38:49', '07:30', '19:30', '1012161649209858', '07469927438'),
(1482, '356', '2', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1012161649209858', '07469927438'),
(1483, '356', '3', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1012161649209858', '07469927438'),
(1484, '356', '4', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1012161649209858', '07469927438'),
(1485, '356', '5', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1012161649209858', '07469927438'),
(1486, '356', '6', '07:30', '19:30', '28', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1012161649209858', '07469927438'),
(1487, '356', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '10:00', '19:30', '1017873574846367', '07939231868'),
(1488, '356', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '10:00', '19:30', '1017873574846367', '07939231868'),
(1489, '356', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '10:00', '19:30', '1017873574846367', '07939231868'),
(1490, '356', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '10:00', '19:30', '1017873574846367', '07939231868'),
(1491, '356', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '10:00', '19:30', '1012597546605457', '07732779098'),
(1492, '356', '6', '07:30', '19:30', '29', '12', '12', '2023-02-28 20:09:05', '2023-02-28 20:09:05', '07:30', '19:30', '1017873574846367', '07939231868'),
(1493, '357', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '16:45', '09:15', '1015925619523787', '07979848265'),
(1494, '357', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '16:45', '09:15', '1015925619523787', '07979848265'),
(1495, '357', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '16:45', '09:15', '1015925619523787', '07979848265'),
(1496, '357', '3', '15:30', '09:15', '9', '17.75', '17.75', '2023-02-28 21:32:59', '2023-02-28 21:37:54', '15:30', '09:15', '1015040530328221', '07405388397'),
(1497, '357', '5', '16:45', '09:15', '32', '16.5', '16.5', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '16:45', '09:15', '1012194526631133', '07868838856'),
(1498, '357', '6', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '09:15', '21:15', '1015040530328221', '07405388397'),
(1499, '357', '7', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '09:15', '21:15', '1015040530328221', '07405388397'),
(1500, '357', '6', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '21:15', '09:15', '1016216716756572', '07931633570'),
(1501, '357', '7', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '21:15', '09:15', '1016216716756572', '07931633570'),
(1502, '357', '1', '16:45', '21:45', '32', '5', '5', '2023-02-28 21:32:59', '2023-02-28 21:32:59', '16:45', '21:45', '1012194526631133', '07868838856'),
(1503, '358', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '16:45', '09:15', '1015925619523787', '07979848265'),
(1504, '358', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '16:45', '09:15', '1015925619523787', '07979848265'),
(1505, '358', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '16:45', '09:15', '1015925619523787', '07979848265'),
(1506, '358', '3', '16:45', '09:15', '9', '16.5', '16.5', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '16:45', '09:15', '1015040530328221', '07405388397'),
(1507, '358', '5', '16:45', '09:15', '32', '16.5', '16.5', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '16:45', '09:15', '1012194526631133', '07868838856'),
(1508, '358', '6', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '09:15', '21:15', '1015040530328221', '07405388397'),
(1509, '358', '7', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '09:15', '21:15', '1015040530328221', '07405388397'),
(1510, '358', '6', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '21:15', '09:15', '1016216716756572', '07931633570'),
(1511, '358', '7', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:37:02', '2023-02-28 21:37:02', '21:15', '09:15', '1016216716756572', '07931633570'),
(1512, '359', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '16:45', '09:15', '1015925619523787', '07979848265'),
(1513, '359', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '16:45', '09:15', '1015925619523787', '07979848265'),
(1514, '359', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '16:45', '09:15', '1015925619523787', '07979848265'),
(1515, '359', '3', '16:45', '09:15', '9', '16.5', '16.5', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '16:45', '09:15', '1015040530328221', '07405388397'),
(1516, '359', '5', '16:45', '09:15', '32', '16.5', '16.5', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '16:45', '09:15', '1012194526631133', '07868838856'),
(1517, '359', '6', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '09:15', '21:15', '1015040530328221', '07405388397'),
(1518, '359', '7', '09:15', '21:15', '9', '12', '12', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '09:15', '21:15', '1015040530328221', '07405388397'),
(1519, '359', '6', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '21:15', '09:15', '1016216716756572', '07931633570'),
(1520, '359', '7', '21:15', '09:15', '8', '12', '12', '2023-02-28 21:48:05', '2023-02-28 21:48:05', '21:15', '09:15', '1016216716756572', '07931633570'),
(1521, '360', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1016794944166872', '07507756907'),
(1522, '360', '2', '21:45', '09:00', '31', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1016794944166872', '07507756907'),
(1523, '360', '3', '21:45', '09:00', '31', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1016794944166872', '07507756907'),
(1524, '360', '4', '21:45', '09:00', '31', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1016794944166872', '07507756907'),
(1525, '360', '5', '21:45', '09:00', '177', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:52:45', '21:45', '09:00', '1016407087719194', '07958345098'),
(1526, '360', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1012194526631133', '07868838856'),
(1527, '360', '7', '21:45', '09:00', '32', '11.25', '11.25', '2023-02-28 21:51:07', '2023-02-28 21:51:07', '21:45', '09:00', '1012194526631133', '07868838856'),
(1542, '363', '1', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '16:45', '21:45', '1031220286017621', '07411453067'),
(1543, '363', '2', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '16:45', '21:45', '1031220286017621', '07411453067'),
(1544, '363', '3', '15:30', '21:45', '18', '6.25', '6.25', '2023-03-01 22:21:24', '2023-03-01 22:30:49', '15:30', '21:45', '1031220286017621', '07411453067'),
(1545, '363', '4', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '16:45', '21:45', '1031220286017621', '07411453067'),
(1547, '363', '1', '21:45', '09:15', '19', '11.5', '11.5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:45', '09:15', '1015114203228478', '07440350526'),
(1548, '363', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '16:45', '09:15', '1015114203228478', '07440350526'),
(1549, '363', '2', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:45', '09:15', '1011455470739780', '07878039430'),
(1550, '363', '3', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:45', '09:15', '1011455470739780', '07878039430'),
(1551, '363', '4', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:45', '09:15', '1011455470739780', '07878039430'),
(1552, '363', '6', '09:15', '21:15', '21', '12', '12', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '09:15', '21:15', '1039440694693348', '07865937794'),
(1553, '363', '7', '09:15', '21:15', '21', '12', '12', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '09:15', '21:15', '1039440694693348', '07865937794'),
(1554, '363', '6', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:15', '09:15', '1015114203228478', '07440350526'),
(1555, '363', '7', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:21:24', '2023-03-01 22:21:24', '21:15', '09:15', '1015114203228478', '07440350526'),
(1556, '364', '1', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '16:45', '21:45', '1031220286017621', '07411453067'),
(1557, '364', '2', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '16:45', '21:45', '1031220286017621', '07411453067'),
(1558, '364', '3', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '16:45', '21:45', '1031220286017621', '07411453067'),
(1559, '364', '4', '16:45', '21:45', '18', '5', '5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '16:45', '21:45', '1031220286017621', '07411453067'),
(1561, '364', '1', '21:45', '09:15', '19', '11.5', '11.5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:45', '09:15', '1015114203228478', '07440350526'),
(1562, '364', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-01 22:26:43', '2023-03-17 19:32:38', '16:45', '09:15', '1015114203228478', '07440350526'),
(1563, '364', '2', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:45', '09:15', '1011455470739780', '07878039430'),
(1564, '364', '3', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:45', '09:15', '1011455470739780', '07878039430'),
(1565, '364', '4', '21:45', '09:15', '20', '11.5', '11.5', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:45', '09:15', '1011455470739780', '07878039430'),
(1566, '364', '6', '09:15', '21:15', '20', '12', '12', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '09:15', '21:15', '1011455470739780', '07878039430'),
(1567, '364', '7', '09:15', '21:15', '20', '12', '12', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '09:15', '21:15', '1011455470739780', '07878039430'),
(1568, '364', '6', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:15', '09:15', '1015114203228478', '07440350526'),
(1569, '364', '7', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:26:43', '2023-03-01 22:26:43', '21:15', '09:15', '1015114203228478', '07440350526'),
(1575, '365', '1', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-01 22:29:49', '2023-03-17 19:34:36', '16:45', '09:15', '1015114203228478', '07440350526'),
(1576, '365', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-01 22:29:49', '2023-03-17 19:36:36', '16:45', '09:15', '1015114203228478', '07440350526'),
(1577, '365', '2', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-01 22:29:49', '2023-03-17 19:35:02', '16:45', '09:15', '1011455470739780', '07878039430'),
(1578, '365', '3', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-01 22:29:49', '2023-03-17 19:35:26', '16:45', '09:15', '1011455470739780', '07878039430'),
(1579, '365', '4', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-01 22:29:49', '2023-03-17 19:36:00', '16:45', '09:15', '1011455470739780', '07878039430'),
(1580, '365', '6', '09:15', '21:15', '20', '12', '12', '2023-03-01 22:29:49', '2023-03-01 22:29:49', '09:15', '21:15', '1011455470739780', '07878039430'),
(1581, '365', '7', '09:15', '21:15', '20', '12', '12', '2023-03-01 22:29:49', '2023-03-01 22:29:49', '09:15', '21:15', '1011455470739780', '07878039430'),
(1582, '365', '6', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:29:49', '2023-03-01 22:29:49', '21:15', '09:15', '1015114203228478', '07440350526'),
(1583, '365', '7', '21:15', '09:15', '19', '12', '12', '2023-03-01 22:29:49', '2023-03-01 22:29:49', '21:15', '09:15', '1015114203228478', '07440350526'),
(1584, '366', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '16:45', '09:15', '1012878728749377', '07738557457'),
(1585, '366', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '16:45', '09:15', '1012878728749377', '07738557457'),
(1586, '366', '3', '15:30', '09:15', '35', '17.75', '17.75', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '15:30', '09:15', '1019039674192091', '07958340113'),
(1587, '366', '4', '16:45', '09:15', '32', '16.5', '16.5', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '16:45', '09:15', '1012194526631133', '07868838856'),
(1588, '366', '5', '16:45', '09:15', '178', '16.5', '16.5', '2023-03-01 22:35:23', '2023-03-01 22:39:37', '16:45', '09:15', '1015711745261571', '07305150017'),
(1589, '366', '6', '09:15', '21:15', '35', '12', '12', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '09:15', '21:15', '1019039674192091', '07958340113'),
(1590, '366', '7', '09:15', '21:15', '35', '12', '12', '2023-03-01 22:35:23', '2023-03-01 22:35:23', '09:15', '21:15', '1019039674192091', '07958340113'),
(1591, '366', '6', '21:15', '09:15', '178', '12', '12', '2023-03-01 22:35:23', '2023-03-01 22:39:48', '21:15', '09:15', '1015711745261571', '07305150017'),
(1592, '366', '7', '21:15', '09:15', '178', '12', '12', '2023-03-01 22:35:23', '2023-03-01 22:39:57', '21:15', '09:15', '1015711745261571', '07305150017'),
(1593, '367', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-01 22:58:09', '21:45', '09:00', '1016794944166872', '07507756907'),
(1594, '367', '2', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-01 22:58:09', '21:45', '09:00', '1016794944166872', '07507756907'),
(1595, '367', '3', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-17 21:08:09', '21:45', '09:00', '1014960929446638', '07448467996'),
(1596, '367', '4', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-17 21:08:22', '21:45', '09:00', '1014960929446638', '07448467996'),
(1597, '367', '5', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-17 21:08:45', '21:45', '09:00', '1012194526631133', '07868838856'),
(1598, '367', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-01 22:58:09', '2023-03-01 22:58:09', '21:45', '09:00', '1012194526631133', '07868838856'),
(1599, '367', '7', '21:45', '08:45', '32', '11', '11', '2023-03-01 22:58:09', '2023-03-17 20:33:58', '21:45', '08:45', '1012194526631133', '07868838856'),
(1600, '368', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1016794944166872', '07507756907'),
(1601, '368', '2', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1016794944166872', '07507756907'),
(1602, '368', '3', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1016794944166872', '07507756907'),
(1603, '368', '4', '21:45', '08:30', '31', '10.75', '10.75', '2023-03-01 22:59:41', '2023-03-17 20:26:15', '21:45', '08:30', '1016794944166872', '07507756907'),
(1604, '368', '5', '21:45', '09:00', '177', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1016407087719194', '07958345098'),
(1605, '368', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1012194526631133', '07868838856'),
(1606, '368', '7', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-01 22:59:41', '2023-03-01 22:59:41', '21:45', '09:00', '1012194526631133', '07868838856'),
(1607, '369', '1', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1608, '369', '2', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1609, '369', '3', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1610, '369', '4', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1611, '369', '5', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1612, '369', '6', '07:30', '19:30', '28', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1012161649209858', '07469927438'),
(1613, '369', '6', '07:30', '19:30', '29', '12', '12', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '07:30', '19:30', '1017873574846367', '07939231868'),
(1614, '369', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '10:00', '19:30', '1012597546605457', '07732779098'),
(1615, '369', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '10:00', '19:30', '1017873574846367', '07939231868'),
(1616, '369', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '10:00', '19:30', '1017873574846367', '07939231868'),
(1617, '369', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '10:00', '19:30', '1017873574846367', '07939231868'),
(1618, '369', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-07 01:54:44', '2023-03-07 01:54:44', '10:00', '19:30', '1017873574846367', '07939231868'),
(1619, '370', '1', '16:45', '02:00', '32', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1012194526631133', '07868838856'),
(1620, '370', '2', '16:45', '02:00', '32', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1012194526631133', '07868838856'),
(1621, '370', '3', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1016407087719194', '07958345098'),
(1622, '370', '4', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1016407087719194', '07958345098'),
(1623, '370', '5', '16:45', '02:00', '181', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1019370875413591', '07765088675'),
(1624, '370', '6', '16:45', '02:00', '181', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1019370875413591', '07765088675'),
(1625, '370', '7', '16:45', '02:00', '178', '9.25', '9.25', '2023-03-16 22:30:03', '2023-03-16 22:30:03', '16:45', '02:00', '1015711745261571', '07305150017'),
(1626, '371', '1', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '16:45', '04:00', '1011710317526121', '07581624331'),
(1627, '371', '2', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '16:45', '04:00', '1011710317526121', '07581624331'),
(1628, '371', '3', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '16:45', '04:00', '1011710317526121', '07581624331'),
(1629, '371', '4', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '16:45', '04:00', '1011252606278269', '07868392514'),
(1630, '371', '5', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '16:45', '04:00', '1011252606278269', '07868392514'),
(1631, '371', '6', '09:00', '19:00', '179', '10', '10', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '09:00', '19:00', '1011710317526121', '07581624331'),
(1632, '371', '7', '09:00', '19:00', '179', '10', '10', '2023-03-16 22:32:21', '2023-03-16 22:32:21', '09:00', '19:00', '1011710317526121', '07581624331'),
(1633, '371', '6', '19:00', '04:00', '180', '9', '9', '2023-03-16 22:32:21', '2023-03-16 22:32:51', '19:00', '04:00', '1011252606278269', '07868392514'),
(1634, '371', '7', '19:00', '04:00', '180', '9', '9', '2023-03-16 22:32:21', '2023-03-16 22:33:15', '19:00', '04:00', '1011252606278269', '07868392514'),
(1635, '372', '1', '16:45', '02:00', '32', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-17 19:01:15', '16:45', '02:00', '1012194526631133', '07868838856'),
(1636, '372', '2', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-21 22:12:30', '16:45', '02:00', '1016407087719194', '07958345098'),
(1637, '372', '3', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-17 19:01:15', '16:45', '02:00', '1016407087719194', '07958345098'),
(1638, '372', '4', '16:45', '02:00', '178', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-21 22:14:25', '16:45', '02:00', '1015711745261571', '07305150017'),
(1639, '372', '5', '16:45', '02:00', '181', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-21 22:13:54', '16:45', '02:00', '1019370875413591', '07765088675'),
(1640, '372', '6', '16:45', '02:00', '181', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-17 19:01:15', '16:45', '02:00', '1019370875413591', '07765088675'),
(1641, '372', '7', '16:45', '02:00', '178', '9.25', '9.25', '2023-03-17 19:01:15', '2023-03-17 19:01:15', '16:45', '02:00', '1015711745261571', '07305150017'),
(1642, '373', '1', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1643, '373', '2', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1644, '373', '3', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1645, '373', '4', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '16:45', '04:00', '1011252606278269', '07868392514'),
(1646, '373', '5', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '16:45', '04:00', '1011252606278269', '07868392514'),
(1647, '373', '6', '09:00', '19:00', '179', '10', '10', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '09:00', '19:00', '1011710317526121', '07581624331'),
(1648, '373', '7', '09:00', '19:00', '179', '10', '10', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '09:00', '19:00', '1011710317526121', '07581624331'),
(1649, '373', '6', '19:00', '04:00', '180', '9', '9', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '19:00', '04:00', '1011252606278269', '07868392514'),
(1650, '373', '7', '19:00', '04:00', '180', '9', '9', '2023-03-17 19:03:51', '2023-03-17 19:03:51', '19:00', '04:00', '1011252606278269', '07868392514'),
(1651, '374', '1', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1652, '374', '2', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1653, '374', '3', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1654, '374', '4', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1655, '374', '5', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1656, '374', '6', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1012161649209858', '07469927438'),
(1657, '374', '6', '07:30', '19:30', '29', '12', '12', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '07:30', '19:30', '1017873574846367', '07939231868'),
(1658, '374', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '10:00', '19:30', '1012597546605457', '07732779098'),
(1659, '374', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '10:00', '19:30', '1017873574846367', '07939231868'),
(1660, '374', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '10:00', '19:30', '1017873574846367', '07939231868'),
(1661, '374', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '10:00', '19:30', '1017873574846367', '07939231868'),
(1662, '374', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:08:23', '2023-03-17 19:08:23', '10:00', '19:30', '1017873574846367', '07939231868'),
(1663, '375', '1', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1664, '375', '2', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1665, '375', '3', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1666, '375', '4', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1667, '375', '5', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1668, '375', '6', '07:30', '19:30', '28', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1012161649209858', '07469927438'),
(1669, '375', '6', '07:30', '19:30', '29', '12', '12', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '07:30', '19:30', '1017873574846367', '07939231868'),
(1670, '375', '5', '10:00', '19:30', '173', '9.5', '9.5', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '10:00', '19:30', '1012597546605457', '07732779098'),
(1671, '375', '1', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '10:00', '19:30', '1017873574846367', '07939231868'),
(1672, '375', '2', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '10:00', '19:30', '1017873574846367', '07939231868'),
(1673, '375', '3', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '10:00', '19:30', '1017873574846367', '07939231868'),
(1674, '375', '4', '10:00', '19:30', '29', '9.5', '9.5', '2023-03-17 19:12:01', '2023-03-17 19:12:01', '10:00', '19:30', '1017873574846367', '07939231868'),
(1675, '376', '1', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1676, '376', '2', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1677, '376', '3', '16:45', '04:00', '179', '11.25', '11.25', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '16:45', '04:00', '1011710317526121', '07581624331'),
(1678, '376', '4', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '16:45', '04:00', '1011252606278269', '07868392514'),
(1679, '376', '5', '16:45', '04:00', '180', '11.25', '11.25', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '16:45', '04:00', '1011252606278269', '07868392514'),
(1680, '376', '6', '09:00', '19:00', '179', '10', '10', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '09:00', '19:00', '1011710317526121', '07581624331'),
(1681, '376', '7', '09:00', '19:00', '179', '10', '10', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '09:00', '19:00', '1011710317526121', '07581624331'),
(1682, '376', '6', '19:00', '04:00', '180', '9', '9', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '19:00', '04:00', '1011252606278269', '07868392514'),
(1683, '376', '7', '19:00', '04:00', '180', '9', '9', '2023-03-17 19:22:51', '2023-03-17 19:22:51', '19:00', '04:00', '1011252606278269', '07868392514'),
(1684, '377', '1', '16:45', '02:00', '32', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1012194526631133', '07868838856'),
(1685, '377', '2', '16:45', '02:00', '32', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1012194526631133', '07868838856'),
(1686, '377', '3', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1016407087719194', '07958345098'),
(1687, '377', '4', '16:45', '02:00', '177', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1016407087719194', '07958345098'),
(1688, '377', '5', '16:45', '02:00', '178', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1015711745261571', '07305150017'),
(1689, '377', '6', '16:45', '02:00', '181', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1019370875413591', '07765088675'),
(1690, '377', '7', '16:45', '02:00', '178', '9.25', '9.25', '2023-03-17 19:25:50', '2023-03-17 19:25:50', '16:45', '02:00', '1015711745261571', '07305150017'),
(1691, '378', '1', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '16:45', '09:15', '1015114203228478', '07440350526'),
(1692, '378', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '16:45', '09:15', '1015114203228478', '07440350526'),
(1693, '378', '2', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '16:45', '09:15', '1011455470739780', '07878039430'),
(1694, '378', '3', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '16:45', '09:15', '1011455470739780', '07878039430'),
(1695, '378', '4', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '16:45', '09:15', '1011455470739780', '07878039430'),
(1696, '378', '6', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '09:15', '21:15', '1011455470739780', '07878039430'),
(1697, '378', '7', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '09:15', '21:15', '1011455470739780', '07878039430'),
(1698, '378', '6', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '21:15', '09:15', '1015114203228478', '07440350526'),
(1699, '378', '7', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:42:57', '2023-03-17 19:42:57', '21:15', '09:15', '1015114203228478', '07440350526'),
(1700, '379', '1', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '16:45', '09:15', '1015114203228478', '07440350526'),
(1701, '379', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '16:45', '09:15', '1015114203228478', '07440350526'),
(1702, '379', '2', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '16:45', '09:15', '1011455470739780', '07878039430'),
(1703, '379', '3', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '16:45', '09:15', '1011455470739780', '07878039430'),
(1704, '379', '4', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '16:45', '09:15', '1011455470739780', '07878039430'),
(1705, '379', '6', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '09:15', '21:15', '1011455470739780', '07878039430'),
(1706, '379', '7', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '09:15', '21:15', '1011455470739780', '07878039430'),
(1707, '379', '6', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '21:15', '09:15', '1015114203228478', '07440350526'),
(1708, '379', '7', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:46:53', '2023-03-17 19:46:53', '21:15', '09:15', '1015114203228478', '07440350526'),
(1709, '380', '1', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '16:45', '09:15', '1015114203228478', '07440350526'),
(1710, '380', '5', '16:45', '09:15', '19', '16.5', '16.5', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '16:45', '09:15', '1015114203228478', '07440350526'),
(1711, '380', '2', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '16:45', '09:15', '1011455470739780', '07878039430'),
(1712, '380', '3', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '16:45', '09:15', '1011455470739780', '07878039430'),
(1713, '380', '4', '16:45', '09:15', '20', '16.5', '16.5', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '16:45', '09:15', '1011455470739780', '07878039430'),
(1714, '380', '6', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '09:15', '21:15', '1011455470739780', '07878039430'),
(1715, '380', '7', '09:15', '21:15', '20', '12', '12', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '09:15', '21:15', '1011455470739780', '07878039430'),
(1716, '380', '6', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '21:15', '09:15', '1015114203228478', '07440350526'),
(1717, '380', '7', '21:15', '09:15', '19', '12', '12', '2023-03-17 19:50:31', '2023-03-17 19:50:31', '21:15', '09:15', '1015114203228478', '07440350526'),
(1718, '381', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1016794944166872', '07507756907'),
(1719, '381', '2', '21:45', '08:00', '31', '10.25', '10.25', '2023-03-17 20:04:12', '2023-03-17 20:04:55', '21:45', '08:00', '1016794944166872', '07507756907'),
(1720, '381', '3', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1016794944166872', '07507756907'),
(1721, '381', '4', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1016794944166872', '07507756907'),
(1722, '381', '5', '21:45', '09:00', '177', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1016407087719194', '07958345098'),
(1723, '381', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1012194526631133', '07868838856'),
(1724, '381', '7', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 20:04:12', '2023-03-17 20:04:12', '21:45', '09:00', '1012194526631133', '07868838856'),
(1725, '382', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1016794944166872', '07507756907'),
(1726, '382', '2', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1016794944166872', '07507756907'),
(1727, '382', '3', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1014960929446638', '07448467996'),
(1728, '382', '4', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1014960929446638', '07448467996'),
(1729, '382', '5', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1012194526631133', '07868838856'),
(1730, '382', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1012194526631133', '07868838856'),
(1731, '382', '7', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:11:44', '2023-03-17 21:11:44', '21:45', '09:00', '1012194526631133', '07868838856'),
(1732, '383', '1', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1016794944166872', '07507756907'),
(1733, '383', '2', '21:45', '09:00', '31', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1016794944166872', '07507756907'),
(1734, '383', '3', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1014960929446638', '07448467996'),
(1735, '383', '4', '21:45', '09:00', '182', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1014960929446638', '07448467996'),
(1736, '383', '5', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1012194526631133', '07868838856'),
(1737, '383', '6', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1012194526631133', '07868838856'),
(1738, '383', '7', '21:45', '09:00', '32', '11.25', '11.25', '2023-03-17 21:13:01', '2023-03-17 21:13:01', '21:45', '09:00', '1012194526631133', '07868838856'),
(1739, '384', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '16:45', '09:15', '1012878728749377', '07738557457'),
(1740, '384', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '16:45', '09:15', '1012878728749377', '07738557457'),
(1741, '384', '3', '16:45', '09:15', '32', '16.5', '16.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '16:45', '09:15', '1012194526631133', '07868838856'),
(1742, '384', '4', '16:45', '09:15', '177', '16.5', '16.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '16:45', '09:15', '1016407087719194', '07958345098'),
(1743, '384', '5', '16:45', '09:15', '35', '16.5', '16.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '16:45', '09:15', '1019039674192091', '07958340113'),
(1744, '384', '6', '09:15', '15:45', '32', '6.5', '6.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '09:15', '15:45', '1012194526631133', '07868838856'),
(1745, '384', '6', '15:45', '09:15', '35', '17.5', '17.5', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '15:45', '09:15', '1019039674192091', '07958340113'),
(1746, '384', '6', '09:15', '21:15', '177', '12', '12', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '09:15', '21:15', '1016407087719194', '07958345098'),
(1747, '384', '7', '21:15', '09:15', '35', '12', '12', '2023-03-17 21:29:59', '2023-03-17 21:29:59', '21:15', '09:15', '1019039674192091', '07958340113'),
(1748, '385', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '16:45', '09:15', '1012878728749377', '07738557457'),
(1749, '385', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '16:45', '09:15', '1012878728749377', '07738557457'),
(1750, '385', '3', '16:45', '09:15', '177', '16.5', '16.5', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '16:45', '09:15', '1016407087719194', '07958345098'),
(1751, '385', '4', '16:45', '09:15', '32', '16.5', '16.5', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '16:45', '09:15', '1012194526631133', '07868838856'),
(1752, '385', '5', '16:45', '09:15', '35', '16.5', '16.5', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '16:45', '09:15', '1019039674192091', '07958340113'),
(1753, '385', '6', '09:15', '21:15', '32', '12', '12', '2023-03-17 21:41:56', '2023-03-17 21:42:30', '09:15', '21:15', '1012194526631133', '07868838856'),
(1754, '385', '6', '21:15', '09:15', '35', '12', '12', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '21:15', '09:15', '1019039674192091', '07958340113'),
(1755, '385', '7', '09:15', '21:15', '177', '12', '12', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '09:15', '21:15', '1016407087719194', '07958345098'),
(1756, '385', '7', '21:15', '09:15', '35', '12', '12', '2023-03-17 21:41:56', '2023-03-17 21:41:56', '21:15', '09:15', '1019039674192091', '07958340113');
INSERT INTO `monitoring_staff` (`id`, `monitoring_id`, `shift_day`, `time_in`, `time_out`, `staff_id`, `total_hours`, `guard_hours`, `created_at`, `updated_at`, `guard_time_in`, `guard_time_out`, `staff_sia`, `staff_phone`) VALUES
(1757, '386', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '16:45', '09:15', '1012878728749377', '07738557457'),
(1758, '386', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '16:45', '09:15', '1012878728749377', '07738557457'),
(1759, '386', '3', '16:45', '09:15', '35', '16.5', '16.5', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '16:45', '09:15', '1019039674192091', '07958340113'),
(1760, '386', '4', '16:45', '09:15', '35', '16.5', '16.5', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '16:45', '09:15', '1019039674192091', '07958340113'),
(1761, '386', '5', '16:45', '09:15', '177', '16.5', '16.5', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '16:45', '09:15', '1016407087719194', '07958345098'),
(1762, '386', '6', '09:15', '21:15', '178', '12', '12', '2023-03-17 21:51:18', '2023-03-17 21:59:53', '09:15', '21:15', '1015711745261571', '07305150017'),
(1763, '386', '7', '09:15', '21:15', '178', '12', '12', '2023-03-17 21:51:18', '2023-03-17 22:00:06', '09:15', '21:15', '1015711745261571', '07305150017'),
(1764, '386', '6', '21:15', '09:15', '35', '12', '12', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '21:15', '09:15', '1019039674192091', '07958340113'),
(1765, '386', '7', '21:15', '09:15', '35', '12', '12', '2023-03-17 21:51:18', '2023-03-17 21:51:18', '21:15', '09:15', '1019039674192091', '07958340113'),
(1766, '387', '1', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1767, '387', '2', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1768, '387', '3', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1769, '387', '4', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1770, '387', '5', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1771, '387', '6', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1772, '387', '7', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:03', '2023-03-20 20:42:03', '21:45', '09:15', '1012104017773971', '07790695326'),
(1773, '388', '1', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1774, '388', '2', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1775, '388', '3', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1776, '388', '4', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1777, '388', '5', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1778, '388', '6', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1779, '388', '7', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:42:49', '2023-03-20 20:42:49', '21:45', '09:15', '1012104017773971', '07790695326'),
(1780, '389', '1', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1781, '389', '2', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1782, '389', '3', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1783, '389', '4', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1784, '389', '5', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1785, '389', '6', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1786, '389', '7', '21:45', '09:15', '33', '11.5', '11.5', '2023-03-20 20:43:51', '2023-03-20 20:43:51', '21:45', '09:15', '1012104017773971', '07790695326'),
(1787, '390', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '16:45', '09:15', '1015925619523787', '07979848265'),
(1788, '390', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '16:45', '09:15', '1015925619523787', '07979848265'),
(1789, '390', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '16:45', '09:15', '1015925619523787', '07979848265'),
(1790, '390', '3', '16:45', '09:15', '9', '16.5', '16.5', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '16:45', '09:15', '1015040530328221', '07405388397'),
(1791, '390', '5', '16:45', '09:15', '182', '16.5', '16.5', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '16:45', '09:15', '1014960929446638', '07448467996'),
(1792, '390', '6', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '09:15', '21:15', '1015040530328221', '07405388397'),
(1793, '390', '7', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '09:15', '21:15', '1015040530328221', '07405388397'),
(1794, '390', '6', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '21:15', '09:15', '1016216716756572', '07931633570'),
(1795, '390', '7', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:15:51', '2023-03-20 23:15:51', '21:15', '09:15', '1016216716756572', '07931633570'),
(1796, '391', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '16:45', '09:15', '1015925619523787', '07979848265'),
(1797, '391', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '16:45', '09:15', '1015925619523787', '07979848265'),
(1798, '391', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '16:45', '09:15', '1015925619523787', '07979848265'),
(1799, '391', '3', '16:45', '09:15', '9', '16.5', '16.5', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '16:45', '09:15', '1015040530328221', '07405388397'),
(1800, '391', '5', '16:45', '09:15', '182', '16.5', '16.5', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '16:45', '09:15', '1014960929446638', '07448467996'),
(1801, '391', '6', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '09:15', '21:15', '1015040530328221', '07405388397'),
(1802, '391', '7', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '09:15', '21:15', '1015040530328221', '07405388397'),
(1803, '391', '6', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '21:15', '09:15', '1016216716756572', '07931633570'),
(1804, '391', '7', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:32:52', '2023-03-20 23:32:52', '21:15', '09:15', '1016216716756572', '07931633570'),
(1805, '392', '1', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '16:45', '09:15', '1015925619523787', '07979848265'),
(1806, '392', '2', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '16:45', '09:15', '1015925619523787', '07979848265'),
(1807, '392', '4', '16:45', '09:15', '159', '16.5', '16.5', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '16:45', '09:15', '1015925619523787', '07979848265'),
(1808, '392', '3', '16:45', '09:15', '9', '16.5', '16.5', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '16:45', '09:15', '1015040530328221', '07405388397'),
(1809, '392', '5', '16:45', '09:15', '182', '16.5', '16.5', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '16:45', '09:15', '1014960929446638', '07448467996'),
(1810, '392', '6', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '09:15', '21:15', '1015040530328221', '07405388397'),
(1811, '392', '7', '09:15', '21:15', '9', '12', '12', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '09:15', '21:15', '1015040530328221', '07405388397'),
(1812, '392', '6', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '21:15', '09:15', '1016216716756572', '07931633570'),
(1813, '392', '7', '21:15', '09:15', '8', '12', '12', '2023-03-20 23:54:30', '2023-03-20 23:54:30', '21:15', '09:15', '1016216716756572', '07931633570'),
(1814, '393', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '16:45', '09:15', '1012878728749377', '07738557457'),
(1815, '393', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '16:45', '09:15', '1012878728749377', '07738557457'),
(1816, '393', '3', '16:45', '09:15', '35', '16.5', '16.5', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '16:45', '09:15', '1019039674192091', '07958340113'),
(1817, '393', '4', '16:45', '09:15', '177', '16.5', '16.5', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '16:45', '09:15', '1016407087719194', '07958345098'),
(1818, '393', '5', '16:45', '09:15', '178', '16.5', '16.5', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '16:45', '09:15', '1015711745261571', '07305150017'),
(1819, '393', '6', '09:15', '21:15', '35', '12', '12', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '09:15', '21:15', '1019039674192091', '07958340113'),
(1820, '393', '7', '09:15', '21:15', '35', '12', '12', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '09:15', '21:15', '1019039674192091', '07958340113'),
(1821, '393', '6', '21:15', '09:15', '178', '12', '12', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '21:15', '09:15', '1015711745261571', '07305150017'),
(1822, '393', '7', '21:15', '09:15', '178', '12', '12', '2023-03-21 00:06:39', '2023-03-21 00:06:39', '21:15', '09:15', '1015711745261571', '07305150017'),
(1823, '394', '1', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '16:45', '09:15', '1012878728749377', '07738557457'),
(1824, '394', '2', '16:45', '09:15', '11', '16.5', '16.5', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '16:45', '09:15', '1012878728749377', '07738557457'),
(1825, '394', '3', '16:45', '09:15', '21', '16.5', '16.5', '2023-03-21 00:09:22', '2023-03-29 00:44:05', '16:45', '09:15', '1039440694693348', '07865937794'),
(1826, '394', '4', '16:45', '09:15', '177', '16.5', '16.5', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '16:45', '09:15', '1016407087719194', '07958345098'),
(1827, '394', '5', '16:45', '09:15', '178', '16.5', '16.5', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '16:45', '09:15', '1015711745261571', '07305150017'),
(1828, '394', '6', '09:15', '21:15', '35', '12', '12', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '09:15', '21:15', '1019039674192091', '07958340113'),
(1829, '394', '7', '09:15', '21:15', '35', '12', '12', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '09:15', '21:15', '1019039674192091', '07958340113'),
(1830, '394', '6', '21:15', '09:15', '178', '12', '12', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '21:15', '09:15', '1015711745261571', '07305150017'),
(1831, '394', '7', '21:15', '09:15', '178', '12', '12', '2023-03-21 00:09:22', '2023-03-21 00:09:22', '21:15', '09:15', '1015711745261571', '07305150017'),
(1832, '395', '1', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1019792488975109', '07455525599'),
(1833, '395', '2', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1019792488975109', '07455525599'),
(1834, '395', '3', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1019792488975109', '07455525599'),
(1835, '395', '4', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1019792488975109', '07455525599'),
(1836, '395', '5', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1019792488975109', '07455525599'),
(1837, '395', '6', '17:00', '00:00', '11', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1012878728749377', '07738557457'),
(1838, '395', '7', '17:00', '00:00', '11', '7', '7', '2023-03-21 00:13:24', '2023-03-21 00:13:24', '17:00', '00:00', '1012878728749377', '07738557457'),
(1839, '396', '1', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1019792488975109', '07455525599'),
(1840, '396', '2', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1019792488975109', '07455525599'),
(1841, '396', '3', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1019792488975109', '07455525599'),
(1843, '396', '4', '17:00', '00:00', '11', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1012878728749377', '07738557457'),
(1844, '396', '5', '17:00', '00:00', '32', '7', '7', '2023-03-21 00:19:25', '2023-03-24 23:58:06', '17:00', '00:00', '1012878728749377', '07738557457'),
(1845, '396', '6', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1019792488975109', '07455525599'),
(1846, '396', '7', '17:00', '00:00', '183', '7', '7', '2023-03-21 00:19:25', '2023-03-21 00:19:25', '17:00', '00:00', '1019792488975109', '07455525599'),
(1847, '397', '1', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '16:30', '08:30', '1019338695526962', '07904621078'),
(1848, '397', '2', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '16:30', '08:30', '1019338695526962', '07904621078'),
(1849, '397', '3', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '16:30', '08:30', '1019338695526962', '07904621078'),
(1850, '397', '4', '16:30', '08:30', '14', '16', '16', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '16:30', '08:30', '1015816512799574', '07864789198'),
(1851, '397', '5', '16:30', '08:30', '14', '16', '16', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '16:30', '08:30', '1015816512799574', '07864789198'),
(1852, '397', '6', '08:30', '20:30', '13', '12', '12', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '08:30', '20:30', '1019338695526962', '07904621078'),
(1853, '397', '7', '08:30', '20:30', '13', '12', '12', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '08:30', '20:30', '1019338695526962', '07904621078'),
(1854, '397', '6', '20:30', '08:30', '14', '12', '12', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '20:30', '08:30', '1015816512799574', '07864789198'),
(1855, '397', '7', '20:30', '08:30', '14', '12', '12', '2023-03-21 00:37:52', '2023-03-21 00:37:52', '20:30', '08:30', '1015816512799574', '07864789198'),
(1856, '398', '1', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '16:30', '08:30', '1019338695526962', '07904621078'),
(1857, '398', '2', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '16:30', '08:30', '1019338695526962', '07904621078'),
(1858, '398', '3', '16:30', '08:30', '13', '16', '16', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '16:30', '08:30', '1019338695526962', '07904621078'),
(1859, '398', '4', '16:30', '08:30', '14', '16', '16', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '16:30', '08:30', '1015816512799574', '07864789198'),
(1860, '398', '5', '16:30', '08:30', '14', '16', '16', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '16:30', '08:30', '1015816512799574', '07864789198'),
(1861, '398', '6', '08:30', '20:30', '13', '12', '12', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '08:30', '20:30', '1019338695526962', '07904621078'),
(1862, '398', '7', '08:30', '20:30', '13', '12', '12', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '08:30', '20:30', '1019338695526962', '07904621078'),
(1863, '398', '6', '20:30', '08:30', '14', '12', '12', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '20:30', '08:30', '1015816512799574', '07864789198'),
(1864, '398', '7', '20:30', '08:30', '14', '12', '12', '2023-03-21 00:40:07', '2023-03-21 00:40:07', '20:30', '08:30', '1015816512799574', '07864789198'),
(1865, '399', '1', '16:30', '08:30', '13', '16', '16', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '16:30', '08:30', '1019338695526962', '07904621078'),
(1866, '399', '2', '16:30', '08:30', '13', '16', '16', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '16:30', '08:30', '1019338695526962', '07904621078'),
(1867, '399', '3', '16:30', '08:30', '13', '16', '16', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '16:30', '08:30', '1019338695526962', '07904621078'),
(1868, '399', '4', '16:30', '08:30', '14', '16', '16', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '16:30', '08:30', '1015816512799574', '07864789198'),
(1869, '399', '5', '16:30', '08:30', '14', '16', '16', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '16:30', '08:30', '1015816512799574', '07864789198'),
(1870, '399', '6', '08:30', '20:30', '13', '12', '12', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '08:30', '20:30', '1019338695526962', '07904621078'),
(1871, '399', '7', '08:30', '20:30', '13', '12', '12', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '08:30', '20:30', '1019338695526962', '07904621078'),
(1872, '399', '6', '20:30', '08:30', '14', '12', '12', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '20:30', '08:30', '1015816512799574', '07864789198'),
(1873, '399', '7', '20:30', '08:30', '14', '12', '12', '2023-03-21 22:48:16', '2023-03-21 22:48:16', '20:30', '08:30', '1015816512799574', '07864789198'),
(1874, '400', '1', '17:00', '00:00', '184', '7', '7', '2023-03-21 23:28:57', '2023-03-27 23:37:01', '17:00', '00:00', '1013509749735178', '07735620115'),
(1875, '400', '2', '17:00', '00:00', '184', '7', '7', '2023-03-21 23:28:57', '2023-03-28 20:02:34', '17:00', '00:00', '1013509749735178', '07735620115'),
(1876, '400', '3', '17:00', '00:00', '184', '7', '7', '2023-03-21 23:28:57', '2023-03-28 20:02:42', '17:00', '00:00', '1013509749735178', '07735620115'),
(1877, '400', '4', '17:00', '00:00', '184', '7', '7', '2023-03-21 23:28:57', '2023-03-28 20:02:51', '17:00', '00:00', '1013509749735178', '07735620115'),
(1878, '400', '5', '17:00', '00:00', '184', '7', '7', '2023-03-21 23:28:57', '2023-03-28 20:03:21', '17:00', '00:00', '1013509749735178', '07735620115'),
(1879, '400', '6', '17:00', '00:00', '32', '7', '7', '2023-03-21 23:28:57', '2023-03-28 20:03:30', '17:00', '00:00', '1012194526631133', '07868838856'),
(1880, '400', '7', '17:00', '00:00', '183', '7', '7', '2023-03-21 23:28:57', '2023-03-21 23:28:57', '17:00', '00:00', '1019792488975109', '07455525599'),
(1881, '401', '1', '18:00', '09:00', '24', '15', '15', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '18:00', '09:00', '1016680985831741', '07412838313'),
(1882, '401', '2', '18:00', '09:00', '24', '15', '15', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '18:00', '09:00', '1016680985831741', '07412838313'),
(1883, '401', '3', '18:00', '09:00', '24', '15', '15', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '18:00', '09:00', '1016680985831741', '07412838313'),
(1884, '401', '4', '18:00', '09:00', '25', '15', '15', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '18:00', '09:00', '1016889740697588', '07405575185'),
(1885, '401', '5', '18:00', '07:00', '26', '13', '13', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '18:00', '07:00', '1013499125898725', '07367519195'),
(1886, '401', '6', '07:00', '19:00', '25', '12', '12', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '07:00', '19:00', '1016889740697588', '07405575185'),
(1887, '401', '6', '19:00', '07:00', '26', '12', '12', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '19:00', '07:00', '1013499125898725', '07367519195'),
(1888, '401', '7', '07:00', '19:00', '25', '12', '12', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '07:00', '19:00', '1016889740697588', '07405575185'),
(1889, '401', '7', '19:00', '09:00', '26', '14', '14', '2023-03-22 00:12:53', '2023-03-22 00:12:53', '19:00', '09:00', '1013499125898725', '07367519195'),
(1890, '402', '1', '18:00', '09:00', '24', '15', '15', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '18:00', '09:00', '1016680985831741', '07412838313'),
(1891, '402', '2', '18:00', '09:00', '23', '15', '15', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '18:00', '09:00', '1015450417348731', '07405174623'),
(1892, '402', '3', '18:00', '09:00', '23', '15', '15', '2023-03-22 00:18:02', '2023-03-25 00:01:48', '18:00', '09:00', '1015450417348731', '07405174623'),
(1893, '402', '4', '18:00', '09:00', '25', '15', '15', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '18:00', '09:00', '1016889740697588', '07405575185'),
(1894, '402', '5', '18:00', '07:00', '26', '13', '13', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '18:00', '07:00', '1013499125898725', '07367519195'),
(1895, '402', '6', '07:00', '19:00', '25', '12', '12', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '07:00', '19:00', '1016889740697588', '07405575185'),
(1896, '402', '7', '07:00', '19:00', '25', '12', '12', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '07:00', '19:00', '1016889740697588', '07405575185'),
(1897, '402', '6', '19:00', '07:00', '26', '12', '12', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '19:00', '07:00', '1013499125898725', '07367519195'),
(1898, '402', '7', '19:00', '09:00', '26', '14', '14', '2023-03-22 00:18:02', '2023-03-22 00:18:02', '19:00', '09:00', '1013499125898725', '07367519195');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `can_create` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `can_update` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `can_delete` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `tab_id`, `can_create`, `can_update`, `can_delete`, `created_at`, `updated_at`) VALUES
(129, '1', '1', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(130, '1', '2', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(131, '1', '3', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(132, '1', '4', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(133, '1', '5', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(134, '1', '6', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(135, '1', '7', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(136, '1', '8', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(137, '1', '9', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(138, '1', '10', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(139, '1', '11', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(140, '1', '12', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(141, '1', '13', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(142, '1', '14', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(143, '1', '15', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(144, '1', '16', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(145, '1', '17', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(146, '1', '18', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(147, '1', '19', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(148, '1', '20', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(151, '1', '23', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(152, '1', '24', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(153, '1', '25', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(154, '1', '29', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(155, '1', '32', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(156, '1', '33', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(157, '1', '34', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(158, '1', '35', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(159, '1', '36', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(160, '1', '37', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(161, '1', '38', '1', '1', '1', '2022-11-10 06:29:04', '2022-11-10 06:29:04'),
(249, '2', '1', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(250, '2', '2', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(251, '2', '3', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(252, '2', '4', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(253, '2', '5', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(254, '2', '6', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(255, '2', '7', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(256, '2', '8', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(257, '2', '9', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(258, '2', '10', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(259, '2', '11', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(260, '2', '12', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(261, '2', '13', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(262, '2', '14', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(263, '2', '15', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(264, '2', '16', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(265, '2', '17', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(266, '2', '18', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(267, '2', '19', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(268, '2', '20', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(271, '2', '23', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(272, '2', '24', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(273, '2', '25', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(274, '2', '29', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(275, '2', '32', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(276, '2', '33', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(277, '2', '34', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(278, '2', '36', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(279, '2', '37', '1', '1', '1', '2022-11-14 08:05:30', '2022-11-14 08:05:30'),
(280, '4', '1', '1', '1', '1', '2022-11-15 05:04:39', '2022-11-15 05:04:39'),
(281, '4', '2', '1', '1', '1', '2022-11-15 05:04:39', '2022-11-15 05:04:39'),
(282, '4', '3', '0', '0', '0', '2022-11-15 05:04:39', '2022-11-15 05:04:39'),
(283, '5', '1', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(284, '5', '2', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(285, '5', '3', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(286, '5', '4', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(287, '5', '5', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(288, '5', '6', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(289, '5', '7', '1', '1', '1', '2022-11-16 01:39:50', '2022-11-16 01:39:50'),
(516, '8', '1', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(517, '8', '2', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(518, '8', '3', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(519, '8', '4', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(520, '8', '5', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(521, '8', '6', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(522, '8', '7', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(523, '8', '8', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(524, '8', '9', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(525, '8', '10', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(526, '8', '11', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(527, '8', '12', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(528, '8', '13', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(529, '8', '14', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(530, '8', '15', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(531, '8', '16', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(532, '8', '17', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(533, '8', '18', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(534, '8', '19', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(535, '8', '23', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(536, '8', '24', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(537, '8', '25', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(538, '8', '29', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(539, '8', '36', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(540, '8', '37', '1', '1', '1', '2022-12-10 01:26:38', '2022-12-10 01:26:38'),
(541, '9', '1', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(542, '9', '2', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(543, '9', '3', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(544, '9', '4', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(545, '9', '5', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(546, '9', '6', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(547, '9', '7', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(548, '9', '8', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(549, '9', '9', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(550, '9', '10', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(551, '9', '11', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(552, '9', '12', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(553, '9', '13', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(554, '9', '14', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(555, '9', '15', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(556, '9', '16', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(557, '9', '17', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(558, '9', '18', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(559, '9', '19', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(560, '9', '20', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(561, '9', '23', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(562, '9', '24', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(563, '9', '25', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(564, '9', '29', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(565, '9', '32', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(566, '9', '33', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(567, '9', '34', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(568, '9', '35', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(569, '9', '36', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(570, '9', '37', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(571, '9', '38', '1', '1', '1', '2022-12-10 01:32:51', '2022-12-10 01:32:51'),
(572, '10', '1', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(573, '10', '2', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(574, '10', '3', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(575, '10', '4', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(576, '10', '5', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(577, '10', '6', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(578, '10', '7', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(579, '10', '8', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(580, '10', '9', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(581, '10', '10', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(582, '10', '11', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(583, '10', '12', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(584, '10', '13', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(585, '10', '14', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(586, '10', '15', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(587, '10', '16', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(588, '10', '17', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(589, '10', '18', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(590, '10', '19', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(591, '10', '20', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(592, '10', '23', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(593, '10', '24', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(594, '10', '25', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(595, '10', '29', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(596, '10', '32', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(597, '10', '33', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(598, '10', '34', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(599, '10', '35', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(600, '10', '36', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(601, '10', '37', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(602, '10', '38', '1', '1', '1', '2022-12-13 16:27:47', '2022-12-13 16:27:47'),
(603, '11', '17', '1', '1', '1', '2022-12-20 09:34:46', '2022-12-20 09:34:46'),
(604, '11', '18', '1', '1', '1', '2022-12-20 09:34:46', '2022-12-20 09:34:46'),
(605, '11', '19', '1', '1', '1', '2022-12-20 09:34:46', '2022-12-20 09:34:46'),
(644, '13', '1', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(645, '13', '2', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(646, '13', '3', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(647, '13', '4', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(648, '13', '5', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(649, '13', '6', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(650, '13', '7', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(651, '13', '8', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(652, '13', '9', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(653, '13', '10', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(654, '13', '11', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(655, '13', '12', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(656, '13', '13', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(657, '13', '14', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(658, '13', '15', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(659, '13', '16', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(660, '13', '17', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(661, '13', '18', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(662, '13', '19', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(663, '13', '20', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(664, '13', '23', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(665, '13', '24', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(666, '13', '25', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(667, '13', '29', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(668, '13', '32', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(669, '13', '33', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(670, '13', '34', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(671, '13', '35', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(672, '13', '36', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(673, '13', '37', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(674, '13', '38', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(675, '13', '39', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(676, '13', '40', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(677, '13', '41', '1', '1', '1', '2023-02-22 22:37:57', '2023-02-22 22:37:57'),
(678, '6', '1', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(679, '6', '2', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(680, '6', '3', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(681, '6', '4', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(682, '6', '5', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(683, '6', '6', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(684, '6', '7', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(685, '6', '8', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(686, '6', '9', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(687, '6', '10', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(688, '6', '11', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(689, '6', '12', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(690, '6', '13', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(691, '6', '14', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(692, '6', '15', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(693, '6', '16', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(694, '6', '17', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(695, '6', '18', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(696, '6', '19', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(697, '6', '20', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(698, '6', '23', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(699, '6', '24', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(700, '6', '25', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(701, '6', '29', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(702, '6', '32', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(703, '6', '33', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(704, '6', '34', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(705, '6', '36', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(706, '6', '37', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(707, '6', '38', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(708, '6', '39', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(709, '6', '40', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(710, '6', '41', '1', '1', '1', '2023-02-24 04:41:23', '2023-02-24 04:41:23'),
(918, '7', '1', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(919, '7', '2', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(920, '7', '3', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(921, '7', '4', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(922, '7', '5', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(923, '7', '6', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(924, '7', '7', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(925, '7', '8', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(926, '7', '9', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(927, '7', '10', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(928, '7', '11', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(929, '7', '12', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(930, '7', '13', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(931, '7', '14', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(932, '7', '15', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(933, '7', '16', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(934, '7', '17', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(935, '7', '18', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(936, '7', '19', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(937, '7', '20', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(938, '7', '23', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(939, '7', '24', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(940, '7', '25', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(941, '7', '29', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(942, '7', '36', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(943, '7', '37', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(944, '7', '38', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(945, '7', '39', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(946, '7', '40', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(947, '7', '41', '1', '1', '1', '2023-02-24 07:02:45', '2023-02-24 07:02:45'),
(956, '12', '1', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(957, '12', '11', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(958, '12', '12', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(959, '12', '17', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(960, '12', '18', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(961, '12', '29', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(962, '12', '36', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(963, '12', '39', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(964, '12', '40', '0', '0', '0', '2023-02-24 07:19:15', '2023-02-24 07:19:15'),
(965, '14', '1', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(966, '14', '2', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(967, '14', '3', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(968, '14', '4', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(969, '14', '5', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(970, '14', '6', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(971, '14', '7', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(972, '14', '8', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(973, '14', '9', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(974, '14', '10', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(975, '14', '11', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(976, '14', '12', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(977, '14', '13', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(978, '14', '14', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(979, '14', '15', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(980, '14', '16', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(981, '14', '17', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(982, '14', '18', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(983, '14', '19', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(984, '14', '20', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(985, '14', '23', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(986, '14', '24', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(987, '14', '25', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(988, '14', '29', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(989, '14', '36', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(990, '14', '37', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(991, '14', '38', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(992, '14', '39', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(993, '14', '40', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13'),
(994, '14', '41', '1', '1', '1', '2023-03-17 19:14:13', '2023-03-17 19:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monitoring_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supervisor_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activities_limit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `period`, `client_limit`, `site_limit`, `staff_limit`, `monitoring_limit`, `meeting_limit`, `supervisor_limit`, `activities_limit`, `created_at`, `updated_at`) VALUES
(1, 'Free', '0', '30', '20', '20', '20', '20', '20', '20', '20', '2022-10-27 01:56:36', '2022-10-27 02:00:53'),
(2, 'Monthly', '100', '30', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', '2022-10-27 02:04:58', '2022-11-15 04:42:52'),
(3, 'Annual', '1100', '365', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', 'unlimited', '2022-10-27 02:06:12', '2022-11-15 04:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `see_code` int(32) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`, `see_code`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 0, '2022-10-19 10:00:54', '2022-11-15 05:01:29'),
(4, 'Sub Admin', 1, 0, '2022-11-15 05:04:17', '2022-11-15 05:04:17'),
(5, 'Manager', 7, 0, '2022-11-16 01:39:16', '2022-11-16 01:39:16'),
(7, 'Contract Manager', 14, 1, '2022-11-29 22:48:08', '2023-02-21 20:29:19'),
(8, 'Controller', 24, 0, '2022-12-10 01:20:36', '2022-12-10 01:20:36'),
(9, 'Owner', 24, 0, '2022-12-10 01:32:46', '2022-12-10 01:32:46'),
(10, 'Sub Admin', 23, 1, '2022-12-13 16:27:39', '2023-02-21 16:21:19'),
(12, 'Client', 14, 0, '2023-02-21 20:29:12', '2023-03-08 00:53:00'),
(13, 'Sub user', 31, 0, '2023-02-22 22:23:20', '2023-02-22 22:23:20'),
(14, 'Admin', 14, 1, '2023-03-17 19:13:39', '2023-03-17 19:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientname_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitepostcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `clientname_id`, `sitename`, `sitepostcode`, `user_id`, `created_at`, `updated_at`) VALUES
(170, '38', 'Leeds Kirkgate Market', 'LS2 7HY', 14, '2023-02-21 19:58:40', '2023-02-21 19:58:40'),
(171, '43', 'Test site 1', '66000', 31, '2023-02-22 22:20:14', '2023-02-22 22:20:14'),
(175, '41', '111 Farringdon Road EC1R 3BW', 'EC1R 3BW', 14, '2023-02-24 19:45:08', '2023-02-24 19:45:08'),
(176, '44', 'South Wales Fire & Rescue Service Headquarters CF72 8LX', 'CF72 8LX', 14, '2023-02-24 19:46:17', '2023-02-24 19:46:17'),
(177, '60', 'Tredomen Business Park', 'CF82 7FN', 14, '2023-02-28 20:15:43', '2023-02-28 20:15:43'),
(178, '61', 'Cotswold House Chorley', 'PR7 3HW', 14, '2023-02-28 20:16:26', '2023-02-28 20:16:26'),
(179, '61', 'Market Walk Chorley', 'PR7 1DR', 14, '2023-02-28 20:17:00', '2023-02-28 20:17:00'),
(180, '61', 'PRD068162 Cotswold House', 'PR7 3HW', 14, '2023-02-28 20:17:52', '2023-02-28 20:17:52'),
(181, '61', 'Primrose Gardens Chorley', 'PR7 2EE', 14, '2023-02-28 20:18:37', '2023-02-28 20:18:37'),
(182, '61', 'PRD068839 Tatton Gardens Chorley', 'PR6 0PR', 14, '2023-02-28 20:19:35', '2023-02-28 20:19:35'),
(183, '62', 'William Lyons House, Blackpool FY1 2DX', 'FY1 2DX', 14, '2023-03-16 20:58:30', '2023-03-16 20:58:30'),
(184, '62', '53 Gorton Street Hostel, Blackpool FY1 3JW', 'FY1 3JW', 14, '2023-03-16 20:58:40', '2023-03-16 20:58:40'),
(185, '63', 'LEVESON MEWS, BATH STREET, HEREFORD, HR1 2AS', 'HR1 2AS', 14, '2023-03-20 20:40:55', '2023-03-20 20:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `staffdocuments`
--

CREATE TABLE `staffdocuments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_table_id` smallint(6) NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stafflist_models`
--

CREATE TABLE `stafflist_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_companyid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_SIA` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_SIA_expiry` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_payrate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staffsubcontractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stafflist_models`
--

INSERT INTO `stafflist_models` (`id`, `staff_companyid`, `staff_name`, `staff_email`, `staff_phone`, `staff_position`, `staff_SIA`, `staff_SIA_expiry`, `staff_location`, `staff_payrate`, `staffsubcontractor_name`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '54590', 'MUHAMMAD FAISAL IQBAL', 'QAZIFAISAL@GMAIL.COM', '07931633570', 'Security Guard', '1016216716756572', '11 November 2024', 'Chorley/Blackburn', '9.50', 'N/A', 14, '2022-11-29 23:28:59', '2022-11-29 23:28:59'),
(9, '54589', 'AHMED RAZA JAMIL', 'ahmedraza278.ah@gmail.com', '07405388397', 'Security Guard', '1015040530328221', '07 February 2025', NULL, '9.50', NULL, 14, '2022-11-29 23:30:49', '2022-11-29 23:33:19'),
(10, '54946', 'OBAID MAQSOOD', 'obaidmaqsood86@gmail.com', '07727599922', 'Security Guard', '1014191111938432', '07 October 2024', NULL, '9.50', 'N/A', 14, '2022-11-29 23:32:33', '2022-11-29 23:32:33'),
(11, '54586', 'RYAN BRADLEY', 'ryan.bradley12@yahoo.co.uk', '07738557457', 'Security Guard', '1012878728749377', '27 April 2024', 'Chorley', '9.50', 'N/A', 14, '2022-11-29 23:35:38', '2022-11-29 23:35:38'),
(12, '54895', 'DAVID HUDSON', 'davidmhud2001@icloud.com', '07935412322', 'Security Guard', '1014097026554806', '11 November 2024', 'Chorley', '9.50', 'N/A', 14, '2022-11-29 23:37:52', '2022-11-29 23:37:52'),
(13, '56638', 'SALIMAN ADEBAYO', 'salimanadebayo@sky.com', '07904621078', 'Security Guard', '1019338695526962', '11 August 2024', 'Wales', '10.90', 'N/A', 14, '2022-11-30 00:19:45', '2022-11-30 00:19:45'),
(14, '57114', 'SALAH MOHAMED', NULL, '07864789198', 'Security Guard', '1015816512799574', '15 June 2023', 'Wales', NULL, '5', 14, '2022-11-30 00:23:00', '2022-11-30 00:30:48'),
(15, '36852', 'GARETH JAMES', NULL, '07506584940', 'Security Guard', '1037409519828773', '22 February 2024', 'Wales', '9.50', 'N/A', 14, '2022-11-30 00:34:24', '2022-11-30 00:34:24'),
(16, '36851', 'DAVID BAILEY', 'bldav710@aol.com', '07878776866', 'Security Guard', '1014483174799932', '17 October 2023', 'Wales', '9.50', 'N/A', 14, '2022-11-30 00:36:15', '2022-11-30 00:36:15'),
(17, '40304', 'OMAR ZEN SALIM', 'omar_salim_@hotmail.com', '07460117175', 'Security Guard', '1014435503904874', '11 December 2023', 'Wales', '9.50', 'N/A', 14, '2022-11-30 00:37:36', '2022-11-30 00:37:36'),
(18, '54587', 'ANTHONY FRANCE', 'tonylakeside7@gmail.com', '07411453067', 'Security Guard', '1031220286017621', '14 July 2024', 'Chorley', NULL, 'N/A', 14, '2022-11-30 00:41:26', '2022-11-30 00:41:26'),
(19, '54592', 'ABDUL RAUF TALPUR', 'a_rauftalpur@hotmail.com', '07440350526', 'Security Guard', '1015114203228478', '10 July 2025', 'Bolton', '9.50', 'N/A', 14, '2022-11-30 00:44:21', '2022-11-30 00:44:21'),
(20, '54593', 'YOSEPH MASIH', 'yosephmasih@gmail.com', '07878039430', 'Security Guard', '1011455470739780', '16 February 2025', 'Bolton', '9.50', 'N/A', 14, '2022-11-30 00:48:37', '2022-11-30 00:48:37'),
(21, '54594', 'SYED NISAR ABBAS', 's.abbas143@yahoo.com', '07865937794', 'Security Guard', '1039440694693348', '28 April 2023', NULL, '9.50', 'N/A', 14, '2022-11-30 00:54:51', '2022-11-30 00:54:51'),
(22, '48872', 'NARESH ANNAM', NULL, '07585788319', 'Security Guard', '1013010957704038', '12 August 2024', NULL, NULL, '3', 14, '2022-12-01 00:07:55', '2022-12-01 00:07:55'),
(23, '35717', 'MILTON MERGULHAO', NULL, '07405174623', 'Security Guard', '1015450417348731', '06 February 2023', NULL, NULL, '3', 14, '2022-12-01 00:09:35', '2022-12-01 00:09:35'),
(24, '40929', 'AHSAN IFTIKHAR', NULL, '07412838313', 'Security Guard', '1016680985831741', '15 February 2025', NULL, NULL, '3', 14, '2022-12-01 00:14:01', '2022-12-01 00:14:01'),
(25, '12253', 'KAMALUDDIN MUZIB', NULL, '07405575185', 'Security Guard', '1016889740697588', '28 January 2023', NULL, NULL, NULL, 14, '2022-12-01 00:15:44', '2022-12-01 00:16:07'),
(26, '18642', 'MUHAMMAD ABUBAKAR', NULL, '07367519195', 'Security Guard', '1013499125898725', '27 July 2023', NULL, NULL, 'N/A', 14, '2022-12-01 00:27:39', '2022-12-01 00:27:39'),
(27, '22816', 'ZULQERNAIN-HAIDER GHAZANFAR NAZIR', NULL, '07401330130', 'Security Guard', '1012292033183545', '28 January 2024', NULL, NULL, '3', 14, '2022-12-01 00:32:36', '2022-12-01 00:32:36'),
(28, '56781', 'DANIEL ABERA', 'danielabera500@gmail.com', '07469927438', 'Security Guard', '1012161649209858', '16 May 2025', 'Leeds', '10.40', 'N/A', 14, '2022-12-02 00:35:45', '2022-12-02 00:35:45'),
(29, '56782', 'TEDROS MHARI', 'yodittedi@gmail.com', '07939231868', 'Security Guard', '1017873574846367', '14 July 2024', 'Leeds', '10.17', 'N/A', 14, '2022-12-02 00:37:14', '2022-12-02 00:37:14'),
(30, '31517', 'HAILU HAGOS', NULL, '07393936809', 'Security Guard', '1019023320417652', '25 July 2024', NULL, NULL, '6', 14, '2022-12-02 00:38:40', '2022-12-02 00:45:13'),
(31, '57000', 'MUHAMMAD ZUBAIR', 'zubairsehgil9292@gmail.com', '07507756907', 'Security Guard', '1016794944166872', '11 April 2025', NULL, NULL, '3', 14, '2022-12-02 01:12:43', '2022-12-02 01:12:43'),
(32, '45094', 'MUHAMMAD AWAIS FARID CHAUDARY', NULL, '07868838856', 'Security Guard', '1012194526631133', '04 May 2025', NULL, NULL, '3', 14, '2022-12-02 01:14:07', '2022-12-02 01:14:07'),
(33, '22377', 'MUNIR HUSSAIN', NULL, '07790695326', 'Security Guard', '1012104017773971', '06 October 2023', NULL, NULL, '3', 14, '2022-12-02 01:20:13', '2022-12-02 01:20:13'),
(34, '51283', 'ABU HURARA HUSSAIN', 'abuhurerahussain@gmail.com', '07759285971', 'Security Guard', '1038755858991183', '07 August 2025', 'Blackburn', NULL, '3', 14, '2022-12-02 01:31:59', '2022-12-02 01:31:59'),
(35, '55497', 'AHMED UMAIR', 'ahmedumair42321@gmail.com', '07958340113', 'Security Guard', '1019039674192091', '22 September 2025', 'Bolton', NULL, '3', 14, '2022-12-02 01:52:06', '2022-12-02 01:52:06'),
(36, '1CSS', 'RITHISH MACHARLA', 'N/A', '07867383396', 'Security Guard', '1018943749821839', '14 Jun 2024', 'N/A', '9.50', NULL, 24, '2022-12-10 01:14:11', '2022-12-12 19:54:31'),
(37, '1CSS', 'ASHAN IFTIKAR', 'N/A', '07412838313', 'Security Guard', '1016680985831741', '15 Feb 2025', 'N/A', '9.50', NULL, 24, '2022-12-12 19:48:46', '2022-12-12 19:51:38'),
(38, '1CSS', 'Muhammad Bilal Mazhar', 'N/A', '07389795598', 'Security Guard', '1016030917682992', '31-10-2025', 'N/A', '9.75', NULL, 24, '2022-12-12 20:23:24', '2022-12-12 20:23:24'),
(39, '1CSS', 'KULDIP KAUR', 'N/A', '07933108104', 'Security Guard', '1017838601135248', '19 Dec 2022', 'N/A', '9.75', NULL, 24, '2022-12-12 20:28:39', '2022-12-12 20:28:39'),
(40, '1CSS', 'ALI ARSHAD', 'N/A', '07432513940', 'Security Guard', '1014760542579455', '29 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-12 20:30:57', '2022-12-12 20:30:57'),
(41, '1CSS', 'Owolabi	Aladetan', 'N/A', '07513360535', 'Security Guard', '101396924427 8597', '24-10-2025', 'N/A', '9.75', NULL, 24, '2022-12-12 20:33:40', '2022-12-12 20:33:40'),
(42, '1CSS', 'NARESH ANNAM', 'N/A', '07585788319', 'Security Guard', '1013010957704038', '12 Aug 2024', 'N/A', '9.75', NULL, 24, '2022-12-12 20:36:01', '2022-12-12 20:36:01'),
(43, '1CSS', 'MUFTI MAZID', 'N/A', '07850557471', 'Security Guard', '1018685291254665', '03 Nov 2022', 'N/A', '9.75', NULL, 24, '2022-12-12 20:37:04', '2022-12-12 20:37:04'),
(44, '1CSS', 'UMAIR AHMED', 'N/A', '07941884519', 'Security Guard', '1019505594953703', '01 Jul 2024', 'N/A', '9.75', NULL, 24, '2022-12-12 20:39:14', '2022-12-12 20:39:14'),
(45, '1CSS', 'ASIER LARRANAGA URQUIRI', 'N/A', '07501902689', 'Security Guard', '1013469010871668', '23 Feb 2024', 'N/A', '9.75', NULL, 24, '2022-12-12 23:46:35', '2022-12-12 23:46:35'),
(46, '1CSS', 'VAMSI KRISHNA NAIDU AMIRESETTY', 'N/A', '07424412737', 'Security Guard', '1017488218706931', '28 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-12 23:48:35', '2022-12-12 23:48:35'),
(47, '1CSS', 'ABDUL HUSSAIN', 'N/A', '07471325275', 'Security Guard', '1019995244712943', '10 Nov 2025', 'N/A', '9.75', NULL, 24, '2022-12-12 23:50:23', '2022-12-12 23:50:23'),
(48, '489', 'demo staff', 'demoupdate@gmail.com', '03048028789', 'Security Guard', '786538', '390', 'pak', '7899', 'N/A', 23, '2022-12-14 12:26:24', '2022-12-14 12:26:24'),
(49, '1CSS', 'AHMED UMAIR', 'N/A', '07958340113', 'Security Guard', '1019039674192091', '22 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:15:22', '2022-12-17 22:15:22'),
(50, '1CSS', 'TALHA WAHAB', 'N/A', '07468100493', 'Security Guard', '1015430824177561', '21 Apr 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:19:33', '2022-12-17 22:19:33'),
(51, '1CSS', 'ADNAN ASLAM', 'N/A', '07448467996', 'Security Guard', '1014960929446638', '30 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:20:54', '2022-12-17 22:20:54'),
(52, '1CSS', 'MUHAMMAD AWAIS FARID CHAUDARY', 'N/A', '07868838856', 'Security Guard', '1012194526631133', '04 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:22:40', '2022-12-17 22:22:40'),
(53, '1CSS', 'MUHAMMAD AZAM PARVEZ', 'N/A', '07428393893', 'Security Guard', '1012874960311653', '15 Jun 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:25:45', '2022-12-17 22:25:45'),
(54, '1CSS', 'RAB NAWAZ MIAN', 'N/A', '07305150017', 'Security Guard', '1015711745261571', '05 Sep 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:29:42', '2022-12-17 22:29:42'),
(55, '1CSS', 'MUNIR HUSSAIN', 'N/A', '07790695326', 'Security Guard', '1012104017773971', '06 Oct 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 22:31:41', '2022-12-17 22:31:41'),
(56, '1CSS', 'ALI IRFAN', 'N/A', '07578616495', 'Security Guard', '1011835026827711', '28 Apr 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:33:29', '2022-12-17 22:33:29'),
(57, '1CSS', 'JOVENJEET SINGH', 'N/A', '07783754113', 'Security Guard', '1031524897924980', '18 Jan 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:37:52', '2022-12-17 22:37:52'),
(58, '1CSS', 'PRABH JOT KAUR', 'N/A', '07405212095', 'Security Guard', '1016556120481333', '16 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:39:30', '2022-12-17 22:39:30'),
(59, '1CSS', 'MUHAMMAD ZUBAIR', 'N/A', '07507756907', 'Security Guard', '1016794944166872', '11 Apr 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:44:51', '2022-12-17 22:44:51'),
(60, '1CSS', 'MILTON MERGULHAO', 'N/A', '07405174623', 'Security Guard', '1015450417348731', '06 Feb 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 22:47:38', '2022-12-17 22:47:38'),
(61, '1CSS', 'MUHAMMAD NAEEM KHAN KHAN', 'N/A', '07413886665', 'Security Guard', '1012883016583764', '06 Jun 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:50:15', '2022-12-17 22:50:15'),
(62, '1CSS', 'UMAR HAMEED', 'N/A', '07920175985', 'Security Guard', '1018202357862543', '27 Jan 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:52:16', '2022-12-17 22:52:16'),
(63, '1CSS', 'KAWSER MURSHED', 'N/A', '07448166788', 'Security Guard', '1018814306113147', '22 Jun 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:53:58', '2022-12-17 22:53:58'),
(64, '1CSS', 'ASGHAR MOHAMMAD', 'N/A', '07405881440', 'Security Guard', '1019339082035017', '13 Sep 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:55:49', '2022-12-17 22:55:49'),
(65, '1CSS', 'AFZAL KHAN BIBI', 'N/A', '07404367108', 'Security Guard', '1032694453121242', '18 Jul 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 22:57:40', '2022-12-17 22:57:40'),
(66, '1CSS', 'MUHAMMAD SHAHID', 'N/A', '07445982235', 'Security Guard', '07445982235', '31 Mar 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 22:59:31', '2022-12-17 22:59:31'),
(67, '1CSS', 'MUHAMMAD ZUBAIR.', 'N/A', '07979862617', 'Security Guard', '1011213862499592', '07 Nov 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:03:42', '2022-12-17 23:03:42'),
(68, '1CSS', 'GAGANDEEP SINGH', 'N/A', '07402255755', 'Security Guard', '1019793864945853', '11 Aug 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 23:05:21', '2022-12-17 23:05:21'),
(69, '1CSS', 'MR ROHIT ROHIT', 'N/A', '07459164765', 'Security Guard', '1037641817756101', '05 Dec 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 23:07:12', '2022-12-17 23:07:12'),
(70, '1CSS', 'HAFIZ YOUSAF', 'N/A', '07497139960', 'Security Guard', '1019072670366289', '04 Aug 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 23:08:37', '2022-12-17 23:08:37'),
(71, '1CSS', 'UMAR RIAZ', 'N/A', '07385240467', 'Security Guard', '1016163732966441', '21 Jul 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:10:35', '2022-12-17 23:10:35'),
(72, '1CSS', 'AHMED SABOOR', 'N/A', '07472926854', 'Security Guard', '1017454929738323', '29 Jul 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 23:13:00', '2022-12-17 23:13:00'),
(73, '1CSS', 'BABAR SIDDIQUE', 'N/A', '07361913092', 'Security Guard', '1015197958602071', '15 Mar 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:16:04', '2022-12-17 23:16:04'),
(74, '1CSS', 'AKHIL REDDY PAKKER', 'N/A', '07587668966', 'Security Guard', '1011721850836950', '28 Jul 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 23:17:22', '2022-12-17 23:17:22'),
(75, '1CSS', 'NARESH ANNAM', 'N/A', '07585788319', 'Security Guard', '1013010957704038', '12 Aug 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 23:19:40', '2022-12-17 23:19:40'),
(76, '1CSS', 'KAMRAN AZMAT', 'N/A', '07448683195', 'Security Guard', '1018195918675836', '30 Aug 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:21:17', '2022-12-17 23:21:17'),
(77, '1CSS', 'ALTHAF MOHAMMAD', 'N/A', '47585788224', 'Security Guard', '1013184005812979', '08 Aug 2024', 'N/A', '9.75', NULL, 24, '2022-12-17 23:22:39', '2022-12-17 23:22:39'),
(78, '1CSS', 'FAROOQ HUSSAIN', 'N/A', '07832975546', 'Security Guard', '1034781893566209', '23 Dec 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 23:25:58', '2022-12-17 23:25:58'),
(79, '1CSS', 'MUHAMMAD HAIDER', 'N/A', '07719892043', 'Security Guard', '1014874234751052', '03 Dec 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 23:27:55', '2022-12-17 23:27:55'),
(80, '1CSS', 'MUHAMMAD BILAL', 'N/A', '07722426888', 'Security Guard', '1018571625514983', '06 May 2023', 'N/A', '9.75', NULL, 24, '2022-12-17 23:29:25', '2022-12-17 23:29:25'),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, '2022-12-17 23:32:07', '2022-12-30 22:34:49'),
(82, '1CSS', 'SHAHRUKH AHSAN', 'N/A', '07417444751', 'Security Guard', '1017582865156970', '06 Jul 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:34:16', '2022-12-17 23:34:16'),
(83, '1CSS', 'MUHAMMAD SAJID', 'N/A', '07404767184', 'Security Guard', '1011802799244923', '07 Nov 2025', 'N/A', '9.75', NULL, 24, '2022-12-17 23:36:29', '2022-12-17 23:36:29'),
(84, '1CSS', 'BALAWAL ALI', 'N/A', '07842982666', 'Security Guard', '1012257730515330', '23 Feb 2024', 'N/A', '9.75', NULL, 24, '2022-12-18 22:58:46', '2022-12-18 22:58:46'),
(85, '1CSS', 'RAJASHEKAR NERELLA', 'N/A', '07405188450', 'Security Guard', '1019258331404041', '03 Oct 2025', 'N/A', '9.50', NULL, 24, '2022-12-19 19:12:45', '2022-12-19 19:12:45'),
(86, '1CSS', 'PARDIV PRAKASH THURAKA', 'N/A', '07721540283', 'Security Guard', '1015539513641155', '02 Nov 2025', 'N/A', '9.50', NULL, 24, '2022-12-19 20:46:45', '2022-12-19 20:46:45'),
(87, '1CSS', 'MUHAMMAD AHMED', 'N/A', '07470561483', 'Security Guard', '1014008587497217', '26 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-19 20:57:35', '2022-12-19 20:57:35'),
(88, '1CSS', 'MUHAMMAD AWAIS ZAHID', 'N/A', '07405503895', 'Security Guard', '1015403583847086', '28-07-2025', 'N/A', '9.75', NULL, 24, '2022-12-19 21:01:04', '2022-12-19 21:01:04'),
(89, '1CSS', 'ABDUL HANNAN', 'N/A', '07456200981', 'Security Guard', '1019980242374924', '07 Apr 2025', 'N/A', '9.75', NULL, 24, '2022-12-22 23:36:51', '2022-12-22 23:36:51'),
(90, '1CSS', 'MUHAMMAD AMJAD', 'N/A', '07947959888', 'Security Guard', '1013487197972244', '07 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-22 23:45:19', '2022-12-22 23:45:19'),
(91, '1CSS', 'IMTIAZ KHAN', 'N/A', '07916332745', 'Security Guard', '1012514673963635', '12 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 22:05:51', '2022-12-23 22:05:51'),
(92, '1CSS', 'AHMED IMTIAZ', 'N/A', '07417558392', 'Security Guard', '1019284689427962', '20 Sep 2024', 'N/A', '9.75', NULL, 24, '2022-12-23 22:09:41', '2022-12-23 22:09:41'),
(93, '1CSS', 'SAJAWAL HUSSAIN', 'N/A', '07306021941', 'Security Guard', '1013769732756600', '21 Nov 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 22:17:49', '2022-12-23 22:17:49'),
(94, '1CSS', 'ARIF AHMED', 'N/A', '07359055573', 'Security Guard', '1013275539022924', '29 Jun 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 22:27:07', '2022-12-23 22:27:07'),
(95, '1CSS', 'AKHTAR JAVED', 'N/A', '07853141232', 'Security Guard', '1015620887839075', '13 Apr 2023', 'N/A', '9.75', NULL, 24, '2022-12-23 22:36:06', '2022-12-23 22:36:06'),
(96, '1CSS', 'IMRAN NAZIR', 'N/A', '07508361218', 'Security Guard', '1012039375582405', '25 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 23:11:53', '2022-12-23 23:11:53'),
(97, '1CSS', 'MURALI MODIGARI', 'N/A', '07459194926', 'Security Guard', '1011612200113681', '01 Mar 2024', 'N/A', '9.75', NULL, 24, '2022-12-23 23:13:37', '2022-12-23 23:13:37'),
(98, '1CSS', 'MUHAMMED YAZIN', 'N/A', '07442604260', 'Security Guard', '1012840279484059', '29 Aug 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 23:15:18', '2022-12-23 23:15:18'),
(99, '1CSS', 'MUHAMMED THARAYIL', 'N/A', '07442564045', 'Security Guard', '1014036701539918', '07 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 23:17:01', '2022-12-23 23:17:01'),
(100, '1CSS', 'ASADULALAM RASHEEDA', 'N/A', '07454783720', 'Security Guard', '1012950018673993', '29 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 23:19:16', '2022-12-23 23:19:16'),
(101, '1CSS', 'Nabeel Ur Rahman', 'N/A', '07484201156', 'Security Guard', '1018011919353369', '07 Nov 2025', 'N/A', '9.75', NULL, 24, '2022-12-23 23:26:11', '2022-12-23 23:26:11'),
(102, '1CSS', 'SWATHI SAPPIDI', 'N/A', '07435390746', 'Security Guard', '1011307403041561', '19 Dec 2024', 'N/A', '9.75', NULL, 24, '2022-12-23 23:41:29', '2022-12-23 23:41:29'),
(103, '1CSS', 'SHOAIB IFTIKHAR', 'N/A', '07446292980', 'Security Guard', '1011514566782792', '05 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-24 20:41:46', '2022-12-24 20:41:46'),
(104, '1CSS', 'HABTON BEYENE', 'N/A', '07877882518', 'Security Guard', '1012900062099396', '23 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-24 20:46:24', '2022-12-24 20:46:24'),
(105, '1CSS', 'MUHAMMAD TARIQ', 'N/A', '07306131954', 'Security Guard', '1015362064188075', '20 Jun 2024', 'N/A', '9.75', NULL, 24, '2022-12-24 20:48:24', '2022-12-24 20:48:24'),
(106, '1CSS', 'ABDUL ALAM', 'N/A', '07854041950', 'Security Guard', '1011151555962229', '05 Oct 2023', 'N/A', '9.75', NULL, 24, '2022-12-24 21:19:11', '2022-12-24 21:19:11'),
(107, '1CSS', 'Muhammad  Adnan', 'N/A', '07943469215', 'Security Guard', '1016511888259402', '12-04-2025', 'N/A', '9.75', NULL, 24, '2022-12-24 21:21:34', '2022-12-24 21:21:34'),
(108, '1CSS', 'HASSAN RAZA', 'N/A', '07947419132', 'Security Guard', '1015974564274745', '15 Mar 2025', 'N/A', '9.75', NULL, 24, '2022-12-26 23:24:06', '2022-12-26 23:24:06'),
(109, '1CSS', 'Vinod  Sharma', 'N/A', '07424371459', 'Security Guard', '1037074758581706', '20-03-2025', 'N/A', '9.75', NULL, 24, '2022-12-28 22:28:41', '2022-12-28 22:28:41'),
(110, '1CSS', 'MUHAMMAD HIKMETYER MALIK.', 'N/A', '07576886680', 'Security Guard', '1014654007093543', '27 May 2024', 'N/A', '9.75', NULL, 24, '2022-12-28 22:31:59', '2022-12-28 22:31:59'),
(111, '1CSS', 'TAUQEER AHMED', 'N/A', '07934545477', 'Security Guard', '1012548157189814', '11 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-28 22:35:22', '2022-12-28 22:35:22'),
(112, '1CSS', 'VINEET MALIK', 'N/A', '07464955956', 'Security Guard', '1019459721564897', '07 Nov 2022', 'N/A', '9.50', NULL, 24, '2022-12-29 22:02:20', '2022-12-29 22:02:20'),
(113, '1CSS', 'AMRAT SINGH', 'N/A', '07776828725', 'Security Guard', '1011773999548077', '21 Jul 2025', 'N/A', '9.75', NULL, 24, '2022-12-29 22:19:50', '2022-12-29 22:19:50'),
(114, '1CSS', 'HASAAN AMJAD', 'N/A', '07424677419', 'Security Guard', '1013319445986437', '21 Aug 2025', 'N/A', '9.75', NULL, 24, '2022-12-29 22:24:51', '2022-12-29 22:24:51'),
(115, '1CSS', 'SULTAN MAHMOOD AHMED BEGUM', 'N/A', '07723062637', 'Security Guard', '1013659226166462', '02 Nov 2024', 'N/A', '9.75', NULL, 24, '2022-12-30 20:52:52', '2022-12-30 20:52:52'),
(116, '1CSS', 'ZEB AURANG', 'N/A', '47404223342', 'Security Guard', '1013665703978819', '16 Feb 2023', 'N/A', '9.75', NULL, 24, '2022-12-30 20:54:19', '2022-12-30 20:54:19'),
(117, '1CSS', 'FAIZAN MALIK', 'N/A', '07497420763', 'Security Guard', '1014289699948601', '07 Apr 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 20:56:17', '2022-12-30 20:56:17'),
(118, '1CSS', 'OSMAN ELSHEIKH', 'N/A', '07726430219', 'Security Guard', '1012875344496275', '16 Feb 2023', 'N/A', '9.75', NULL, 24, '2022-12-30 20:57:52', '2022-12-30 20:57:52'),
(119, '1CSS', 'WAQAR ALI AKHTAR', 'N/A', '07448959971', 'Security Guard', '1038657134459022', '29 Mar 2023', 'N/A', '9.75', NULL, 24, '2022-12-30 20:59:44', '2022-12-30 20:59:44'),
(120, '1CSS', 'ABOLFAZL GHADERY', 'N/A', '47440546464', 'Security Guard', '1013602673777103', '15 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:01:27', '2022-12-30 21:01:27'),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, '2022-12-30 21:02:24', '2022-12-30 22:33:02'),
(122, '1CSS', 'AAMER SHARIF', 'N/A', '07440115899', 'Security Guard', '1011136636177149', '23 Sep 2023', 'N/A', '9.75', NULL, 24, '2022-12-30 21:11:10', '2022-12-30 21:11:10'),
(123, '1CSS', 'MUHAMMAD QASIM AKRAM', 'N/A', '07466970033', 'Security Guard', '1019830222093321', '21 Feb 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:14:01', '2022-12-30 21:14:01'),
(124, '1CSS', 'JAFEER IQBAL', 'N/A', '07440033209', 'Security Guard', '1017702663339678', '24 Jan 2023', 'N/A', '9.75', NULL, 24, '2022-12-30 21:15:53', '2022-12-30 21:15:53'),
(125, '1CSS', 'UMAR IJAZ', 'N/A', '07405582046', 'Security Guard', '1015156862432195', '15 Jun 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:18:28', '2022-12-30 21:18:28'),
(126, '1CSS', 'ANKUSH DHUNNA', 'N/A', '07735032578', 'Security Guard', '1011605575274863', '07 Feb 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:20:37', '2022-12-30 21:20:37'),
(127, '1CSS', 'AMAR AHMAD', 'N/A', '07450141199', 'Security Guard', '1015249316102793', '08 Sep 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:23:51', '2022-12-30 21:23:51'),
(128, '1CSS', 'MUHAMMAD NAWAZ', 'N/A', '07306021948', 'Security Guard', '1012155412083339', '27 Feb 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:31:23', '2022-12-30 21:31:23'),
(129, '1CSS', 'MUHAMMAD AWAIS', 'N/A', '07405074131', 'Security Guard', '1015688782514662', '19 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:35:39', '2022-12-30 21:35:39'),
(130, '1CSS', 'ILYAS ALI', 'N/A', '07448000754', 'Security Guard', '1013434146146887', '08 Jun 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:38:19', '2022-12-30 21:38:19'),
(131, '1CSS', 'JAWAD ANWAR', 'N/A', '07459 927627', 'Security Guard', '1011588920956721', '20 DEC 2024', 'N/A', '9.75', NULL, 24, '2022-12-30 21:53:07', '2022-12-30 21:53:07'),
(132, '1CSS', 'DEEPIKA', 'N/A', '07776687358', 'Security Guard', '1014649682287548', '02 Aug 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:54:47', '2022-12-30 21:54:47'),
(133, '1CSS', 'SHAHWAIZ ALI', 'N/A', '07719599212', 'Security Guard', '1019966827362561', '02 Mar 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:57:12', '2022-12-30 21:57:12'),
(134, '1CSS', 'VISHNU VARDHAN REDDY VUNDELA', 'N/A', '07435843283', 'Security Guard', '1018083166803878', '10 Jul 2025', 'N/A', '9.75', NULL, 24, '2022-12-30 21:59:03', '2022-12-30 21:59:03'),
(135, '1CSS', 'WAHID MEHMMOOD', 'N/A', '07999451847', 'Security Guard', '1017727737204203', '12 Nov 2022', 'N/A', '9.75', NULL, 24, '2022-12-30 22:00:40', '2022-12-30 22:00:40'),
(136, '1CSS', 'BABAR HUSSAIN', 'N/A', '07516385027', 'Security Guard', '1018489239915605', '07 Apr 2024', 'N/A', '9.50', NULL, 24, '2022-12-31 21:54:54', '2022-12-31 21:54:54'),
(137, '1CSS', 'ASMA IQBAL', 'N/A', '07417455882', 'Security Guard', '1016736931982407', '02 Dec 2024', 'N/A', '9.75', NULL, 24, '2022-12-31 21:56:49', '2022-12-31 21:56:49'),
(138, '1CSS', 'ABDUL RAZAQ', 'N/A', '07448561383', 'Security Guard', '1013826954938409', '21 Dec 2024', 'N/A', '9.75', NULL, 24, '2022-12-31 21:59:16', '2022-12-31 21:59:16'),
(139, '1CSS', 'EYHAB GOUDA', 'N/A', '07404843350', 'Security Guard', '1016729961838298', '21 Jul 2023', 'N/A', '9.75', NULL, 24, '2022-12-31 22:07:02', '2022-12-31 22:07:02'),
(140, '1CSS', 'TAIMOOR AHMED', 'N/A', '07748179467', 'Security Guard', '1015835036943616', '29 Jun 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:09:58', '2022-12-31 22:09:58'),
(141, '1CSS', 'SOURAV NAHAR', 'N/A', '07429495659', 'Security Guard', '1017665501032831', '24 Mar 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:12:05', '2022-12-31 22:12:05'),
(142, '1CSS', 'SHAHEER AHMAD', 'N/A', '07939927164', 'Security Guard', '1016808980835800', '24 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:15:47', '2022-12-31 22:15:47'),
(143, '1CSS', 'AMINUL ISLAM FAHIM', 'N/A', '07831660546', 'Security Guard', '1015569502811456', '12 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:17:25', '2022-12-31 22:17:25'),
(144, '1CSS', 'ABU HURARA HUSSAIN', 'N/A', '47759285971', 'Security Guard', '1038755858991183', '07 Aug 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:19:57', '2022-12-31 22:19:57'),
(145, '1CSS', 'MOHAMMAD RAFIQ', 'N/A', '07395724007', 'Security Guard', '1018075865206219', '03 Jan 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:23:57', '2022-12-31 22:23:57'),
(146, '1CSS', 'ZAIN ALI', 'N/A', '07438307757', 'Security Guard', '1037214422399491', '04 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:25:15', '2022-12-31 22:25:15'),
(147, '1CSS', 'ZIA ZUBAIR', 'N/A', '07749367802', 'Security Guard', '1013822368812467', '26 May 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:26:36', '2022-12-31 22:26:36'),
(148, '1CSS', 'IBRAR HUSSAIN', 'N/A', '07470546827', 'Security Guard', '1016361614082565', '15 Feb 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:28:03', '2022-12-31 22:28:03'),
(149, '1CSS', 'TAUQEER AHMED', 'N/A', '07934545477', 'Security Guard', '1012548157189814', '11 Oct 2025', 'N/A', '9.75', NULL, 24, '2022-12-31 22:29:42', '2022-12-31 22:29:42'),
(150, '1CSS', 'MUHAMMAD AQEEL', 'N/A', '07407705739', 'Security Guard', '1033036078163820', '06 Jun 2025', 'N/A', '9.75', NULL, 24, '2023-01-01 22:06:59', '2023-01-01 22:06:59'),
(151, '1CSS', 'SADIA FAYYAZ', 'N/A', '07472978589', 'Security Guard', '1015889167464108', '26 Sep 2025', 'N/A', '9.75', NULL, 24, '2023-01-04 23:14:50', '2023-01-04 23:14:50'),
(152, '1CSS', 'JAYAMURUGAN SEKAR', 'N/A', '07776614015', 'Security Guard', '1018571801096754', '07 Aug 2025', 'N/A', '9.75', NULL, 24, '2023-01-05 22:15:38', '2023-01-05 22:15:38'),
(153, '1CSS', 'MOHSIN NISAR', 'N/A', '07459735176', 'Security Guard', '1016999623262859', '30 May 2025', 'N/A', '9.75', NULL, 24, '2023-01-05 23:20:55', '2023-01-05 23:20:55'),
(154, '1CSS', 'NAGALAKSHMI GOPIDESI', 'N/A', '07585852064', 'Security Guard', '1014857174021331', '11 Apr 2024', 'N/A', '9.75', NULL, 24, '2023-01-05 23:22:45', '2023-01-05 23:22:45'),
(155, '1CSS', 'SADIA KHAN', 'N/A', '07389739671', 'Security Guard', '1017337118023864', '15-06-2025', 'N/A', '9.75', NULL, 24, '2023-01-09 23:07:26', '2023-01-09 23:07:26'),
(156, '1CSS', 'HAFIZ KHALID', 'N/A', '07447058011', 'Security Guard', '1011542773463213', '19 Apr 2024', 'N/A', '9.75', NULL, 24, '2023-01-09 23:09:47', '2023-01-09 23:09:47'),
(157, '1CSS', 'MUHAMMAD USMAN', 'N/A', '07438183703', 'Security Guard', '1016354841547114', '13 Mar 2025', 'N/A', '9.75', NULL, 24, '2023-01-09 23:15:27', '2023-01-09 23:15:27'),
(158, '1CSS', 'FEROZ MOHAMMAD', 'N/A', '07979855304', 'Security Guard', '1014018687226202', '31 Oct 2025', 'N/A', '9.75', NULL, 24, '2023-01-09 23:18:50', '2023-01-09 23:18:50'),
(159, '60660', 'ADNAN SOHAIL', 'adnanbdmuk@yahoo.co.uk', '07979848265', 'Security Guard', '1015925619523787', '28-11-2024', 'BOLTON', '9.50', 'N/A', 14, '2023-01-13 20:20:00', '2023-01-13 20:20:00'),
(160, '1CSS', 'SATTAR ABDUS', 'N/A', '07400109936', 'Security Guard', '1017499707883427', '15 Jul 2024', 'N/A', '9.75', NULL, 24, '2023-01-13 22:32:00', '2023-01-13 22:32:00'),
(161, '1CSS', 'KASHIF AHMAD BIBI', 'N/A', '07306021902', 'Security Guard', '1012515429296018', '25 Aug 2024', 'N/A', '9.75', NULL, 24, '2023-01-13 23:14:44', '2023-01-13 23:14:44'),
(162, '1CSS', 'SURYATEJA KANDIMALLA', 'N/A', '07448220296', 'Security Guard', '1017461643643818', '07 Mar 2024', 'N/A', '9.75', NULL, 24, '2023-01-18 23:03:40', '2023-01-18 23:03:40'),
(163, '1CSS', 'ASHOK BELLALA', 'N/A', '07448623140', 'Security Guard', '1011715154925686', '22 Sep 2025', 'N/A', '9.75', NULL, 24, '2023-01-18 23:59:49', '2023-01-18 23:59:49'),
(164, '1CSS', 'AMIER SHOKERI', 'N/A', '07368373877', 'Security Guard', '1016442982381213', '28 Jan 2024', 'N/A', '9.75', NULL, 24, '2023-01-20 20:38:39', '2023-01-20 20:38:39'),
(165, '1CSS', 'MOHSIN JAMIL', 'N/A', '07309291322', 'Security Guard', '1018870197852522', '02 Nov 2025', 'N/A', '9.75', NULL, 24, '2023-01-20 20:40:11', '2023-01-20 20:40:11'),
(166, '1CSS', 'ABUBAKAR MOHAMMAD', 'N/A', '07759285971', 'Security Guard', '1031602215575720', '05 Sep 2024', 'N/A', '9.75', NULL, 24, '2023-01-20 20:43:08', '2023-01-20 20:43:08'),
(167, '87422', 'Test Staff', 'test@staff.com', '03123456789', 'Security Guard', '1234567890123456', '15-12-2025', 'London North-West', '200', 'N/A', 23, '2023-01-21 22:05:13', '2023-01-21 22:05:13'),
(168, '1CSS', 'YAKUBPASHA MOHAMMED', 'N/A', '07424333701', 'Security Guard', '1019172403876074', '08 Aug 2024', 'N/A', '9.75', NULL, 24, '2023-01-26 20:30:34', '2023-01-26 20:30:34'),
(169, '1CSS', 'NAUMAN SHABIR', 'N/A', '07466706735', 'Security Guard', '1015318151271703', '07 Nov 2025', 'N/A', '9.75', NULL, 24, '2023-01-26 20:39:01', '2023-01-26 20:39:01'),
(170, '1CSS', 'AHMED RUSHDY MOHMMED MAHDI', 'N/A', '07803000760', 'Security Guard', '1012558556804870', '27 Jan 2023', 'N/A', '9.75', NULL, 24, '2023-01-26 20:46:03', '2023-01-26 20:46:03'),
(171, '1CSS', 'JAVID IQBAL', 'N/A', '07855785786', 'Security Guard', '1039173964008367', '26 Oct 2023', 'N/A', '9.75', NULL, 24, '2023-01-26 20:56:12', '2023-01-26 20:56:12'),
(172, '5346', 'code staff', 'dsafdsd@fsdf.csd', '5464654', 'Security Guard', '1234567890123456', '12-11-2025', 'Lomdon', '100', '7', 23, '2023-02-21 14:25:58', '2023-02-21 14:25:58'),
(173, '61950', 'SHAZAIB ELAHI', 'SHAZAIB.ELAHI140@GMAIL.COM', '07732779098', 'Security Guard', '1012597546605457', '09 August 2025', NULL, NULL, NULL, 14, '2023-02-21 20:09:50', '2023-02-21 20:09:50'),
(174, '25713', 'RAJA JAVED', 'ANJUMRAJA131@YAHOO.COM', '07708657786', 'Security Guard', '1033399734814764', '21 February 2024', NULL, NULL, NULL, 14, '2023-02-21 20:24:38', '2023-02-21 20:24:38'),
(175, '40868', 'BERHANE HAILE', NULL, '07306821905', 'Security Guard', '1017221991587585', '14 November 2024', 'Leeds', NULL, NULL, 14, '2023-02-21 20:27:05', '2023-02-21 20:27:24'),
(176, '5346', 'test staff', 'dsafdsd@fsdf.csd', '030016468498', 'Security Guard', '1234567890123456', '12-11-2025', 'Lomdon', '100', '9', 31, '2023-02-22 22:21:56', '2023-02-22 22:21:56'),
(177, '62137', 'UZAIR KHAN', NULL, '07958345098', 'Security Guard', '1016407087719194', '19 January 2026', NULL, NULL, '3', 14, '2023-02-28 21:52:19', '2023-02-28 21:52:19'),
(178, '33810', 'RAB NAWAZ MIAN', NULL, '07305150017', 'Security Guard', '1015711745261571', '05 September 2024', NULL, NULL, '3', 14, '2023-03-01 22:37:25', '2023-03-01 22:37:25'),
(179, '64252', 'JOHN O\'NEIL', 'neils-5@msn.com', '07581624331', 'Security Guard', '1011710317526121', '25 February 2025', 'Blackpool', '9.84', 'N/A', 14, '2023-03-16 22:18:16', '2023-03-16 22:18:16'),
(180, '64251', 'MAAZ SUBHANI', 'maazsubhani365@gmail.com', '07868392514', 'Security Guard', '1011252606278269', '26 April 2024', 'Blackburn', '9.84', 'N/A', 14, '2023-03-16 22:20:17', '2023-03-16 22:20:17'),
(181, '62576', 'MUHAMMAD ASIM', NULL, '07765088675', 'Security Guard', '1019370875413591', '02 January 2026', NULL, NULL, '3', 14, '2023-03-16 22:22:18', '2023-03-16 22:22:18'),
(182, '43335', 'ADNAN ASLAM', NULL, '07448467996', 'Security Guard', '1014960929446638', '30 October 2025', NULL, NULL, '3', 14, '2023-03-17 21:07:02', '2023-03-17 21:07:02'),
(183, '61748', 'HAMZA ASHIQ', NULL, '07455525599', 'Security Guard', '1019792488975109', '10 January 2026', NULL, NULL, '3', 14, '2023-03-21 00:12:20', '2023-03-21 00:12:20'),
(184, '65156', 'SARWAR DIN', NULL, '07735620115', 'Security Guard', '1013509749735178', '05 February 2026', NULL, NULL, '3', 14, '2023-03-27 23:36:42', '2023-03-27 23:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `subcontractor_models`
--

CREATE TABLE `subcontractor_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcontractor_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_services` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_coveragearea` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcontractor_payrate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcontractor_models`
--

INSERT INTO `subcontractor_models` (`id`, `subcontractor_name`, `subcontractor_code`, `subcontractor_services`, `subcontractor_email`, `subcontractor_phone`, `subcontractor_coveragearea`, `subcontractor_address`, `subcontractor_payrate`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'COVID SUPPORT SERVICE', 'Covid-19', 'Guarding', 'control@1css.co.uk', '+447557384306', 'England - North West', NULL, '9.50', 14, '2022-11-29 23:41:22', '2022-11-30 08:43:01'),
(4, 'WESTMID SECURE SERVICES LTD', 'WMS-01', 'Guarding', 'steve@westmidsec.co.uk', '07426 370221', 'England - South West', NULL, NULL, 14, '2022-11-29 23:46:48', '2022-11-29 23:46:48'),
(5, 'SUPREME PROTECTION SECURITY LIMITED', 'SPS-01', 'Guarding', 'Supremeprotectionsec@gmail.com', '+44 7846 976634', 'England - South East', NULL, NULL, 14, '2022-11-30 00:30:26', '2022-11-30 00:30:26'),
(6, 'STRONG MAN SECURITY SERVICES LIMITED', 'AX', 'Guarding', 'control@axactsec.co.uk', '07599821403', 'England - North West', NULL, NULL, 14, '2022-12-02 00:43:39', '2022-12-02 00:43:39'),
(7, 'Test Subcontractor', '103223', 'Guarding', 'test@subcontractor.com', '+92300115445', 'England - North West', 'dsfsdf', '300', 23, '2023-02-21 14:24:47', '2023-02-21 14:24:47'),
(8, 'RIA SECURITY LTD', 'RIA-01', 'Guarding', NULL, '07771 110408', 'England - North West', NULL, NULL, 14, '2023-02-21 20:15:43', '2023-02-21 20:15:43'),
(9, 'Test Subcontractor', '103223', 'Guarding', 'test@subcontractor.com', '+92300115445', 'England - North West', 'dsfsdf', '300', 31, '2023-02-22 22:21:10', '2023-02-22 22:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisory_visits`
--

CREATE TABLE `supervisory_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_keeping` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appearnce` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `communication` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_comments` text COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisory_visits`
--

INSERT INTO `supervisory_visits` (`id`, `site_id`, `date`, `day`, `staff_id`, `visit_type`, `staff_image`, `supervisor_name`, `time_keeping`, `appearnce`, `attitude`, `communication`, `other_comments`, `user_id`, `created_at`, `updated_at`) VALUES
(28, '170', '06/02/2023', 'Saturday', '174', 'Unannounced', '1676993387-WhatsApp_Image_2023-02-11_at_15.47.23.jpeg', 'Janeth Mwasa & Farah Hanif', '4', '4', '5', '2', 'On arrival, we monitored the guard for several minutes before introducing ourselves. We witnessed the guard walking around the site but not observing his surroundings. At one point, the guard decided to stop at a store where he stood for several minutes talking with the store owner and the people around it. Not once did he listen to the radio and monitor what was happening on site. \r\n\r\nWhen speaking with him, we noticed he struggled to communicate in English; however, he could understand what we were saying to him. He did attempt to speak in his native language as my colleague is from the same country of origin, however, we strictly advise him to keep the conversation in the English language. \r\n\r\nDaniel had also reported prior that the officer wasn\'t doing much to help and wasn\'t completing the patrolling properly.', '14', '2023-02-21 22:29:47', '2023-02-21 22:29:47'),
(29, '170', '06/02/2023', 'Saturday', '28', 'Unannounced', '1676994315-WhatsApp_Image_2023-02-11_at_15.19.49.jpeg', 'Janeth Mwasa & Farah Hanif', '5', '5', '5', '5', 'Daniel has asked about his remaining holiday hours. HR has explained that we have sent Kevin an email containing all the remaining information we require from KINGS. Once we receive Daniel\'s contract as well, we can settle the matter. HR has also explained if we do not receive his contract from KINGS, we will have to provide him with our zero-hour contract. HR has also advised Daniel to try to locate the contract and pass it to us to speed up the process. \r\n\r\nDaniel had also advised us there was an incident on-site today with a drunken man throwing empty bottles at people. The police were called to the site. \r\n\r\nWe have passed a new site mobile phone to Daniel, which he and Tedros can use to scan QR tags when patrolling and report any issues/ incidents directly to us.', '14', '2023-02-21 22:45:15', '2023-02-21 22:47:04'),
(30, '170', '27/02/2023', 'Monday', '28', 'Unannounced', '1677592268-DANIEL_ABERA_(3).jpeg', 'Janeth Mwasa & Farah Hanif', '5', '5', '5', '5', 'Reason for visit: to collect bodycam footage and format cameras and check on officer\'s welfare and site.\r\n\r\nWe have asked Daniel if there have been further incidents since we last visited the site two weeks ago - Daniel responded no significant incidents besides the usual mess around by kids and teenagers. Schools have been on half term, so more teen visits have occurred. \r\n\r\nWe have asked Daniel if everything is okay with his uniform and if he requires more uniform - Daniel has responded there\'s nothing he needs now. \r\n\r\nDaniel mentioned that one of the QR tags from the gate facing the car park had been removed - The Contract Manager will have the tag replaced on the next visit.', '14', '2023-02-28 20:51:08', '2023-02-28 20:53:49'),
(31, '170', '27/02/2023', 'Monday', '29', 'Unannounced', '1677593200-TEDROS_MHARI_(3).jpeg', 'Janeth Mwasa & Farah Hanif', '5', '5', '5', '5', 'Reason for visit: to collect bodycam footage and format cameras and check on officer\'s welfare and site.\r\n\r\nWe have asked Tedros if there is anything to report - Tedros has mentioned there\'s nothing to report but there have been minor issues with teenagers due to schools being on half term. \r\n\r\nTedros has said he does not require more uniforms.', '14', '2023-02-28 21:06:40', '2023-02-28 21:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `tabs`
--

CREATE TABLE `tabs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tab_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tab_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_child` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `parent_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabs`
--

INSERT INTO `tabs` (`id`, `tab_name`, `tab_link`, `tab_icon`, `is_parent`, `is_child`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', '/', 'fas fa-tachometer-alt', '0', '0', '0', '2022-10-19 05:05:51', '2022-10-19 05:05:51'),
(2, 'Clients', '#clients', 'fas fa-columns', '1', '0', '0', '2022-10-19 05:05:51', '2022-10-19 05:05:51'),
(3, 'View All', 'clients', '', '0', '1', '2', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(4, 'Add New', 'clients/create', '', '0', '1', '2', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(5, 'Sites', '#sites', 'fas fa-map-marked-alt', '1', '0', '0', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(6, 'View all', 'sites', '', '0', '1', '5', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(7, 'Add New', 'sites/create', '', '0', '1', '5', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(8, 'Staff', '#staff', 'fas fa-users', '1', '0', '0', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(9, 'Staff List', 'staff/stafflist', '', '0', '1', '8', '2022-10-19 05:10:09', '2022-10-19 05:10:09'),
(10, 'Sub-contractors', 'staff/subcontractors', '', '0', '1', '8', '2022-10-19 05:16:42', '2022-10-19 05:16:42'),
(11, 'Monitoring', '#monitoring', 'fas fa-chart-pie', '1', '0', '0', '2022-10-19 05:16:42', '2022-10-19 05:16:42'),
(12, 'View All', 'monitoring', '', '0', '1', '11', '2022-10-19 05:16:42', '2022-10-19 05:16:42'),
(13, 'Add New', 'monitoring/create', '', '0', '1', '11', '0000-00-00 00:00:00', '2022-10-19 05:16:42'),
(14, 'Meetings', '#meetings', 'fa-regular fa-handshake', '1', '0', '0', '2022-10-19 05:16:42', '2022-10-19 05:16:42'),
(15, 'Internal Meetings', 'meetings/internalmeetings', '', '0', '1', '14', '2022-10-19 05:16:42', '2022-10-19 05:16:42'),
(16, 'External Meetings', 'meetings/externalmeetings', '', '0', '1', '14', '2022-10-19 05:21:08', '2022-10-19 05:21:08'),
(17, 'Supervisory List', '#supervisoryvisits', 'fa fa-dashboard', '1', '0', '0', '2022-10-19 05:21:08', '2022-10-19 05:21:08'),
(18, 'View All', 'supervisoryvisits/all', '', '0', '1', '17', '2022-10-19 05:21:08', '2022-10-19 05:21:08'),
(19, 'Add New', 'supervisoryvisits/create', '', '0', '1', '17', '2022-10-19 05:24:45', '2022-10-19 05:24:45'),
(20, 'Activities', 'activities', 'fas fa-fingerprint', '0', '0', '0', '2022-10-19 05:24:45', '2022-10-19 05:24:45'),
(23, 'Banned Staff', '#banned', 'fas fa-bullseye', '1', '0', '0', '2022-10-19 05:24:45', '2022-10-19 05:24:45'),
(24, 'View All', 'banned', '', '0', '1', '23', '2022-10-19 05:24:45', '0000-00-00 00:00:00'),
(25, 'Add New', 'banned/create', '', '0', '1', '23', '2022-10-19 05:24:45', '2022-10-19 05:24:45'),
(29, 'Complaints', '#complaints', 'fa fa-exclamation-circle', '1', '0', '0', '2022-10-22 08:49:36', '2022-10-22 08:49:36'),
(32, 'Team and Roles', '#rolesTeam', 'fa fa-address-book', '1', '0', '0', '2022-10-22 08:52:10', '2022-10-22 08:52:10'),
(33, 'Roles and Permissions', 'roles', NULL, '0', '1', '32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Team Management', 'team', NULL, '0', '1', '32', '2022-10-22 08:52:10', '2022-10-22 08:52:10'),
(35, 'Subscription Plans', 'subscription/plans', 'fas fa-paper-plane', '0', '0', '0', '2022-10-27 07:15:52', '2022-10-27 07:15:52'),
(36, 'View All', 'complaints', NULL, '0', '1', '29', '2022-10-31 07:00:36', '2022-10-31 07:00:36'),
(37, 'Add New', 'complaint/create', NULL, '0', '1', '29', '2022-10-31 07:01:16', '2022-10-31 07:01:16'),
(38, 'Activity Log', 'activity-log', 'fas fa-clipboard-list', '0', '0', '0', '2022-11-10 11:27:57', '2022-11-10 11:27:57'),
(39, 'Incident Reports', '#incident-reports', 'fa fa-flag', '1', '0', '0', '2023-02-08 05:51:41', '2023-02-08 05:51:41'),
(40, 'View All', 'incident-report/all', NULL, '0', '1', '39', '2023-02-08 05:51:41', '2023-02-08 05:51:41'),
(41, 'Add New', 'incident-report/create', NULL, '0', '1', '39', '2023-02-08 05:53:37', '2023-02-08 05:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `user_type` int(11) NOT NULL DEFAULT '0',
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `user_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `requested_plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `subscription_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `new_client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `parent_id`, `user_type`, `user_role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_paid`, `status`, `user_plan`, `requested_plan`, `subscription_date`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `company_name`, `last_login`, `new_client`) VALUES
(5, 0, 1, '0', 'Admin', 'admin@steeltoe.com', NULL, '$2y$10$VbLsXbRtKN6yp7qkunzymOMDrgThfe08ANas0tB/GPYGKTWUYPAEK', NULL, '1', '1', '1', '0', '2022-10-28', '2022-10-20 02:20:03', '2022-10-20 02:20:03', NULL, NULL, NULL, NULL, NULL, '2022-12-13 23:09:57', '1'),
(14, 0, 0, '0', 'Abdul Manan', 'Abdul@securefm.ltd', NULL, '$2y$10$VbLsXbRtKN6yp7qkunzymOMDrgThfe08ANas0tB/GPYGKTWUYPAEK', NULL, '1', '1', '3', '0', '2022-11-18', '2022-11-19 04:33:02', '2023-03-29 20:28:10', NULL, NULL, NULL, NULL, 'Secure FM LTD', '2023-03-29 20:28:10', '1'),
(22, 0, 0, '0', 'Jamshad', 'jamshaidak21@gmail.com', NULL, '$2y$10$WoCKh/HUkhMFp.YRUOqH7u6BXwm3kMFZAyXkDLyaSvH2gYn0epm0W', NULL, '1', '1', '2', '0', '2022-11-30', '2022-12-01 04:13:08', '2022-12-01 04:13:08', NULL, NULL, NULL, NULL, 'Decent Security Services LTD', NULL, '1'),
(24, 0, 0, '0', 'Yousaf Bhatti', 'control@1css.uk', NULL, '$2y$10$eJhUKSiCEbIbyKDZLvIDyuHY4FDWFdhP/7xsBav9UP9DrEXDfRq1q', NULL, '1', '1', '3', '0', '2022-12-09', '2022-12-10 01:08:37', '2023-03-29 20:32:15', NULL, NULL, NULL, NULL, '1CSS LTD', '2023-03-29 20:32:15', '1'),
(25, 24, 0, '8', 'Haroon', 'controller@1css.uk', NULL, '$2y$10$pgfrchuk7M42FS9593jaOugc8TzZNzbDFkBRYr2R0LHU5h1bzW2vq', NULL, '1', '1', '3', '0', '2022-12-09', '2022-12-10 01:23:52', '2023-02-22 18:34:30', NULL, NULL, NULL, NULL, NULL, '2023-02-22 18:34:30', '1'),
(26, 24, 0, '9', 'Younas Bhatti', 'younas@1css.uk', NULL, '$2y$10$9AOcDA91Ks7bnGeGleDHLuOElYvEFa7xudB/Kt.viU7PKyt6g4VUG', NULL, '1', '1', '3', '0', '2022-12-09', '2022-12-10 01:33:44', '2022-12-10 01:33:44', NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(31, 0, 0, '0', 'Test User', 'test@user.com', NULL, '$2y$10$PPzYnmXzQlBpLqJHkgBT/OA49f51XRPt8CDvo4GAhdn5ShyRM/MRS', NULL, '1', '1', '1', '0', '2023-02-22', '2023-02-22 22:19:01', '2023-03-09 17:41:03', NULL, NULL, NULL, NULL, 'Test Company', '2023-03-09 17:41:03', '1'),
(32, 31, 0, '13', 'Test sub user', 'test@subuser.com', NULL, '$2y$10$e66cK.W5QP50FtTe5yB0OOpKr5SY1iJBK4DCPdLk.EcDS3M0DHnd2', NULL, '1', '1', '1', '0', '2023-02-22', '2023-02-22 22:39:39', '2023-03-07 20:15:12', NULL, NULL, NULL, NULL, NULL, '2023-03-07 20:15:12', '1'),
(35, 31, 0, '13', 'sub user', 'demo@subuser.com', NULL, '$2y$10$56om7OypH6AUKxz.GiZl8OeSZY82VSs06EDx7cNM4Wt4/vZSyH32O', NULL, '1', '1', '1', '0', '2023-02-22', '2023-02-25 09:54:52', '2023-03-06 23:08:29', NULL, NULL, NULL, NULL, NULL, '2023-03-06 23:08:29', '1'),
(36, 14, 0, '12', 'Leeds City Council', 'leedscitycouncil@securefm.ltd', NULL, '$2y$10$zcviBWwdI6rN.0Cd9vhb/eyz/Dk1nYBACZBwU3dgd3jlkTy3GduTG', NULL, '1', '1', '3', '0', '2022-11-18', '2023-02-26 18:36:36', '2023-03-16 18:52:23', NULL, NULL, NULL, NULL, NULL, '2023-03-16 18:52:23', '0'),
(37, 14, 0, '7', 'Janeth Mwasa', 'janeth@securefm.ltd', NULL, '$2y$10$6lDscMCup6LimDSprxh8C.v5Fv94fUj6.ZdPpECXubHIi6.KgwAry', NULL, '1', '1', '3', '0', '2022-11-18', '2023-02-26 18:38:08', '2023-03-29 20:41:25', NULL, NULL, NULL, NULL, NULL, '2023-03-29 20:41:25', '1'),
(38, 31, 0, '13', 'sub user 2', 'test@subuser2.com', NULL, '$2y$10$X2WvYb06DNoqulQM5a4kWuKhpcb8UULt4xY9nANIioHHEHMGty0MK', NULL, '1', '1', '1', '0', '2023-02-22', '2023-02-26 22:03:48', '2023-02-27 22:36:08', NULL, NULL, NULL, NULL, NULL, '2023-02-27 22:36:08', '1'),
(39, 0, 0, '0', 'Mick Tibbs', 'info@mjtbrands.co.uk', NULL, '$2y$10$OTPrtkG93PgnzZpvOFUI7OQtH5aykE9zm2dxeUvNewYFEfMvPIcuu', NULL, '1', '1', '1', '0', '2023-03-05', '2023-03-06 05:03:05', '2023-03-09 17:07:52', NULL, NULL, NULL, NULL, 'M. J. T. Brands', '2023-03-09 17:07:52', '1'),
(40, 0, 0, '0', 'Test', 'test@test1.com', NULL, '$2y$10$Xol63wnfMPk6bSFf7cBkQehpFEF8kp8kJ7K3tnYcqFcd/R68jtUHS', NULL, '1', '1', '1', '0', '2023-03-05', '2023-03-06 06:11:17', '2023-03-21 00:53:59', NULL, NULL, NULL, NULL, 'Test', '2023-03-21 00:53:59', '1'),
(41, 14, 0, '12', 'Chorley Borough Council', 'chorley@securefm.ltd', NULL, '$2y$10$eFt3TSr6rdUM4.VzEBkpge4.9fTJU37KeMt9k8zbdORcKYBTKTZlK', NULL, '1', '1', '3', '0', '2022-11-18', '2023-03-06 09:24:36', '2023-03-28 04:29:58', NULL, NULL, NULL, NULL, NULL, '2023-03-28 04:29:58', '0'),
(42, 14, 0, '12', 'Blackpool Coastal Housing', 'BCH@securefm.ltd', NULL, '$2y$10$19iTOX4FZXVhTEd2lMmtf.ywe3ECktnTy6l4iataDTLeGcmVgcug6', NULL, '1', '1', '3', '0', '2022-11-18', '2023-03-17 18:50:33', '2023-03-17 20:22:04', NULL, NULL, NULL, NULL, NULL, '2023-03-17 20:22:04', '0'),
(43, 14, 0, '14', 'Muhammad Abdullah', 'abhi@securefm.ltd', NULL, '$2y$10$oekibsM8Tjc55oh4Vpf.XOO36RRNPH6HiE6nyLJT8fWL2znb8axd2', NULL, '1', '1', '3', '0', '2022-11-18', '2023-03-17 19:14:37', '2023-03-28 04:30:20', NULL, NULL, NULL, NULL, NULL, '2023-03-28 04:30:20', '1'),
(44, 14, 0, '14', 'Muhammad Bilal', 'rob@securefm.ltd', NULL, '$2y$10$ORjrCHz.Wu6ZmZ5jYQD.Mer5LPBwIj9kEE7mZhK/TB1TgtK.84DuK', NULL, '1', '1', '3', '0', '2022-11-18', '2023-03-17 19:15:09', '2023-03-17 19:15:09', NULL, NULL, NULL, NULL, NULL, NULL, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activitiesoccureds`
--
ALTER TABLE `activitiesoccureds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_clients`
--
ALTER TABLE `assigned_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bannedofficers`
--
ALTER TABLE `bannedofficers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_meetings_models`
--
ALTER TABLE `external_meetings_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `incident_reports`
--
ALTER TABLE `incident_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_meetings_models`
--
ALTER TABLE `internal_meetings_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitorings`
--
ALTER TABLE `monitorings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoring_staff`
--
ALTER TABLE `monitoring_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffdocuments`
--
ALTER TABLE `staffdocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stafflist_models`
--
ALTER TABLE `stafflist_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcontractor_models`
--
ALTER TABLE `subcontractor_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `supervisory_visits`
--
ALTER TABLE `supervisory_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `activitiesoccureds`
--
ALTER TABLE `activitiesoccureds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1495;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assigned_clients`
--
ALTER TABLE `assigned_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `bannedofficers`
--
ALTER TABLE `bannedofficers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `external_meetings_models`
--
ALTER TABLE `external_meetings_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incident_reports`
--
ALTER TABLE `incident_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `internal_meetings_models`
--
ALTER TABLE `internal_meetings_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `monitorings`
--
ALTER TABLE `monitorings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `monitoring_staff`
--
ALTER TABLE `monitoring_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1899;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `staffdocuments`
--
ALTER TABLE `staffdocuments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stafflist_models`
--
ALTER TABLE `stafflist_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `subcontractor_models`
--
ALTER TABLE `subcontractor_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisory_visits`
--
ALTER TABLE `supervisory_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
