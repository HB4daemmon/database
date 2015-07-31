-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?07 �?31 �?11:26
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `magento`
--
CREATE DATABASE IF NOT EXISTS `magento` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `magento`;

-- --------------------------------------------------------

--
-- 表的结构 `adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=99 ;

--
-- 转存表中的数据 `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-24 21:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-01 21:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-01 21:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 13:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-02 17:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-15 18:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-17 16:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-19 22:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-26 18:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 04:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-30 18:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-12 17:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-23 21:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-02 18:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-23 21:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-26 22:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-03 20:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-30 22:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 00:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-19 18:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-29 18:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 15:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-01 21:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 02:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 14:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-23 16:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 10:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-06 20:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-08 20:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 06:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 00:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-19 23:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-23 16:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 13:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 16:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 17:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 01:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 16:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(40, 4, '2010-10-11 20:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(41, 4, '2010-11-08 18:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(42, 4, '2010-12-02 17:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(43, 4, '2010-12-08 19:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(44, 4, '2010-12-17 20:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(45, 4, '2010-12-29 20:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(46, 4, '2011-01-13 21:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(47, 4, '2011-01-21 18:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(48, 4, '2011-01-27 18:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(49, 4, '2011-02-03 18:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(50, 4, '2011-02-08 16:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(51, 4, '2011-02-09 20:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(52, 4, '2011-03-18 16:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(53, 4, '2011-03-31 14:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(54, 4, '2011-04-26 15:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(55, 4, '2011-05-26 15:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(56, 4, '2011-06-15 14:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(57, 4, '2011-06-30 15:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(58, 4, '2011-07-11 15:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(59, 4, '2011-08-19 13:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(60, 4, '2011-09-16 21:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(61, 4, '2011-09-29 11:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(62, 4, '2011-10-19 13:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(63, 4, '2011-12-30 14:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(64, 4, '2012-01-11 14:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(65, 4, '2012-03-02 16:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(66, 4, '2012-04-23 06:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
(67, 4, '2012-05-11 01:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
(68, 4, '2012-06-20 10:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
(69, 4, '2012-07-05 11:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
(70, 4, '2012-11-19 12:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(71, 4, '2012-12-07 03:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(72, 4, '2013-01-15 14:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(73, 4, '2013-02-12 09:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(74, 2, '2013-09-27 09:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(75, 4, '2013-12-11 07:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 0, 0),
(76, 4, '2013-12-12 15:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 0, 0),
(77, 4, '2014-01-21 10:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 0, 0),
(78, 4, '2014-02-20 09:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 0, 0),
(79, 4, '2014-03-04 07:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 0, 0),
(80, 4, '2014-05-13 08:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0),
(81, 4, '2014-10-07 20:55:06', 'It’s still not too late: Boost your 2014 Holiday sales today.', 'See results in as little as one week with eBay Enterprise Display and 2 business days with eBay Enterprise Affiliate. DID YOU KNOW: Get access to over 128 million highly qualified shoppers on eBay.com with eBay Enterprise Display. And the average retail client using product retargeting sees a $10 to $1 ROI on retargeting spend during Q4. With the eBay Enterprise Affiliate Network, get access to over 200,000 active network publishers across 30+ verticals, and only pay when a customer makes a purchase (Affiliate Network is only available in the U.S. & Canada).  GET STARTED TODAY by visiting www.ebayenterprise.com/turbochargesales', 'http://www.ebayenterprise.com/turbochargesales', 0, 0),
(82, 4, '2014-11-12 11:03:26', 'Important: PayPal Users Must Discontinue Using SSL 3.0 By December 3, 2014', 'To address a vulnerability with the SSL 3.0 security protocol, PayPal and other payment gateways will be disabling SSL 3.0 support. Merchants must upgrade to Transport Layer Service (TLS) by December 3, 2014 to avoid PayPal payment operation failures. Learn more about what you need to do at https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 'https://devblog.paypal.com/poodle-ssl-3-0-vulnerability/', 0, 0),
(83, 4, '2014-11-24 15:25:21', 'Magento Community Edition 1.9.1 is available!', 'Magento Community Edition 1.9.1 empowers merchants to deliver compelling shopping experiences by offering enhanced responsive design capabilities, new swatches to display product variations, and improved performance through support for MySQL 5.6 and PHP 5.5. It also includes support for Google Universal Analytics and over 70 product improvements. Find out more at http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 'http://magento.com/blog/magento-news/magento-community-edition-191-now-available-download', 0, 0),
(84, 4, '2015-01-22 09:47:08', 'Join Us at Imagine Commerce 2015 - April 20-22 at the Wynn Las Vegas', 'Join Magento, eBay Enterprise, and over 2,000 merchants, developers, and eCommerce experts at the premier Commerce event of the year. With three days of cutting-edge keynote presentations, special technical programs, dynamic breakout sessions, and incredible networking opportunities, Imagine Commerce 2015 will educate, enrich, and inspire you to take your business to new heights. Register now at http://imagine2015.magento.com/.', 'http://imagine2015.magento.com/', 0, 0),
(85, 1, '2015-04-16 08:17:07', 'Critical Reminder: Download and install Magento security patches.  Download now.', 'Download and implement 2 important security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  If you have not done so already, download and install 2 previously-released patches that prevent an attacker from remotely executing code on Magento software.  These issues affect all versions of Magento Community Edition.  A press release from Check Point Software Technologies in the coming days will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/ ', 0, 0),
(86, 1, '2015-04-19 14:37:00', 'Second Reminder: Download and install Magento critical security patches now.', 'If you have not done so already, download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  These security issues affect all versions of Magento Community Edition and enable an attacker to remotely execute code on Magento software. A press release from Check Point Software Technologies tomorrow  will make one of these issues widely known, possibly alerting hackers who may try to exploit it.  Ensure the patches are in place as a preventative measure before the issue is publicized.', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(87, 1, '2015-04-23 11:43:31', 'Urgent: Immediately install Magento critical security patches', 'It is critical for you to download and install 2 previously-released security patches (SUPEE-5344 and SUPEE-1533) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please do this immediately, as Check Point Software Technologies has published a technical description of how they discovered the issue, which we feel might serve as a tutorial for implementing an attack against your website. ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(88, 1, '2015-05-14 16:34:01', 'Important: New Magento Security Patch - Install it Now', 'It is important for you to download and install a new security patch (SUPEE-5994) from the Magento Community Edition download page (https://www.magentocommerce.com/products/downloads/magento/).  Please apply this critical update immediately to help protect your site from exposure to multiple security vulnerabilities impacting all versions of the Magento Community Edition software. Please note that this patch should be installed in addition to the recent Shoplift patch (SUPEE-5344).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(89, 4, '2015-07-07 08:28:25', 'Now available:  Enhanced site quality and security with Community Edition 1.9.2', 'Magento Community Edition 1.9.2 is now available for download and features over 105 product improvements, nearly 170 automated functional tests to help internal development teams improve implementation quality and time to market, and several security enhancements. Read our blog announcement for more information (http://magento.com/blog/magento-news/magento-community-edition-192-now-available), or go to the Community Edition download page to get the software today (https://www.magentocommerce.com/products/downloads/magento/).', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(90, 1, '2015-07-07 09:08:05', 'July 7, 2015: New Magento Security Patch (SUPEE-6285) – Install Immediately', 'Today we are providing a new security patch (SUPEE-6285) that addresses critical security vulnerabilities. The patch is available for Community Edition 1.4.1 to 1.9.1.1 and is part of the core code of our latest release, Community Edition 1.9.2, available for download today.  PLEASE NOTE:  You must first implement SUPEE-5994 to ensure SUPEE-6285 works properly. Download Community Edition 1.9.2 or the patch from the Community Edition download page: https://www.magentocommerce.com/products/downloads/magento/  ', 'https://www.magentocommerce.com/products/downloads/magento/', 0, 0),
(91, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(92, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(93, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(94, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(95, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(96, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(97, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(98, 4, '2008-11-07 20:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `admin_assert`
--

CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `admin_role`
--

INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'daemon'),
(3, 0, 1, 0, 'G', 0, 'TEST');

-- --------------------------------------------------------

--
-- 表的结构 `admin_rule`
--

CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=204 ;

--
-- 转存表中的数据 `admin_rule`
--

INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow'),
(2, 3, 'all', NULL, 0, 'G', 'deny'),
(3, 3, 'admin', NULL, 0, 'G', 'deny'),
(4, 3, 'admin/dashboard', NULL, 0, 'G', 'deny'),
(5, 3, 'admin/system', NULL, 0, 'G', 'deny'),
(6, 3, 'admin/system/acl', NULL, 0, 'G', 'deny'),
(7, 3, 'admin/system/acl/roles', NULL, 0, 'G', 'deny'),
(8, 3, 'admin/system/acl/users', NULL, 0, 'G', 'deny'),
(9, 3, 'admin/system/store', NULL, 0, 'G', 'deny'),
(10, 3, 'admin/system/design', NULL, 0, 'G', 'deny'),
(11, 3, 'admin/system/config', NULL, 0, 'G', 'deny'),
(12, 3, 'admin/system/config/general', NULL, 0, 'G', 'deny'),
(13, 3, 'admin/system/config/web', NULL, 0, 'G', 'deny'),
(14, 3, 'admin/system/config/design', NULL, 0, 'G', 'deny'),
(15, 3, 'admin/system/config/system', NULL, 0, 'G', 'deny'),
(16, 3, 'admin/system/config/advanced', NULL, 0, 'G', 'deny'),
(17, 3, 'admin/system/config/trans_email', NULL, 0, 'G', 'deny'),
(18, 3, 'admin/system/config/dev', NULL, 0, 'G', 'deny'),
(19, 3, 'admin/system/config/currency', NULL, 0, 'G', 'deny'),
(20, 3, 'admin/system/config/sendfriend', NULL, 0, 'G', 'deny'),
(21, 3, 'admin/system/config/admin', NULL, 0, 'G', 'deny'),
(22, 3, 'admin/system/config/cms', NULL, 0, 'G', 'deny'),
(23, 3, 'admin/system/config/customer', NULL, 0, 'G', 'deny'),
(24, 3, 'admin/system/config/catalog', NULL, 0, 'G', 'deny'),
(25, 3, 'admin/system/config/payment', NULL, 0, 'G', 'deny'),
(26, 3, 'admin/system/config/payment_services', NULL, 0, 'G', 'deny'),
(27, 3, 'admin/system/config/sales', NULL, 0, 'G', 'deny'),
(28, 3, 'admin/system/config/sales_email', NULL, 0, 'G', 'deny'),
(29, 3, 'admin/system/config/sales_pdf', NULL, 0, 'G', 'deny'),
(30, 3, 'admin/system/config/cataloginventory', NULL, 0, 'G', 'deny'),
(31, 3, 'admin/system/config/shipping', NULL, 0, 'G', 'deny'),
(32, 3, 'admin/system/config/carriers', NULL, 0, 'G', 'deny'),
(33, 3, 'admin/system/config/promo', NULL, 0, 'G', 'deny'),
(34, 3, 'admin/system/config/checkout', NULL, 0, 'G', 'deny'),
(35, 3, 'admin/system/config/paypal', NULL, 0, 'G', 'deny'),
(36, 3, 'admin/system/config/reports', NULL, 0, 'G', 'deny'),
(37, 3, 'admin/system/config/google', NULL, 0, 'G', 'deny'),
(38, 3, 'admin/system/config/tax', NULL, 0, 'G', 'deny'),
(39, 3, 'admin/system/config/wishlist', NULL, 0, 'G', 'deny'),
(40, 3, 'admin/system/config/contacts', NULL, 0, 'G', 'deny'),
(41, 3, 'admin/system/config/sitemap', NULL, 0, 'G', 'deny'),
(42, 3, 'admin/system/config/rss', NULL, 0, 'G', 'deny'),
(43, 3, 'admin/system/config/api', NULL, 0, 'G', 'deny'),
(44, 3, 'admin/system/config/oauth', NULL, 0, 'G', 'deny'),
(45, 3, 'admin/system/config/newsletter', NULL, 0, 'G', 'deny'),
(46, 3, 'admin/system/config/downloadable', NULL, 0, 'G', 'deny'),
(47, 3, 'admin/system/config/persistent', NULL, 0, 'G', 'deny'),
(48, 3, 'admin/system/config/moneybookers', NULL, 0, 'G', 'deny'),
(49, 3, 'admin/system/currency', NULL, 0, 'G', 'deny'),
(50, 3, 'admin/system/currency/rates', NULL, 0, 'G', 'deny'),
(51, 3, 'admin/system/currency/symbols', NULL, 0, 'G', 'deny'),
(52, 3, 'admin/system/email_template', NULL, 0, 'G', 'deny'),
(53, 3, 'admin/system/variable', NULL, 0, 'G', 'deny'),
(54, 3, 'admin/system/myaccount', NULL, 0, 'G', 'deny'),
(55, 3, 'admin/system/tools', NULL, 0, 'G', 'deny'),
(56, 3, 'admin/system/tools/backup', NULL, 0, 'G', 'deny'),
(57, 3, 'admin/system/tools/backup/rollback', NULL, 0, 'G', 'deny'),
(58, 3, 'admin/system/tools/compiler', NULL, 0, 'G', 'deny'),
(59, 3, 'admin/system/convert', NULL, 0, 'G', 'deny'),
(60, 3, 'admin/system/convert/gui', NULL, 0, 'G', 'deny'),
(61, 3, 'admin/system/convert/profiles', NULL, 0, 'G', 'deny'),
(62, 3, 'admin/system/convert/import', NULL, 0, 'G', 'deny'),
(63, 3, 'admin/system/convert/export', NULL, 0, 'G', 'deny'),
(64, 3, 'admin/system/cache', NULL, 0, 'G', 'deny'),
(65, 3, 'admin/system/extensions', NULL, 0, 'G', 'deny'),
(66, 3, 'admin/system/extensions/local', NULL, 0, 'G', 'deny'),
(67, 3, 'admin/system/extensions/custom', NULL, 0, 'G', 'deny'),
(68, 3, 'admin/system/adminnotification', NULL, 0, 'G', 'deny'),
(69, 3, 'admin/system/adminnotification/show_toolbar', NULL, 0, 'G', 'deny'),
(70, 3, 'admin/system/adminnotification/show_list', NULL, 0, 'G', 'deny'),
(71, 3, 'admin/system/adminnotification/mark_as_read', NULL, 0, 'G', 'deny'),
(72, 3, 'admin/system/adminnotification/remove', NULL, 0, 'G', 'deny'),
(73, 3, 'admin/system/index', NULL, 0, 'G', 'deny'),
(74, 3, 'admin/system/order_statuses', NULL, 0, 'G', 'deny'),
(75, 3, 'admin/system/api', NULL, 0, 'G', 'deny'),
(76, 3, 'admin/system/api/users', NULL, 0, 'G', 'deny'),
(77, 3, 'admin/system/api/roles', NULL, 0, 'G', 'deny'),
(78, 3, 'admin/system/api/consumer', NULL, 0, 'G', 'deny'),
(79, 3, 'admin/system/api/consumer/edit', NULL, 0, 'G', 'deny'),
(80, 3, 'admin/system/api/consumer/delete', NULL, 0, 'G', 'deny'),
(81, 3, 'admin/system/api/authorizedTokens', NULL, 0, 'G', 'deny'),
(82, 3, 'admin/system/api/oauth_admin_token', NULL, 0, 'G', 'deny'),
(83, 3, 'admin/system/api/rest_roles', NULL, 0, 'G', 'deny'),
(84, 3, 'admin/system/api/rest_roles/add', NULL, 0, 'G', 'deny'),
(85, 3, 'admin/system/api/rest_roles/edit', NULL, 0, 'G', 'deny'),
(86, 3, 'admin/system/api/rest_roles/delete', NULL, 0, 'G', 'deny'),
(87, 3, 'admin/system/api/rest_attributes', NULL, 0, 'G', 'deny'),
(88, 3, 'admin/system/api/rest_attributes/edit', NULL, 0, 'G', 'deny'),
(89, 3, 'admin/global_search', NULL, 0, 'G', 'deny'),
(90, 3, 'admin/cms', NULL, 0, 'G', 'deny'),
(91, 3, 'admin/cms/block', NULL, 0, 'G', 'deny'),
(92, 3, 'admin/cms/page', NULL, 0, 'G', 'deny'),
(93, 3, 'admin/cms/page/save', NULL, 0, 'G', 'deny'),
(94, 3, 'admin/cms/page/delete', NULL, 0, 'G', 'deny'),
(95, 3, 'admin/cms/media_gallery', NULL, 0, 'G', 'deny'),
(96, 3, 'admin/cms/poll', NULL, 0, 'G', 'deny'),
(97, 3, 'admin/cms/widget_instance', NULL, 0, 'G', 'deny'),
(98, 3, 'admin/customer', NULL, 0, 'G', 'deny'),
(99, 3, 'admin/customer/group', NULL, 0, 'G', 'deny'),
(100, 3, 'admin/customer/manage', NULL, 0, 'G', 'deny'),
(101, 3, 'admin/customer/online', NULL, 0, 'G', 'deny'),
(102, 3, 'admin/catalog', NULL, 0, 'G', 'deny'),
(103, 3, 'admin/catalog/attributes', NULL, 0, 'G', 'deny'),
(104, 3, 'admin/catalog/attributes/attributes', NULL, 0, 'G', 'deny'),
(105, 3, 'admin/catalog/attributes/sets', NULL, 0, 'G', 'deny'),
(106, 3, 'admin/catalog/categories', NULL, 0, 'G', 'deny'),
(107, 3, 'admin/catalog/products', NULL, 0, 'G', 'deny'),
(108, 3, 'admin/catalog/update_attributes', NULL, 0, 'G', 'deny'),
(109, 3, 'admin/catalog/urlrewrite', NULL, 0, 'G', 'deny'),
(110, 3, 'admin/catalog/search', NULL, 0, 'G', 'deny'),
(111, 3, 'admin/catalog/reviews_ratings', NULL, 0, 'G', 'deny'),
(112, 3, 'admin/catalog/reviews_ratings/reviews', NULL, 0, 'G', 'deny'),
(113, 3, 'admin/catalog/reviews_ratings/reviews/all', NULL, 0, 'G', 'deny'),
(114, 3, 'admin/catalog/reviews_ratings/reviews/pending', NULL, 0, 'G', 'deny'),
(115, 3, 'admin/catalog/reviews_ratings/ratings', NULL, 0, 'G', 'deny'),
(116, 3, 'admin/catalog/tag', NULL, 0, 'G', 'deny'),
(117, 3, 'admin/catalog/tag/all', NULL, 0, 'G', 'deny'),
(118, 3, 'admin/catalog/tag/pending', NULL, 0, 'G', 'deny'),
(119, 3, 'admin/catalog/sitemap', NULL, 0, 'G', 'deny'),
(120, 3, 'admin/promo', NULL, 0, 'G', 'deny'),
(121, 3, 'admin/promo/catalog', NULL, 0, 'G', 'deny'),
(122, 3, 'admin/promo/quote', NULL, 0, 'G', 'deny'),
(123, 3, 'admin/sales', NULL, 0, 'G', 'allow'),
(124, 3, 'admin/sales/order', NULL, 0, 'G', 'deny'),
(125, 3, 'admin/sales/order/actions', NULL, 0, 'G', 'deny'),
(126, 3, 'admin/sales/order/actions/create', NULL, 0, 'G', 'deny'),
(127, 3, 'admin/sales/order/actions/view', NULL, 0, 'G', 'deny'),
(128, 3, 'admin/sales/order/actions/email', NULL, 0, 'G', 'deny'),
(129, 3, 'admin/sales/order/actions/reorder', NULL, 0, 'G', 'deny'),
(130, 3, 'admin/sales/order/actions/edit', NULL, 0, 'G', 'deny'),
(131, 3, 'admin/sales/order/actions/cancel', NULL, 0, 'G', 'deny'),
(132, 3, 'admin/sales/order/actions/review_payment', NULL, 0, 'G', 'deny'),
(133, 3, 'admin/sales/order/actions/capture', NULL, 0, 'G', 'deny'),
(134, 3, 'admin/sales/order/actions/invoice', NULL, 0, 'G', 'deny'),
(135, 3, 'admin/sales/order/actions/creditmemo', NULL, 0, 'G', 'deny'),
(136, 3, 'admin/sales/order/actions/hold', NULL, 0, 'G', 'deny'),
(137, 3, 'admin/sales/order/actions/unhold', NULL, 0, 'G', 'deny'),
(138, 3, 'admin/sales/order/actions/ship', NULL, 0, 'G', 'deny'),
(139, 3, 'admin/sales/order/actions/comment', NULL, 0, 'G', 'deny'),
(140, 3, 'admin/sales/order/actions/emails', NULL, 0, 'G', 'deny'),
(141, 3, 'admin/sales/invoice', NULL, 0, 'G', 'deny'),
(142, 3, 'admin/sales/shipment', NULL, 0, 'G', 'deny'),
(143, 3, 'admin/sales/creditmemo', NULL, 0, 'G', 'deny'),
(144, 3, 'admin/sales/transactions', NULL, 0, 'G', 'allow'),
(145, 3, 'admin/sales/transactions/fetch', NULL, 0, 'G', 'allow'),
(146, 3, 'admin/sales/recurring_profile', NULL, 0, 'G', 'deny'),
(147, 3, 'admin/sales/billing_agreement', NULL, 0, 'G', 'deny'),
(148, 3, 'admin/sales/billing_agreement/actions', NULL, 0, 'G', 'deny'),
(149, 3, 'admin/sales/billing_agreement/actions/view', NULL, 0, 'G', 'deny'),
(150, 3, 'admin/sales/billing_agreement/actions/manage', NULL, 0, 'G', 'deny'),
(151, 3, 'admin/sales/billing_agreement/actions/use', NULL, 0, 'G', 'deny'),
(152, 3, 'admin/sales/checkoutagreement', NULL, 0, 'G', 'deny'),
(153, 3, 'admin/sales/tax', NULL, 0, 'G', 'deny'),
(154, 3, 'admin/sales/tax/classes_customer', NULL, 0, 'G', 'deny'),
(155, 3, 'admin/sales/tax/classes_product', NULL, 0, 'G', 'deny'),
(156, 3, 'admin/sales/tax/import_export', NULL, 0, 'G', 'deny'),
(157, 3, 'admin/sales/tax/rates', NULL, 0, 'G', 'deny'),
(158, 3, 'admin/sales/tax/rules', NULL, 0, 'G', 'deny'),
(159, 3, 'admin/report', NULL, 0, 'G', 'deny'),
(160, 3, 'admin/report/salesroot', NULL, 0, 'G', 'deny'),
(161, 3, 'admin/report/salesroot/paypal_settlement_reports', NULL, 0, 'G', 'deny'),
(162, 3, 'admin/report/salesroot/paypal_settlement_reports/view', NULL, 0, 'G', 'deny'),
(163, 3, 'admin/report/salesroot/paypal_settlement_reports/fetch', NULL, 0, 'G', 'deny'),
(164, 3, 'admin/report/salesroot/sales', NULL, 0, 'G', 'deny'),
(165, 3, 'admin/report/salesroot/tax', NULL, 0, 'G', 'deny'),
(166, 3, 'admin/report/salesroot/shipping', NULL, 0, 'G', 'deny'),
(167, 3, 'admin/report/salesroot/invoiced', NULL, 0, 'G', 'deny'),
(168, 3, 'admin/report/salesroot/refunded', NULL, 0, 'G', 'deny'),
(169, 3, 'admin/report/salesroot/coupons', NULL, 0, 'G', 'deny'),
(170, 3, 'admin/report/shopcart', NULL, 0, 'G', 'deny'),
(171, 3, 'admin/report/shopcart/product', NULL, 0, 'G', 'deny'),
(172, 3, 'admin/report/shopcart/abandoned', NULL, 0, 'G', 'deny'),
(173, 3, 'admin/report/products', NULL, 0, 'G', 'deny'),
(174, 3, 'admin/report/products/bestsellers', NULL, 0, 'G', 'deny'),
(175, 3, 'admin/report/products/sold', NULL, 0, 'G', 'deny'),
(176, 3, 'admin/report/products/viewed', NULL, 0, 'G', 'deny'),
(177, 3, 'admin/report/products/lowstock', NULL, 0, 'G', 'deny'),
(178, 3, 'admin/report/products/downloads', NULL, 0, 'G', 'deny'),
(179, 3, 'admin/report/customers', NULL, 0, 'G', 'deny'),
(180, 3, 'admin/report/customers/accounts', NULL, 0, 'G', 'deny'),
(181, 3, 'admin/report/customers/totals', NULL, 0, 'G', 'deny'),
(182, 3, 'admin/report/customers/orders', NULL, 0, 'G', 'deny'),
(183, 3, 'admin/report/review', NULL, 0, 'G', 'deny'),
(184, 3, 'admin/report/review/customer', NULL, 0, 'G', 'deny'),
(185, 3, 'admin/report/review/product', NULL, 0, 'G', 'deny'),
(186, 3, 'admin/report/tags', NULL, 0, 'G', 'deny'),
(187, 3, 'admin/report/tags/customer', NULL, 0, 'G', 'deny'),
(188, 3, 'admin/report/tags/popular', NULL, 0, 'G', 'deny'),
(189, 3, 'admin/report/tags/product', NULL, 0, 'G', 'deny'),
(190, 3, 'admin/report/search', NULL, 0, 'G', 'deny'),
(191, 3, 'admin/report/statistics', NULL, 0, 'G', 'deny'),
(192, 3, 'admin/newsletter', NULL, 0, 'G', 'deny'),
(193, 3, 'admin/newsletter/problem', NULL, 0, 'G', 'deny'),
(194, 3, 'admin/newsletter/queue', NULL, 0, 'G', 'deny'),
(195, 3, 'admin/newsletter/subscriber', NULL, 0, 'G', 'deny'),
(196, 3, 'admin/newsletter/template', NULL, 0, 'G', 'deny'),
(197, 3, 'admin/page_cache', NULL, 0, 'G', 'deny'),
(198, 3, 'admin/xmlconnect', NULL, 0, 'G', 'deny'),
(199, 3, 'admin/xmlconnect/mobile', NULL, 0, 'G', 'deny'),
(200, 3, 'admin/xmlconnect/history', NULL, 0, 'G', 'deny'),
(201, 3, 'admin/xmlconnect/templates', NULL, 0, 'G', 'deny'),
(202, 3, 'admin/xmlconnect/queue', NULL, 0, 'G', 'deny'),
(203, 3, 'admin/xmlconnect/admin_connect', NULL, 0, 'G', 'deny');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'daemon', 'wang', 'hb4daemon@163.com', 'admin', '28cbf7b212acbc9a7474911799cd2b24:OCM6Da85FrRSMc7YOt9jcjWQdrM0gwgn', '2015-07-16 03:43:49', '2015-07-16 03:43:49', '2015-07-31 01:23:27', 12, 0, 1, 'a:1:{s:11:"configState";a:9:{s:7:"web_url";s:1:"1";s:7:"web_seo";s:1:"0";s:12:"web_unsecure";s:1:"1";s:10:"web_secure";s:1:"1";s:11:"web_default";s:1:"0";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:11:"web_session";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `api2_acl_role`
--

INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2015-07-16 11:41:52', NULL, 'Guest'),
(2, '2015-07-16 11:41:52', NULL, 'Customer');

-- --------------------------------------------------------

--
-- 表的结构 `api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- 表的结构 `api_assert`
--

CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `api_role`
--

CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `api_rule`
--

CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `api_session`
--

CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- 表的结构 `api_user`
--

CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `captcha_log`
--

CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, '997.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(2, 2, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(3, 3, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(4, 4, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(5, 5, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(6, 6, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(7, 7, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(8, 8, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(9, 9, 1, '999.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(10, 10, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(11, 11, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(12, 12, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(13, 13, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(14, 14, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(15, 15, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(16, 16, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(17, 17, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(18, 18, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(19, 19, 1, '997.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(20, 20, 1, '1000.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, '1.0000', 1, 0, 1, 0, 1, '0.0000', 1, 0, 0),
(21, 21, 1, '99999.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '0.0000', 1, 1, NULL, NULL, 1, 0, 1, 0, 1, '0.0000', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- 转存表中的数据 `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '997.0000', 1),
(2, 1, 1, '1000.0000', 1),
(3, 1, 1, '1000.0000', 1),
(4, 1, 1, '1000.0000', 1),
(5, 1, 1, '1000.0000', 1),
(6, 1, 1, '1000.0000', 1),
(7, 1, 1, '1000.0000', 1),
(8, 1, 1, '1000.0000', 1),
(9, 1, 1, '999.0000', 1),
(10, 1, 1, '1000.0000', 1),
(11, 1, 1, '1000.0000', 1),
(12, 1, 1, '1000.0000', 1),
(13, 1, 1, '1000.0000', 1),
(14, 1, 1, '1000.0000', 1),
(15, 1, 1, '1000.0000', 1),
(16, 1, 1, '1000.0000', 1),
(17, 1, 1, '1000.0000', 1),
(18, 1, 1, '1000.0000', 1),
(19, 1, 1, '997.0000', 1),
(20, 1, 1, '1000.0000', 1),
(21, 1, 1, '99999.0000', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- 转存表中的数据 `cataloginventory_stock_status_idx`
--

INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, '997.0000', 1),
(2, 1, 1, '1000.0000', 1),
(3, 1, 1, '1000.0000', 1),
(4, 1, 1, '1000.0000', 1),
(5, 1, 1, '1000.0000', 1),
(6, 1, 1, '1000.0000', 1),
(7, 1, 1, '1000.0000', 1),
(8, 1, 1, '1000.0000', 1),
(9, 1, 1, '999.0000', 1),
(10, 1, 1, '1000.0000', 1),
(11, 1, 1, '1000.0000', 1),
(12, 1, 1, '1000.0000', 1),
(13, 1, 1, '1000.0000', 1),
(14, 1, 1, '1000.0000', 1),
(15, 1, 1, '1000.0000', 1),
(16, 1, 1, '1000.0000', 1),
(17, 1, 1, '1000.0000', 1),
(18, 1, 1, '1000.0000', 1),
(19, 1, 1, '997.0000', 1),
(20, 1, 1, '1000.0000', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule`
--

CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `catalogsearch_fulltext`
--

INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(33, 13, 1, 'mung|无|绿豆|绿豆|绿豆|15|1'),
(32, 12, 1, 'Soybean|无|黄豆|黄豆|黄豆|15|1'),
(31, 11, 1, 'Cucumber|无|水果黄瓜|水果黄瓜|水果黄瓜|10|1'),
(30, 10, 1, 'Red bean|无|红豆|红豆|红豆|20|1'),
(29, 9, 1, 'millet|无|小米|小米|小米|20|1'),
(28, 8, 1, 'pineapple|无|海南凤梨|海南凤梨|海南凤梨|30|1'),
(27, 7, 1, 'kiwi|无|新西兰绿奇异果|新西兰绿奇异果|新西兰绿奇异果|8|1'),
(26, 6, 1, 'banana|无|菲律宾香蕉|菲律宾香蕉|菲律宾香蕉|8|1'),
(25, 5, 1, 'apple|无|陕西红富士|陕西红富士|陕西红富士|5|1'),
(24, 4, 1, 'litchi|无|越南荔枝|越南荔枝|越南荔枝|5|1'),
(23, 3, 1, 'rice|无|大米|大米|大米|50|1'),
(22, 2, 1, 'pamp|无|葡萄柚|葡萄柚|葡萄柚|10|1'),
(21, 1, 1, 'peach|无|杨山水蜜桃|杨山水蜜桃|杨山水蜜桃|10|1'),
(34, 14, 1, 'Cherry|无|美早樱桃|美早樱桃|美早樱桃|10|1'),
(35, 15, 1, 'Apricot|无|杏子|杏子|杏子|6|1'),
(36, 16, 1, 'Jujube|无|红枣|红枣|红枣|18|1'),
(37, 17, 1, 'Pear|无|砀山梨|砀山梨|砀山梨|8|1'),
(38, 18, 1, 'Mango|无|芒果|芒果|芒果|6|1'),
(39, 19, 1, 'Watermelon|无|西瓜|西瓜|西瓜|16|1'),
(40, 20, 1, 'Cherry Tomatoes|无|圣女果|圣女果|圣女果|25|1'),
(42, 21, 1, 'sku001|无|name|desc|short desc|11.11|1');

-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2015-07-16 03:43:02', '2015-07-16 03:43:02', '1', 0, 0, 7),
(2, 3, 3, 1, '2015-07-16 03:43:03', '2015-07-16 03:43:03', '1/2', 1, 1, 6),
(3, 3, 3, 2, '2015-07-21 20:28:37', '2015-07-21 20:28:37', '1/2/3', 1, 2, 1),
(4, 3, 3, 2, '2015-07-21 20:28:54', '2015-07-21 20:28:54', '1/2/4', 2, 2, 0),
(5, 3, 3, 2, '2015-07-28 21:50:32', '2015-07-28 21:50:32', '1/2/5', 3, 2, 2),
(6, 3, 3, 3, '2015-07-28 22:06:13', '2015-07-28 22:06:13', '1/2/3/6', 1, 3, 0),
(7, 3, 3, 5, '2015-07-28 22:07:10', '2015-07-28 22:07:10', '1/2/5/7', 1, 3, 0),
(8, 3, 3, 5, '2015-07-29 18:33:15', '2015-07-29 18:33:15', '1/2/5/8', 2, 3, 0),
(9, 3, 3, 2, '2015-07-30 04:56:08', '2015-07-30 04:56:08', '1/2/9', 1, 2, 0),
(10, 3, 3, 2, '2015-07-30 04:56:17', '2015-07-30 04:56:17', '1/2/10', 2, 2, 0),
(11, 3, 3, 12, '2015-07-30 04:56:22', '2015-07-30 04:56:22', '1/2/12/11', 1, 3, 0),
(12, 3, 3, 2, '2015-07-30 04:56:26', '2015-07-30 03:00:35', '1/2/12', 3, 2, 0),
(13, 3, 3, 48, '2015-07-30 04:56:31', '2015-07-30 04:56:31', '1/2/12/48/13', 1, 4, 0),
(14, 3, 3, 12, '2015-07-30 04:56:36', '2015-07-30 04:56:36', '1/2/12/14', 2, 3, 0),
(15, 3, 3, 14, '2015-07-30 04:56:40', '2015-07-30 04:56:40', '1/2/12/14/15', 1, 4, 0),
(16, 3, 3, 12, '2015-07-30 04:56:44', '2015-07-30 04:56:44', '1/2/12/16', 3, 3, 0),
(17, 3, 3, 14, '2015-07-30 04:56:49', '2015-07-30 04:56:49', '1/2/12/14/17', 2, 4, 0),
(18, 3, 3, 16, '2015-07-30 04:56:54', '2015-07-30 04:56:54', '1/2/12/16/18', 1, 4, 0),
(19, 3, 3, 12, '2015-07-30 04:57:00', '2015-07-30 04:57:00', '1/2/12/19', 4, 3, 0),
(20, 3, 3, 19, '2015-07-30 04:57:03', '2015-07-30 04:57:03', '1/2/12/19/20', 1, 4, 0),
(21, 3, 3, 51, '2015-07-30 04:57:09', '2015-07-30 04:57:09', '1/2/12/51/21', 1, 4, 0),
(22, 3, 3, 21, '2015-07-30 04:57:13', '2015-07-30 04:57:13', '1/2/12/51/21/22', 6, 5, 0),
(23, 3, 3, 21, '2015-07-30 04:57:19', '2015-07-30 04:57:19', '1/2/12/51/21/23', 5, 5, 0),
(24, 3, 3, 12, '2015-07-30 04:57:23', '2015-07-30 04:57:23', '1/2/12/24', 9, 3, 0),
(25, 3, 3, 21, '2015-07-30 04:57:27', '2015-07-30 04:57:27', '1/2/12/51/21/25', 3, 5, 0),
(26, 3, 3, 21, '2015-07-30 04:57:33', '2015-07-30 04:57:33', '1/2/12/51/21/26', 2, 5, 0),
(27, 3, 3, 12, '2015-07-30 04:57:39', '2015-07-30 04:57:39', '1/2/12/27', 7, 3, 0),
(28, 3, 3, 27, '2015-07-30 04:57:43', '2015-07-30 04:57:43', '1/2/12/27/28', 1, 4, 0),
(29, 3, 3, 11, '2015-07-30 04:57:48', '2015-07-30 04:57:48', '1/2/12/11/29', 2, 4, 0),
(30, 3, 3, 11, '2015-07-30 04:57:52', '2015-07-30 04:57:52', '1/2/12/11/30', 1, 4, 0),
(31, 3, 3, 11, '2015-07-30 04:57:58', '2015-07-30 04:57:58', '1/2/12/11/31', 3, 4, 0),
(32, 3, 3, 12, '2015-07-30 04:58:01', '2015-07-30 04:58:01', '1/2/12/32', 5, 3, 0),
(33, 3, 3, 14, '2015-07-30 04:58:06', '2015-07-30 04:58:06', '1/2/12/14/33', 3, 4, 0),
(34, 3, 3, 14, '2015-07-30 04:58:12', '2015-07-30 04:58:12', '1/2/12/14/34', 4, 4, 0),
(35, 3, 3, 21, '2015-07-30 04:58:17', '2015-07-30 04:58:17', '1/2/12/51/21/35', 1, 5, 0),
(36, 3, 3, 19, '2015-07-30 04:58:21', '2015-07-30 04:58:21', '1/2/12/19/36', 2, 4, 0),
(37, 3, 3, 32, '2015-07-30 04:58:24', '2015-07-30 04:58:24', '1/2/12/32/37', 1, 4, 0),
(38, 3, 3, 32, '2015-07-30 04:58:25', '2015-07-30 04:58:25', '1/2/12/32/38', 2, 4, 0),
(39, 3, 3, 19, '2015-07-30 04:58:26', '2015-07-30 04:58:26', '1/2/12/19/39', 3, 4, 0),
(40, 3, 3, 2, '2015-07-30 04:58:28', '2015-07-30 04:58:28', '1/2/40', 4, 2, 0),
(41, 3, 3, 21, '2015-07-30 04:58:30', '2015-07-30 04:58:30', '1/2/12/51/21/41', 4, 5, 0),
(42, 3, 3, 21, '2015-07-30 04:58:31', '2015-07-30 04:58:31', '1/2/12/51/21/42', 8, 5, 0),
(43, 3, 3, 21, '2015-07-30 04:58:32', '2015-07-30 04:58:32', '1/2/12/51/21/43', 7, 5, 0),
(44, 3, 3, 51, '2015-07-30 04:58:33', '2015-07-30 04:58:33', '1/2/12/51/44', 2, 4, 0),
(45, 3, 3, 12, '2015-07-30 04:58:35', '2015-07-30 04:58:35', '1/2/12/45', 10, 3, 0),
(46, 3, 3, 12, '2015-07-30 04:58:36', '2015-07-30 04:58:36', '1/2/12/46', 11, 3, 0),
(47, 3, 3, 11, '2015-07-30 04:58:37', '2015-07-30 04:58:37', '1/2/12/11/47', 4, 4, 0),
(48, 3, 3, 12, '2015-07-30 04:58:38', '2015-07-30 04:58:38', '1/2/12/48', 8, 3, 0),
(49, 3, 3, 50, '2015-07-30 04:58:39', '2015-07-30 04:58:39', '1/2/12/50/49', 1, 4, 0),
(50, 3, 3, 12, '2015-07-30 04:58:41', '2015-07-30 04:58:41', '1/2/12/50', 6, 3, 0),
(51, 3, 3, 12, '2015-07-30 04:58:42', '2015-07-30 04:58:42', '1/2/12/51', 12, 3, 0),
(52, 3, 3, 12, '2015-07-30 04:58:43', '2015-07-30 04:58:43', '1/2/12/52', 13, 3, 0),
(53, 3, 3, 52, '2015-07-30 04:58:45', '2015-07-30 04:58:45', '1/2/12/52/53', 1, 4, 0),
(54, 3, 3, 52, '2015-07-30 04:58:47', '2015-07-30 04:58:47', '1/2/12/52/54', 2, 4, 0),
(55, 3, 3, 53, '2015-07-30 04:58:48', '2015-07-30 04:58:48', '1/2/12/52/53/55', 1, 5, 0),
(56, 3, 3, 51, '2015-07-30 04:58:50', '2015-07-30 04:58:50', '1/2/12/51/56', 3, 4, 0),
(57, 3, 3, 51, '2015-07-30 04:58:51', '2015-07-30 04:58:51', '1/2/12/51/57', 5, 4, 0),
(58, 3, 3, 51, '2015-07-30 04:58:52', '2015-07-30 04:58:52', '1/2/12/51/58', 4, 4, 0),
(59, 3, 3, 52, '2015-07-30 04:58:53', '2015-07-30 04:58:53', '1/2/12/52/59', 3, 4, 0),
(60, 3, 3, 52, '2015-07-30 04:58:54', '2015-07-30 04:58:54', '1/2/12/52/60', 4, 4, 0),
(61, 3, 3, 52, '2015-07-30 04:58:55', '2015-07-30 04:58:55', '1/2/12/52/61', 5, 4, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=119 ;

--
-- 转存表中的数据 `catalog_category_entity_datetime`
--

INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 59, 0, 3, NULL),
(2, 3, 60, 0, 3, NULL),
(3, 3, 59, 0, 4, NULL),
(4, 3, 60, 0, 4, NULL),
(5, 3, 59, 0, 5, NULL),
(6, 3, 60, 0, 5, NULL),
(7, 3, 59, 0, 6, NULL),
(8, 3, 60, 0, 6, NULL),
(9, 3, 59, 0, 7, NULL),
(10, 3, 60, 0, 7, NULL),
(11, 3, 59, 0, 8, NULL),
(12, 3, 60, 0, 8, NULL),
(13, 3, 59, 0, 9, '0000-00-00 00:00:00'),
(14, 3, 60, 0, 9, '0000-00-00 00:00:00'),
(15, 3, 59, 0, 10, '0000-00-00 00:00:00'),
(16, 3, 60, 0, 10, '0000-00-00 00:00:00'),
(17, 3, 59, 0, 11, '0000-00-00 00:00:00'),
(18, 3, 60, 0, 11, '0000-00-00 00:00:00'),
(19, 3, 59, 0, 12, '2000-01-11 00:00:00'),
(20, 3, 60, 0, 12, '2000-01-11 00:00:00'),
(21, 3, 59, 0, 13, '0000-00-00 00:00:00'),
(22, 3, 60, 0, 13, '0000-00-00 00:00:00'),
(23, 3, 59, 0, 14, '0000-00-00 00:00:00'),
(24, 3, 60, 0, 14, '0000-00-00 00:00:00'),
(25, 3, 59, 0, 15, '0000-00-00 00:00:00'),
(26, 3, 60, 0, 15, '0000-00-00 00:00:00'),
(27, 3, 59, 0, 16, '0000-00-00 00:00:00'),
(28, 3, 60, 0, 16, '0000-00-00 00:00:00'),
(29, 3, 59, 0, 17, '0000-00-00 00:00:00'),
(30, 3, 60, 0, 17, '0000-00-00 00:00:00'),
(31, 3, 59, 0, 18, '0000-00-00 00:00:00'),
(32, 3, 60, 0, 18, '0000-00-00 00:00:00'),
(33, 3, 59, 0, 19, '0000-00-00 00:00:00'),
(34, 3, 60, 0, 19, '0000-00-00 00:00:00'),
(35, 3, 59, 0, 20, '0000-00-00 00:00:00'),
(36, 3, 60, 0, 20, '0000-00-00 00:00:00'),
(37, 3, 59, 0, 21, '0000-00-00 00:00:00'),
(38, 3, 60, 0, 21, '0000-00-00 00:00:00'),
(39, 3, 59, 0, 22, '0000-00-00 00:00:00'),
(40, 3, 60, 0, 22, '0000-00-00 00:00:00'),
(41, 3, 59, 0, 23, '0000-00-00 00:00:00'),
(42, 3, 60, 0, 23, '0000-00-00 00:00:00'),
(43, 3, 59, 0, 24, '0000-00-00 00:00:00'),
(44, 3, 60, 0, 24, '0000-00-00 00:00:00'),
(45, 3, 59, 0, 25, '0000-00-00 00:00:00'),
(46, 3, 60, 0, 25, '0000-00-00 00:00:00'),
(47, 3, 59, 0, 26, '0000-00-00 00:00:00'),
(48, 3, 60, 0, 26, '0000-00-00 00:00:00'),
(49, 3, 59, 0, 27, '0000-00-00 00:00:00'),
(50, 3, 60, 0, 27, '0000-00-00 00:00:00'),
(51, 3, 59, 0, 28, '0000-00-00 00:00:00'),
(52, 3, 60, 0, 28, '0000-00-00 00:00:00'),
(53, 3, 59, 0, 29, '0000-00-00 00:00:00'),
(54, 3, 60, 0, 29, '0000-00-00 00:00:00'),
(55, 3, 59, 0, 30, '0000-00-00 00:00:00'),
(56, 3, 60, 0, 30, '0000-00-00 00:00:00'),
(57, 3, 59, 0, 31, '0000-00-00 00:00:00'),
(58, 3, 60, 0, 31, '0000-00-00 00:00:00'),
(59, 3, 59, 0, 32, '0000-00-00 00:00:00'),
(60, 3, 60, 0, 32, '0000-00-00 00:00:00'),
(61, 3, 59, 0, 33, '0000-00-00 00:00:00'),
(62, 3, 60, 0, 33, '0000-00-00 00:00:00'),
(63, 3, 59, 0, 34, '0000-00-00 00:00:00'),
(64, 3, 60, 0, 34, '0000-00-00 00:00:00'),
(65, 3, 59, 0, 35, '0000-00-00 00:00:00'),
(66, 3, 60, 0, 35, '0000-00-00 00:00:00'),
(67, 3, 59, 0, 36, '0000-00-00 00:00:00'),
(68, 3, 60, 0, 36, '0000-00-00 00:00:00'),
(69, 3, 59, 0, 37, '0000-00-00 00:00:00'),
(70, 3, 60, 0, 37, '0000-00-00 00:00:00'),
(71, 3, 59, 0, 38, '0000-00-00 00:00:00'),
(72, 3, 60, 0, 38, '0000-00-00 00:00:00'),
(73, 3, 59, 0, 39, '0000-00-00 00:00:00'),
(74, 3, 60, 0, 39, '0000-00-00 00:00:00'),
(75, 3, 59, 0, 40, '0000-00-00 00:00:00'),
(76, 3, 60, 0, 40, '0000-00-00 00:00:00'),
(77, 3, 59, 0, 41, '0000-00-00 00:00:00'),
(78, 3, 60, 0, 41, '0000-00-00 00:00:00'),
(79, 3, 59, 0, 42, '0000-00-00 00:00:00'),
(80, 3, 60, 0, 42, '0000-00-00 00:00:00'),
(81, 3, 59, 0, 43, '0000-00-00 00:00:00'),
(82, 3, 60, 0, 43, '0000-00-00 00:00:00'),
(83, 3, 59, 0, 44, '0000-00-00 00:00:00'),
(84, 3, 60, 0, 44, '0000-00-00 00:00:00'),
(85, 3, 59, 0, 45, '0000-00-00 00:00:00'),
(86, 3, 60, 0, 45, '0000-00-00 00:00:00'),
(87, 3, 59, 0, 46, '0000-00-00 00:00:00'),
(88, 3, 60, 0, 46, '0000-00-00 00:00:00'),
(89, 3, 59, 0, 47, '0000-00-00 00:00:00'),
(90, 3, 60, 0, 47, '0000-00-00 00:00:00'),
(91, 3, 59, 0, 48, '0000-00-00 00:00:00'),
(92, 3, 60, 0, 48, '0000-00-00 00:00:00'),
(93, 3, 59, 0, 49, '0000-00-00 00:00:00'),
(94, 3, 60, 0, 49, '0000-00-00 00:00:00'),
(95, 3, 59, 0, 50, '0000-00-00 00:00:00'),
(96, 3, 60, 0, 50, '0000-00-00 00:00:00'),
(97, 3, 59, 0, 51, '0000-00-00 00:00:00'),
(98, 3, 60, 0, 51, '0000-00-00 00:00:00'),
(99, 3, 59, 0, 52, '0000-00-00 00:00:00'),
(100, 3, 60, 0, 52, '0000-00-00 00:00:00'),
(101, 3, 59, 0, 53, '0000-00-00 00:00:00'),
(102, 3, 60, 0, 53, '0000-00-00 00:00:00'),
(103, 3, 59, 0, 54, '0000-00-00 00:00:00'),
(104, 3, 60, 0, 54, '0000-00-00 00:00:00'),
(105, 3, 59, 0, 55, '0000-00-00 00:00:00'),
(106, 3, 60, 0, 55, '0000-00-00 00:00:00'),
(107, 3, 59, 0, 56, '0000-00-00 00:00:00'),
(108, 3, 60, 0, 56, '0000-00-00 00:00:00'),
(109, 3, 59, 0, 57, '0000-00-00 00:00:00'),
(110, 3, 60, 0, 57, '0000-00-00 00:00:00'),
(111, 3, 59, 0, 58, '0000-00-00 00:00:00'),
(112, 3, 60, 0, 58, '0000-00-00 00:00:00'),
(113, 3, 59, 0, 59, '0000-00-00 00:00:00'),
(114, 3, 60, 0, 59, '0000-00-00 00:00:00'),
(115, 3, 59, 0, 60, '0000-00-00 00:00:00'),
(116, 3, 60, 0, 60, '0000-00-00 00:00:00'),
(117, 3, 59, 0, 61, '0000-00-00 00:00:00'),
(118, 3, 60, 0, 61, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=60 ;

--
-- 转存表中的数据 `catalog_category_entity_decimal`
--

INSERT INTO `catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 70, 0, 3, NULL),
(2, 3, 70, 0, 4, NULL),
(3, 3, 70, 0, 5, NULL),
(4, 3, 70, 0, 6, NULL),
(5, 3, 70, 0, 7, NULL),
(6, 3, 70, 0, 8, NULL),
(7, 3, 70, 0, 9, '0.0000'),
(8, 3, 70, 0, 10, '0.0000'),
(9, 3, 70, 0, 11, '0.0000'),
(10, 3, 70, 0, 12, NULL),
(11, 3, 70, 0, 13, '0.0000'),
(12, 3, 70, 0, 14, '0.0000'),
(13, 3, 70, 0, 15, '0.0000'),
(14, 3, 70, 0, 16, '0.0000'),
(15, 3, 70, 0, 17, '0.0000'),
(16, 3, 70, 0, 18, '0.0000'),
(17, 3, 70, 0, 19, '0.0000'),
(18, 3, 70, 0, 20, '0.0000'),
(19, 3, 70, 0, 21, '0.0000'),
(20, 3, 70, 0, 22, '0.0000'),
(21, 3, 70, 0, 23, '0.0000'),
(22, 3, 70, 0, 24, '0.0000'),
(23, 3, 70, 0, 25, '0.0000'),
(24, 3, 70, 0, 26, '0.0000'),
(25, 3, 70, 0, 27, '0.0000'),
(26, 3, 70, 0, 28, '0.0000'),
(27, 3, 70, 0, 29, '0.0000'),
(28, 3, 70, 0, 30, '0.0000'),
(29, 3, 70, 0, 31, '0.0000'),
(30, 3, 70, 0, 32, '0.0000'),
(31, 3, 70, 0, 33, '0.0000'),
(32, 3, 70, 0, 34, '0.0000'),
(33, 3, 70, 0, 35, '0.0000'),
(34, 3, 70, 0, 36, '0.0000'),
(35, 3, 70, 0, 37, '0.0000'),
(36, 3, 70, 0, 38, '0.0000'),
(37, 3, 70, 0, 39, '0.0000'),
(38, 3, 70, 0, 40, '0.0000'),
(39, 3, 70, 0, 41, '0.0000'),
(40, 3, 70, 0, 42, '0.0000'),
(41, 3, 70, 0, 43, '0.0000'),
(42, 3, 70, 0, 44, '0.0000'),
(43, 3, 70, 0, 45, '0.0000'),
(44, 3, 70, 0, 46, '0.0000'),
(45, 3, 70, 0, 47, '0.0000'),
(46, 3, 70, 0, 48, '0.0000'),
(47, 3, 70, 0, 49, '0.0000'),
(48, 3, 70, 0, 50, '0.0000'),
(49, 3, 70, 0, 51, '0.0000'),
(50, 3, 70, 0, 52, '0.0000'),
(51, 3, 70, 0, 53, '0.0000'),
(52, 3, 70, 0, 54, '0.0000'),
(53, 3, 70, 0, 55, '0.0000'),
(54, 3, 70, 0, 56, '0.0000'),
(55, 3, 70, 0, 57, '0.0000'),
(56, 3, 70, 0, 58, '0.0000'),
(57, 3, 70, 0, 59, '0.0000'),
(58, 3, 70, 0, 60, '0.0000'),
(59, 3, 70, 0, 61, '0.0000');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=361 ;

--
-- 转存表中的数据 `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1),
(7, 3, 42, 0, 3, 1),
(8, 3, 67, 0, 3, 1),
(9, 3, 50, 0, 3, NULL),
(10, 3, 51, 0, 3, 0),
(11, 3, 68, 0, 3, 0),
(12, 3, 69, 0, 3, 0),
(13, 3, 42, 0, 4, 1),
(14, 3, 67, 0, 4, 1),
(15, 3, 50, 0, 4, NULL),
(16, 3, 51, 0, 4, 0),
(17, 3, 68, 0, 4, 0),
(18, 3, 69, 0, 4, 0),
(19, 3, 42, 0, 5, 1),
(20, 3, 67, 0, 5, 1),
(21, 3, 50, 0, 5, NULL),
(22, 3, 51, 0, 5, 0),
(23, 3, 68, 0, 5, 0),
(24, 3, 69, 0, 5, 0),
(25, 3, 42, 0, 6, 1),
(26, 3, 67, 0, 6, 1),
(27, 3, 50, 0, 6, NULL),
(28, 3, 51, 0, 6, 0),
(29, 3, 68, 0, 6, 0),
(30, 3, 69, 0, 6, 0),
(31, 3, 42, 0, 7, 1),
(32, 3, 67, 0, 7, 1),
(33, 3, 50, 0, 7, NULL),
(34, 3, 51, 0, 7, 0),
(35, 3, 68, 0, 7, 0),
(36, 3, 69, 0, 7, 0),
(37, 3, 42, 0, 8, 1),
(38, 3, 67, 0, 8, 1),
(39, 3, 50, 0, 8, NULL),
(40, 3, 51, 0, 8, 0),
(41, 3, 68, 0, 8, 0),
(42, 3, 69, 0, 8, 0),
(43, 3, 42, 0, 9, 0),
(44, 3, 67, 0, 9, 0),
(45, 3, 50, 0, 9, 0),
(46, 3, 51, 0, 9, 0),
(47, 3, 68, 0, 9, 0),
(48, 3, 69, 0, 9, 0),
(49, 3, 42, 0, 10, 0),
(50, 3, 67, 0, 10, 0),
(51, 3, 50, 0, 10, 0),
(52, 3, 51, 0, 10, 0),
(53, 3, 68, 0, 10, 0),
(54, 3, 69, 0, 10, 0),
(55, 3, 42, 0, 11, 0),
(56, 3, 67, 0, 11, 0),
(57, 3, 50, 0, 11, 0),
(58, 3, 51, 0, 11, 0),
(59, 3, 68, 0, 11, 0),
(60, 3, 69, 0, 11, 0),
(61, 3, 42, 0, 12, 1),
(62, 3, 67, 0, 12, 1),
(63, 3, 50, 0, 12, NULL),
(64, 3, 51, 0, 12, 0),
(65, 3, 68, 0, 12, 0),
(66, 3, 69, 0, 12, 0),
(67, 3, 42, 0, 13, 0),
(68, 3, 67, 0, 13, 0),
(69, 3, 50, 0, 13, 0),
(70, 3, 51, 0, 13, 0),
(71, 3, 68, 0, 13, 0),
(72, 3, 69, 0, 13, 0),
(73, 3, 42, 0, 14, 0),
(74, 3, 67, 0, 14, 0),
(75, 3, 50, 0, 14, 0),
(76, 3, 51, 0, 14, 0),
(77, 3, 68, 0, 14, 0),
(78, 3, 69, 0, 14, 0),
(79, 3, 42, 0, 15, 0),
(80, 3, 67, 0, 15, 0),
(81, 3, 50, 0, 15, 0),
(82, 3, 51, 0, 15, 0),
(83, 3, 68, 0, 15, 0),
(84, 3, 69, 0, 15, 0),
(85, 3, 42, 0, 16, 0),
(86, 3, 67, 0, 16, 0),
(87, 3, 50, 0, 16, 0),
(88, 3, 51, 0, 16, 0),
(89, 3, 68, 0, 16, 0),
(90, 3, 69, 0, 16, 0),
(91, 3, 42, 0, 17, 0),
(92, 3, 67, 0, 17, 0),
(93, 3, 50, 0, 17, 0),
(94, 3, 51, 0, 17, 0),
(95, 3, 68, 0, 17, 0),
(96, 3, 69, 0, 17, 0),
(97, 3, 42, 0, 18, 0),
(98, 3, 67, 0, 18, 0),
(99, 3, 50, 0, 18, 0),
(100, 3, 51, 0, 18, 0),
(101, 3, 68, 0, 18, 0),
(102, 3, 69, 0, 18, 0),
(103, 3, 42, 0, 19, 0),
(104, 3, 67, 0, 19, 0),
(105, 3, 50, 0, 19, 0),
(106, 3, 51, 0, 19, 0),
(107, 3, 68, 0, 19, 0),
(108, 3, 69, 0, 19, 0),
(109, 3, 42, 0, 20, 0),
(110, 3, 67, 0, 20, 0),
(111, 3, 50, 0, 20, 0),
(112, 3, 51, 0, 20, 0),
(113, 3, 68, 0, 20, 0),
(114, 3, 69, 0, 20, 0),
(115, 3, 42, 0, 21, 1),
(116, 3, 67, 0, 21, 1),
(117, 3, 50, 0, 21, 0),
(118, 3, 51, 0, 21, 0),
(119, 3, 68, 0, 21, 0),
(120, 3, 69, 0, 21, 0),
(121, 3, 42, 0, 22, 0),
(122, 3, 67, 0, 22, 0),
(123, 3, 50, 0, 22, 0),
(124, 3, 51, 0, 22, 0),
(125, 3, 68, 0, 22, 0),
(126, 3, 69, 0, 22, 0),
(127, 3, 42, 0, 23, 0),
(128, 3, 67, 0, 23, 0),
(129, 3, 50, 0, 23, 0),
(130, 3, 51, 0, 23, 0),
(131, 3, 68, 0, 23, 0),
(132, 3, 69, 0, 23, 0),
(133, 3, 42, 0, 24, 0),
(134, 3, 67, 0, 24, 0),
(135, 3, 50, 0, 24, 0),
(136, 3, 51, 0, 24, 0),
(137, 3, 68, 0, 24, 0),
(138, 3, 69, 0, 24, 0),
(139, 3, 42, 0, 25, 0),
(140, 3, 67, 0, 25, 0),
(141, 3, 50, 0, 25, 0),
(142, 3, 51, 0, 25, 0),
(143, 3, 68, 0, 25, 0),
(144, 3, 69, 0, 25, 0),
(145, 3, 42, 0, 26, 0),
(146, 3, 67, 0, 26, 0),
(147, 3, 50, 0, 26, 0),
(148, 3, 51, 0, 26, 0),
(149, 3, 68, 0, 26, 0),
(150, 3, 69, 0, 26, 0),
(151, 3, 42, 0, 27, 0),
(152, 3, 67, 0, 27, 0),
(153, 3, 50, 0, 27, 0),
(154, 3, 51, 0, 27, 0),
(155, 3, 68, 0, 27, 0),
(156, 3, 69, 0, 27, 0),
(157, 3, 42, 0, 28, 0),
(158, 3, 67, 0, 28, 0),
(159, 3, 50, 0, 28, 0),
(160, 3, 51, 0, 28, 0),
(161, 3, 68, 0, 28, 0),
(162, 3, 69, 0, 28, 0),
(163, 3, 42, 0, 29, 0),
(164, 3, 67, 0, 29, 0),
(165, 3, 50, 0, 29, 0),
(166, 3, 51, 0, 29, 0),
(167, 3, 68, 0, 29, 0),
(168, 3, 69, 0, 29, 0),
(169, 3, 42, 0, 30, 0),
(170, 3, 67, 0, 30, 0),
(171, 3, 50, 0, 30, 0),
(172, 3, 51, 0, 30, 0),
(173, 3, 68, 0, 30, 0),
(174, 3, 69, 0, 30, 0),
(175, 3, 42, 0, 31, 0),
(176, 3, 67, 0, 31, 0),
(177, 3, 50, 0, 31, 0),
(178, 3, 51, 0, 31, 0),
(179, 3, 68, 0, 31, 0),
(180, 3, 69, 0, 31, 0),
(181, 3, 42, 0, 32, 0),
(182, 3, 67, 0, 32, 0),
(183, 3, 50, 0, 32, 0),
(184, 3, 51, 0, 32, 0),
(185, 3, 68, 0, 32, 0),
(186, 3, 69, 0, 32, 0),
(187, 3, 42, 0, 33, 0),
(188, 3, 67, 0, 33, 0),
(189, 3, 50, 0, 33, 0),
(190, 3, 51, 0, 33, 0),
(191, 3, 68, 0, 33, 0),
(192, 3, 69, 0, 33, 0),
(193, 3, 42, 0, 34, 0),
(194, 3, 67, 0, 34, 0),
(195, 3, 50, 0, 34, 0),
(196, 3, 51, 0, 34, 0),
(197, 3, 68, 0, 34, 0),
(198, 3, 69, 0, 34, 0),
(199, 3, 42, 0, 35, 0),
(200, 3, 67, 0, 35, 0),
(201, 3, 50, 0, 35, 0),
(202, 3, 51, 0, 35, 0),
(203, 3, 68, 0, 35, 0),
(204, 3, 69, 0, 35, 0),
(205, 3, 42, 0, 36, 0),
(206, 3, 67, 0, 36, 0),
(207, 3, 50, 0, 36, 0),
(208, 3, 51, 0, 36, 0),
(209, 3, 68, 0, 36, 0),
(210, 3, 69, 0, 36, 0),
(211, 3, 42, 0, 37, 0),
(212, 3, 67, 0, 37, 0),
(213, 3, 50, 0, 37, 0),
(214, 3, 51, 0, 37, 0),
(215, 3, 68, 0, 37, 0),
(216, 3, 69, 0, 37, 0),
(217, 3, 42, 0, 38, 0),
(218, 3, 67, 0, 38, 0),
(219, 3, 50, 0, 38, 0),
(220, 3, 51, 0, 38, 0),
(221, 3, 68, 0, 38, 0),
(222, 3, 69, 0, 38, 0),
(223, 3, 42, 0, 39, 0),
(224, 3, 67, 0, 39, 0),
(225, 3, 50, 0, 39, 0),
(226, 3, 51, 0, 39, 0),
(227, 3, 68, 0, 39, 0),
(228, 3, 69, 0, 39, 0),
(229, 3, 42, 0, 40, 1),
(230, 3, 67, 0, 40, 1),
(231, 3, 50, 0, 40, 0),
(232, 3, 51, 0, 40, 0),
(233, 3, 68, 0, 40, 0),
(234, 3, 69, 0, 40, 0),
(235, 3, 42, 0, 41, 0),
(236, 3, 67, 0, 41, 0),
(237, 3, 50, 0, 41, 0),
(238, 3, 51, 0, 41, 0),
(239, 3, 68, 0, 41, 0),
(240, 3, 69, 0, 41, 0),
(241, 3, 42, 0, 42, 0),
(242, 3, 67, 0, 42, 0),
(243, 3, 50, 0, 42, 0),
(244, 3, 51, 0, 42, 0),
(245, 3, 68, 0, 42, 0),
(246, 3, 69, 0, 42, 0),
(247, 3, 42, 0, 43, 0),
(248, 3, 67, 0, 43, 0),
(249, 3, 50, 0, 43, 0),
(250, 3, 51, 0, 43, 0),
(251, 3, 68, 0, 43, 0),
(252, 3, 69, 0, 43, 0),
(253, 3, 42, 0, 44, 1),
(254, 3, 67, 0, 44, 1),
(255, 3, 50, 0, 44, 0),
(256, 3, 51, 0, 44, 0),
(257, 3, 68, 0, 44, 0),
(258, 3, 69, 0, 44, 0),
(259, 3, 42, 0, 45, 0),
(260, 3, 67, 0, 45, 0),
(261, 3, 50, 0, 45, 0),
(262, 3, 51, 0, 45, 0),
(263, 3, 68, 0, 45, 0),
(264, 3, 69, 0, 45, 0),
(265, 3, 42, 0, 46, 0),
(266, 3, 67, 0, 46, 0),
(267, 3, 50, 0, 46, 0),
(268, 3, 51, 0, 46, 0),
(269, 3, 68, 0, 46, 0),
(270, 3, 69, 0, 46, 0),
(271, 3, 42, 0, 47, 0),
(272, 3, 67, 0, 47, 0),
(273, 3, 50, 0, 47, 0),
(274, 3, 51, 0, 47, 0),
(275, 3, 68, 0, 47, 0),
(276, 3, 69, 0, 47, 0),
(277, 3, 42, 0, 48, 0),
(278, 3, 67, 0, 48, 0),
(279, 3, 50, 0, 48, 0),
(280, 3, 51, 0, 48, 0),
(281, 3, 68, 0, 48, 0),
(282, 3, 69, 0, 48, 0),
(283, 3, 42, 0, 49, 0),
(284, 3, 67, 0, 49, 0),
(285, 3, 50, 0, 49, 0),
(286, 3, 51, 0, 49, 0),
(287, 3, 68, 0, 49, 0),
(288, 3, 69, 0, 49, 0),
(289, 3, 42, 0, 50, 0),
(290, 3, 67, 0, 50, 0),
(291, 3, 50, 0, 50, 0),
(292, 3, 51, 0, 50, 0),
(293, 3, 68, 0, 50, 0),
(294, 3, 69, 0, 50, 0),
(295, 3, 42, 0, 51, 1),
(296, 3, 67, 0, 51, 1),
(297, 3, 50, 0, 51, 0),
(298, 3, 51, 0, 51, 0),
(299, 3, 68, 0, 51, 0),
(300, 3, 69, 0, 51, 0),
(301, 3, 42, 0, 52, 1),
(302, 3, 67, 0, 52, 1),
(303, 3, 50, 0, 52, 0),
(304, 3, 51, 0, 52, 0),
(305, 3, 68, 0, 52, 0),
(306, 3, 69, 0, 52, 0),
(307, 3, 42, 0, 53, 1),
(308, 3, 67, 0, 53, 1),
(309, 3, 50, 0, 53, 0),
(310, 3, 51, 0, 53, 0),
(311, 3, 68, 0, 53, 0),
(312, 3, 69, 0, 53, 0),
(313, 3, 42, 0, 54, 1),
(314, 3, 67, 0, 54, 1),
(315, 3, 50, 0, 54, 0),
(316, 3, 51, 0, 54, 0),
(317, 3, 68, 0, 54, 0),
(318, 3, 69, 0, 54, 0),
(319, 3, 42, 0, 55, 1),
(320, 3, 67, 0, 55, 1),
(321, 3, 50, 0, 55, 0),
(322, 3, 51, 0, 55, 0),
(323, 3, 68, 0, 55, 0),
(324, 3, 69, 0, 55, 0),
(325, 3, 42, 0, 56, 1),
(326, 3, 67, 0, 56, 1),
(327, 3, 50, 0, 56, 0),
(328, 3, 51, 0, 56, 0),
(329, 3, 68, 0, 56, 0),
(330, 3, 69, 0, 56, 0),
(331, 3, 42, 0, 57, 1),
(332, 3, 67, 0, 57, 1),
(333, 3, 50, 0, 57, 0),
(334, 3, 51, 0, 57, 0),
(335, 3, 68, 0, 57, 0),
(336, 3, 69, 0, 57, 0),
(337, 3, 42, 0, 58, 1),
(338, 3, 67, 0, 58, 1),
(339, 3, 50, 0, 58, 0),
(340, 3, 51, 0, 58, 0),
(341, 3, 68, 0, 58, 0),
(342, 3, 69, 0, 58, 0),
(343, 3, 42, 0, 59, 1),
(344, 3, 67, 0, 59, 1),
(345, 3, 50, 0, 59, 0),
(346, 3, 51, 0, 59, 0),
(347, 3, 68, 0, 59, 0),
(348, 3, 69, 0, 59, 0),
(349, 3, 42, 0, 60, 1),
(350, 3, 67, 0, 60, 1),
(351, 3, 50, 0, 60, 0),
(352, 3, 51, 0, 60, 0),
(353, 3, 68, 0, 60, 0),
(354, 3, 69, 0, 60, 0),
(355, 3, 42, 0, 61, 1),
(356, 3, 67, 0, 61, 1),
(357, 3, 50, 0, 61, 0),
(358, 3, 51, 0, 61, 0),
(359, 3, 68, 0, 61, 0),
(360, 3, 69, 0, 61, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=300 ;

--
-- 转存表中的数据 `catalog_category_entity_text`
--

INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL),
(5, 3, 44, 0, 3, NULL),
(6, 3, 47, 0, 3, NULL),
(7, 3, 48, 0, 3, NULL),
(8, 3, 62, 0, 3, NULL),
(9, 3, 65, 0, 3, NULL),
(10, 3, 44, 0, 4, NULL),
(11, 3, 47, 0, 4, NULL),
(12, 3, 48, 0, 4, NULL),
(13, 3, 62, 0, 4, NULL),
(14, 3, 65, 0, 4, NULL),
(15, 3, 44, 0, 5, 'desc'),
(16, 3, 47, 0, 5, NULL),
(17, 3, 48, 0, 5, NULL),
(18, 3, 62, 0, 5, NULL),
(19, 3, 65, 0, 5, NULL),
(20, 3, 44, 0, 6, '1desc'),
(21, 3, 47, 0, 6, NULL),
(22, 3, 48, 0, 6, NULL),
(23, 3, 62, 0, 6, NULL),
(24, 3, 65, 0, 6, NULL),
(25, 3, 44, 0, 7, '2desc'),
(26, 3, 47, 0, 7, NULL),
(27, 3, 48, 0, 7, NULL),
(28, 3, 62, 0, 7, NULL),
(29, 3, 65, 0, 7, NULL),
(30, 3, 44, 0, 8, NULL),
(31, 3, 47, 0, 8, NULL),
(32, 3, 48, 0, 8, NULL),
(33, 3, 62, 0, 8, NULL),
(34, 3, 65, 0, 8, NULL),
(35, 3, 44, 0, 9, ''),
(36, 3, 47, 0, 9, ''),
(37, 3, 48, 0, 9, ''),
(38, 3, 62, 0, 9, ''),
(39, 3, 65, 0, 9, ''),
(40, 3, 44, 0, 10, ''),
(41, 3, 47, 0, 10, ''),
(42, 3, 48, 0, 10, ''),
(43, 3, 62, 0, 10, ''),
(44, 3, 65, 0, 10, ''),
(45, 3, 44, 0, 11, '新鲜健康每一天！'),
(46, 3, 47, 0, 11, ''),
(47, 3, 48, 0, 11, ''),
(48, 3, 62, 0, 11, ''),
(49, 3, 65, 0, 11, ''),
(50, 3, 44, 0, 12, ''),
(51, 3, 47, 0, 12, ''),
(52, 3, 48, 0, 12, ''),
(53, 3, 62, 0, 12, ''),
(54, 3, 65, 0, 12, ''),
(55, 3, 44, 0, 13, ''),
(56, 3, 47, 0, 13, ''),
(57, 3, 48, 0, 13, ''),
(58, 3, 62, 0, 13, ''),
(59, 3, 65, 0, 13, ''),
(60, 3, 44, 0, 14, '甄选品质，天然养生！'),
(61, 3, 47, 0, 14, ''),
(62, 3, 48, 0, 14, ''),
(63, 3, 62, 0, 14, ''),
(64, 3, 65, 0, 14, ''),
(65, 3, 44, 0, 15, ''),
(66, 3, 47, 0, 15, ''),
(67, 3, 48, 0, 15, ''),
(68, 3, 62, 0, 15, ''),
(69, 3, 65, 0, 15, ''),
(70, 3, 44, 0, 16, '有滋有味尽在有团！'),
(71, 3, 47, 0, 16, ''),
(72, 3, 48, 0, 16, ''),
(73, 3, 62, 0, 16, ''),
(74, 3, 65, 0, 16, ''),
(75, 3, 44, 0, 17, ''),
(76, 3, 47, 0, 17, ''),
(77, 3, 48, 0, 17, ''),
(78, 3, 62, 0, 17, ''),
(79, 3, 65, 0, 17, ''),
(80, 3, 44, 0, 18, ''),
(81, 3, 47, 0, 18, ''),
(82, 3, 48, 0, 18, ''),
(83, 3, 62, 0, 18, ''),
(84, 3, 65, 0, 18, ''),
(85, 3, 44, 0, 19, '做个快乐的小吃货！'),
(86, 3, 47, 0, 19, ''),
(87, 3, 48, 0, 19, ''),
(88, 3, 62, 0, 19, ''),
(89, 3, 65, 0, 19, ''),
(90, 3, 44, 0, 20, ''),
(91, 3, 47, 0, 20, ''),
(92, 3, 48, 0, 20, ''),
(93, 3, 62, 0, 20, ''),
(94, 3, 65, 0, 20, ''),
(95, 3, 44, 0, 21, ''),
(96, 3, 47, 0, 21, ''),
(97, 3, 48, 0, 21, ''),
(98, 3, 62, 0, 21, ''),
(99, 3, 65, 0, 21, ''),
(100, 3, 44, 0, 22, ''),
(101, 3, 47, 0, 22, ''),
(102, 3, 48, 0, 22, ''),
(103, 3, 62, 0, 22, ''),
(104, 3, 65, 0, 22, ''),
(105, 3, 44, 0, 23, ''),
(106, 3, 47, 0, 23, ''),
(107, 3, 48, 0, 23, ''),
(108, 3, 62, 0, 23, ''),
(109, 3, 65, 0, 23, ''),
(110, 3, 44, 0, 24, '健康的体魄，是最大的财富！'),
(111, 3, 47, 0, 24, ''),
(112, 3, 48, 0, 24, ''),
(113, 3, 62, 0, 24, ''),
(114, 3, 65, 0, 24, ''),
(115, 3, 44, 0, 25, ''),
(116, 3, 47, 0, 25, ''),
(117, 3, 48, 0, 25, ''),
(118, 3, 62, 0, 25, ''),
(119, 3, 65, 0, 25, ''),
(120, 3, 44, 0, 26, ''),
(121, 3, 47, 0, 26, ''),
(122, 3, 48, 0, 26, ''),
(123, 3, 62, 0, 26, ''),
(124, 3, 65, 0, 26, ''),
(125, 3, 44, 0, 27, '价格打折，品质不打折！'),
(126, 3, 47, 0, 27, ''),
(127, 3, 48, 0, 27, ''),
(128, 3, 62, 0, 27, ''),
(129, 3, 65, 0, 27, ''),
(130, 3, 44, 0, 28, ''),
(131, 3, 47, 0, 28, ''),
(132, 3, 48, 0, 28, ''),
(133, 3, 62, 0, 28, ''),
(134, 3, 65, 0, 28, ''),
(135, 3, 44, 0, 29, ''),
(136, 3, 47, 0, 29, ''),
(137, 3, 48, 0, 29, ''),
(138, 3, 62, 0, 29, ''),
(139, 3, 65, 0, 29, ''),
(140, 3, 44, 0, 30, ''),
(141, 3, 47, 0, 30, ''),
(142, 3, 48, 0, 30, ''),
(143, 3, 62, 0, 30, ''),
(144, 3, 65, 0, 30, ''),
(145, 3, 44, 0, 31, ''),
(146, 3, 47, 0, 31, ''),
(147, 3, 48, 0, 31, ''),
(148, 3, 62, 0, 31, ''),
(149, 3, 65, 0, 31, ''),
(150, 3, 44, 0, 32, '牛奶类/进口乳类/进口饮料/经典香飘飘/矿泉水...'),
(151, 3, 47, 0, 32, ''),
(152, 3, 48, 0, 32, ''),
(153, 3, 62, 0, 32, ''),
(154, 3, 65, 0, 32, ''),
(155, 3, 44, 0, 33, ''),
(156, 3, 47, 0, 33, ''),
(157, 3, 48, 0, 33, ''),
(158, 3, 62, 0, 33, ''),
(159, 3, 65, 0, 33, ''),
(160, 3, 44, 0, 34, ''),
(161, 3, 47, 0, 34, ''),
(162, 3, 48, 0, 34, ''),
(163, 3, 62, 0, 34, ''),
(164, 3, 65, 0, 34, ''),
(165, 3, 44, 0, 35, ''),
(166, 3, 47, 0, 35, ''),
(167, 3, 48, 0, 35, ''),
(168, 3, 62, 0, 35, ''),
(169, 3, 65, 0, 35, ''),
(170, 3, 44, 0, 36, ''),
(171, 3, 47, 0, 36, ''),
(172, 3, 48, 0, 36, ''),
(173, 3, 62, 0, 36, ''),
(174, 3, 65, 0, 36, ''),
(175, 3, 44, 0, 37, ''),
(176, 3, 47, 0, 37, ''),
(177, 3, 48, 0, 37, ''),
(178, 3, 62, 0, 37, ''),
(179, 3, 65, 0, 37, ''),
(180, 3, 44, 0, 38, ''),
(181, 3, 47, 0, 38, ''),
(182, 3, 48, 0, 38, ''),
(183, 3, 62, 0, 38, ''),
(184, 3, 65, 0, 38, ''),
(185, 3, 44, 0, 39, ''),
(186, 3, 47, 0, 39, ''),
(187, 3, 48, 0, 39, ''),
(188, 3, 62, 0, 39, ''),
(189, 3, 65, 0, 39, ''),
(190, 3, 44, 0, 40, ''),
(191, 3, 47, 0, 40, ''),
(192, 3, 48, 0, 40, ''),
(193, 3, 62, 0, 40, ''),
(194, 3, 65, 0, 40, ''),
(195, 3, 44, 0, 41, ''),
(196, 3, 47, 0, 41, ''),
(197, 3, 48, 0, 41, ''),
(198, 3, 62, 0, 41, ''),
(199, 3, 65, 0, 41, ''),
(200, 3, 44, 0, 42, ''),
(201, 3, 47, 0, 42, ''),
(202, 3, 48, 0, 42, ''),
(203, 3, 62, 0, 42, ''),
(204, 3, 65, 0, 42, ''),
(205, 3, 44, 0, 43, ''),
(206, 3, 47, 0, 43, ''),
(207, 3, 48, 0, 43, ''),
(208, 3, 62, 0, 43, ''),
(209, 3, 65, 0, 43, ''),
(210, 3, 44, 0, 44, ''),
(211, 3, 47, 0, 44, ''),
(212, 3, 48, 0, 44, ''),
(213, 3, 62, 0, 44, ''),
(214, 3, 65, 0, 44, ''),
(215, 3, 44, 0, 45, ''),
(216, 3, 47, 0, 45, ''),
(217, 3, 48, 0, 45, ''),
(218, 3, 62, 0, 45, ''),
(219, 3, 65, 0, 45, ''),
(220, 3, 44, 0, 46, ''),
(221, 3, 47, 0, 46, ''),
(222, 3, 48, 0, 46, ''),
(223, 3, 62, 0, 46, ''),
(224, 3, 65, 0, 46, ''),
(225, 3, 44, 0, 47, ''),
(226, 3, 47, 0, 47, ''),
(227, 3, 48, 0, 47, ''),
(228, 3, 62, 0, 47, ''),
(229, 3, 65, 0, 47, ''),
(230, 3, 44, 0, 48, '限时特价，喜气羊羊！'),
(231, 3, 47, 0, 48, ''),
(232, 3, 48, 0, 48, ''),
(233, 3, 62, 0, 48, ''),
(234, 3, 65, 0, 48, ''),
(235, 3, 44, 0, 49, ''),
(236, 3, 47, 0, 49, ''),
(237, 3, 48, 0, 49, ''),
(238, 3, 62, 0, 49, ''),
(239, 3, 65, 0, 49, ''),
(240, 3, 44, 0, 50, '每日爆款，限时特价！'),
(241, 3, 47, 0, 50, ''),
(242, 3, 48, 0, 50, ''),
(243, 3, 62, 0, 50, ''),
(244, 3, 65, 0, 50, ''),
(245, 3, 44, 0, 51, ''),
(246, 3, 47, 0, 51, ''),
(247, 3, 48, 0, 51, ''),
(248, 3, 62, 0, 51, ''),
(249, 3, 65, 0, 51, ''),
(250, 3, 44, 0, 52, ''),
(251, 3, 47, 0, 52, ''),
(252, 3, 48, 0, 52, ''),
(253, 3, 62, 0, 52, ''),
(254, 3, 65, 0, 52, ''),
(255, 3, 44, 0, 53, ''),
(256, 3, 47, 0, 53, ''),
(257, 3, 48, 0, 53, ''),
(258, 3, 62, 0, 53, ''),
(259, 3, 65, 0, 53, ''),
(260, 3, 44, 0, 54, ''),
(261, 3, 47, 0, 54, ''),
(262, 3, 48, 0, 54, ''),
(263, 3, 62, 0, 54, ''),
(264, 3, 65, 0, 54, ''),
(265, 3, 44, 0, 55, ''),
(266, 3, 47, 0, 55, ''),
(267, 3, 48, 0, 55, ''),
(268, 3, 62, 0, 55, ''),
(269, 3, 65, 0, 55, ''),
(270, 3, 44, 0, 56, ''),
(271, 3, 47, 0, 56, ''),
(272, 3, 48, 0, 56, ''),
(273, 3, 62, 0, 56, ''),
(274, 3, 65, 0, 56, ''),
(275, 3, 44, 0, 57, ''),
(276, 3, 47, 0, 57, ''),
(277, 3, 48, 0, 57, ''),
(278, 3, 62, 0, 57, ''),
(279, 3, 65, 0, 57, ''),
(280, 3, 44, 0, 58, ''),
(281, 3, 47, 0, 58, ''),
(282, 3, 48, 0, 58, ''),
(283, 3, 62, 0, 58, ''),
(284, 3, 65, 0, 58, ''),
(285, 3, 44, 0, 59, ''),
(286, 3, 47, 0, 59, ''),
(287, 3, 48, 0, 59, ''),
(288, 3, 62, 0, 59, ''),
(289, 3, 65, 0, 59, ''),
(290, 3, 44, 0, 60, ''),
(291, 3, 47, 0, 60, ''),
(292, 3, 48, 0, 60, ''),
(293, 3, 62, 0, 60, ''),
(294, 3, 65, 0, 60, ''),
(295, 3, 44, 0, 61, ''),
(296, 3, 47, 0, 61, ''),
(297, 3, 48, 0, 61, ''),
(298, 3, 62, 0, 61, ''),
(299, 3, 65, 0, 61, '');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=537 ;

--
-- 转存表中的数据 `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category'),
(8, 3, 41, 0, 3, '水果'),
(9, 3, 43, 0, 3, NULL),
(10, 3, 46, 0, 3, NULL),
(11, 3, 49, 0, 3, 'PRODUCTS'),
(12, 3, 58, 0, 3, NULL),
(13, 3, 61, 0, 3, NULL),
(14, 3, 41, 0, 4, '杂粮'),
(15, 3, 43, 0, 4, NULL),
(16, 3, 46, 0, 4, NULL),
(17, 3, 49, 0, 4, 'PRODUCTS'),
(18, 3, 58, 0, 4, NULL),
(19, 3, 61, 0, 4, NULL),
(20, 3, 57, 1, 3, '-.html'),
(21, 3, 57, 0, 3, '-.html'),
(22, 3, 57, 1, 4, '--4.html'),
(23, 3, 57, 0, 4, '--4.html'),
(24, 3, 41, 0, 5, 'name'),
(25, 3, 43, 0, 5, 'url-key'),
(26, 3, 46, 0, 5, NULL),
(27, 3, 49, 0, 5, 'PRODUCTS'),
(28, 3, 58, 0, 5, NULL),
(29, 3, 61, 0, 5, NULL),
(32, 3, 41, 0, 6, 'test1'),
(33, 3, 43, 0, 6, '1url'),
(34, 3, 46, 0, 6, NULL),
(35, 3, 49, 0, 6, 'PRODUCTS'),
(36, 3, 58, 0, 6, NULL),
(37, 3, 61, 0, 6, NULL),
(38, 3, 57, 1, 6, '-/1url.html'),
(39, 3, 57, 0, 6, '-/1url.html'),
(40, 3, 41, 0, 7, 'test2'),
(41, 3, 43, 0, 7, '2url'),
(42, 3, 46, 0, 7, NULL),
(43, 3, 49, 0, 7, 'PRODUCTS'),
(44, 3, 58, 0, 7, NULL),
(45, 3, 61, 0, 7, NULL),
(46, 3, 57, 1, 7, 'url-key/2url.html'),
(47, 3, 57, 0, 7, 'url-key/2url.html'),
(48, 3, 41, 0, 8, 'test3'),
(49, 3, 43, 0, 8, 'test3'),
(50, 3, 46, 0, 8, NULL),
(51, 3, 49, 0, 8, 'PRODUCTS'),
(52, 3, 58, 0, 8, NULL),
(53, 3, 61, 0, 8, NULL),
(56, 3, 57, 1, 5, 'url-key.html'),
(57, 3, 57, 0, 5, 'url-key.html'),
(58, 3, 57, 1, 8, 'url-key/test3.html'),
(59, 3, 57, 0, 8, 'url-key/test3.html'),
(60, 3, 41, 0, 9, '八元体验'),
(61, 3, 43, 0, 9, '1'),
(62, 3, 46, 0, 9, ''),
(63, 3, 49, 0, 9, 'PRODUCTS'),
(64, 3, 58, 0, 9, ''),
(65, 3, 61, 0, 9, ''),
(66, 3, 144, 0, 9, '1'),
(67, 3, 145, 0, 9, '0/1:2:1'),
(68, 3, 146, 0, 9, '0'),
(69, 3, 41, 0, 10, '专题'),
(70, 3, 43, 0, 10, '4'),
(71, 3, 46, 0, 10, ''),
(72, 3, 49, 0, 10, 'PRODUCTS'),
(73, 3, 58, 0, 10, ''),
(74, 3, 61, 0, 10, ''),
(75, 3, 144, 0, 10, '4'),
(76, 3, 145, 0, 10, '0/4:2:2'),
(77, 3, 146, 0, 10, '0'),
(78, 3, 41, 0, 11, '缤纷水果'),
(79, 3, 43, 0, 11, '5'),
(80, 3, 46, 0, 11, ''),
(81, 3, 49, 0, 11, 'PRODUCTS'),
(82, 3, 58, 0, 11, ''),
(83, 3, 61, 0, 11, ''),
(84, 3, 144, 0, 11, '5'),
(85, 3, 145, 0, 11, '0/9/5:3:1'),
(86, 3, 146, 0, 11, '9'),
(87, 3, 41, 0, 12, 'APP'),
(88, 3, 43, 0, 12, '9'),
(89, 3, 46, 0, 12, ''),
(90, 3, 49, 0, 12, 'PRODUCTS'),
(91, 3, 58, 0, 12, ''),
(92, 3, 61, 0, 12, ''),
(93, 3, 144, 0, 12, '9'),
(94, 3, 145, 0, 12, '0/9:2:3'),
(95, 3, 146, 0, 12, '0'),
(96, 3, 41, 0, 13, '新年特供'),
(97, 3, 43, 0, 13, '134'),
(98, 3, 46, 0, 13, ''),
(99, 3, 49, 0, 13, 'PRODUCTS'),
(100, 3, 58, 0, 13, ''),
(101, 3, 61, 0, 13, ''),
(102, 3, 144, 0, 13, '134'),
(103, 3, 145, 0, 13, '0/9/133/134:4:1'),
(104, 3, 146, 0, 13, '133'),
(105, 3, 41, 0, 14, '五谷杂粮'),
(106, 3, 43, 0, 14, '16'),
(107, 3, 46, 0, 14, ''),
(108, 3, 49, 0, 14, 'PRODUCTS'),
(109, 3, 58, 0, 14, ''),
(110, 3, 61, 0, 14, ''),
(111, 3, 144, 0, 14, '16'),
(112, 3, 145, 0, 14, '0/9/16:3:2'),
(113, 3, 146, 0, 14, '9'),
(114, 3, 41, 0, 15, '大米'),
(115, 3, 43, 0, 15, '17'),
(116, 3, 46, 0, 15, ''),
(117, 3, 49, 0, 15, 'PRODUCTS'),
(118, 3, 58, 0, 15, ''),
(119, 3, 61, 0, 15, ''),
(120, 3, 144, 0, 15, '17'),
(121, 3, 145, 0, 15, '0/9/16/17:4:1'),
(122, 3, 146, 0, 15, '16'),
(123, 3, 41, 0, 16, '干货炒货2'),
(124, 3, 43, 0, 16, '32'),
(125, 3, 46, 0, 16, ''),
(126, 3, 49, 0, 16, 'PRODUCTS'),
(127, 3, 58, 0, 16, ''),
(128, 3, 61, 0, 16, ''),
(129, 3, 144, 0, 16, '32'),
(130, 3, 145, 0, 16, '0/9/32:3:3'),
(131, 3, 146, 0, 16, '9'),
(132, 3, 41, 0, 17, '干货'),
(133, 3, 43, 0, 17, '34'),
(134, 3, 46, 0, 17, ''),
(135, 3, 49, 0, 17, 'PRODUCTS'),
(136, 3, 58, 0, 17, ''),
(137, 3, 61, 0, 17, ''),
(138, 3, 144, 0, 17, '34'),
(139, 3, 145, 0, 17, '0/9/16/34:4:2'),
(140, 3, 146, 0, 17, '16'),
(141, 3, 41, 0, 18, '坚果'),
(142, 3, 43, 0, 18, '37'),
(143, 3, 46, 0, 18, ''),
(144, 3, 49, 0, 18, 'PRODUCTS'),
(145, 3, 58, 0, 18, ''),
(146, 3, 61, 0, 18, ''),
(147, 3, 144, 0, 18, '37'),
(148, 3, 145, 0, 18, '0/9/32/37:4:1'),
(149, 3, 146, 0, 18, '32'),
(150, 3, 41, 0, 19, '干货炒货'),
(151, 3, 43, 0, 19, '44'),
(152, 3, 46, 0, 19, ''),
(153, 3, 49, 0, 19, 'PRODUCTS'),
(154, 3, 58, 0, 19, ''),
(155, 3, 61, 0, 19, ''),
(156, 3, 144, 0, 19, '44'),
(157, 3, 145, 0, 19, '0/9/44:3:4'),
(158, 3, 146, 0, 19, '9'),
(159, 3, 41, 0, 20, '零食'),
(160, 3, 43, 0, 20, '45'),
(161, 3, 46, 0, 20, ''),
(162, 3, 49, 0, 20, 'PRODUCTS'),
(163, 3, 58, 0, 20, ''),
(164, 3, 61, 0, 20, ''),
(165, 3, 144, 0, 20, '45'),
(166, 3, 145, 0, 20, '0/9/44/45:4:1'),
(167, 3, 146, 0, 20, '44'),
(168, 3, 41, 0, 21, '新鲜配送'),
(169, 3, 43, 0, 21, '141'),
(170, 3, 46, 0, 21, ''),
(171, 3, 49, 0, 21, 'PRODUCTS'),
(172, 3, 58, 0, 21, ''),
(173, 3, 61, 0, 21, ''),
(174, 3, 144, 0, 21, '141'),
(175, 3, 145, 0, 21, '0/9/150/141:4:1'),
(176, 3, 146, 0, 21, '150'),
(177, 3, 41, 0, 22, '本土优选'),
(178, 3, 43, 0, 22, '143'),
(179, 3, 46, 0, 22, ''),
(180, 3, 49, 0, 22, 'PRODUCTS'),
(181, 3, 58, 0, 22, ''),
(182, 3, 61, 0, 22, ''),
(183, 3, 144, 0, 22, '143'),
(184, 3, 145, 0, 22, '0/9/150/141/143:5:6'),
(185, 3, 146, 0, 22, '141'),
(186, 3, 41, 0, 23, '人气鲜果'),
(187, 3, 43, 0, 23, '142'),
(188, 3, 46, 0, 23, ''),
(189, 3, 49, 0, 23, 'PRODUCTS'),
(190, 3, 58, 0, 23, ''),
(191, 3, 61, 0, 23, ''),
(192, 3, 144, 0, 23, '142'),
(193, 3, 145, 0, 23, '0/9/150/141/142:5:5'),
(194, 3, 146, 0, 23, '141'),
(195, 3, 41, 0, 24, '养生豆类'),
(196, 3, 43, 0, 24, '138'),
(197, 3, 46, 0, 24, ''),
(198, 3, 49, 0, 24, 'PRODUCTS'),
(199, 3, 58, 0, 24, ''),
(200, 3, 61, 0, 24, ''),
(201, 3, 144, 0, 24, '138'),
(202, 3, 145, 0, 24, '0/9/138:3:9'),
(203, 3, 146, 0, 24, '9'),
(204, 3, 41, 0, 25, '缤纷水果'),
(205, 3, 43, 0, 25, '135'),
(206, 3, 46, 0, 25, ''),
(207, 3, 49, 0, 25, 'PRODUCTS'),
(208, 3, 58, 0, 25, ''),
(209, 3, 61, 0, 25, ''),
(210, 3, 144, 0, 25, '135'),
(211, 3, 145, 0, 25, '0/9/150/141/135:5:3'),
(212, 3, 146, 0, 25, '141'),
(213, 3, 41, 0, 26, '干货零食'),
(214, 3, 43, 0, 26, '130'),
(215, 3, 46, 0, 26, ''),
(216, 3, 49, 0, 26, 'PRODUCTS'),
(217, 3, 58, 0, 26, ''),
(218, 3, 61, 0, 26, ''),
(219, 3, 144, 0, 26, '130'),
(220, 3, 145, 0, 26, '0/9/150/141/130:5:2'),
(221, 3, 146, 0, 26, '141'),
(222, 3, 41, 0, 27, '全城最低'),
(223, 3, 43, 0, 27, '131'),
(224, 3, 46, 0, 27, ''),
(225, 3, 49, 0, 27, 'PRODUCTS'),
(226, 3, 58, 0, 27, ''),
(227, 3, 61, 0, 27, ''),
(228, 3, 144, 0, 27, '131'),
(229, 3, 145, 0, 27, '0/9/131:3:7'),
(230, 3, 146, 0, 27, '9'),
(231, 3, 41, 0, 28, '全城最低'),
(232, 3, 43, 0, 28, '132'),
(233, 3, 46, 0, 28, ''),
(234, 3, 49, 0, 28, 'PRODUCTS'),
(235, 3, 58, 0, 28, ''),
(236, 3, 61, 0, 28, ''),
(237, 3, 144, 0, 28, '132'),
(238, 3, 145, 0, 28, '0/9/131/132:4:1'),
(239, 3, 146, 0, 28, '131'),
(240, 3, 41, 0, 29, '散装水果'),
(241, 3, 43, 0, 29, '126'),
(242, 3, 46, 0, 29, ''),
(243, 3, 49, 0, 29, 'PRODUCTS'),
(244, 3, 58, 0, 29, ''),
(245, 3, 61, 0, 29, ''),
(246, 3, 144, 0, 29, '126'),
(247, 3, 145, 0, 29, '0/9/5/126:4:2'),
(248, 3, 146, 0, 29, '5'),
(249, 3, 41, 0, 30, '整装水果'),
(250, 3, 43, 0, 30, '125'),
(251, 3, 46, 0, 30, ''),
(252, 3, 49, 0, 30, 'PRODUCTS'),
(253, 3, 58, 0, 30, ''),
(254, 3, 61, 0, 30, ''),
(255, 3, 144, 0, 30, '125'),
(256, 3, 145, 0, 30, '0/9/5/125:4:1'),
(257, 3, 146, 0, 30, '5'),
(258, 3, 41, 0, 31, '进口水果'),
(259, 3, 43, 0, 31, '136'),
(260, 3, 46, 0, 31, ''),
(261, 3, 49, 0, 31, 'PRODUCTS'),
(262, 3, 58, 0, 31, ''),
(263, 3, 61, 0, 31, ''),
(264, 3, 144, 0, 31, '136'),
(265, 3, 145, 0, 31, '0/9/5/136:4:3'),
(266, 3, 146, 0, 31, '5'),
(267, 3, 41, 0, 32, '饮品类'),
(268, 3, 43, 0, 32, '73'),
(269, 3, 46, 0, 32, ''),
(270, 3, 49, 0, 32, 'PRODUCTS'),
(271, 3, 58, 0, 32, ''),
(272, 3, 61, 0, 32, ''),
(273, 3, 144, 0, 32, '73'),
(274, 3, 145, 0, 32, '0/9/73:3:5'),
(275, 3, 146, 0, 32, '9'),
(276, 3, 41, 0, 33, '厨房干货'),
(277, 3, 43, 0, 33, '99'),
(278, 3, 46, 0, 33, ''),
(279, 3, 49, 0, 33, 'PRODUCTS'),
(280, 3, 58, 0, 33, ''),
(281, 3, 61, 0, 33, ''),
(282, 3, 144, 0, 33, '99'),
(283, 3, 145, 0, 33, '0/9/16/99:4:3'),
(284, 3, 146, 0, 33, '16'),
(285, 3, 41, 0, 34, '五色五香'),
(286, 3, 43, 0, 34, '100'),
(287, 3, 46, 0, 34, ''),
(288, 3, 49, 0, 34, 'PRODUCTS'),
(289, 3, 58, 0, 34, ''),
(290, 3, 61, 0, 34, ''),
(291, 3, 144, 0, 34, '100'),
(292, 3, 145, 0, 34, '0/9/16/100:4:4'),
(293, 3, 146, 0, 34, '16'),
(294, 3, 41, 0, 35, '五谷杂粮'),
(295, 3, 43, 0, 35, '102'),
(296, 3, 46, 0, 35, ''),
(297, 3, 49, 0, 35, 'PRODUCTS'),
(298, 3, 58, 0, 35, ''),
(299, 3, 61, 0, 35, ''),
(300, 3, 144, 0, 35, '102'),
(301, 3, 145, 0, 35, '0/9/150/141/102:5:1'),
(302, 3, 146, 0, 35, '141'),
(303, 3, 41, 0, 36, '饮品'),
(304, 3, 43, 0, 36, '104'),
(305, 3, 46, 0, 36, ''),
(306, 3, 49, 0, 36, 'PRODUCTS'),
(307, 3, 58, 0, 36, ''),
(308, 3, 61, 0, 36, ''),
(309, 3, 144, 0, 36, '104'),
(310, 3, 145, 0, 36, '0/9/44/104:4:2'),
(311, 3, 146, 0, 36, '44'),
(312, 3, 41, 0, 37, '进口饮料'),
(313, 3, 43, 0, 37, '106'),
(314, 3, 46, 0, 37, ''),
(315, 3, 49, 0, 37, 'PRODUCTS'),
(316, 3, 58, 0, 37, ''),
(317, 3, 61, 0, 37, ''),
(318, 3, 144, 0, 37, '106'),
(319, 3, 145, 0, 37, '0/9/73/106:4:1'),
(320, 3, 146, 0, 37, '73'),
(321, 3, 41, 0, 38, '矿泉水'),
(322, 3, 43, 0, 38, '108'),
(323, 3, 46, 0, 38, ''),
(324, 3, 49, 0, 38, 'PRODUCTS'),
(325, 3, 58, 0, 38, ''),
(326, 3, 61, 0, 38, ''),
(327, 3, 144, 0, 38, '108'),
(328, 3, 145, 0, 38, '0/9/73/108:4:2'),
(329, 3, 146, 0, 38, '73'),
(330, 3, 41, 0, 39, '经典糖酥糕'),
(331, 3, 43, 0, 39, '112'),
(332, 3, 46, 0, 39, ''),
(333, 3, 49, 0, 39, 'PRODUCTS'),
(334, 3, 58, 0, 39, ''),
(335, 3, 61, 0, 39, ''),
(336, 3, 144, 0, 39, '112'),
(337, 3, 145, 0, 39, '0/9/44/112:4:3'),
(338, 3, 146, 0, 39, '44'),
(339, 3, 41, 0, 40, '退换货'),
(340, 3, 43, 0, 40, '140'),
(341, 3, 46, 0, 40, ''),
(342, 3, 49, 0, 40, 'PRODUCTS'),
(343, 3, 58, 0, 40, ''),
(344, 3, 61, 0, 40, ''),
(345, 3, 144, 0, 40, '140'),
(346, 3, 145, 0, 40, '0/140:2:4'),
(347, 3, 146, 0, 40, '0'),
(348, 3, 41, 0, 41, '养生豆类'),
(349, 3, 43, 0, 41, '139'),
(350, 3, 46, 0, 41, ''),
(351, 3, 49, 0, 41, 'PRODUCTS'),
(352, 3, 58, 0, 41, ''),
(353, 3, 61, 0, 41, ''),
(354, 3, 144, 0, 41, '139'),
(355, 3, 145, 0, 41, '0/9/150/141/139:5:4'),
(356, 3, 146, 0, 41, '141'),
(357, 3, 41, 0, 42, '精品水果'),
(358, 3, 43, 0, 42, '149'),
(359, 3, 46, 0, 42, ''),
(360, 3, 49, 0, 42, 'PRODUCTS'),
(361, 3, 58, 0, 42, ''),
(362, 3, 61, 0, 42, ''),
(363, 3, 144, 0, 42, '149'),
(364, 3, 145, 0, 42, '0/9/150/141/149:5:8'),
(365, 3, 146, 0, 42, '141'),
(366, 3, 41, 0, 43, '远到美味'),
(367, 3, 43, 0, 43, '144'),
(368, 3, 46, 0, 43, ''),
(369, 3, 49, 0, 43, 'PRODUCTS'),
(370, 3, 58, 0, 43, ''),
(371, 3, 61, 0, 43, ''),
(372, 3, 144, 0, 43, '144'),
(373, 3, 145, 0, 43, '0/9/150/141/144:5:7'),
(374, 3, 146, 0, 43, '141'),
(375, 3, 41, 0, 44, '天天1元购'),
(376, 3, 43, 0, 44, '145'),
(377, 3, 46, 0, 44, ''),
(378, 3, 49, 0, 44, 'PRODUCTS'),
(379, 3, 58, 0, 44, ''),
(380, 3, 61, 0, 44, ''),
(381, 3, 144, 0, 44, '145'),
(382, 3, 145, 0, 44, '0/9/150/145:4:2'),
(383, 3, 146, 0, 44, '150'),
(384, 3, 41, 0, 45, '示例分类'),
(385, 3, 43, 0, 45, '146'),
(386, 3, 46, 0, 45, ''),
(387, 3, 49, 0, 45, 'PRODUCTS'),
(388, 3, 58, 0, 45, ''),
(389, 3, 61, 0, 45, ''),
(390, 3, 144, 0, 45, '146'),
(391, 3, 145, 0, 45, '0/9/146:3:10'),
(392, 3, 146, 0, 45, '9'),
(393, 3, 41, 0, 46, '精品水果'),
(394, 3, 43, 0, 46, '148'),
(395, 3, 46, 0, 46, ''),
(396, 3, 49, 0, 46, 'PRODUCTS'),
(397, 3, 58, 0, 46, ''),
(398, 3, 61, 0, 46, ''),
(399, 3, 144, 0, 46, '148'),
(400, 3, 145, 0, 46, '0/9/148:3:11'),
(401, 3, 146, 0, 46, '9'),
(402, 3, 41, 0, 47, '国产水果'),
(403, 3, 43, 0, 47, '137'),
(404, 3, 46, 0, 47, ''),
(405, 3, 49, 0, 47, 'PRODUCTS'),
(406, 3, 58, 0, 47, ''),
(407, 3, 61, 0, 47, ''),
(408, 3, 144, 0, 47, '137'),
(409, 3, 145, 0, 47, '0/9/5/137:4:4'),
(410, 3, 146, 0, 47, '5'),
(411, 3, 41, 0, 48, '新年特供'),
(412, 3, 43, 0, 48, '133'),
(413, 3, 46, 0, 48, ''),
(414, 3, 49, 0, 48, 'PRODUCTS'),
(415, 3, 58, 0, 48, ''),
(416, 3, 61, 0, 48, ''),
(417, 3, 144, 0, 48, '133'),
(418, 3, 145, 0, 48, '0/9/133:3:8'),
(419, 3, 146, 0, 48, '9'),
(420, 3, 41, 0, 49, '今日爆款'),
(421, 3, 43, 0, 49, '128'),
(422, 3, 46, 0, 49, ''),
(423, 3, 49, 0, 49, 'PRODUCTS'),
(424, 3, 58, 0, 49, ''),
(425, 3, 61, 0, 49, ''),
(426, 3, 144, 0, 49, '128'),
(427, 3, 145, 0, 49, '0/9/127/128:4:1'),
(428, 3, 146, 0, 49, '127'),
(429, 3, 41, 0, 50, '今日爆款'),
(430, 3, 43, 0, 50, '127'),
(431, 3, 46, 0, 50, ''),
(432, 3, 49, 0, 50, 'PRODUCTS'),
(433, 3, 58, 0, 50, ''),
(434, 3, 61, 0, 50, ''),
(435, 3, 144, 0, 50, '127'),
(436, 3, 145, 0, 50, '0/9/127:3:6'),
(437, 3, 146, 0, 50, '9'),
(438, 3, 41, 0, 51, '南京'),
(439, 3, 43, 0, 51, '150'),
(440, 3, 46, 0, 51, ''),
(441, 3, 49, 0, 51, 'PRODUCTS'),
(442, 3, 58, 0, 51, ''),
(443, 3, 61, 0, 51, ''),
(444, 3, 144, 0, 51, '150'),
(445, 3, 145, 0, 51, '0/9/150:3:12'),
(446, 3, 146, 0, 51, '9'),
(447, 3, 41, 0, 52, '上海'),
(448, 3, 43, 0, 52, '151'),
(449, 3, 46, 0, 52, ''),
(450, 3, 49, 0, 52, 'PRODUCTS'),
(451, 3, 58, 0, 52, ''),
(452, 3, 61, 0, 52, ''),
(453, 3, 144, 0, 52, '151'),
(454, 3, 145, 0, 52, '0/9/151:3:13'),
(455, 3, 146, 0, 52, '9'),
(456, 3, 41, 0, 53, '新鲜配送'),
(457, 3, 43, 0, 53, '152'),
(458, 3, 46, 0, 53, ''),
(459, 3, 49, 0, 53, 'PRODUCTS'),
(460, 3, 58, 0, 53, ''),
(461, 3, 61, 0, 53, ''),
(462, 3, 144, 0, 53, '152'),
(463, 3, 145, 0, 53, '0/9/151/152:4:1'),
(464, 3, 146, 0, 53, '151'),
(465, 3, 41, 0, 54, '天天1元购'),
(466, 3, 43, 0, 54, '153'),
(467, 3, 46, 0, 54, ''),
(468, 3, 49, 0, 54, 'PRODUCTS'),
(469, 3, 58, 0, 54, ''),
(470, 3, 61, 0, 54, ''),
(471, 3, 144, 0, 54, '153'),
(472, 3, 145, 0, 54, '0/9/151/153:4:2'),
(473, 3, 146, 0, 54, '151'),
(474, 3, 41, 0, 55, '精品水果'),
(475, 3, 43, 0, 55, '154'),
(476, 3, 46, 0, 55, ''),
(477, 3, 49, 0, 55, 'PRODUCTS'),
(478, 3, 58, 0, 55, ''),
(479, 3, 61, 0, 55, ''),
(480, 3, 144, 0, 55, '154'),
(481, 3, 145, 0, 55, '0/9/151/152/154:5:1'),
(482, 3, 146, 0, 55, '152'),
(483, 3, 41, 0, 56, '盛夏爆款'),
(484, 3, 43, 0, 56, '155'),
(485, 3, 46, 0, 56, ''),
(486, 3, 49, 0, 56, 'PRODUCTS'),
(487, 3, 58, 0, 56, ''),
(488, 3, 61, 0, 56, ''),
(489, 3, 144, 0, 56, '155'),
(490, 3, 145, 0, 56, '0/9/150/155:4:3'),
(491, 3, 146, 0, 56, '150'),
(492, 3, 41, 0, 57, '国产优选'),
(493, 3, 43, 0, 57, '159'),
(494, 3, 46, 0, 57, ''),
(495, 3, 49, 0, 57, 'PRODUCTS'),
(496, 3, 58, 0, 57, ''),
(497, 3, 61, 0, 57, ''),
(498, 3, 144, 0, 57, '159'),
(499, 3, 145, 0, 57, '0/9/150/159:4:5'),
(500, 3, 146, 0, 57, '150'),
(501, 3, 41, 0, 58, '进口佳品'),
(502, 3, 43, 0, 58, '158'),
(503, 3, 46, 0, 58, ''),
(504, 3, 49, 0, 58, 'PRODUCTS'),
(505, 3, 58, 0, 58, ''),
(506, 3, 61, 0, 58, ''),
(507, 3, 144, 0, 58, '158'),
(508, 3, 145, 0, 58, '0/9/150/158:4:4'),
(509, 3, 146, 0, 58, '150'),
(510, 3, 41, 0, 59, '盛夏爆款'),
(511, 3, 43, 0, 59, '160'),
(512, 3, 46, 0, 59, ''),
(513, 3, 49, 0, 59, 'PRODUCTS'),
(514, 3, 58, 0, 59, ''),
(515, 3, 61, 0, 59, ''),
(516, 3, 144, 0, 59, '160'),
(517, 3, 145, 0, 59, '0/9/151/160:4:3'),
(518, 3, 146, 0, 59, '151'),
(519, 3, 41, 0, 60, '国产优选'),
(520, 3, 43, 0, 60, '161'),
(521, 3, 46, 0, 60, ''),
(522, 3, 49, 0, 60, 'PRODUCTS'),
(523, 3, 58, 0, 60, ''),
(524, 3, 61, 0, 60, ''),
(525, 3, 144, 0, 60, '161'),
(526, 3, 145, 0, 60, '0/9/151/161:4:4'),
(527, 3, 146, 0, 60, '151'),
(528, 3, 41, 0, 61, '进口佳品'),
(529, 3, 43, 0, 61, '162'),
(530, 3, 46, 0, 61, ''),
(531, 3, 49, 0, 61, 'PRODUCTS'),
(532, 3, 58, 0, 61, ''),
(533, 3, 61, 0, 61, ''),
(534, 3, 144, 0, 61, '162'),
(535, 3, 145, 0, 61, '0/9/151/162:4:5'),
(536, 3, 146, 0, 61, '151');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- 转存表中的数据 `catalog_category_flat_store_1`
--

INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `url_key`, `url_path`) VALUES
(1, 0, '2015-07-16 03:43:02', '2015-07-16 03:43:02', '1', 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, 'root-catalog', NULL),
(2, 1, '2015-07-16 03:43:03', '2015-07-16 03:43:03', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, 'default-category', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- 转存表中的数据 `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(2, 1, 1),
(2, 2, 1),
(2, 4, 1),
(2, 5, 1),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1),
(2, 10, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 1),
(2, 17, 1),
(2, 18, 1),
(2, 19, 1),
(2, 20, 1),
(3, 1, 1),
(3, 2, 1),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 11, 1),
(3, 14, 1),
(3, 15, 1),
(3, 17, 1),
(3, 18, 1),
(3, 19, 1),
(3, 20, 1),
(4, 3, 1),
(4, 9, 1),
(4, 10, 1),
(4, 12, 1),
(4, 13, 1),
(4, 16, 1),
(5, 19, 0),
(5, 20, 0),
(5, 21, 1),
(7, 21, 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- 转存表中的数据 `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 3, 30007, 0, 1, 4),
(2, 21, 80001, 0, 1, 4),
(2, 1, 1, 1, 1, 4),
(2, 2, 1, 1, 1, 4),
(2, 4, 1, 1, 1, 4),
(2, 5, 1, 1, 1, 4),
(2, 6, 1, 1, 1, 4),
(2, 7, 1, 1, 1, 4),
(2, 8, 1, 1, 1, 4),
(2, 9, 1, 1, 1, 4),
(2, 10, 1, 1, 1, 4),
(2, 11, 1, 1, 1, 4),
(2, 12, 1, 1, 1, 4),
(2, 13, 1, 1, 1, 4),
(2, 14, 1, 1, 1, 4),
(2, 15, 1, 1, 1, 4),
(2, 16, 1, 1, 1, 4),
(2, 17, 1, 1, 1, 4),
(2, 18, 1, 1, 1, 4),
(2, 19, 1, 1, 1, 4),
(2, 20, 1, 1, 1, 4),
(3, 1, 1, 1, 1, 4),
(3, 2, 1, 1, 1, 4),
(3, 4, 1, 1, 1, 4),
(3, 5, 1, 1, 1, 4),
(3, 6, 1, 1, 1, 4),
(3, 7, 1, 1, 1, 4),
(3, 8, 1, 1, 1, 4),
(3, 11, 1, 1, 1, 4),
(3, 14, 1, 1, 1, 4),
(3, 15, 1, 1, 1, 4),
(3, 17, 1, 1, 1, 4),
(3, 18, 1, 1, 1, 4),
(3, 19, 1, 1, 1, 4),
(3, 20, 1, 1, 1, 4),
(4, 3, 1, 1, 1, 4),
(4, 9, 1, 1, 1, 4),
(4, 10, 1, 1, 1, 4),
(4, 12, 1, 1, 1, 4),
(4, 13, 1, 1, 1, 4),
(4, 16, 1, 1, 1, 4),
(5, 19, 0, 1, 1, 4),
(5, 20, 0, 1, 1, 4),
(5, 21, 1, 1, 1, 4),
(7, 21, 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- 转存表中的数据 `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', 'peach', 0, 0, '2015-07-21 20:29:18', '2015-07-21 20:29:18'),
(2, 4, 4, 'simple', 'pamp', 0, 0, '2015-07-21 20:29:18', '2015-07-21 20:29:18'),
(3, 4, 4, 'simple', 'rice', 0, 0, '2015-07-21 20:29:20', '2015-07-21 20:29:20'),
(4, 4, 4, 'simple', 'litchi', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(5, 4, 4, 'simple', 'apple', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(6, 4, 4, 'simple', 'banana', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(7, 4, 4, 'simple', 'kiwi', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(8, 4, 4, 'simple', 'pineapple', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(9, 4, 4, 'simple', 'millet', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(10, 4, 4, 'simple', 'Red bean', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(11, 4, 4, 'simple', 'Cucumber', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(12, 4, 4, 'simple', 'Soybean', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(13, 4, 4, 'simple', 'mung', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(14, 4, 4, 'simple', 'Cherry', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(15, 4, 4, 'simple', 'Apricot', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(16, 4, 4, 'simple', 'Jujube', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(17, 4, 4, 'simple', 'Pear', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(18, 4, 4, 'simple', 'Mango', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(19, 4, 4, 'simple', 'Watermelon', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(20, 4, 4, 'simple', 'Cherry Tomatoes', 0, 0, '2015-07-21 20:29:22', '2015-07-21 20:29:22'),
(21, 4, 4, 'simple', 'sku001', 0, 0, '2015-07-31 01:25:32', '2015-07-31 01:25:58');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, '2015-06-01 00:00:00'),
(2, 4, 93, 0, 2, '2015-06-01 00:00:00'),
(3, 4, 93, 0, 3, '2015-06-01 00:00:00'),
(4, 4, 93, 0, 21, NULL),
(5, 4, 94, 0, 21, NULL),
(6, 4, 77, 0, 21, NULL),
(7, 4, 78, 0, 21, NULL),
(8, 4, 104, 0, 21, NULL),
(9, 4, 105, 0, 21, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 75, 0, 1, '10.0000'),
(2, 4, 80, 0, 1, '2.0000'),
(3, 4, 75, 0, 2, '10.0000'),
(4, 4, 80, 0, 2, '2.0000'),
(5, 4, 75, 0, 3, '50.0000'),
(6, 4, 80, 0, 3, '20.0000'),
(7, 4, 75, 0, 4, '5.0000'),
(8, 4, 80, 0, 4, '2.0000'),
(9, 4, 75, 0, 5, '5.0000'),
(10, 4, 80, 0, 5, '2.0000'),
(11, 4, 75, 0, 6, '8.0000'),
(12, 4, 80, 0, 6, '2.0000'),
(13, 4, 75, 0, 7, '8.0000'),
(14, 4, 80, 0, 7, '2.0000'),
(15, 4, 75, 0, 8, '30.0000'),
(16, 4, 80, 0, 8, '5.0000'),
(17, 4, 75, 0, 9, '20.0000'),
(18, 4, 80, 0, 9, '5.0000'),
(19, 4, 75, 0, 10, '20.0000'),
(20, 4, 80, 0, 10, '5.0000'),
(21, 4, 75, 0, 11, '10.0000'),
(22, 4, 80, 0, 11, '5.0000'),
(23, 4, 75, 0, 12, '15.0000'),
(24, 4, 80, 0, 12, '5.0000'),
(25, 4, 75, 0, 13, '15.0000'),
(26, 4, 80, 0, 13, '5.0000'),
(27, 4, 75, 0, 14, '10.0000'),
(28, 4, 80, 0, 14, '2.0000'),
(29, 4, 75, 0, 15, '6.0000'),
(30, 4, 80, 0, 15, '2.0000'),
(31, 4, 75, 0, 16, '18.0000'),
(32, 4, 80, 0, 16, '2.0000'),
(33, 4, 75, 0, 17, '8.0000'),
(34, 4, 80, 0, 17, '4.0000'),
(35, 4, 75, 0, 18, '6.0000'),
(36, 4, 80, 0, 18, '2.0000'),
(37, 4, 75, 0, 19, '16.0000'),
(38, 4, 80, 0, 19, '10.0000'),
(39, 4, 75, 0, 20, '25.0000'),
(40, 4, 80, 0, 20, '5.0000'),
(41, 4, 80, 0, 21, '1.0000'),
(42, 4, 75, 0, 21, '11.1100'),
(43, 4, 76, 0, 21, NULL),
(44, 4, 120, 0, 21, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 0),
(4, 4, 96, 0, 2, 1),
(5, 4, 102, 0, 2, 4),
(6, 4, 121, 0, 2, 0),
(7, 4, 96, 0, 3, 1),
(8, 4, 102, 0, 3, 4),
(9, 4, 121, 0, 3, 0),
(10, 4, 96, 0, 4, 1),
(11, 4, 102, 0, 4, 4),
(12, 4, 121, 0, 4, 0),
(13, 4, 96, 0, 5, 1),
(14, 4, 102, 0, 5, 4),
(15, 4, 121, 0, 5, 0),
(16, 4, 96, 0, 6, 1),
(17, 4, 102, 0, 6, 4),
(18, 4, 121, 0, 6, 0),
(19, 4, 96, 0, 7, 1),
(20, 4, 102, 0, 7, 4),
(21, 4, 121, 0, 7, 0),
(22, 4, 96, 0, 8, 1),
(23, 4, 102, 0, 8, 4),
(24, 4, 121, 0, 8, 0),
(25, 4, 96, 0, 9, 1),
(26, 4, 102, 0, 9, 4),
(27, 4, 121, 0, 9, 0),
(28, 4, 96, 0, 10, 1),
(29, 4, 102, 0, 10, 4),
(30, 4, 121, 0, 10, 0),
(31, 4, 96, 0, 11, 1),
(32, 4, 102, 0, 11, 4),
(33, 4, 121, 0, 11, 0),
(34, 4, 96, 0, 12, 1),
(35, 4, 102, 0, 12, 4),
(36, 4, 121, 0, 12, 0),
(37, 4, 96, 0, 13, 1),
(38, 4, 102, 0, 13, 4),
(39, 4, 121, 0, 13, 0),
(40, 4, 96, 0, 14, 1),
(41, 4, 102, 0, 14, 4),
(42, 4, 121, 0, 14, 0),
(43, 4, 96, 0, 15, 1),
(44, 4, 102, 0, 15, 4),
(45, 4, 121, 0, 15, 0),
(46, 4, 96, 0, 16, 1),
(47, 4, 102, 0, 16, 4),
(48, 4, 121, 0, 16, 0),
(49, 4, 96, 0, 17, 1),
(50, 4, 102, 0, 17, 4),
(51, 4, 121, 0, 17, 0),
(52, 4, 96, 0, 18, 1),
(53, 4, 102, 0, 18, 4),
(54, 4, 121, 0, 18, 0),
(55, 4, 96, 0, 19, 1),
(56, 4, 102, 0, 19, 4),
(57, 4, 121, 0, 19, 0),
(58, 4, 96, 0, 20, 1),
(59, 4, 102, 0, 20, 4),
(60, 4, 121, 0, 20, 0),
(61, 4, 96, 0, 21, 1),
(62, 4, 102, 0, 21, 4),
(63, 4, 121, 0, 21, 0),
(64, 4, 100, 0, 21, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 88, 21, '/8/b/8b3b312a-8606-4b81-9d60-131be82d8c42.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- 转存表中的数据 `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, '杨山水蜜桃'),
(2, 4, 73, 0, 1, '杨山水蜜桃'),
(3, 4, 72, 0, 2, '葡萄柚'),
(4, 4, 73, 0, 2, '葡萄柚'),
(5, 4, 72, 0, 3, '大米'),
(6, 4, 73, 0, 3, '大米'),
(7, 4, 72, 0, 4, '越南荔枝'),
(8, 4, 73, 0, 4, '越南荔枝'),
(9, 4, 72, 0, 5, '陕西红富士'),
(10, 4, 73, 0, 5, '陕西红富士'),
(11, 4, 72, 0, 6, '菲律宾香蕉'),
(12, 4, 73, 0, 6, '菲律宾香蕉'),
(13, 4, 72, 0, 7, '新西兰绿奇异果'),
(14, 4, 73, 0, 7, '新西兰绿奇异果'),
(15, 4, 72, 0, 8, '海南凤梨'),
(16, 4, 73, 0, 8, '海南凤梨'),
(17, 4, 72, 0, 9, '小米'),
(18, 4, 73, 0, 9, '小米'),
(19, 4, 72, 0, 10, '红豆'),
(20, 4, 73, 0, 10, '红豆'),
(21, 4, 72, 0, 11, '水果黄瓜'),
(22, 4, 73, 0, 11, '水果黄瓜'),
(23, 4, 72, 0, 12, '黄豆'),
(24, 4, 73, 0, 12, '黄豆'),
(25, 4, 72, 0, 13, '绿豆'),
(26, 4, 73, 0, 13, '绿豆'),
(27, 4, 72, 0, 14, '美早樱桃'),
(28, 4, 73, 0, 14, '美早樱桃'),
(29, 4, 72, 0, 15, '杏子'),
(30, 4, 73, 0, 15, '杏子'),
(31, 4, 72, 0, 16, '红枣'),
(32, 4, 73, 0, 16, '红枣'),
(33, 4, 72, 0, 17, '砀山梨'),
(34, 4, 73, 0, 17, '砀山梨'),
(35, 4, 72, 0, 18, '芒果'),
(36, 4, 73, 0, 18, '芒果'),
(37, 4, 72, 0, 19, '西瓜'),
(38, 4, 73, 0, 19, '西瓜'),
(39, 4, 72, 0, 20, '圣女果'),
(40, 4, 73, 0, 20, '圣女果'),
(41, 4, 72, 0, 21, 'desc'),
(42, 4, 73, 0, 21, 'short desc'),
(43, 4, 83, 0, 21, NULL),
(44, 4, 106, 0, 21, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=149 ;

--
-- 转存表中的数据 `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, '杨山水蜜桃'),
(2, 4, 109, 0, 1, 'container1'),
(3, 4, 118, 0, 1, '2'),
(4, 4, 119, 0, 1, '4'),
(5, 4, 71, 0, 2, '葡萄柚'),
(6, 4, 109, 0, 2, 'container1'),
(7, 4, 118, 0, 2, '2'),
(8, 4, 119, 0, 2, '4'),
(9, 4, 71, 0, 3, '大米'),
(10, 4, 109, 0, 3, 'container1'),
(11, 4, 118, 0, 3, '2'),
(12, 4, 119, 0, 3, '4'),
(13, 4, 71, 0, 4, '越南荔枝'),
(14, 4, 109, 0, 4, 'container1'),
(15, 4, 118, 0, 4, '2'),
(16, 4, 119, 0, 4, '4'),
(17, 4, 71, 0, 5, '陕西红富士'),
(18, 4, 109, 0, 5, 'container1'),
(19, 4, 118, 0, 5, '2'),
(20, 4, 119, 0, 5, '4'),
(21, 4, 71, 0, 6, '菲律宾香蕉'),
(22, 4, 109, 0, 6, 'container1'),
(23, 4, 118, 0, 6, '2'),
(24, 4, 119, 0, 6, '4'),
(25, 4, 71, 0, 7, '新西兰绿奇异果'),
(26, 4, 109, 0, 7, 'container1'),
(27, 4, 118, 0, 7, '2'),
(28, 4, 119, 0, 7, '4'),
(29, 4, 71, 0, 8, '海南凤梨'),
(30, 4, 109, 0, 8, 'container1'),
(31, 4, 118, 0, 8, '2'),
(32, 4, 119, 0, 8, '4'),
(33, 4, 71, 0, 9, '小米'),
(34, 4, 109, 0, 9, 'container1'),
(35, 4, 118, 0, 9, '2'),
(36, 4, 119, 0, 9, '4'),
(37, 4, 71, 0, 10, '红豆'),
(38, 4, 109, 0, 10, 'container1'),
(39, 4, 118, 0, 10, '2'),
(40, 4, 119, 0, 10, '4'),
(41, 4, 71, 0, 11, '水果黄瓜'),
(42, 4, 109, 0, 11, 'container1'),
(43, 4, 118, 0, 11, '2'),
(44, 4, 119, 0, 11, '4'),
(45, 4, 71, 0, 12, '黄豆'),
(46, 4, 109, 0, 12, 'container1'),
(47, 4, 118, 0, 12, '2'),
(48, 4, 119, 0, 12, '4'),
(49, 4, 71, 0, 13, '绿豆'),
(50, 4, 109, 0, 13, 'container1'),
(51, 4, 118, 0, 13, '2'),
(52, 4, 119, 0, 13, '4'),
(53, 4, 71, 0, 14, '美早樱桃'),
(54, 4, 109, 0, 14, 'container1'),
(55, 4, 118, 0, 14, '2'),
(56, 4, 119, 0, 14, '4'),
(57, 4, 71, 0, 15, '杏子'),
(58, 4, 109, 0, 15, 'container1'),
(59, 4, 118, 0, 15, '2'),
(60, 4, 119, 0, 15, '4'),
(61, 4, 71, 0, 16, '红枣'),
(62, 4, 109, 0, 16, 'container1'),
(63, 4, 118, 0, 16, '2'),
(64, 4, 119, 0, 16, '4'),
(65, 4, 71, 0, 17, '砀山梨'),
(66, 4, 109, 0, 17, 'container1'),
(67, 4, 118, 0, 17, '2'),
(68, 4, 119, 0, 17, '4'),
(69, 4, 71, 0, 18, '芒果'),
(70, 4, 109, 0, 18, 'container1'),
(71, 4, 118, 0, 18, '2'),
(72, 4, 119, 0, 18, '4'),
(73, 4, 71, 0, 19, '西瓜'),
(74, 4, 109, 0, 19, 'container1'),
(75, 4, 118, 0, 19, '2'),
(76, 4, 119, 0, 19, '4'),
(77, 4, 71, 0, 20, '圣女果'),
(78, 4, 109, 0, 20, 'container1'),
(79, 4, 118, 0, 20, '2'),
(80, 4, 119, 0, 20, '4'),
(81, 4, 98, 1, 1, '.html'),
(82, 4, 98, 0, 1, '.html'),
(83, 4, 98, 1, 2, '--5.html'),
(84, 4, 98, 0, 2, '--5.html'),
(85, 4, 98, 1, 3, '--6.html'),
(86, 4, 98, 0, 3, '--6.html'),
(87, 4, 98, 1, 4, '--7.html'),
(88, 4, 98, 0, 4, '--7.html'),
(89, 4, 98, 1, 5, '--8.html'),
(90, 4, 98, 0, 5, '--8.html'),
(91, 4, 98, 1, 6, '--9.html'),
(92, 4, 98, 0, 6, '--9.html'),
(93, 4, 98, 1, 7, '--10.html'),
(94, 4, 98, 0, 7, '--10.html'),
(95, 4, 98, 1, 8, '--11.html'),
(96, 4, 98, 0, 8, '--11.html'),
(97, 4, 98, 1, 9, '--12.html'),
(98, 4, 98, 0, 9, '--12.html'),
(99, 4, 98, 1, 10, '--13.html'),
(100, 4, 98, 0, 10, '--13.html'),
(101, 4, 98, 1, 11, '--14.html'),
(102, 4, 98, 0, 11, '--14.html'),
(103, 4, 98, 1, 12, '--15.html'),
(104, 4, 98, 0, 12, '--15.html'),
(105, 4, 98, 1, 13, '--16.html'),
(106, 4, 98, 0, 13, '--16.html'),
(107, 4, 98, 1, 14, '--17.html'),
(108, 4, 98, 0, 14, '--17.html'),
(109, 4, 98, 1, 15, '--18.html'),
(110, 4, 98, 0, 15, '--18.html'),
(111, 4, 98, 1, 16, '--19.html'),
(112, 4, 98, 0, 16, '--19.html'),
(113, 4, 98, 1, 17, '--20.html'),
(114, 4, 98, 0, 17, '--20.html'),
(115, 4, 98, 1, 18, '--21.html'),
(116, 4, 98, 0, 18, '--21.html'),
(117, 4, 98, 1, 19, '--22.html'),
(118, 4, 98, 0, 19, '--22.html'),
(119, 4, 98, 1, 20, '--23.html'),
(120, 4, 98, 0, 20, '--23.html'),
(121, 4, 71, 0, 21, 'name'),
(122, 4, 97, 0, 21, 'name'),
(123, 4, 117, 0, 21, NULL),
(124, 4, 118, 0, 21, '2'),
(125, 4, 119, 0, 21, '4'),
(126, 4, 82, 0, 21, NULL),
(127, 4, 84, 0, 21, NULL),
(128, 4, 85, 0, 21, '/8/b/8b3b312a-8606-4b81-9d60-131be82d8c42.jpg'),
(129, 4, 86, 0, 21, '/8/b/8b3b312a-8606-4b81-9d60-131be82d8c42.jpg'),
(130, 4, 87, 0, 21, '/8/b/8b3b312a-8606-4b81-9d60-131be82d8c42.jpg'),
(131, 4, 103, 0, 21, NULL),
(132, 4, 107, 0, 21, NULL),
(133, 4, 109, 0, 21, 'container1'),
(134, 4, 122, 0, 21, NULL),
(135, 4, 112, 0, 21, NULL),
(136, 4, 113, 0, 21, NULL),
(137, 4, 114, 0, 21, NULL),
(138, 4, 98, 1, 21, 'name.html'),
(139, 4, 98, 0, 21, 'name.html');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- 转存表中的数据 `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0),
(2, 121, 1, 0),
(3, 121, 1, 0),
(4, 121, 1, 0),
(5, 121, 1, 0),
(6, 121, 1, 0),
(7, 121, 1, 0),
(8, 121, 1, 0),
(9, 121, 1, 0),
(10, 121, 1, 0),
(11, 121, 1, 0),
(12, 121, 1, 0),
(13, 121, 1, 0),
(14, 121, 1, 0),
(15, 121, 1, 0),
(16, 121, 1, 0),
(17, 121, 1, 0),
(18, 121, 1, 0),
(19, 121, 1, 0),
(20, 121, 1, 0),
(21, 121, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- 转存表中的数据 `catalog_product_index_eav_idx`
--

INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 121, 1, 0),
(2, 121, 1, 0),
(3, 121, 1, 0),
(4, 121, 1, 0),
(5, 121, 1, 0),
(6, 121, 1, 0),
(7, 121, 1, 0),
(8, 121, 1, 0),
(9, 121, 1, 0),
(10, 121, 1, 0),
(11, 121, 1, 0),
(12, 121, 1, 0),
(13, 121, 1, 0),
(14, 121, 1, 0),
(15, 121, 1, 0),
(16, 121, 1, 0),
(17, 121, 1, 0),
(18, 121, 1, 0),
(19, 121, 1, 0),
(20, 121, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

--
-- 转存表中的数据 `catalog_product_index_eav_tmp`
--

INSERT INTO `catalog_product_index_eav_tmp` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(21, 121, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- 转存表中的数据 `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(3, 0, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 1, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 2, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 3, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(4, 0, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 1, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 2, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 3, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 0, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 1, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 2, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 3, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(6, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(8, 0, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 1, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 2, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 3, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(9, 0, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 1, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 2, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 3, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 0, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 1, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 2, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 3, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(11, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(12, 0, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 1, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 2, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 3, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 0, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 1, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 2, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 3, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(14, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(15, 0, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 1, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 2, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 3, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(16, 0, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 1, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 2, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 3, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(17, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(18, 0, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 1, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 2, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 3, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(19, 0, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 1, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 2, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 3, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(20, 0, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 1, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 2, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 3, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(21, 0, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 1, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 2, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 3, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- 转存表中的数据 `catalog_product_index_price_idx`
--

INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(1, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(2, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(3, 0, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 1, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 2, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(3, 3, 1, 0, '50.0000', '50.0000', '50.0000', '50.0000', NULL, NULL),
(4, 0, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 1, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 2, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(4, 3, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 0, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 1, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 2, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(5, 3, 1, 0, '5.0000', '5.0000', '5.0000', '5.0000', NULL, NULL),
(6, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(6, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(7, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(8, 0, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 1, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 2, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(8, 3, 1, 0, '30.0000', '30.0000', '30.0000', '30.0000', NULL, NULL),
(9, 0, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 1, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 2, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(9, 3, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 0, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 1, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 2, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(10, 3, 1, 0, '20.0000', '20.0000', '20.0000', '20.0000', NULL, NULL),
(11, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(11, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(12, 0, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 1, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 2, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(12, 3, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 0, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 1, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 2, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(13, 3, 1, 0, '15.0000', '15.0000', '15.0000', '15.0000', NULL, NULL),
(14, 0, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 1, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 2, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(14, 3, 1, 0, '10.0000', '10.0000', '10.0000', '10.0000', NULL, NULL),
(15, 0, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 1, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 2, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(15, 3, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(16, 0, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 1, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 2, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(16, 3, 1, 0, '18.0000', '18.0000', '18.0000', '18.0000', NULL, NULL),
(17, 0, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 1, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 2, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(17, 3, 1, 0, '8.0000', '8.0000', '8.0000', '8.0000', NULL, NULL),
(18, 0, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 1, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 2, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(18, 3, 1, 0, '6.0000', '6.0000', '6.0000', '6.0000', NULL, NULL),
(19, 0, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 1, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 2, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(19, 3, 1, 0, '16.0000', '16.0000', '16.0000', '16.0000', NULL, NULL),
(20, 0, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 1, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 2, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL),
(20, 3, 1, 0, '25.0000', '25.0000', '25.0000', '25.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

--
-- 转存表中的数据 `catalog_product_index_price_tmp`
--

INSERT INTO `catalog_product_index_price_tmp` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(21, 0, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 1, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 2, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL),
(21, 3, 1, 0, '11.1100', '11.1100', '11.1100', '11.1100', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- 转存表中的数据 `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2015-07-31', 1);

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- 转存表中的数据 `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1);

-- --------------------------------------------------------

--
-- 表的结构 `checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- 表的结构 `cms_block`
--

CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '\n<ul>\n    <li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\n    <li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2015-07-16 03:42:51', '2015-07-16 03:42:53', 1),
(2, 'Footer Links Company', 'footer_links_company', '\n<div class="links">\n    <div class="block-title">\n        <strong><span>Company</span></strong>\n    </div>\n    <ul>\n        <li><a href="{{store url=""}}about-magento-demo-store/">About Us</a></li>\n        <li><a href="{{store url=""}}contacts/">Contact Us</a></li>\n        <li><a href="{{store url=""}}customer-service/">Customer Service</a></li>\n        <li><a href="{{store url=""}}privacy-policy-cookie-restriction-mode/">Privacy Policy</a></li>\n    </ul>\n</div>', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1),
(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2015-07-16 03:42:53', '2015-07-16 03:42:53', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_block_store`
--

CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- 转存表中的数据 `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cms_page`
--

CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '\n<div class="page-title"><h1>Whoops, our bad...</h1></div>\n<dl>\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\n    <dd>\n        <ul class="disc">\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\n            <li>If you clicked on a link to get here, the link is outdated.</li>\n        </ul>\n    </dd>\n</dl>\n<dl>\n    <dt>What can you do?</dt>\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\n    <dd>\n        <ul class="disc">\n            <li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\n            <li>Use the search bar at the top of the page to search for your products.</li>\n            <li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a>\n            <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li>\n        </ul>\n    </dd>\n</dl>\n', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '<div class="page-title"><h2>Home Page</h2></div>', '2015-07-16 03:42:52', '2015-07-16 03:43:08', 1, 0, '<!--<reference name="content">\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\n            <action method="addPriceBlockType">\n                <type>bundle</type>\n                <block>bundle/catalog_product_price</block>\n                <template>bundle/catalog/product/price.phtml</template>\n            </action>\n        </block>\n    </reference>\n    <reference name="right">\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '\n<div class="page-title">\n    <h1>About Magento Store</h1>\n</div>\n<div class="col3-set">\n<div class="col-1"><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec,\ntempus vitae, iaculis semper, pede.</small></p>\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis,\nporta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\n<div class="col-2">\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus.\nDuis lobortis. Nulla nec velit.</strong></p>\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper.\nPhasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada\nfames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac,\ntempus nec, tempor nec, justo. </p>\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam.\nPellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.\nVestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est.\nNulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat.\nPellentesque eget velit. Nunc tincidunt.</p></div>\n<div class="col-3">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci,\nsit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\n<div class="divider"></div>\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br />\n<small>Some important guy</small></p></div>\n</div>', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\n<h1>Customer Service</h1>\n</div>\n<ul class="disc">\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\n<li><a href="#answer2">Privacy &amp; Security</a></li>\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\n<li><a href="#answer4">Ordering</a></li>\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\n<li><a href="#answer6">Viewing Orders</a></li>\n<li><a href="#answer7">Updating Account Information</a></li>\n</ul>\n<dl>\n<dt id="answer1">Shipping &amp; Delivery</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer2">Privacy &amp; Security</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer3">Returns &amp; Replacements</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer4">Ordering</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer6">Viewing Orders</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n<dt id="answer7">Updating Account Information</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n</dl>', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\n    <ul class="messages">\n        <li class="notice-msg">\n            <ul>\n                <li>Please enable cookies in your web browser to continue.</li>\n            </ul>\n        </li>\n    </ul>\n    <div class="page-title">\n        <h1><a name="top"></a>What are Cookies?</h1>\n    </div>\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\n     browser to accept cookies from our website.</p>\n    <h2 class="subtitle">Enabling Cookies</h2>\n    <ul class="disc">\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\n        <li><a href="#opera">Opera 7.x</a></li>\n    </ul>\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\n    <ol>\n        <li>\n            <p>Start Internet Explorer</p>\n        </li>\n        <li>\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Privacy</strong> tab</p>\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Advanced</strong> button</p>\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Restart Internet Explore</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\n    <ol>\n        <li>\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> tab</p>\n        </li>\n        <li>\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Expand the <strong>Cookies</strong> section</p>\n        </li>\n        <li>\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="opera"></a>Opera 7.x</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n</div>\n', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2015-07-16 03:42:52', '2015-07-16 03:42:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cms_page_store`
--

CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- 转存表中的数据 `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- 表的结构 `core_cache`
--

CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- 表的结构 `core_cache_option`
--

CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- 转存表中的数据 `core_cache_option`
--

INSERT INTO `core_cache_option` (`code`, `value`) VALUES
('block_html', 1),
('collections', 1),
('config', 1),
('config_api', 1),
('config_api2', 1),
('eav', 1),
('layout', 1),
('translate', 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- 表的结构 `core_config_data`
--

CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=44 ;

--
-- 转存表中的数据 `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
(5, 'default', 0, 'payment/payflow_link/mobile_optimized', '1'),
(6, 'default', 0, 'payment/payflow_advanced/mobile_optimized', '1'),
(7, 'default', 0, 'payment/hosted_pro/mobile_optimized', '1'),
(8, 'default', 0, 'admin/dashboard/enable_charts', '0'),
(9, 'default', 0, 'web/url/use_store', '0'),
(10, 'default', 0, 'web/url/redirect_to_base', '1'),
(11, 'default', 0, 'web/seo/use_rewrites', '0'),
(12, 'default', 0, 'web/unsecure/base_url', 'http://localhost/magento/'),
(13, 'default', 0, 'web/unsecure/base_link_url', '{{unsecure_base_url}}'),
(14, 'default', 0, 'web/unsecure/base_skin_url', '{{unsecure_base_url}}skin/'),
(15, 'default', 0, 'web/unsecure/base_media_url', '{{unsecure_base_url}}media/'),
(16, 'default', 0, 'web/unsecure/base_js_url', '{{unsecure_base_url}}js/'),
(17, 'default', 0, 'web/secure/base_url', 'http://localhost/magento/'),
(18, 'default', 0, 'web/secure/base_link_url', '{{secure_base_url}}'),
(19, 'default', 0, 'web/secure/base_skin_url', '{{secure_base_url}}skin/'),
(20, 'default', 0, 'web/secure/base_media_url', '{{secure_base_url}}media/'),
(21, 'default', 0, 'web/secure/base_js_url', '{{secure_base_url}}js/'),
(22, 'default', 0, 'web/secure/use_in_frontend', '0'),
(23, 'default', 0, 'web/secure/use_in_adminhtml', '0'),
(24, 'default', 0, 'web/secure/offloader_header', 'SSL_OFFLOADED'),
(25, 'default', 0, 'web/default/front', 'cms'),
(26, 'default', 0, 'web/default/cms_home_page', 'home'),
(27, 'default', 0, 'web/default/no_route', 'cms/index/noRoute'),
(28, 'default', 0, 'web/default/cms_no_route', 'no-route'),
(29, 'default', 0, 'web/default/cms_no_cookies', 'enable-cookies'),
(30, 'default', 0, 'web/default/show_cms_breadcrumbs', '1'),
(31, 'default', 0, 'web/polls/poll_check_by_ip', '0'),
(32, 'default', 0, 'web/cookie/cookie_lifetime', '3600'),
(33, 'default', 0, 'web/cookie/cookie_path', NULL),
(34, 'default', 0, 'web/cookie/cookie_domain', NULL),
(35, 'default', 0, 'web/cookie/cookie_httponly', '1'),
(36, 'default', 0, 'web/cookie/cookie_restriction', '0'),
(37, 'default', 0, 'web/session/use_remote_addr', '0'),
(38, 'default', 0, 'web/session/use_http_via', '0'),
(39, 'default', 0, 'web/session/use_http_x_forwarded_for', '0'),
(40, 'default', 0, 'web/session/use_http_user_agent', '0'),
(41, 'default', 0, 'web/session/use_frontend_sid', '1'),
(42, 'default', 0, 'web/browser_capabilities/cookies', '1'),
(43, 'default', 0, 'web/browser_capabilities/javascript', '1');

-- --------------------------------------------------------

--
-- 表的结构 `core_email_queue`
--

CREATE TABLE IF NOT EXISTS `core_email_queue` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message Id',
  `entity_id` int(10) unsigned DEFAULT NULL COMMENT 'Entity ID',
  `entity_type` varchar(128) DEFAULT NULL COMMENT 'Entity Type',
  `event_type` varchar(128) DEFAULT NULL COMMENT 'Event Type',
  `message_body_hash` varchar(64) NOT NULL COMMENT 'Message Body Hash',
  `message_body` mediumtext NOT NULL COMMENT 'Message Body',
  `message_parameters` text NOT NULL COMMENT 'Message Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Finish Time',
  PRIMARY KEY (`message_id`),
  KEY `0ADECE62FD629241C147389ADF20706E` (`entity_id`,`entity_type`,`event_type`,`message_body_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_email_queue_recipients`
--

CREATE TABLE IF NOT EXISTS `core_email_queue_recipients` (
  `recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Recipient Id',
  `message_id` int(10) unsigned NOT NULL COMMENT 'Message ID',
  `recipient_email` varchar(128) NOT NULL COMMENT 'Recipient Email',
  `recipient_name` varchar(255) NOT NULL COMMENT 'Recipient Name',
  `email_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Email Type',
  PRIMARY KEY (`recipient_id`),
  UNIQUE KEY `19BDB9C5FE4BD685FCF992A71E976CD0` (`message_id`,`recipient_email`,`email_type`),
  KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_RECIPIENT_EMAIL` (`recipient_email`),
  KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_EMAIL_TYPE` (`email_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_email_template`
--

CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_flag`
--

CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `core_flag`
--

INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2015-07-16 03:43:50'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2015-07-16 03:46:13');

-- --------------------------------------------------------

--
-- 表的结构 `core_layout_link`
--

CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_layout_update`
--

CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_resource`
--

CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- 转存表中的数据 `core_resource`
--

INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
('catalog_setup', '1.6.0.0.19', '1.6.0.0.19'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.6', '1.6.0.6'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.3', '1.6.2.0.3'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('googleanalytics_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('log_setup', '1.6.1.0', '1.6.1.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.2', '1.6.0.2'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.6', '1.6.0.6'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.8', '1.6.0.8'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0');

-- --------------------------------------------------------

--
-- 表的结构 `core_session`
--

CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- 表的结构 `core_store`
--

CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `core_store`
--

INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_store_group`
--

CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `core_store_group`
--

INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `core_translate`
--

CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=129 ;

--
-- 转存表中的数据 `core_url_rewrite`
--

INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'category/3', '-.html', 'catalog/category/view/id/3', 1, NULL, NULL, 3, NULL),
(2, 1, 'category/4', '--4.html', 'catalog/category/view/id/4', 1, NULL, NULL, 4, NULL),
(3, 1, 'product/1', '.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(4, 1, 'product/1/3', '-/.html', 'catalog/product/view/id/1/category/3', 1, NULL, NULL, 3, 1),
(5, 1, 'product/2', '--5.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(6, 1, 'product/2/3', '-/-2.html', 'catalog/product/view/id/2/category/3', 1, NULL, NULL, 3, 2),
(7, 1, 'product/3', '--6.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(8, 1, 'product/3/4', '--4/.html', 'catalog/product/view/id/3/category/4', 1, NULL, NULL, 4, 3),
(9, 1, 'product/4', '--7.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(10, 1, 'product/4/3', '-/-4.html', 'catalog/product/view/id/4/category/3', 1, NULL, NULL, 3, 4),
(11, 1, 'product/5', '--8.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
(12, 1, 'product/5/3', '-/-5.html', 'catalog/product/view/id/5/category/3', 1, NULL, NULL, 3, 5),
(13, 1, 'product/6', '--9.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
(14, 1, 'product/6/3', '-/-6.html', 'catalog/product/view/id/6/category/3', 1, NULL, NULL, 3, 6),
(15, 1, 'product/7', '--10.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
(16, 1, 'product/7/3', '-/-7.html', 'catalog/product/view/id/7/category/3', 1, NULL, NULL, 3, 7),
(17, 1, 'product/8', '--11.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
(18, 1, 'product/8/3', '-/-8.html', 'catalog/product/view/id/8/category/3', 1, NULL, NULL, 3, 8),
(19, 1, 'product/9', '--12.html', 'catalog/product/view/id/9', 1, NULL, NULL, NULL, 9),
(20, 1, 'product/9/4', '--4/-9.html', 'catalog/product/view/id/9/category/4', 1, NULL, NULL, 4, 9),
(21, 1, 'product/10', '--13.html', 'catalog/product/view/id/10', 1, NULL, NULL, NULL, 10),
(22, 1, 'product/10/4', '--4/-10.html', 'catalog/product/view/id/10/category/4', 1, NULL, NULL, 4, 10),
(23, 1, 'product/11', '--14.html', 'catalog/product/view/id/11', 1, NULL, NULL, NULL, 11),
(24, 1, 'product/11/3', '-/-11.html', 'catalog/product/view/id/11/category/3', 1, NULL, NULL, 3, 11),
(25, 1, 'product/12', '--15.html', 'catalog/product/view/id/12', 1, NULL, NULL, NULL, 12),
(26, 1, 'product/12/4', '--4/-12.html', 'catalog/product/view/id/12/category/4', 1, NULL, NULL, 4, 12),
(27, 1, 'product/13', '--16.html', 'catalog/product/view/id/13', 1, NULL, NULL, NULL, 13),
(28, 1, 'product/13/4', '--4/-13.html', 'catalog/product/view/id/13/category/4', 1, NULL, NULL, 4, 13),
(29, 1, 'product/14', '--17.html', 'catalog/product/view/id/14', 1, NULL, NULL, NULL, 14),
(30, 1, 'product/14/3', '-/-14.html', 'catalog/product/view/id/14/category/3', 1, NULL, NULL, 3, 14),
(31, 1, 'product/15', '--18.html', 'catalog/product/view/id/15', 1, NULL, NULL, NULL, 15),
(32, 1, 'product/15/3', '-/-15.html', 'catalog/product/view/id/15/category/3', 1, NULL, NULL, 3, 15),
(33, 1, 'product/16', '--19.html', 'catalog/product/view/id/16', 1, NULL, NULL, NULL, 16),
(34, 1, 'product/16/4', '--4/-16.html', 'catalog/product/view/id/16/category/4', 1, NULL, NULL, 4, 16),
(35, 1, 'product/17', '--20.html', 'catalog/product/view/id/17', 1, NULL, NULL, NULL, 17),
(36, 1, 'product/17/3', '-/-17.html', 'catalog/product/view/id/17/category/3', 1, NULL, NULL, 3, 17),
(37, 1, 'product/18', '--21.html', 'catalog/product/view/id/18', 1, NULL, NULL, NULL, 18),
(38, 1, 'product/18/3', '-/-18.html', 'catalog/product/view/id/18/category/3', 1, NULL, NULL, 3, 18),
(39, 1, 'product/19', '--22.html', 'catalog/product/view/id/19', 1, NULL, NULL, NULL, 19),
(40, 1, 'product/19/3', '-/-19.html', 'catalog/product/view/id/19/category/3', 1, NULL, NULL, 3, 19),
(41, 1, 'product/20', '--23.html', 'catalog/product/view/id/20', 1, NULL, NULL, NULL, 20),
(42, 1, 'product/20/3', '-/-20.html', 'catalog/product/view/id/20/category/3', 1, NULL, NULL, 3, 20),
(43, 1, 'category/5', 'url-key.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(45, 1, '96056500_1438149033', '-19.html', '--22.html', 0, 'RP', NULL, NULL, 19),
(46, 1, 'product/19/5', 'url-key/.html', 'catalog/product/view/id/19/category/5', 1, NULL, NULL, 5, 19),
(48, 1, '96751300_1438149033', '-20.html', '--23.html', 0, 'RP', NULL, NULL, 20),
(49, 1, 'product/20/5', 'url-key/-20.html', 'catalog/product/view/id/20/category/5', 1, NULL, NULL, 5, 20),
(50, 1, 'category/6', '-/1url.html', 'catalog/category/view/id/6', 1, NULL, NULL, 6, NULL),
(51, 1, 'category/7', 'url-key/2url.html', 'catalog/category/view/id/7', 1, NULL, NULL, 7, NULL),
(52, 1, 'category/8', 'url-key/test3.html', 'catalog/category/view/id/8', 1, NULL, NULL, 8, NULL),
(56, 1, '64899800_1438225411', '--1.html', '--4.html', 0, 'RP', NULL, 4, NULL),
(63, 1, '70707400_1438225411', '-2.html', '--5.html', 0, 'RP', NULL, NULL, 2),
(66, 1, '71350100_1438225411', '-3.html', '--6.html', 0, 'RP', NULL, NULL, 3),
(68, 1, '71768900_1438225411', '--1/.html', '--4/.html', 0, 'RP', NULL, 4, 3),
(70, 1, '72193900_1438225411', '-4.html', '--7.html', 0, 'RP', NULL, NULL, 4),
(73, 1, '72920100_1438225411', '-5.html', '--8.html', 0, 'RP', NULL, NULL, 5),
(76, 1, '73675900_1438225411', '-6.html', '--9.html', 0, 'RP', NULL, NULL, 6),
(79, 1, '74808200_1438225411', '-7.html', '--10.html', 0, 'RP', NULL, NULL, 7),
(82, 1, '76166400_1438225411', '-8.html', '--11.html', 0, 'RP', NULL, NULL, 8),
(85, 1, '77659200_1438225411', '-9.html', '--12.html', 0, 'RP', NULL, NULL, 9),
(87, 1, '78462900_1438225411', '--1/-9.html', '--4/-9.html', 0, 'RP', NULL, 4, 9),
(89, 1, '79235300_1438225411', '-10.html', '--13.html', 0, 'RP', NULL, NULL, 10),
(91, 1, '79764900_1438225411', '--1/-10.html', '--4/-10.html', 0, 'RP', NULL, 4, 10),
(93, 1, '80141400_1438225411', '-11.html', '--14.html', 0, 'RP', NULL, NULL, 11),
(96, 1, '80850600_1438225411', '-12.html', '--15.html', 0, 'RP', NULL, NULL, 12),
(98, 1, '81320000_1438225411', '--1/-12.html', '--4/-12.html', 0, 'RP', NULL, 4, 12),
(100, 1, '82014000_1438225411', '-13.html', '--16.html', 0, 'RP', NULL, NULL, 13),
(102, 1, '82894900_1438225411', '--1/-13.html', '--4/-13.html', 0, 'RP', NULL, 4, 13),
(104, 1, '83489400_1438225411', '-14.html', '--17.html', 0, 'RP', NULL, NULL, 14),
(107, 1, '88031200_1438225411', '-15.html', '--18.html', 0, 'RP', NULL, NULL, 15),
(110, 1, '88992900_1438225411', '-16.html', '--19.html', 0, 'RP', NULL, NULL, 16),
(112, 1, '89703800_1438225411', '--1/-16.html', '--4/-16.html', 0, 'RP', NULL, 4, 16),
(114, 1, '90338600_1438225411', '-17.html', '--20.html', 0, 'RP', NULL, NULL, 17),
(117, 1, '91368800_1438225411', '-18.html', '--21.html', 0, 'RP', NULL, NULL, 18),
(120, 1, '92444100_1438225411', '--2.html', '--22.html', 0, 'RP', NULL, NULL, 19),
(124, 1, '00514700_1438225412', '--3.html', '--23.html', 0, 'RP', NULL, NULL, 20),
(125, 1, 'product/21', 'name.html', 'catalog/product/view/id/21', 1, NULL, NULL, NULL, 21),
(126, 1, 'product/21/5', 'url-key/name.html', 'catalog/product/view/id/21/category/5', 1, NULL, NULL, 5, 21),
(127, 1, 'product/21/7', 'url-key/2url/name.html', 'catalog/product/view/id/21/category/7', 1, NULL, NULL, 7, 21);

-- --------------------------------------------------------

--
-- 表的结构 `core_variable`
--

CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_variable_value`
--

CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `core_website`
--

CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `core_website`
--

INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `cron_schedule`
--

CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=60 ;

--
-- 转存表中的数据 `customer_address_entity`
--

INSERT INTO `customer_address_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `increment_id`, `parent_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 2, 0, NULL, 1, '2015-07-21 04:47:14', '2015-07-23 00:17:44', 1),
(2, 2, 0, NULL, 1, '2015-07-22 16:17:15', '2015-07-23 00:17:44', 1),
(3, 2, 0, NULL, 1, '2015-07-23 00:18:38', '2015-07-23 00:18:38', 1),
(4, 2, 0, NULL, 5, '2015-07-22 17:56:25', '2015-07-23 01:56:25', 1),
(7, 2, 0, NULL, 7, '2015-07-27 20:59:32', '2015-07-27 20:59:32', 1),
(8, 2, 0, NULL, 9, '2015-07-27 20:59:33', '2015-07-27 20:59:33', 1),
(9, 2, 0, NULL, 15, '2015-07-27 20:59:34', '2015-07-27 20:59:34', 1),
(10, 2, 0, NULL, 16, '2015-07-27 20:59:35', '2015-07-27 20:59:35', 1),
(11, 2, 0, NULL, 20, '2015-07-27 20:59:36', '2015-07-27 20:59:36', 1),
(12, 2, 0, NULL, 23, '2015-07-27 20:59:36', '2015-07-27 20:59:36', 1),
(13, 2, 0, NULL, 29, '2015-07-27 20:59:37', '2015-07-27 20:59:37', 1),
(14, 2, 0, NULL, 33, '2015-07-27 20:59:38', '2015-07-27 20:59:38', 1),
(15, 2, 0, NULL, 33, '2015-07-27 20:59:39', '2015-07-27 20:59:39', 1),
(16, 2, 0, NULL, 33, '2015-07-27 20:59:39', '2015-07-27 20:59:39', 1),
(17, 2, 0, NULL, 33, '2015-07-27 20:59:40', '2015-07-27 20:59:40', 1),
(18, 2, 0, NULL, 33, '2015-07-27 20:59:41', '2015-07-27 20:59:41', 1),
(19, 2, 0, NULL, 33, '2015-07-27 20:59:41', '2015-07-27 20:59:41', 1),
(20, 2, 0, NULL, 34, '2015-07-27 20:59:42', '2015-07-27 20:59:42', 1),
(21, 2, 0, NULL, 37, '2015-07-27 20:59:43', '2015-07-27 20:59:43', 1),
(22, 2, 0, NULL, 38, '2015-07-27 20:59:44', '2015-07-27 20:59:44', 1),
(23, 2, 0, NULL, 48, '2015-07-27 20:59:44', '2015-07-27 20:59:44', 1),
(24, 2, 0, NULL, 55, '2015-07-27 20:59:45', '2015-07-27 20:59:45', 1),
(25, 2, 0, NULL, 57, '2015-07-27 20:59:46', '2015-07-27 20:59:46', 1),
(26, 2, 0, NULL, 61, '2015-07-27 20:59:46', '2015-07-27 20:59:46', 1),
(27, 2, 0, NULL, 69, '2015-07-27 20:59:47', '2015-07-27 20:59:47', 1),
(28, 2, 0, NULL, 69, '2015-07-27 20:59:48', '2015-07-27 20:59:48', 1),
(29, 2, 0, NULL, 69, '2015-07-27 20:59:48', '2015-07-27 20:59:48', 1),
(30, 2, 0, NULL, 69, '2015-07-27 20:59:49', '2015-07-27 20:59:49', 1),
(31, 2, 0, NULL, 74, '2015-07-27 20:59:49', '2015-07-27 20:59:49', 1),
(32, 2, 0, NULL, 75, '2015-07-27 20:59:50', '2015-07-27 20:59:50', 1),
(33, 2, 0, NULL, 84, '2015-07-27 20:59:51', '2015-07-27 20:59:51', 1),
(34, 2, 0, NULL, 91, '2015-07-27 20:59:52', '2015-07-27 20:59:52', 1),
(35, 2, 0, NULL, 91, '2015-07-27 20:59:53', '2015-07-27 20:59:53', 1),
(36, 2, 0, NULL, 91, '2015-07-27 20:59:54', '2015-07-27 20:59:54', 1),
(37, 2, 0, NULL, 91, '2015-07-27 20:59:55', '2015-07-27 20:59:55', 1),
(38, 2, 0, NULL, 91, '2015-07-27 20:59:56', '2015-07-27 20:59:56', 1),
(39, 2, 0, NULL, 96, '2015-07-27 20:59:57', '2015-07-27 20:59:57', 1),
(40, 2, 0, NULL, 104, '2015-07-27 20:59:58', '2015-07-27 20:59:58', 1),
(41, 2, 0, NULL, 107, '2015-07-27 21:00:00', '2015-07-27 21:00:00', 1),
(42, 2, 0, NULL, 108, '2015-07-27 21:00:02', '2015-07-27 21:00:02', 1),
(43, 2, 0, NULL, 109, '2015-07-27 21:00:03', '2015-07-27 21:00:03', 1),
(44, 2, 0, NULL, 109, '2015-07-27 21:00:05', '2015-07-27 21:00:05', 1),
(45, 2, 0, NULL, 113, '2015-07-27 21:00:07', '2015-07-27 21:00:07', 1),
(46, 2, 0, NULL, 115, '2015-07-27 21:00:08', '2015-07-27 21:00:08', 1),
(47, 2, 0, NULL, 118, '2015-07-27 21:00:09', '2015-07-27 21:00:09', 1),
(48, 2, 0, NULL, 119, '2015-07-27 21:00:10', '2015-07-27 21:00:10', 1),
(49, 2, 0, NULL, 121, '2015-07-27 21:00:11', '2015-07-27 21:00:11', 1),
(50, 2, 0, NULL, 121, '2015-07-27 21:00:12', '2015-07-27 21:00:12', 1),
(51, 2, 0, NULL, 121, '2015-07-27 21:00:14', '2015-07-27 21:00:14', 1),
(52, 2, 0, NULL, 121, '2015-07-27 21:00:15', '2015-07-27 21:00:15', 1),
(53, 2, 0, NULL, 125, '2015-07-27 21:00:16', '2015-07-27 21:00:16', 1),
(54, 2, 0, NULL, 126, '2015-07-27 21:00:17', '2015-07-27 21:00:17', 1),
(55, 2, 0, NULL, 126, '2015-07-27 21:00:18', '2015-07-27 21:00:18', 1),
(56, 2, 0, NULL, 128, '2015-07-27 21:00:19', '2015-07-27 21:00:19', 1),
(57, 2, 0, NULL, 132, '2015-07-27 21:00:20', '2015-07-27 21:00:20', 1),
(58, 2, 0, NULL, 133, '2015-07-27 21:00:21', '2015-07-27 21:00:21', 1),
(59, 2, 0, NULL, 137, '2015-07-27 21:00:22', '2015-07-27 21:00:22', 1);

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=59 ;

--
-- 转存表中的数据 `customer_address_entity_int`
--

INSERT INTO `customer_address_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 29, 1, 0),
(2, 2, 29, 2, 0),
(4, 2, 29, 3, 0),
(5, 2, 29, 4, 0),
(6, 2, 29, 7, 0),
(7, 2, 29, 8, 0),
(8, 2, 29, 9, 0),
(9, 2, 29, 10, 0),
(10, 2, 29, 11, 0),
(11, 2, 29, 12, 0),
(12, 2, 29, 13, 0),
(13, 2, 29, 14, 0),
(14, 2, 29, 15, 0),
(15, 2, 29, 16, 0),
(16, 2, 29, 17, 0),
(17, 2, 29, 18, 0),
(18, 2, 29, 19, 0),
(19, 2, 29, 20, 0),
(20, 2, 29, 21, 0),
(21, 2, 29, 22, 0),
(22, 2, 29, 23, 0),
(23, 2, 29, 24, 0),
(24, 2, 29, 25, 0),
(25, 2, 29, 26, 0),
(26, 2, 29, 27, 0),
(27, 2, 29, 28, 0),
(28, 2, 29, 29, 0),
(29, 2, 29, 30, 0),
(30, 2, 29, 31, 0),
(31, 2, 29, 32, 0),
(32, 2, 29, 33, 0),
(33, 2, 29, 34, 0),
(34, 2, 29, 35, 0),
(35, 2, 29, 36, 0),
(36, 2, 29, 37, 0),
(37, 2, 29, 38, 0),
(38, 2, 29, 39, 0),
(39, 2, 29, 40, 0),
(40, 2, 29, 41, 0),
(41, 2, 29, 42, 0),
(42, 2, 29, 43, 0),
(43, 2, 29, 44, 0),
(44, 2, 29, 45, 0),
(45, 2, 29, 46, 0),
(46, 2, 29, 47, 0),
(47, 2, 29, 48, 0),
(48, 2, 29, 49, 0),
(49, 2, 29, 50, 0),
(50, 2, 29, 51, 0),
(51, 2, 29, 52, 0),
(52, 2, 29, 53, 0),
(53, 2, 29, 54, 0),
(54, 2, 29, 55, 0),
(55, 2, 29, 56, 0),
(56, 2, 29, 57, 0),
(57, 2, 29, 58, 0),
(58, 2, 29, 59, 0);

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `customer_address_entity_text`
--

INSERT INTO `customer_address_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 25, 1, 'address1\naddress2'),
(2, 2, 25, 2, 'estreet1\nestreet2'),
(3, 2, 25, 3, 's111\ns222'),
(4, 2, 25, 4, 't111\nt222'),
(5, 2, 25, 7, '南京市将计就计\n'),
(6, 2, 25, 8, '南京市47号\n'),
(7, 2, 25, 9, '南京市南京双赢花园\n'),
(8, 2, 25, 10, '南京市上海浦东\n'),
(9, 2, 25, 11, '南京市石门坎苏果超市森达\n'),
(10, 2, 25, 12, '南京市珠江路588号\n'),
(11, 2, 25, 13, '南京市普华巷3号\n'),
(12, 2, 25, 14, '南京市南京大行宫新世纪广场A栋2602\n'),
(13, 2, 25, 15, '南京市创智天地\n'),
(14, 2, 25, 16, '南京市杨浦区\n'),
(15, 2, 25, 17, '上海市杨浦区五角场街道605\n'),
(16, 2, 25, 18, '上海市杨浦区殷行街道1231231\n'),
(17, 2, 25, 19, '上海市杨浦区殷行街道杨浦区殷行街道上海市杨浦区殷行街道1231231\n留言备注'),
(18, 2, 25, 20, '南京市上大\n'),
(19, 2, 25, 21, '新世界中心a座2002现场购买\n'),
(20, 2, 25, 22, '南京市雅居乐\n'),
(21, 2, 25, 23, '南京市南京江宁区百家湖巴黎城\n'),
(22, 2, 25, 24, '南京市乌兰察布路\n'),
(23, 2, 25, 25, '南京市延安西路900号\n'),
(24, 2, 25, 26, '南京市汉口路300号806室\n'),
(25, 2, 25, 27, '南京市秦淮区三条巷137号609\n'),
(26, 2, 25, 28, '南京市三条巷\n'),
(27, 2, 25, 29, '南京市秦淮区仁寿里4号，刘振源收，电话13601407796\n'),
(28, 2, 25, 30, '南京市秦淮区\n'),
(29, 2, 25, 31, '南京市南京市浦口区京新街道608号威尼斯水城五街区12栋3单元406室\n'),
(30, 2, 25, 32, '南京市塘沽呵分翰府\n'),
(31, 2, 25, 33, '南京市南京林业大学\n'),
(32, 2, 25, 34, '南京市江宁区丽泽路五矿九玺台17/202\n自取'),
(33, 2, 25, 35, '南京市江宁区秦淮路2号江宁国税局\n'),
(34, 2, 25, 36, '南京市长发中心 测试 现场购买\n'),
(35, 2, 25, 37, '南京市河西商圈新地中心27/202\n'),
(36, 2, 25, 38, '南京市河西商圈新地中心河西商圈新地中心南京市河西商圈新地中心27/202\n留言备注'),
(37, 2, 25, 39, '南京市\n'),
(38, 2, 25, 40, '南京市1\n'),
(39, 2, 25, 41, '南京市开发区通淮街頤秀居\n'),
(40, 2, 25, 42, '南京市南京市秦淮区石门坎104号光华科技园C幢701室\n'),
(41, 2, 25, 43, '南京市南京\n'),
(42, 2, 25, 44, '南京市双瀛花园11幢1105室\n'),
(43, 2, 25, 45, '南京市水阁路\n'),
(44, 2, 25, 46, '南京市奥林花园\n'),
(45, 2, 25, 47, '南京市保利\n'),
(46, 2, 25, 48, '南京市比具体\n'),
(47, 2, 25, 49, '南京市鼓楼区紫峰大厦副楼27层\n让李梦菲带回来就好了 不用送货了'),
(48, 2, 25, 50, '南京市双赢花园4栋103\n'),
(49, 2, 25, 51, '南京市雨花区西善桥福润雅居83幢2单602室\n分5箱'),
(50, 2, 25, 52, '南京市新地中心一期40楼\n交给梦菲就行了 不用送货'),
(51, 2, 25, 53, '南京市南京市玄武区珠江路588号未来城B座四楼\n'),
(52, 2, 25, 54, '南京市南京航空航天大学江宁校区小北门（大众汽车对面）\n'),
(53, 2, 25, 55, '南京市应天大街689号赛虹桥街道办事处\n橙子20个装一箱 周日送货'),
(54, 2, 25, 56, '南京市啊\n'),
(55, 2, 25, 57, '南京市锁金六村1栋2单元504室\n'),
(56, 2, 25, 58, '南京市南京市秦淮区大辉复巷五号\n'),
(57, 2, 25, 59, '南京市你的\n');

-- --------------------------------------------------------

--
-- 表的结构 `customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=724 ;

--
-- 转存表中的数据 `customer_address_entity_varchar`
--

INSERT INTO `customer_address_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 2, 20, 1, 'daemon'),
(2, 2, 22, 1, 'wang'),
(3, 2, 26, 1, 'Nanjing'),
(4, 2, 28, 1, 'Jiangsu'),
(5, 2, 30, 1, '210000'),
(6, 2, 27, 1, 'CN'),
(7, 2, 31, 1, '15151834774'),
(8, 2, 20, 2, 'daemon'),
(9, 2, 22, 2, 'wang'),
(10, 2, 24, 2, 'ecompany'),
(11, 2, 26, 2, 'enanjing'),
(12, 2, 27, 2, 'CN'),
(13, 2, 28, 2, 'ejiangsu'),
(14, 2, 30, 2, '123456'),
(15, 2, 31, 2, '11111111111'),
(16, 2, 32, 2, 'efax'),
(17, 2, 20, 3, 'daemon'),
(18, 2, 22, 3, 'wang'),
(19, 2, 24, 3, 'meiguo'),
(20, 2, 26, 3, 'snanjing'),
(21, 2, 27, 3, 'CN'),
(22, 2, 28, 3, 'snanjing'),
(23, 2, 30, 3, 's123456'),
(24, 2, 31, 3, '22222222222'),
(25, 2, 32, 3, '222222'),
(26, 2, 20, 4, '18604509832'),
(27, 2, 22, 4, 'test'),
(28, 2, 24, 4, 'tcom'),
(29, 2, 26, 4, 'tnanjing'),
(30, 2, 27, 4, 'CN'),
(31, 2, 28, 4, 'tjiangsu'),
(32, 2, 30, 4, 't123456'),
(33, 2, 31, 4, '3333333333'),
(34, 2, 32, 4, 'tfax'),
(35, 2, 20, 7, ''),
(36, 2, 22, 7, ''),
(37, 2, 26, 7, '南京市'),
(38, 2, 28, 7, '江苏省'),
(39, 2, 30, 7, '210000'),
(40, 2, 27, 7, 'CN'),
(41, 2, 31, 7, ''),
(42, 2, 32, 7, ''),
(43, 2, 139, 7, '890'),
(44, 2, 140, 7, ''),
(45, 2, 141, 7, ''),
(46, 2, 142, 7, ''),
(47, 2, 143, 7, '1426546813'),
(48, 2, 20, 8, ''),
(49, 2, 22, 8, ''),
(50, 2, 26, 8, '南京市'),
(51, 2, 28, 8, '江苏省'),
(52, 2, 30, 8, '210000'),
(53, 2, 27, 8, 'CN'),
(54, 2, 31, 8, ''),
(55, 2, 32, 8, ''),
(56, 2, 139, 8, '478'),
(57, 2, 140, 8, ''),
(58, 2, 141, 8, ''),
(59, 2, 142, 8, ''),
(60, 2, 143, 8, '1425072992'),
(61, 2, 20, 9, ''),
(62, 2, 22, 9, ''),
(63, 2, 26, 9, '南京市'),
(64, 2, 28, 9, '江苏省'),
(65, 2, 30, 9, '210000'),
(66, 2, 27, 9, 'CN'),
(67, 2, 31, 9, ''),
(68, 2, 32, 9, ''),
(69, 2, 139, 9, '33'),
(70, 2, 140, 9, ''),
(71, 2, 141, 9, ''),
(72, 2, 142, 9, ''),
(73, 2, 143, 9, '1423174049'),
(74, 2, 20, 10, ''),
(75, 2, 22, 10, ''),
(76, 2, 26, 10, '南京市'),
(77, 2, 28, 10, '江苏省'),
(78, 2, 30, 10, '210000'),
(79, 2, 27, 10, 'CN'),
(80, 2, 31, 10, ''),
(81, 2, 32, 10, ''),
(82, 2, 139, 10, '451'),
(83, 2, 140, 10, ''),
(84, 2, 141, 10, ''),
(85, 2, 142, 10, ''),
(86, 2, 143, 10, '1424593999'),
(87, 2, 20, 11, '马平平'),
(88, 2, 22, 11, ''),
(89, 2, 26, 11, '南京市'),
(90, 2, 28, 11, '江苏省'),
(91, 2, 30, 11, '210000'),
(92, 2, 27, 11, 'CN'),
(93, 2, 31, 11, '18994027344'),
(94, 2, 32, 11, ''),
(95, 2, 139, 11, '2344'),
(96, 2, 140, 11, ''),
(97, 2, 141, 11, ''),
(98, 2, 142, 11, ''),
(99, 2, 143, 11, '0'),
(100, 2, 20, 12, ''),
(101, 2, 22, 12, ''),
(102, 2, 26, 12, '南京市'),
(103, 2, 28, 12, '江苏省'),
(104, 2, 30, 12, '210000'),
(105, 2, 27, 12, 'CN'),
(106, 2, 31, 12, ''),
(107, 2, 32, 12, ''),
(108, 2, 139, 12, '110'),
(109, 2, 140, 12, ''),
(110, 2, 141, 12, ''),
(111, 2, 142, 12, ''),
(112, 2, 143, 12, '1429643102'),
(113, 2, 20, 13, ''),
(114, 2, 22, 13, ''),
(115, 2, 26, 13, '南京市'),
(116, 2, 28, 13, '江苏省'),
(117, 2, 30, 13, '210000'),
(118, 2, 27, 13, 'CN'),
(119, 2, 31, 13, ''),
(120, 2, 32, 13, ''),
(121, 2, 139, 13, '58'),
(122, 2, 140, 13, ''),
(123, 2, 141, 13, ''),
(124, 2, 142, 13, ''),
(125, 2, 143, 13, '1423368085'),
(126, 2, 20, 14, '蔡顺洁测试'),
(127, 2, 22, 14, ''),
(128, 2, 26, 14, '南京市'),
(129, 2, 28, 14, '江苏省'),
(130, 2, 30, 14, '210000'),
(131, 2, 27, 14, 'CN'),
(132, 2, 31, 14, '13916318387'),
(133, 2, 32, 14, ''),
(134, 2, 139, 14, '11589'),
(135, 2, 140, 14, ''),
(136, 2, 141, 14, ''),
(137, 2, 142, 14, ''),
(138, 2, 143, 14, '0'),
(139, 2, 20, 15, '蔡顺洁测试'),
(140, 2, 22, 15, ''),
(141, 2, 26, 15, '南京市'),
(142, 2, 28, 15, '江苏省'),
(143, 2, 30, 15, '210000'),
(144, 2, 27, 15, 'CN'),
(145, 2, 31, 15, '13916318387'),
(146, 2, 32, 15, ''),
(147, 2, 139, 15, '11005'),
(148, 2, 140, 15, ''),
(149, 2, 141, 15, ''),
(150, 2, 142, 15, ''),
(151, 2, 143, 15, '0'),
(152, 2, 20, 16, '蔡顺洁测试'),
(153, 2, 22, 16, ''),
(154, 2, 26, 16, '南京市'),
(155, 2, 28, 16, '江苏省'),
(156, 2, 30, 16, '210000'),
(157, 2, 27, 16, 'CN'),
(158, 2, 31, 16, '13916318387'),
(159, 2, 32, 16, ''),
(160, 2, 139, 16, '11509'),
(161, 2, 140, 16, ''),
(162, 2, 141, 16, ''),
(163, 2, 142, 16, ''),
(164, 2, 143, 16, '0'),
(165, 2, 20, 17, '蔡顺洁'),
(166, 2, 22, 17, ''),
(167, 2, 26, 17, '上海市'),
(168, 2, 28, 17, '上海市'),
(169, 2, 30, 17, '200000'),
(170, 2, 27, 17, 'CN'),
(171, 2, 31, 17, '12312345123'),
(172, 2, 32, 17, ''),
(173, 2, 139, 17, '12535'),
(174, 2, 140, 17, '杨浦区'),
(175, 2, 141, 17, '五角场街道'),
(176, 2, 142, 17, ''),
(177, 2, 143, 17, '1436479918'),
(178, 2, 20, 18, '啥'),
(179, 2, 22, 18, ''),
(180, 2, 26, 18, '上海市'),
(181, 2, 28, 18, '上海市'),
(182, 2, 30, 18, '200000'),
(183, 2, 27, 18, 'CN'),
(184, 2, 31, 18, '12312312311'),
(185, 2, 32, 18, ''),
(186, 2, 139, 18, '12536'),
(187, 2, 140, 18, '杨浦区'),
(188, 2, 141, 18, '殷行街道'),
(189, 2, 142, 18, ''),
(190, 2, 143, 18, '1436481282'),
(191, 2, 20, 19, '啥'),
(192, 2, 22, 19, ''),
(193, 2, 26, 19, '上海市'),
(194, 2, 28, 19, '上海市'),
(195, 2, 30, 19, '200000'),
(196, 2, 27, 19, 'CN'),
(197, 2, 31, 19, '12312312311'),
(198, 2, 32, 19, ''),
(199, 2, 139, 19, '12537'),
(200, 2, 140, 19, '杨浦区'),
(201, 2, 141, 19, '殷行街道'),
(202, 2, 142, 19, '留言备注'),
(203, 2, 143, 19, '0'),
(204, 2, 20, 20, ''),
(205, 2, 22, 20, ''),
(206, 2, 26, 20, '南京市'),
(207, 2, 28, 20, '江苏省'),
(208, 2, 30, 20, '210000'),
(209, 2, 27, 20, 'CN'),
(210, 2, 31, 20, ''),
(211, 2, 32, 20, ''),
(212, 2, 139, 20, '281'),
(213, 2, 140, 20, ''),
(214, 2, 141, 20, ''),
(215, 2, 142, 20, ''),
(216, 2, 143, 20, '1429573371'),
(217, 2, 20, 21, '朱路'),
(218, 2, 22, 21, ''),
(219, 2, 26, 21, ''),
(220, 2, 28, 21, ' '),
(221, 2, 30, 21, ''),
(222, 2, 27, 21, 'CN'),
(223, 2, 31, 21, '13952096559'),
(224, 2, 32, 21, ''),
(225, 2, 139, 21, '12090'),
(226, 2, 140, 21, ''),
(227, 2, 141, 21, ''),
(228, 2, 142, 21, ''),
(229, 2, 143, 21, '0'),
(230, 2, 20, 22, ''),
(231, 2, 22, 22, ''),
(232, 2, 26, 22, '南京市'),
(233, 2, 28, 22, '江苏省'),
(234, 2, 30, 22, '210000'),
(235, 2, 27, 22, 'CN'),
(236, 2, 31, 22, ''),
(237, 2, 32, 22, ''),
(238, 2, 139, 22, '470'),
(239, 2, 140, 22, ''),
(240, 2, 141, 22, ''),
(241, 2, 142, 22, ''),
(242, 2, 143, 22, '1430605204'),
(243, 2, 20, 23, '杨太忠'),
(244, 2, 22, 23, ''),
(245, 2, 26, 23, '南京市'),
(246, 2, 28, 23, '江苏省'),
(247, 2, 30, 23, '210000'),
(248, 2, 27, 23, 'CN'),
(249, 2, 31, 23, '15850645016'),
(250, 2, 32, 23, ''),
(251, 2, 139, 23, '136'),
(252, 2, 140, 23, ''),
(253, 2, 141, 23, ''),
(254, 2, 142, 23, ''),
(255, 2, 143, 23, '0'),
(256, 2, 20, 24, ''),
(257, 2, 22, 24, ''),
(258, 2, 26, 24, '南京市'),
(259, 2, 28, 24, '江苏省'),
(260, 2, 30, 24, '210000'),
(261, 2, 27, 24, 'CN'),
(262, 2, 31, 24, ''),
(263, 2, 32, 24, ''),
(264, 2, 139, 24, '323'),
(265, 2, 140, 24, ''),
(266, 2, 141, 24, ''),
(267, 2, 142, 24, ''),
(268, 2, 143, 24, '1423105154'),
(269, 2, 20, 25, ''),
(270, 2, 22, 25, ''),
(271, 2, 26, 25, '南京市'),
(272, 2, 28, 25, '江苏省'),
(273, 2, 30, 25, '210000'),
(274, 2, 27, 25, 'CN'),
(275, 2, 31, 25, ''),
(276, 2, 32, 25, ''),
(277, 2, 139, 25, '278'),
(278, 2, 140, 25, ''),
(279, 2, 141, 25, ''),
(280, 2, 142, 25, ''),
(281, 2, 143, 25, '1422602686'),
(282, 2, 20, 26, ''),
(283, 2, 22, 26, ''),
(284, 2, 26, 26, '南京市'),
(285, 2, 28, 26, '江苏省'),
(286, 2, 30, 26, '210000'),
(287, 2, 27, 26, 'CN'),
(288, 2, 31, 26, ''),
(289, 2, 32, 26, ''),
(290, 2, 139, 26, '615'),
(291, 2, 140, 26, ''),
(292, 2, 141, 26, ''),
(293, 2, 142, 26, ''),
(294, 2, 143, 26, '1425703358'),
(295, 2, 20, 27, '张雪'),
(296, 2, 22, 27, ''),
(297, 2, 26, 27, '南京市'),
(298, 2, 28, 27, '江苏省'),
(299, 2, 30, 27, '210000'),
(300, 2, 27, 27, 'CN'),
(301, 2, 31, 27, '15295520531'),
(302, 2, 32, 27, ''),
(303, 2, 139, 27, '322'),
(304, 2, 140, 27, ''),
(305, 2, 141, 27, ''),
(306, 2, 142, 27, ''),
(307, 2, 143, 27, '1430959521'),
(308, 2, 20, 28, ''),
(309, 2, 22, 28, ''),
(310, 2, 26, 28, '南京市'),
(311, 2, 28, 28, '江苏省'),
(312, 2, 30, 28, '210000'),
(313, 2, 27, 28, 'CN'),
(314, 2, 31, 28, ''),
(315, 2, 32, 28, ''),
(316, 2, 139, 28, '382'),
(317, 2, 140, 28, ''),
(318, 2, 141, 28, ''),
(319, 2, 142, 28, ''),
(320, 2, 143, 28, '1423977914'),
(321, 2, 20, 29, ''),
(322, 2, 22, 29, ''),
(323, 2, 26, 29, '南京市'),
(324, 2, 28, 29, '江苏省'),
(325, 2, 30, 29, '210000'),
(326, 2, 27, 29, 'CN'),
(327, 2, 31, 29, ''),
(328, 2, 32, 29, ''),
(329, 2, 139, 29, '429'),
(330, 2, 140, 29, ''),
(331, 2, 141, 29, ''),
(332, 2, 142, 29, ''),
(333, 2, 143, 29, '1425865455'),
(334, 2, 20, 30, '孙卫华'),
(335, 2, 22, 30, ''),
(336, 2, 26, 30, '南京市'),
(337, 2, 28, 30, '江苏省'),
(338, 2, 30, 30, '210000'),
(339, 2, 27, 30, 'CN'),
(340, 2, 31, 30, '18951821118'),
(341, 2, 32, 30, ''),
(342, 2, 139, 30, '432'),
(343, 2, 140, 30, ''),
(344, 2, 141, 30, ''),
(345, 2, 142, 30, ''),
(346, 2, 143, 30, '0'),
(347, 2, 20, 31, ''),
(348, 2, 22, 31, ''),
(349, 2, 26, 31, '南京市'),
(350, 2, 28, 31, '江苏省'),
(351, 2, 30, 31, '210000'),
(352, 2, 27, 31, 'CN'),
(353, 2, 31, 31, ''),
(354, 2, 32, 31, ''),
(355, 2, 139, 31, '472'),
(356, 2, 140, 31, ''),
(357, 2, 141, 31, ''),
(358, 2, 142, 31, ''),
(359, 2, 143, 31, '1425329080'),
(360, 2, 20, 32, ''),
(361, 2, 22, 32, ''),
(362, 2, 26, 32, '南京市'),
(363, 2, 28, 32, '江苏省'),
(364, 2, 30, 32, '210000'),
(365, 2, 27, 32, 'CN'),
(366, 2, 31, 32, ''),
(367, 2, 32, 32, ''),
(368, 2, 139, 32, '237'),
(369, 2, 140, 32, ''),
(370, 2, 141, 32, ''),
(371, 2, 142, 32, ''),
(372, 2, 143, 32, '1425973576'),
(373, 2, 20, 33, '封花'),
(374, 2, 22, 33, ''),
(375, 2, 26, 33, '南京市'),
(376, 2, 28, 33, '江苏省'),
(377, 2, 30, 33, '210000'),
(378, 2, 27, 33, 'CN'),
(379, 2, 31, 33, '13770586220'),
(380, 2, 32, 33, ''),
(381, 2, 139, 33, '245'),
(382, 2, 140, 33, ''),
(383, 2, 141, 33, ''),
(384, 2, 142, 33, ''),
(385, 2, 143, 33, '1432005435'),
(386, 2, 20, 34, '李梦菲'),
(387, 2, 22, 34, ''),
(388, 2, 26, 34, '南京市'),
(389, 2, 28, 34, '江苏省'),
(390, 2, 30, 34, '210000'),
(391, 2, 27, 34, 'CN'),
(392, 2, 31, 34, '13770961049'),
(393, 2, 32, 34, ''),
(394, 2, 139, 34, '480'),
(395, 2, 140, 34, ''),
(396, 2, 141, 34, ''),
(397, 2, 142, 34, '自取'),
(398, 2, 143, 34, '0'),
(399, 2, 20, 35, '李建芳'),
(400, 2, 22, 35, ''),
(401, 2, 26, 35, '南京市'),
(402, 2, 28, 35, '江苏省'),
(403, 2, 30, 35, '210000'),
(404, 2, 27, 35, 'CN'),
(405, 2, 31, 35, '13851867828'),
(406, 2, 32, 35, ''),
(407, 2, 139, 35, '504'),
(408, 2, 140, 35, ''),
(409, 2, 141, 35, ''),
(410, 2, 142, 35, ''),
(411, 2, 143, 35, '1435184634'),
(412, 2, 20, 36, '李梦菲'),
(413, 2, 22, 36, ''),
(414, 2, 26, 36, '南京市'),
(415, 2, 28, 36, '江苏省'),
(416, 2, 30, 36, '210000'),
(417, 2, 27, 36, 'CN'),
(418, 2, 31, 36, '137709610'),
(419, 2, 32, 36, ''),
(420, 2, 139, 36, '10986'),
(421, 2, 140, 36, ''),
(422, 2, 141, 36, ''),
(423, 2, 142, 36, ''),
(424, 2, 143, 36, '0'),
(425, 2, 20, 37, '李梦菲'),
(426, 2, 22, 37, ''),
(427, 2, 26, 37, '南京市'),
(428, 2, 28, 37, '江苏省'),
(429, 2, 30, 37, '210000'),
(430, 2, 27, 37, 'CN'),
(431, 2, 31, 37, '13770961049'),
(432, 2, 32, 37, ''),
(433, 2, 139, 37, '12551'),
(434, 2, 140, 37, '河西商圈'),
(435, 2, 141, 37, '新地中心'),
(436, 2, 142, 37, ''),
(437, 2, 143, 37, '1436831999'),
(438, 2, 20, 38, '李梦菲'),
(439, 2, 22, 38, ''),
(440, 2, 26, 38, '南京市'),
(441, 2, 28, 38, '江苏省'),
(442, 2, 30, 38, '210000'),
(443, 2, 27, 38, 'CN'),
(444, 2, 31, 38, '13770961049'),
(445, 2, 32, 38, ''),
(446, 2, 139, 38, '12552'),
(447, 2, 140, 38, '河西商圈'),
(448, 2, 141, 38, '新地中心'),
(449, 2, 142, 38, '留言备注'),
(450, 2, 143, 38, '0'),
(451, 2, 20, 39, ''),
(452, 2, 22, 39, ''),
(453, 2, 26, 39, '南京市'),
(454, 2, 28, 39, '江苏省'),
(455, 2, 30, 39, '210000'),
(456, 2, 27, 39, 'CN'),
(457, 2, 31, 39, ''),
(458, 2, 32, 39, ''),
(459, 2, 139, 39, '29'),
(460, 2, 140, 39, ''),
(461, 2, 141, 39, ''),
(462, 2, 142, 39, ''),
(463, 2, 143, 39, '1421610471'),
(464, 2, 20, 40, ''),
(465, 2, 22, 40, ''),
(466, 2, 26, 40, '南京市'),
(467, 2, 28, 40, '江苏省'),
(468, 2, 30, 40, '210000'),
(469, 2, 27, 40, 'CN'),
(470, 2, 31, 40, ''),
(471, 2, 32, 40, ''),
(472, 2, 139, 40, '216'),
(473, 2, 140, 40, ''),
(474, 2, 141, 40, ''),
(475, 2, 142, 40, ''),
(476, 2, 143, 40, '1425935622'),
(477, 2, 20, 41, '叶青'),
(478, 2, 22, 41, ''),
(479, 2, 26, 41, '南京市'),
(480, 2, 28, 41, '江苏省'),
(481, 2, 30, 41, '210000'),
(482, 2, 27, 41, 'CN'),
(483, 2, 31, 41, '18936879009'),
(484, 2, 32, 41, ''),
(485, 2, 139, 41, '127'),
(486, 2, 140, 41, ''),
(487, 2, 141, 41, ''),
(488, 2, 142, 41, ''),
(489, 2, 143, 41, '1425085884'),
(490, 2, 20, 42, '孟婧'),
(491, 2, 22, 42, ''),
(492, 2, 26, 42, '南京市'),
(493, 2, 28, 42, '江苏省'),
(494, 2, 30, 42, '210000'),
(495, 2, 27, 42, 'CN'),
(496, 2, 31, 42, '17600833170'),
(497, 2, 32, 42, ''),
(498, 2, 139, 42, '74'),
(499, 2, 140, 42, ''),
(500, 2, 141, 42, ''),
(501, 2, 142, 42, ''),
(502, 2, 143, 42, '1426195481'),
(503, 2, 20, 43, ''),
(504, 2, 22, 43, ''),
(505, 2, 26, 43, '南京市'),
(506, 2, 28, 43, '江苏省'),
(507, 2, 30, 43, '210000'),
(508, 2, 27, 43, 'CN'),
(509, 2, 31, 43, ''),
(510, 2, 32, 43, ''),
(511, 2, 139, 43, '13'),
(512, 2, 140, 43, ''),
(513, 2, 141, 43, ''),
(514, 2, 142, 43, ''),
(515, 2, 143, 43, '1423889311'),
(516, 2, 20, 44, '明天下午一点半前家里有人'),
(517, 2, 22, 44, ''),
(518, 2, 26, 44, '南京市'),
(519, 2, 28, 44, '江苏省'),
(520, 2, 30, 44, '210000'),
(521, 2, 27, 44, 'CN'),
(522, 2, 31, 44, '13951969942'),
(523, 2, 32, 44, ''),
(524, 2, 139, 44, '308'),
(525, 2, 140, 44, ''),
(526, 2, 141, 44, ''),
(527, 2, 142, 44, ''),
(528, 2, 143, 44, '0'),
(529, 2, 20, 45, ''),
(530, 2, 22, 45, ''),
(531, 2, 26, 45, '南京市'),
(532, 2, 28, 45, '江苏省'),
(533, 2, 30, 45, '210000'),
(534, 2, 27, 45, 'CN'),
(535, 2, 31, 45, ''),
(536, 2, 32, 45, ''),
(537, 2, 139, 45, '370'),
(538, 2, 140, 45, ''),
(539, 2, 141, 45, ''),
(540, 2, 142, 45, ''),
(541, 2, 143, 45, '1423453164'),
(542, 2, 20, 46, ''),
(543, 2, 22, 46, ''),
(544, 2, 26, 46, '南京市'),
(545, 2, 28, 46, '江苏省'),
(546, 2, 30, 46, '210000'),
(547, 2, 27, 46, 'CN'),
(548, 2, 31, 46, ''),
(549, 2, 32, 46, ''),
(550, 2, 139, 46, '134'),
(551, 2, 140, 46, ''),
(552, 2, 141, 46, ''),
(553, 2, 142, 46, ''),
(554, 2, 143, 46, '1421912132'),
(555, 2, 20, 47, ''),
(556, 2, 22, 47, ''),
(557, 2, 26, 47, '南京市'),
(558, 2, 28, 47, '江苏省'),
(559, 2, 30, 47, '210000'),
(560, 2, 27, 47, 'CN'),
(561, 2, 31, 47, ''),
(562, 2, 32, 47, ''),
(563, 2, 139, 47, '207'),
(564, 2, 140, 47, ''),
(565, 2, 141, 47, ''),
(566, 2, 142, 47, ''),
(567, 2, 143, 47, '1422039254'),
(568, 2, 20, 48, ''),
(569, 2, 22, 48, ''),
(570, 2, 26, 48, '南京市'),
(571, 2, 28, 48, '江苏省'),
(572, 2, 30, 48, '210000'),
(573, 2, 27, 48, 'CN'),
(574, 2, 31, 48, ''),
(575, 2, 32, 48, ''),
(576, 2, 139, 48, '315'),
(577, 2, 140, 48, ''),
(578, 2, 141, 48, ''),
(579, 2, 142, 48, ''),
(580, 2, 143, 48, '1430680533'),
(581, 2, 20, 49, '邵术龙'),
(582, 2, 22, 49, ''),
(583, 2, 26, 49, '南京市'),
(584, 2, 28, 49, '江苏省'),
(585, 2, 30, 49, '210000'),
(586, 2, 27, 49, 'CN'),
(587, 2, 31, 49, '18502228621'),
(588, 2, 32, 49, ''),
(589, 2, 139, 49, '231'),
(590, 2, 140, 49, ''),
(591, 2, 141, 49, ''),
(592, 2, 142, 49, '让李梦菲带回来就好了 不用送货了'),
(593, 2, 143, 49, '1427869840'),
(594, 2, 20, 50, '邵术龙'),
(595, 2, 22, 50, ''),
(596, 2, 26, 50, '南京市'),
(597, 2, 28, 50, '江苏省'),
(598, 2, 30, 50, '210000'),
(599, 2, 27, 50, 'CN'),
(600, 2, 31, 50, '18502228621'),
(601, 2, 32, 50, ''),
(602, 2, 139, 50, '236'),
(603, 2, 140, 50, ''),
(604, 2, 141, 50, ''),
(605, 2, 142, 50, ''),
(606, 2, 143, 50, '1427869377'),
(607, 2, 20, 51, '齐先生'),
(608, 2, 22, 51, ''),
(609, 2, 26, 51, '南京市'),
(610, 2, 28, 51, '江苏省'),
(611, 2, 30, 51, '210000'),
(612, 2, 27, 51, 'CN'),
(613, 2, 31, 51, '13905181101'),
(614, 2, 32, 51, ''),
(615, 2, 139, 51, '445'),
(616, 2, 140, 51, ''),
(617, 2, 141, 51, ''),
(618, 2, 142, 51, '分5箱'),
(619, 2, 143, 51, '1424051413'),
(620, 2, 20, 52, '邵术龙'),
(621, 2, 22, 52, ''),
(622, 2, 26, 52, '南京市'),
(623, 2, 28, 52, '江苏省'),
(624, 2, 30, 52, '210000'),
(625, 2, 27, 52, 'CN'),
(626, 2, 31, 52, '18502228621'),
(627, 2, 32, 52, ''),
(628, 2, 139, 52, '2219'),
(629, 2, 140, 52, ''),
(630, 2, 141, 52, ''),
(631, 2, 142, 52, '交给梦菲就行了 不用送货'),
(632, 2, 143, 52, '1429478200'),
(633, 2, 20, 53, ''),
(634, 2, 22, 53, ''),
(635, 2, 26, 53, '南京市'),
(636, 2, 28, 53, '江苏省'),
(637, 2, 30, 53, '210000'),
(638, 2, 27, 53, 'CN'),
(639, 2, 31, 53, ''),
(640, 2, 32, 53, ''),
(641, 2, 139, 53, '222'),
(642, 2, 140, 53, ''),
(643, 2, 141, 53, ''),
(644, 2, 142, 53, ''),
(645, 2, 143, 53, '1426887167'),
(646, 2, 20, 54, ''),
(647, 2, 22, 54, ''),
(648, 2, 26, 54, '南京市'),
(649, 2, 28, 54, '江苏省'),
(650, 2, 30, 54, '210000'),
(651, 2, 27, 54, 'CN'),
(652, 2, 31, 54, ''),
(653, 2, 32, 54, ''),
(654, 2, 139, 54, '296'),
(655, 2, 140, 54, ''),
(656, 2, 141, 54, ''),
(657, 2, 142, 54, ''),
(658, 2, 143, 54, '1424171413'),
(659, 2, 20, 55, '张婷婷'),
(660, 2, 22, 55, ''),
(661, 2, 26, 55, '南京市'),
(662, 2, 28, 55, '江苏省'),
(663, 2, 30, 55, '210000'),
(664, 2, 27, 55, 'CN'),
(665, 2, 31, 55, '13813858699'),
(666, 2, 32, 55, ''),
(667, 2, 139, 55, '430'),
(668, 2, 140, 55, ''),
(669, 2, 141, 55, ''),
(670, 2, 142, 55, '橙子20个装一箱 周日送货'),
(671, 2, 143, 55, '0'),
(672, 2, 20, 56, ''),
(673, 2, 22, 56, ''),
(674, 2, 26, 56, '南京市'),
(675, 2, 28, 56, '江苏省'),
(676, 2, 30, 56, '210000'),
(677, 2, 27, 56, 'CN'),
(678, 2, 31, 56, ''),
(679, 2, 32, 56, ''),
(680, 2, 139, 56, '206'),
(681, 2, 140, 56, ''),
(682, 2, 141, 56, ''),
(683, 2, 142, 56, ''),
(684, 2, 143, 56, '1422727373'),
(685, 2, 20, 57, ''),
(686, 2, 22, 57, ''),
(687, 2, 26, 57, '南京市'),
(688, 2, 28, 57, '江苏省'),
(689, 2, 30, 57, '210000'),
(690, 2, 27, 57, 'CN'),
(691, 2, 31, 57, ''),
(692, 2, 32, 57, ''),
(693, 2, 139, 57, '1692'),
(694, 2, 140, 57, ''),
(695, 2, 141, 57, ''),
(696, 2, 142, 57, ''),
(697, 2, 143, 57, '1432853865'),
(698, 2, 20, 58, ''),
(699, 2, 22, 58, ''),
(700, 2, 26, 58, '南京市'),
(701, 2, 28, 58, '江苏省'),
(702, 2, 30, 58, '210000'),
(703, 2, 27, 58, 'CN'),
(704, 2, 31, 58, ''),
(705, 2, 32, 58, ''),
(706, 2, 139, 58, '221'),
(707, 2, 140, 58, ''),
(708, 2, 141, 58, ''),
(709, 2, 142, 58, ''),
(710, 2, 143, 58, '1422133435'),
(711, 2, 20, 59, ''),
(712, 2, 22, 59, ''),
(713, 2, 26, 59, '南京市'),
(714, 2, 28, 59, '江苏省'),
(715, 2, 30, 59, '210000'),
(716, 2, 27, 59, 'CN'),
(717, 2, 31, 59, ''),
(718, 2, 32, 59, ''),
(719, 2, 139, 59, '79'),
(720, 2, 140, 59, ''),
(721, 2, 141, 59, ''),
(722, 2, 142, 59, ''),
(723, 2, 143, 59, '1430883424');

-- --------------------------------------------------------

--
-- 表的结构 `customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- 转存表中的数据 `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity`
--

CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=143 ;

--
-- 转存表中的数据 `customer_entity`
--

INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
(1, 1, 0, 1, '15151834774@meiguoyouxian.com', 1, NULL, 1, '2015-07-16 03:50:28', '2015-07-23 00:17:44', 1, 0),
(2, 1, 0, 1, 'hb4daemon@126.com', 1, NULL, 1, '2015-07-17 04:11:42', '2015-07-17 04:11:42', 1, 0),
(3, 1, 0, 1, '13852650796@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 11:00:07', '2015-07-23 01:31:23', 1, 0),
(4, 1, 0, 1, '18116342840@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 11:02:02', '2015-07-23 01:31:24', 1, 0),
(5, 1, 0, 1, '18604509832@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 11:03:40', '2015-07-23 01:56:25', 1, 0),
(6, 1, 0, 1, '15821653533@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 12:00:49', '2015-07-23 01:31:25', 1, 0),
(7, 1, 0, 1, '18616677987@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 14:13:36', '2015-07-23 01:31:26', 1, 0),
(8, 1, 0, 1, '13566643644@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 16:37:11', '2015-07-23 01:31:26', 1, 0),
(9, 1, 0, 1, '15380829146@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 17:44:09', '2015-07-23 01:31:27', 1, 0),
(10, 1, 0, 1, '18951603003@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 18:10:58', '2015-07-23 01:31:27', 1, 0),
(11, 1, 0, 1, '18513763142@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 21:48:08', '2015-07-23 01:31:28', 1, 0),
(12, 1, 0, 1, '13588863726@meiguoyouxian.com', 1, NULL, 1, '2014-12-14 23:47:00', '2015-07-23 01:31:29', 1, 0),
(13, 1, 0, 1, '13223022613@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 00:19:58', '2015-07-23 01:31:29', 1, 0),
(14, 1, 0, 1, '18166821828@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 09:24:31', '2015-07-23 01:31:30', 1, 0),
(15, 1, 0, 1, '15380830091@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 11:03:39', '2015-07-23 01:31:31', 1, 0),
(16, 1, 0, 1, '13566887211@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 14:35:04', '2015-07-23 01:31:31', 1, 0),
(17, 1, 0, 1, '15651038013@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 14:41:59', '2015-07-23 01:31:32', 1, 0),
(18, 1, 0, 1, '18551829552@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 15:00:15', '2015-07-23 01:31:32', 1, 0),
(19, 1, 0, 1, '13260908879@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 15:50:42', '2015-07-23 01:31:33', 1, 0),
(20, 1, 0, 1, '18994027344@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 16:11:35', '2015-07-23 01:31:34', 1, 0),
(21, 1, 0, 1, '18020116120@meiguoyouxian.com', 1, NULL, 1, '2014-12-15 21:07:17', '2015-07-23 01:31:34', 1, 0),
(22, 1, 0, 1, '15553269369@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 10:54:08', '2015-07-23 01:31:35', 1, 0),
(23, 1, 0, 1, '13901582245@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 12:05:46', '2015-07-23 01:31:35', 1, 0),
(24, 1, 0, 1, '18964940252@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 14:02:55', '2015-07-23 01:31:36', 1, 0),
(25, 1, 0, 1, '13400061964@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 16:32:53', '2015-07-23 01:31:37', 1, 0),
(26, 1, 0, 1, '15950470109@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 16:58:18', '2015-07-23 01:31:37', 1, 0),
(27, 1, 0, 1, '15312054305@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 17:14:56', '2015-07-23 01:31:38', 1, 0),
(28, 1, 0, 1, '13347838357@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 18:06:24', '2015-07-23 01:31:39', 1, 0),
(29, 1, 0, 1, '13851687392@meiguoyouxian.com', 1, NULL, 1, '2014-12-16 23:19:22', '2015-07-23 01:31:39', 1, 0),
(30, 1, 0, 1, '13570008184@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 00:40:31', '2015-07-23 01:31:40', 1, 0),
(31, 1, 0, 1, '13951020117@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 12:05:55', '2015-07-23 01:31:40', 1, 0),
(32, 1, 0, 1, '18600045981@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 12:31:52', '2015-07-23 01:31:41', 1, 0),
(33, 1, 0, 1, '13916318387@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 17:21:33', '2015-07-23 01:31:42', 1, 0),
(34, 1, 0, 1, '18818202337@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 18:09:23', '2015-07-23 01:31:42', 1, 0),
(35, 1, 0, 1, '15951987097@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 18:31:00', '2015-07-23 01:31:43', 1, 0),
(36, 1, 0, 1, '13501616802@meiguoyouxian.com', 1, NULL, 1, '2014-12-17 21:13:35', '2015-07-23 01:31:44', 1, 0),
(37, 1, 0, 1, '13952096559@meiguoyouxian.com', 1, NULL, 1, '2014-12-18 10:34:13', '2015-07-23 01:31:44', 1, 0),
(38, 1, 0, 1, '15851804827@meiguoyouxian.com', 1, NULL, 1, '2014-12-18 16:59:41', '2015-07-23 01:31:45', 1, 0),
(39, 1, 0, 1, '15901560454@meiguoyouxian.com', 1, NULL, 1, '2014-12-18 21:35:44', '2015-07-23 01:31:46', 1, 0),
(40, 1, 0, 1, '13636510581@meiguoyouxian.com', 1, NULL, 1, '2014-12-18 21:39:55', '2015-07-23 01:31:46', 1, 0),
(41, 1, 0, 1, '15270729341@meiguoyouxian.com', 1, NULL, 1, '2014-12-18 22:34:01', '2015-07-23 01:31:47', 1, 0),
(42, 1, 0, 1, '18668146970@meiguoyouxian.com', 1, NULL, 1, '2014-12-19 15:41:05', '2015-07-23 01:31:48', 1, 0),
(43, 1, 0, 1, '15308184422@meiguoyouxian.com', 1, NULL, 1, '2014-12-19 19:08:13', '2015-07-23 01:31:49', 1, 0),
(44, 1, 0, 1, '13068237967@meiguoyouxian.com', 1, NULL, 1, '2014-12-19 20:23:52', '2015-07-23 01:31:50', 1, 0),
(45, 1, 0, 1, '18500027226@meiguoyouxian.com', 1, NULL, 1, '2014-12-19 21:20:19', '2015-07-23 01:31:51', 1, 0),
(46, 1, 0, 1, '18629522066@meiguoyouxian.com', 1, NULL, 1, '2014-12-19 23:26:23', '2015-07-23 01:31:52', 1, 0),
(47, 1, 0, 1, '18295698515@meiguoyouxian.com', 1, NULL, 1, '2014-12-20 01:38:03', '2015-07-23 01:31:52', 1, 0),
(48, 1, 0, 1, '18121066600@meiguoyouxian.com', 1, NULL, 1, '2014-12-20 19:46:33', '2015-07-23 01:31:53', 1, 0),
(49, 1, 0, 1, '13638346082@meiguoyouxian.com', 1, NULL, 1, '2014-12-20 21:53:58', '2015-07-23 01:31:54', 1, 0),
(50, 1, 0, 1, '18664419546@meiguoyouxian.com', 1, NULL, 1, '2014-12-20 22:17:35', '2015-07-23 01:31:54', 1, 0),
(51, 1, 0, 1, '13336879000@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 00:06:16', '2015-07-23 01:31:55', 1, 0),
(52, 1, 0, 1, '15399249994@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 00:43:08', '2015-07-23 01:31:56', 1, 0),
(53, 1, 0, 1, '13863057223@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 11:42:52', '2015-07-23 01:31:56', 1, 0),
(54, 1, 0, 1, '13386831112@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 12:21:32', '2015-07-23 01:31:57', 1, 0),
(55, 1, 0, 1, '18817392880@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 12:26:25', '2015-07-23 01:31:57', 1, 0),
(56, 1, 0, 1, '15009012758@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 12:37:30', '2015-07-23 01:31:58', 1, 0),
(57, 1, 0, 1, '13482467295@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 13:25:31', '2015-07-23 01:31:59', 1, 0),
(58, 1, 0, 1, '15996358512@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 13:53:44', '2015-07-23 01:31:59', 1, 0),
(59, 1, 0, 1, '18243085994@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 17:43:33', '2015-07-23 01:32:00', 1, 0),
(60, 1, 0, 1, '13814545990@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 20:18:04', '2015-07-23 01:32:01', 1, 0),
(61, 1, 0, 1, '13641959146@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 20:40:24', '2015-07-23 01:32:01', 1, 0),
(62, 1, 0, 1, '15811816417@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 21:56:30', '2015-07-23 01:32:02', 1, 0),
(63, 1, 0, 1, '18061476945@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 23:22:07', '2015-07-23 01:32:03', 1, 0),
(64, 1, 0, 1, '18551633538@meiguoyouxian.com', 1, NULL, 1, '2014-12-21 23:50:32', '2015-07-23 01:32:03', 1, 0),
(65, 1, 0, 1, '18679188551@meiguoyouxian.com', 1, NULL, 1, '2014-12-22 22:28:35', '2015-07-23 01:32:04', 1, 0),
(66, 1, 0, 1, '18688160658@meiguoyouxian.com', 1, NULL, 1, '2014-12-23 10:28:29', '2015-07-23 01:32:04', 1, 0),
(67, 1, 0, 1, '13913029316@meiguoyouxian.com', 1, NULL, 1, '2014-12-23 14:50:16', '2015-07-23 01:32:05', 1, 0),
(68, 1, 0, 1, '13343338444@meiguoyouxian.com', 1, NULL, 1, '2014-12-23 17:31:48', '2015-07-23 01:32:06', 1, 0),
(69, 1, 0, 1, '18951821118@meiguoyouxian.com', 1, NULL, 1, '2014-12-23 17:44:04', '2015-07-23 01:32:06', 1, 0),
(70, 1, 0, 1, '13001951654@meiguoyouxian.com', 1, NULL, 1, '2014-12-23 22:42:04', '2015-07-23 01:32:07', 1, 0),
(71, 1, 0, 1, '15916753029@meiguoyouxian.com', 1, NULL, 1, '2014-12-24 00:45:06', '2015-07-23 01:32:07', 1, 0),
(72, 1, 0, 1, '13512105511@meiguoyouxian.com', 1, NULL, 1, '2014-12-24 16:14:45', '2015-07-23 01:32:08', 1, 0),
(73, 1, 0, 1, '15832146830@meiguoyouxian.com', 1, NULL, 1, '2014-12-24 21:29:50', '2015-07-23 01:32:09', 1, 0),
(74, 1, 0, 1, '15251718866@meiguoyouxian.com', 1, NULL, 1, '2014-12-25 17:57:07', '2015-07-23 01:32:09', 1, 0),
(75, 1, 0, 1, '18936859551@meiguoyouxian.com', 1, NULL, 1, '2014-12-26 01:07:21', '2015-07-23 01:32:10', 1, 0),
(76, 1, 0, 1, '18275203317@meiguoyouxian.com', 1, NULL, 1, '2014-12-26 11:03:03', '2015-07-23 01:32:10', 1, 0),
(77, 1, 0, 1, '18060309433@meiguoyouxian.com', 1, NULL, 1, '2014-12-26 23:19:03', '2015-07-23 01:32:11', 1, 0),
(78, 1, 0, 1, '18601040934@meiguoyouxian.com', 1, NULL, 1, '2014-12-27 19:08:14', '2015-07-23 01:32:12', 1, 0),
(79, 1, 0, 1, '13910849695@meiguoyouxian.com', 1, NULL, 1, '2014-12-27 20:14:10', '2015-07-23 01:32:13', 1, 0),
(80, 1, 0, 1, '18563988579@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 10:46:44', '2015-07-23 01:32:14', 1, 0),
(81, 1, 0, 1, '15374718779@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 11:01:12', '2015-07-23 01:32:15', 1, 0),
(82, 1, 0, 1, '15169080718@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 16:11:41', '2015-07-23 01:32:16', 1, 0),
(83, 1, 0, 1, '13875879875@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 17:44:44', '2015-07-23 01:32:18', 1, 0),
(84, 1, 0, 1, '13770586220@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 21:26:19', '2015-07-23 01:32:19', 1, 0),
(85, 1, 0, 1, '13437174579@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 23:09:21', '2015-07-23 01:32:20', 1, 0),
(86, 1, 0, 1, '15203398930@meiguoyouxian.com', 1, NULL, 1, '2014-12-28 23:38:11', '2015-07-23 01:32:21', 1, 0),
(87, 1, 0, 1, '15135513939@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 01:40:21', '2015-07-23 01:32:22', 1, 0),
(88, 1, 0, 1, '13761373199@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 10:35:07', '2015-07-23 01:32:23', 1, 0),
(89, 1, 0, 1, '15601230624@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 13:58:35', '2015-07-23 01:32:24', 1, 0),
(90, 1, 0, 1, '13915990686@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 14:59:33', '2015-07-23 01:32:24', 1, 0),
(91, 1, 0, 1, '13770961049@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 16:03:53', '2015-07-23 01:32:25', 1, 0),
(92, 1, 0, 1, '15861842000@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 20:29:12', '2015-07-23 01:32:26', 1, 0),
(93, 1, 0, 1, '13151585635@meiguoyouxian.com', 1, NULL, 1, '2014-12-29 20:58:53', '2015-07-23 01:32:27', 1, 0),
(94, 1, 0, 1, '18020167583@meiguoyouxian.com', 1, NULL, 1, '2014-12-30 00:39:27', '2015-07-23 01:32:28', 1, 0),
(95, 1, 0, 1, '15851857851@meiguoyouxian.com', 1, NULL, 1, '2014-12-30 10:17:56', '2015-07-23 01:32:29', 1, 0),
(96, 1, 0, 1, '18068807263@meiguoyouxian.com', 1, NULL, 1, '2014-12-30 10:53:17', '2015-07-23 01:32:30', 1, 0),
(97, 1, 0, 1, '13910120992@meiguoyouxian.com', 1, NULL, 1, '2014-12-31 00:38:19', '2015-07-23 01:32:31', 1, 0),
(98, 1, 0, 1, '13951016607@meiguoyouxian.com', 1, NULL, 1, '2014-12-31 01:10:03', '2015-07-23 01:32:32', 1, 0),
(99, 1, 0, 1, '18375622453@meiguoyouxian.com', 1, NULL, 1, '2014-12-31 04:07:57', '2015-07-23 01:32:33', 1, 0),
(100, 1, 0, 1, '18306600981@meiguoyouxian.com', 1, NULL, 1, '2015-01-01 06:24:48', '2015-07-23 01:32:34', 1, 0),
(101, 1, 0, 1, '18151614168@meiguoyouxian.com', 1, NULL, 1, '2015-01-01 12:29:44', '2015-07-23 01:32:35', 1, 0),
(102, 1, 0, 1, '18382455885@meiguoyouxian.com', 1, NULL, 1, '2015-01-01 12:51:17', '2015-07-23 01:32:36', 1, 0),
(103, 1, 0, 1, '13729840508@meiguoyouxian.com', 1, NULL, 1, '2015-01-02 00:39:18', '2015-07-23 01:32:36', 1, 0),
(104, 1, 0, 1, '18201899832@meiguoyouxian.com', 1, NULL, 1, '2015-01-02 21:59:05', '2015-07-23 01:32:37', 1, 0),
(105, 1, 0, 1, '18692241334@meiguoyouxian.com', 1, NULL, 1, '2015-01-02 23:44:05', '2015-07-23 01:32:38', 1, 0),
(106, 1, 0, 1, '15624145677@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 08:38:41', '2015-07-23 01:32:39', 1, 0),
(107, 1, 0, 1, '18936879009@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 14:59:53', '2015-07-23 01:32:39', 1, 0),
(108, 1, 0, 1, '17600833170@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 15:35:06', '2015-07-23 01:32:40', 1, 0),
(109, 1, 0, 1, '13585141788@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 19:01:07', '2015-07-23 01:32:41', 1, 0),
(110, 1, 0, 1, '15517960657@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 20:36:08', '2015-07-23 01:32:41', 1, 0),
(111, 1, 0, 1, '13927227059@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 20:47:39', '2015-07-23 01:32:42', 1, 0),
(112, 1, 0, 1, '13770698976@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 21:53:41', '2015-07-23 01:32:42', 1, 0),
(113, 1, 0, 1, '13951941864@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 22:29:00', '2015-07-23 01:32:43', 1, 0),
(114, 1, 0, 1, '13785066016@meiguoyouxian.com', 1, NULL, 1, '2015-01-03 22:30:13', '2015-07-23 01:32:43', 1, 0),
(115, 1, 0, 1, '18018351682@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 01:22:40', '2015-07-23 01:32:44', 1, 0),
(116, 1, 0, 1, '18272897132@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 10:28:46', '2015-07-23 01:32:44', 1, 0),
(117, 1, 0, 1, '18817391850@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 13:26:56', '2015-07-23 01:32:45', 1, 0),
(118, 1, 0, 1, '13889229321@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 17:46:58', '2015-07-23 01:32:46', 1, 0),
(119, 1, 0, 1, '15905155022@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 18:12:19', '2015-07-23 01:32:46', 1, 0),
(120, 1, 0, 1, '13851555235@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 19:41:15', '2015-07-23 01:32:47', 1, 0),
(121, 1, 0, 1, '18502228621@meiguoyouxian.com', 1, NULL, 1, '2015-01-04 20:12:32', '2015-07-23 01:32:47', 1, 0),
(122, 1, 0, 1, '18640025069@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 07:51:22', '2015-07-23 01:32:47', 1, 0),
(123, 1, 0, 1, '13913300726@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 09:11:19', '2015-07-23 01:32:48', 1, 0),
(124, 1, 0, 1, '13815885530@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 10:19:47', '2015-07-23 01:32:48', 1, 0),
(125, 1, 0, 1, '13901584247@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 10:22:08', '2015-07-23 01:32:49', 1, 0),
(126, 1, 0, 1, '18662721076@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 10:42:29', '2015-07-23 01:32:49', 1, 0),
(127, 1, 0, 1, '13901584045@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 11:03:24', '2015-07-23 01:32:50', 1, 0),
(128, 1, 0, 1, '13585195606@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 11:14:12', '2015-07-23 01:32:51', 1, 0),
(129, 1, 0, 1, '18351874833@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 11:47:42', '2015-07-23 01:32:51', 1, 0),
(130, 1, 0, 1, '13813080616@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 12:22:06', '2015-07-23 01:32:52', 1, 0),
(131, 1, 0, 1, '18061230460@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 12:24:17', '2015-07-23 01:32:52', 1, 0),
(132, 1, 0, 1, '15151891969@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 12:45:50', '2015-07-23 01:32:53', 1, 0),
(133, 1, 0, 1, '13655188367@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 13:23:32', '2015-07-23 01:32:53', 1, 0),
(134, 1, 0, 1, '13811865459@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 14:04:16', '2015-07-23 01:32:54', 1, 0),
(135, 1, 0, 1, '13918250797@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 15:26:23', '2015-07-23 01:32:54', 1, 0),
(136, 1, 0, 1, '15651868762@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 16:03:10', '2015-07-23 01:32:55', 1, 0),
(137, 1, 0, 1, '18016040251@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 16:17:16', '2015-07-23 01:32:56', 1, 0),
(138, 1, 0, 1, '13675177731@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 16:48:29', '2015-07-23 01:32:56', 1, 0),
(139, 1, 0, 1, '18651807668@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 18:38:41', '2015-07-23 01:32:57', 1, 0),
(140, 1, 0, 1, '13805291265@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 19:04:24', '2015-07-23 01:32:57', 1, 0),
(141, 1, 0, 1, '13915979303@meiguoyouxian.com', 1, NULL, 1, '2015-01-05 20:47:12', '2015-07-23 01:32:58', 1, 0),
(142, 1, 0, 1, '18252077319@meiguoyouxian.com', 1, NULL, 1, '2015-01-06 09:05:57', '2015-07-23 01:32:58', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `customer_entity_int`
--

INSERT INTO `customer_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 13, 1, 1),
(2, 1, 14, 1, 2),
(5, 1, 13, 5, 4),
(6, 1, 14, 5, 4),
(7, 1, 14, 7, 7),
(8, 1, 14, 9, 8),
(9, 1, 14, 15, 9),
(10, 1, 14, 16, 10),
(11, 1, 14, 20, 11),
(12, 1, 14, 23, 12),
(13, 1, 14, 29, 13),
(14, 1, 14, 33, 18),
(15, 1, 14, 34, 20),
(16, 1, 14, 37, 21),
(17, 1, 14, 38, 22),
(18, 1, 14, 48, 23),
(19, 1, 14, 55, 24),
(20, 1, 14, 57, 25),
(21, 1, 14, 61, 26),
(22, 1, 14, 69, 27),
(23, 1, 14, 74, 31),
(24, 1, 14, 75, 32),
(25, 1, 14, 84, 33),
(26, 1, 14, 91, 37),
(27, 1, 14, 96, 39),
(28, 1, 14, 104, 40),
(29, 1, 14, 107, 41),
(30, 1, 14, 108, 42),
(31, 1, 14, 109, 43),
(32, 1, 14, 113, 45),
(33, 1, 14, 115, 46),
(34, 1, 14, 118, 47),
(35, 1, 14, 119, 48),
(36, 1, 14, 121, 52),
(37, 1, 14, 125, 53),
(38, 1, 14, 126, 54),
(39, 1, 14, 128, 56),
(40, 1, 14, 132, 57),
(41, 1, 14, 133, 58),
(42, 1, 14, 137, 59);

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=1555 ;

--
-- 转存表中的数据 `customer_entity_varchar`
--

INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 5, 1, 'daemon'),
(2, 1, 7, 1, 'wang'),
(3, 1, 12, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(4, 1, 3, 1, 'Default Store View'),
(5, 1, 5, 2, 'daemon'),
(6, 1, 7, 2, 'wang'),
(7, 1, 12, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(8, 1, 3, 2, 'Default Store View'),
(9, 1, 132, 1, '15151834774'),
(10, 1, 133, 1, '1990-01-01 00:00:00'),
(11, 1, 134, 1, '1'),
(12, 1, 135, 1, '/image/a.jpg'),
(13, 1, 136, 1, 'å“ˆå“ˆå“ˆ'),
(14, 1, 137, 1, '00001'),
(15, 1, 5, 3, '13852650796'),
(16, 1, 7, 3, ''),
(17, 1, 12, 3, 'e10adc3949ba59abbe56e057f20f883e'),
(18, 1, 3, 3, 'Default Store View'),
(19, 1, 137, 3, '69865'),
(20, 1, 132, 3, '13852650796'),
(21, 1, 133, 3, '1990-01-01 00:00:00'),
(22, 1, 134, 3, '1'),
(23, 1, 135, 3, '/image/apple.jpg'),
(24, 1, 136, 3, '13852650796'),
(25, 1, 138, 3, 'å—äº¬å¸‚'),
(26, 1, 5, 4, '18116342840'),
(27, 1, 7, 4, ''),
(28, 1, 12, 4, 'e10adc3949ba59abbe56e057f20f883e'),
(29, 1, 3, 4, 'Default Store View'),
(30, 1, 137, 4, '69866'),
(31, 1, 132, 4, '18116342840'),
(32, 1, 133, 4, '1990-01-01 00:00:00'),
(33, 1, 134, 4, '1'),
(34, 1, 135, 4, '/image/apple.jpg'),
(35, 1, 136, 4, '18116342840'),
(36, 1, 138, 4, 'å—äº¬å¸‚'),
(37, 1, 5, 5, '18604509832'),
(38, 1, 7, 5, ''),
(39, 1, 12, 5, 'e10adc3949ba59abbe56e057f20f883e'),
(40, 1, 3, 5, 'Default Store View'),
(41, 1, 137, 5, '69867'),
(42, 1, 132, 5, '18604509832'),
(43, 1, 133, 5, '1990-01-01 00:00:00'),
(44, 1, 134, 5, '1'),
(45, 1, 135, 5, '/image/apple.jpg'),
(46, 1, 136, 5, '18604509832'),
(47, 1, 138, 5, 'å—äº¬å¸‚'),
(48, 1, 5, 6, '15821653533'),
(49, 1, 7, 6, ''),
(50, 1, 12, 6, 'e10adc3949ba59abbe56e057f20f883e'),
(51, 1, 3, 6, 'Default Store View'),
(52, 1, 137, 6, '69871'),
(53, 1, 132, 6, '15821653533'),
(54, 1, 133, 6, '1990-01-01 00:00:00'),
(55, 1, 134, 6, '1'),
(56, 1, 135, 6, '/image/apple.jpg'),
(57, 1, 136, 6, '15821653533'),
(58, 1, 138, 6, 'ä¸Šæµ·å¸‚'),
(59, 1, 5, 7, '18616677987'),
(60, 1, 7, 7, ''),
(61, 1, 12, 7, 'e10adc3949ba59abbe56e057f20f883e'),
(62, 1, 3, 7, 'Default Store View'),
(63, 1, 137, 7, '69877'),
(64, 1, 132, 7, '18616677987'),
(65, 1, 133, 7, '1990-01-01 00:00:00'),
(66, 1, 134, 7, '1'),
(67, 1, 135, 7, '/image/apple.jpg'),
(68, 1, 136, 7, '18616677987'),
(69, 1, 138, 7, 'å—äº¬å¸‚'),
(70, 1, 5, 8, '13566643644'),
(71, 1, 7, 8, ''),
(72, 1, 12, 8, 'e10adc3949ba59abbe56e057f20f883e'),
(73, 1, 3, 8, 'Default Store View'),
(74, 1, 137, 8, '69879'),
(75, 1, 132, 8, '13566643644'),
(76, 1, 133, 8, '1990-01-01 00:00:00'),
(77, 1, 134, 8, '1'),
(78, 1, 135, 8, '/image/apple.jpg'),
(79, 1, 136, 8, '13566643644'),
(80, 1, 138, 8, 'å—äº¬å¸‚'),
(81, 1, 5, 9, '15380829146'),
(82, 1, 7, 9, ''),
(83, 1, 12, 9, 'e10adc3949ba59abbe56e057f20f883e'),
(84, 1, 3, 9, 'Default Store View'),
(85, 1, 137, 9, '69881'),
(86, 1, 132, 9, '15380829146'),
(87, 1, 133, 9, '1990-01-01 00:00:00'),
(88, 1, 134, 9, '1'),
(89, 1, 135, 9, '/image/apple.jpg'),
(90, 1, 136, 9, '15380829146'),
(91, 1, 138, 9, 'å—äº¬å¸‚'),
(92, 1, 5, 10, '18951603003'),
(93, 1, 7, 10, ''),
(94, 1, 12, 10, 'e10adc3949ba59abbe56e057f20f883e'),
(95, 1, 3, 10, 'Default Store View'),
(96, 1, 137, 10, '69882'),
(97, 1, 132, 10, '18951603003'),
(98, 1, 133, 10, '1990-01-01 00:00:00'),
(99, 1, 134, 10, '1'),
(100, 1, 135, 10, '/image/apple.jpg'),
(101, 1, 136, 10, '18951603003'),
(102, 1, 138, 10, 'å—äº¬å¸‚'),
(103, 1, 5, 11, '18513763142'),
(104, 1, 7, 11, ''),
(105, 1, 12, 11, 'e10adc3949ba59abbe56e057f20f883e'),
(106, 1, 3, 11, 'Default Store View'),
(107, 1, 137, 11, '69887'),
(108, 1, 132, 11, '18513763142'),
(109, 1, 133, 11, '1990-01-01 00:00:00'),
(110, 1, 134, 11, '1'),
(111, 1, 135, 11, '/image/apple.jpg'),
(112, 1, 136, 11, '18513763142'),
(113, 1, 138, 11, 'å—äº¬å¸‚'),
(114, 1, 5, 12, '13588863726'),
(115, 1, 7, 12, ''),
(116, 1, 12, 12, 'e10adc3949ba59abbe56e057f20f883e'),
(117, 1, 3, 12, 'Default Store View'),
(118, 1, 137, 12, '69893'),
(119, 1, 132, 12, '13588863726'),
(120, 1, 133, 12, '1990-01-01 00:00:00'),
(121, 1, 134, 12, '1'),
(122, 1, 135, 12, '/image/apple.jpg'),
(123, 1, 136, 12, '13588863726'),
(124, 1, 138, 12, 'å—äº¬å¸‚'),
(125, 1, 5, 13, '13223022613'),
(126, 1, 7, 13, ''),
(127, 1, 12, 13, 'e10adc3949ba59abbe56e057f20f883e'),
(128, 1, 3, 13, 'Default Store View'),
(129, 1, 137, 13, '69895'),
(130, 1, 132, 13, '13223022613'),
(131, 1, 133, 13, '1990-01-01 00:00:00'),
(132, 1, 134, 13, '1'),
(133, 1, 135, 13, '/image/apple.jpg'),
(134, 1, 136, 13, '13223022613'),
(135, 1, 138, 13, 'å—äº¬å¸‚'),
(136, 1, 5, 14, '18166821828'),
(137, 1, 7, 14, ''),
(138, 1, 12, 14, 'e10adc3949ba59abbe56e057f20f883e'),
(139, 1, 3, 14, 'Default Store View'),
(140, 1, 137, 14, '69900'),
(141, 1, 132, 14, '18166821828'),
(142, 1, 133, 14, '1990-01-01 00:00:00'),
(143, 1, 134, 14, '1'),
(144, 1, 135, 14, '/image/apple.jpg'),
(145, 1, 136, 14, '18166821828'),
(146, 1, 138, 14, 'å—äº¬å¸‚'),
(147, 1, 5, 15, '15380830091'),
(148, 1, 7, 15, ''),
(149, 1, 12, 15, 'e10adc3949ba59abbe56e057f20f883e'),
(150, 1, 3, 15, 'Default Store View'),
(151, 1, 137, 15, '69901'),
(152, 1, 132, 15, '15380830091'),
(153, 1, 133, 15, '1990-01-01 00:00:00'),
(154, 1, 134, 15, '1'),
(155, 1, 135, 15, '/image/apple.jpg'),
(156, 1, 136, 15, '15380830091'),
(157, 1, 138, 15, 'å—äº¬å¸‚'),
(158, 1, 5, 16, '13566887211'),
(159, 1, 7, 16, ''),
(160, 1, 12, 16, 'e10adc3949ba59abbe56e057f20f883e'),
(161, 1, 3, 16, 'Default Store View'),
(162, 1, 137, 16, '69908'),
(163, 1, 132, 16, '13566887211'),
(164, 1, 133, 16, '1990-01-01 00:00:00'),
(165, 1, 134, 16, '1'),
(166, 1, 135, 16, '/image/apple.jpg'),
(167, 1, 136, 16, '13566887211'),
(168, 1, 138, 16, 'å—äº¬å¸‚'),
(169, 1, 5, 17, '15651038013'),
(170, 1, 7, 17, ''),
(171, 1, 12, 17, 'e10adc3949ba59abbe56e057f20f883e'),
(172, 1, 3, 17, 'Default Store View'),
(173, 1, 137, 17, '69909'),
(174, 1, 132, 17, '15651038013'),
(175, 1, 133, 17, '1990-01-01 00:00:00'),
(176, 1, 134, 17, '1'),
(177, 1, 135, 17, '/image/apple.jpg'),
(178, 1, 136, 17, '15651038013'),
(179, 1, 138, 17, 'å—äº¬å¸‚'),
(180, 1, 5, 18, '18551829552'),
(181, 1, 7, 18, ''),
(182, 1, 12, 18, 'e10adc3949ba59abbe56e057f20f883e'),
(183, 1, 3, 18, 'Default Store View'),
(184, 1, 137, 18, '69910'),
(185, 1, 132, 18, '18551829552'),
(186, 1, 133, 18, '1990-01-01 00:00:00'),
(187, 1, 134, 18, '1'),
(188, 1, 135, 18, '/image/apple.jpg'),
(189, 1, 136, 18, '18551829552'),
(190, 1, 138, 18, 'å—äº¬å¸‚'),
(191, 1, 5, 19, '13260908879'),
(192, 1, 7, 19, ''),
(193, 1, 12, 19, 'e10adc3949ba59abbe56e057f20f883e'),
(194, 1, 3, 19, 'Default Store View'),
(195, 1, 137, 19, '69913'),
(196, 1, 132, 19, '13260908879'),
(197, 1, 133, 19, '1990-01-01 00:00:00'),
(198, 1, 134, 19, '1'),
(199, 1, 135, 19, '/image/apple.jpg'),
(200, 1, 136, 19, '13260908879'),
(201, 1, 138, 19, 'å—äº¬å¸‚'),
(202, 1, 5, 20, '18994027344'),
(203, 1, 7, 20, ''),
(204, 1, 12, 20, 'e10adc3949ba59abbe56e057f20f883e'),
(205, 1, 3, 20, 'Default Store View'),
(206, 1, 137, 20, '69916'),
(207, 1, 132, 20, '18994027344'),
(208, 1, 133, 20, '1990-01-01 00:00:00'),
(209, 1, 134, 20, '1'),
(210, 1, 135, 20, '/image/apple.jpg'),
(211, 1, 136, 20, '18994027344'),
(212, 1, 138, 20, 'å—äº¬å¸‚'),
(213, 1, 5, 21, '18020116120'),
(214, 1, 7, 21, ''),
(215, 1, 12, 21, 'e10adc3949ba59abbe56e057f20f883e'),
(216, 1, 3, 21, 'Default Store View'),
(217, 1, 137, 21, '69921'),
(218, 1, 132, 21, '18020116120'),
(219, 1, 133, 21, '1990-01-01 00:00:00'),
(220, 1, 134, 21, '1'),
(221, 1, 135, 21, '/image/apple.jpg'),
(222, 1, 136, 21, '18020116120'),
(223, 1, 138, 21, 'å—äº¬å¸‚'),
(224, 1, 5, 22, '15553269369'),
(225, 1, 7, 22, ''),
(226, 1, 12, 22, 'e10adc3949ba59abbe56e057f20f883e'),
(227, 1, 3, 22, 'Default Store View'),
(228, 1, 137, 22, '69936'),
(229, 1, 132, 22, '15553269369'),
(230, 1, 133, 22, '1990-01-01 00:00:00'),
(231, 1, 134, 22, '1'),
(232, 1, 135, 22, '/image/apple.jpg'),
(233, 1, 136, 22, '15553269369'),
(234, 1, 138, 22, 'å—äº¬å¸‚'),
(235, 1, 5, 23, '13901582245'),
(236, 1, 7, 23, ''),
(237, 1, 12, 23, 'e10adc3949ba59abbe56e057f20f883e'),
(238, 1, 3, 23, 'Default Store View'),
(239, 1, 137, 23, '69938'),
(240, 1, 132, 23, '13901582245'),
(241, 1, 133, 23, '1990-01-01 00:00:00'),
(242, 1, 134, 23, '1'),
(243, 1, 135, 23, '/image/apple.jpg'),
(244, 1, 136, 23, '13901582245'),
(245, 1, 138, 23, 'å—äº¬å¸‚'),
(246, 1, 5, 24, '18964940252'),
(247, 1, 7, 24, ''),
(248, 1, 12, 24, 'e10adc3949ba59abbe56e057f20f883e'),
(249, 1, 3, 24, 'Default Store View'),
(250, 1, 137, 24, '69939'),
(251, 1, 132, 24, '18964940252'),
(252, 1, 133, 24, '1990-01-01 00:00:00'),
(253, 1, 134, 24, '1'),
(254, 1, 135, 24, '/image/apple.jpg'),
(255, 1, 136, 24, '18964940252'),
(256, 1, 138, 24, 'å—äº¬å¸‚'),
(257, 1, 5, 25, '13400061964'),
(258, 1, 7, 25, ''),
(259, 1, 12, 25, 'e10adc3949ba59abbe56e057f20f883e'),
(260, 1, 3, 25, 'Default Store View'),
(261, 1, 137, 25, '69941'),
(262, 1, 132, 25, '13400061964'),
(263, 1, 133, 25, '1990-01-01 00:00:00'),
(264, 1, 134, 25, '1'),
(265, 1, 135, 25, '/image/apple.jpg'),
(266, 1, 136, 25, '13400061964'),
(267, 1, 138, 25, 'å—äº¬å¸‚'),
(268, 1, 5, 26, '15950470109'),
(269, 1, 7, 26, ''),
(270, 1, 12, 26, 'e10adc3949ba59abbe56e057f20f883e'),
(271, 1, 3, 26, 'Default Store View'),
(272, 1, 137, 26, '69942'),
(273, 1, 132, 26, '15950470109'),
(274, 1, 133, 26, '1990-01-01 00:00:00'),
(275, 1, 134, 26, '1'),
(276, 1, 135, 26, '/image/apple.jpg'),
(277, 1, 136, 26, '15950470109'),
(278, 1, 138, 26, 'å—äº¬å¸‚'),
(279, 1, 5, 27, '15312054305'),
(280, 1, 7, 27, ''),
(281, 1, 12, 27, 'e10adc3949ba59abbe56e057f20f883e'),
(282, 1, 3, 27, 'Default Store View'),
(283, 1, 137, 27, '69945'),
(284, 1, 132, 27, '15312054305'),
(285, 1, 133, 27, '1990-01-01 00:00:00'),
(286, 1, 134, 27, '1'),
(287, 1, 135, 27, '/image/apple.jpg'),
(288, 1, 136, 27, '15312054305'),
(289, 1, 138, 27, 'å—äº¬å¸‚'),
(290, 1, 5, 28, '13347838357'),
(291, 1, 7, 28, ''),
(292, 1, 12, 28, 'e10adc3949ba59abbe56e057f20f883e'),
(293, 1, 3, 28, 'Default Store View'),
(294, 1, 137, 28, '69946'),
(295, 1, 132, 28, '13347838357'),
(296, 1, 133, 28, '1990-01-01 00:00:00'),
(297, 1, 134, 28, '1'),
(298, 1, 135, 28, '/image/apple.jpg'),
(299, 1, 136, 28, '13347838357'),
(300, 1, 138, 28, 'å—äº¬å¸‚'),
(301, 1, 5, 29, '13851687392'),
(302, 1, 7, 29, ''),
(303, 1, 12, 29, 'e10adc3949ba59abbe56e057f20f883e'),
(304, 1, 3, 29, 'Default Store View'),
(305, 1, 137, 29, '69952'),
(306, 1, 132, 29, '13851687392'),
(307, 1, 133, 29, '1990-01-01 00:00:00'),
(308, 1, 134, 29, '1'),
(309, 1, 135, 29, '/image/apple.jpg'),
(310, 1, 136, 29, '13851687392'),
(311, 1, 138, 29, 'å—äº¬å¸‚'),
(312, 1, 5, 30, '13570008184'),
(313, 1, 7, 30, ''),
(314, 1, 12, 30, 'e10adc3949ba59abbe56e057f20f883e'),
(315, 1, 3, 30, 'Default Store View'),
(316, 1, 137, 30, '69955'),
(317, 1, 132, 30, '13570008184'),
(318, 1, 133, 30, '1990-01-01 00:00:00'),
(319, 1, 134, 30, '1'),
(320, 1, 135, 30, '/image/apple.jpg'),
(321, 1, 136, 30, '13570008184'),
(322, 1, 138, 30, 'å—äº¬å¸‚'),
(323, 1, 5, 31, '13951020117'),
(324, 1, 7, 31, ''),
(325, 1, 12, 31, 'e10adc3949ba59abbe56e057f20f883e'),
(326, 1, 3, 31, 'Default Store View'),
(327, 1, 137, 31, '69963'),
(328, 1, 132, 31, '13951020117'),
(329, 1, 133, 31, '1990-01-01 00:00:00'),
(330, 1, 134, 31, '1'),
(331, 1, 135, 31, '/image/apple.jpg'),
(332, 1, 136, 31, '13951020117'),
(333, 1, 138, 31, 'å—äº¬å¸‚'),
(334, 1, 5, 32, '18600045981'),
(335, 1, 7, 32, ''),
(336, 1, 12, 32, 'e10adc3949ba59abbe56e057f20f883e'),
(337, 1, 3, 32, 'Default Store View'),
(338, 1, 137, 32, '69966'),
(339, 1, 132, 32, '18600045981'),
(340, 1, 133, 32, '1990-01-01 00:00:00'),
(341, 1, 134, 32, '1'),
(342, 1, 135, 32, '/image/apple.jpg'),
(343, 1, 136, 32, '18600045981'),
(344, 1, 138, 32, 'å—äº¬å¸‚'),
(345, 1, 5, 33, '13916318387'),
(346, 1, 7, 33, ''),
(347, 1, 12, 33, 'e10adc3949ba59abbe56e057f20f883e'),
(348, 1, 3, 33, 'Default Store View'),
(349, 1, 137, 33, '69971'),
(350, 1, 132, 33, '13916318387'),
(351, 1, 133, 33, '1990-01-01 00:00:00'),
(352, 1, 134, 33, '1'),
(353, 1, 135, 33, '/image/apple.jpg'),
(354, 1, 136, 33, '13916318387'),
(355, 1, 138, 33, 'å—äº¬å¸‚'),
(356, 1, 5, 34, '18818202337'),
(357, 1, 7, 34, ''),
(358, 1, 12, 34, 'e10adc3949ba59abbe56e057f20f883e'),
(359, 1, 3, 34, 'Default Store View'),
(360, 1, 137, 34, '69972'),
(361, 1, 132, 34, '18818202337'),
(362, 1, 133, 34, '1990-01-01 00:00:00'),
(363, 1, 134, 34, '1'),
(364, 1, 135, 34, '/image/apple.jpg'),
(365, 1, 136, 34, '18818202337'),
(366, 1, 138, 34, 'å—äº¬å¸‚'),
(367, 1, 5, 35, '15951987097'),
(368, 1, 7, 35, ''),
(369, 1, 12, 35, 'e10adc3949ba59abbe56e057f20f883e'),
(370, 1, 3, 35, 'Default Store View'),
(371, 1, 137, 35, '69974'),
(372, 1, 132, 35, '15951987097'),
(373, 1, 133, 35, '1990-01-01 00:00:00'),
(374, 1, 134, 35, '1'),
(375, 1, 135, 35, '/image/apple.jpg'),
(376, 1, 136, 35, '15951987097'),
(377, 1, 138, 35, 'å—äº¬å¸‚'),
(378, 1, 5, 36, '13501616802'),
(379, 1, 7, 36, ''),
(380, 1, 12, 36, 'e10adc3949ba59abbe56e057f20f883e'),
(381, 1, 3, 36, 'Default Store View'),
(382, 1, 137, 36, '69981'),
(383, 1, 132, 36, '13501616802'),
(384, 1, 133, 36, '1990-01-01 00:00:00'),
(385, 1, 134, 36, '1'),
(386, 1, 135, 36, '/image/apple.jpg'),
(387, 1, 136, 36, '13501616802'),
(388, 1, 138, 36, 'å—äº¬å¸‚'),
(389, 1, 5, 37, '13952096559'),
(390, 1, 7, 37, ''),
(391, 1, 12, 37, 'e10adc3949ba59abbe56e057f20f883e'),
(392, 1, 3, 37, 'Default Store View'),
(393, 1, 137, 37, '69988'),
(394, 1, 132, 37, '13952096559'),
(395, 1, 133, 37, '1990-01-01 00:00:00'),
(396, 1, 134, 37, '1'),
(397, 1, 135, 37, '/image/apple.jpg'),
(398, 1, 136, 37, '13952096559'),
(399, 1, 138, 37, 'å—äº¬å¸‚'),
(400, 1, 5, 38, '15851804827'),
(401, 1, 7, 38, ''),
(402, 1, 12, 38, 'e10adc3949ba59abbe56e057f20f883e'),
(403, 1, 3, 38, 'Default Store View'),
(404, 1, 137, 38, '69994'),
(405, 1, 132, 38, '15851804827'),
(406, 1, 133, 38, '1990-01-01 00:00:00'),
(407, 1, 134, 38, '1'),
(408, 1, 135, 38, '/image/apple.jpg'),
(409, 1, 136, 38, '15851804827'),
(410, 1, 138, 38, 'å—äº¬å¸‚'),
(411, 1, 5, 39, '15901560454'),
(412, 1, 7, 39, ''),
(413, 1, 12, 39, 'e10adc3949ba59abbe56e057f20f883e'),
(414, 1, 3, 39, 'Default Store View'),
(415, 1, 137, 39, '70000'),
(416, 1, 132, 39, '15901560454'),
(417, 1, 133, 39, '1990-01-01 00:00:00'),
(418, 1, 134, 39, '1'),
(419, 1, 135, 39, '/image/apple.jpg'),
(420, 1, 136, 39, '15901560454'),
(421, 1, 138, 39, 'å—äº¬å¸‚'),
(422, 1, 5, 40, '13636510581'),
(423, 1, 7, 40, ''),
(424, 1, 12, 40, 'e10adc3949ba59abbe56e057f20f883e'),
(425, 1, 3, 40, 'Default Store View'),
(426, 1, 137, 40, '70001'),
(427, 1, 132, 40, '13636510581'),
(428, 1, 133, 40, '1990-01-01 00:00:00'),
(429, 1, 134, 40, '1'),
(430, 1, 135, 40, '/image/apple.jpg'),
(431, 1, 136, 40, '13636510581'),
(432, 1, 138, 40, 'å—äº¬å¸‚'),
(433, 1, 5, 41, '15270729341'),
(434, 1, 7, 41, ''),
(435, 1, 12, 41, 'e10adc3949ba59abbe56e057f20f883e'),
(436, 1, 3, 41, 'Default Store View'),
(437, 1, 137, 41, '70003'),
(438, 1, 132, 41, '15270729341'),
(439, 1, 133, 41, '1990-01-01 00:00:00'),
(440, 1, 134, 41, '1'),
(441, 1, 135, 41, '/image/apple.jpg'),
(442, 1, 136, 41, '15270729341'),
(443, 1, 138, 41, 'å—äº¬å¸‚'),
(444, 1, 5, 42, '18668146970'),
(445, 1, 7, 42, ''),
(446, 1, 12, 42, 'e10adc3949ba59abbe56e057f20f883e'),
(447, 1, 3, 42, 'Default Store View'),
(448, 1, 137, 42, '70008'),
(449, 1, 132, 42, '18668146970'),
(450, 1, 133, 42, '1990-01-01 00:00:00'),
(451, 1, 134, 42, '1'),
(452, 1, 135, 42, '/image/apple.jpg'),
(453, 1, 136, 42, '18668146970'),
(454, 1, 138, 42, 'å—äº¬å¸‚'),
(455, 1, 5, 43, '15308184422'),
(456, 1, 7, 43, ''),
(457, 1, 12, 43, 'e10adc3949ba59abbe56e057f20f883e'),
(458, 1, 3, 43, 'Default Store View'),
(459, 1, 137, 43, '70011'),
(460, 1, 132, 43, '15308184422'),
(461, 1, 133, 43, '1990-01-01 00:00:00'),
(462, 1, 134, 43, '1'),
(463, 1, 135, 43, '/image/apple.jpg'),
(464, 1, 136, 43, '15308184422'),
(465, 1, 138, 43, 'å—äº¬å¸‚'),
(466, 1, 5, 44, '13068237967'),
(467, 1, 7, 44, ''),
(468, 1, 12, 44, 'e10adc3949ba59abbe56e057f20f883e'),
(469, 1, 3, 44, 'Default Store View'),
(470, 1, 137, 44, '70013'),
(471, 1, 132, 44, '13068237967'),
(472, 1, 133, 44, '1990-01-01 00:00:00'),
(473, 1, 134, 44, '1'),
(474, 1, 135, 44, '/image/apple.jpg'),
(475, 1, 136, 44, '13068237967'),
(476, 1, 138, 44, 'å—äº¬å¸‚'),
(477, 1, 5, 45, '18500027226'),
(478, 1, 7, 45, ''),
(479, 1, 12, 45, 'e10adc3949ba59abbe56e057f20f883e'),
(480, 1, 3, 45, 'Default Store View'),
(481, 1, 137, 45, '70016'),
(482, 1, 132, 45, '18500027226'),
(483, 1, 133, 45, '1990-01-01 00:00:00'),
(484, 1, 134, 45, '1'),
(485, 1, 135, 45, '/image/apple.jpg'),
(486, 1, 136, 45, '18500027226'),
(487, 1, 138, 45, 'å—äº¬å¸‚'),
(488, 1, 5, 46, '18629522066'),
(489, 1, 7, 46, ''),
(490, 1, 12, 46, 'e10adc3949ba59abbe56e057f20f883e'),
(491, 1, 3, 46, 'Default Store View'),
(492, 1, 137, 46, '70019'),
(493, 1, 132, 46, '18629522066'),
(494, 1, 133, 46, '1990-01-01 00:00:00'),
(495, 1, 134, 46, '1'),
(496, 1, 135, 46, '/image/apple.jpg'),
(497, 1, 136, 46, '18629522066'),
(498, 1, 138, 46, 'å—äº¬å¸‚'),
(499, 1, 5, 47, '18295698515'),
(500, 1, 7, 47, ''),
(501, 1, 12, 47, 'e10adc3949ba59abbe56e057f20f883e'),
(502, 1, 3, 47, 'Default Store View'),
(503, 1, 137, 47, '70020'),
(504, 1, 132, 47, '18295698515'),
(505, 1, 133, 47, '1990-01-01 00:00:00'),
(506, 1, 134, 47, '1'),
(507, 1, 135, 47, '/image/apple.jpg'),
(508, 1, 136, 47, '18295698515'),
(509, 1, 138, 47, 'å—äº¬å¸‚'),
(510, 1, 5, 48, '18121066600'),
(511, 1, 7, 48, ''),
(512, 1, 12, 48, 'e10adc3949ba59abbe56e057f20f883e'),
(513, 1, 3, 48, 'Default Store View'),
(514, 1, 137, 48, '70029'),
(515, 1, 132, 48, '18121066600'),
(516, 1, 133, 48, '1990-01-01 00:00:00'),
(517, 1, 134, 48, '1'),
(518, 1, 135, 48, '/image/apple.jpg'),
(519, 1, 136, 48, '18121066600'),
(520, 1, 138, 48, 'å—äº¬å¸‚'),
(521, 1, 5, 49, '13638346082'),
(522, 1, 7, 49, ''),
(523, 1, 12, 49, 'e10adc3949ba59abbe56e057f20f883e'),
(524, 1, 3, 49, 'Default Store View'),
(525, 1, 137, 49, '70030'),
(526, 1, 132, 49, '13638346082'),
(527, 1, 133, 49, '1990-01-01 00:00:00'),
(528, 1, 134, 49, '1'),
(529, 1, 135, 49, '/image/apple.jpg'),
(530, 1, 136, 49, '13638346082'),
(531, 1, 138, 49, 'å—äº¬å¸‚'),
(532, 1, 5, 50, '18664419546'),
(533, 1, 7, 50, ''),
(534, 1, 12, 50, 'e10adc3949ba59abbe56e057f20f883e'),
(535, 1, 3, 50, 'Default Store View'),
(536, 1, 137, 50, '70032'),
(537, 1, 132, 50, '18664419546'),
(538, 1, 133, 50, '1990-01-01 00:00:00'),
(539, 1, 134, 50, '1'),
(540, 1, 135, 50, '/image/apple.jpg'),
(541, 1, 136, 50, '18664419546'),
(542, 1, 138, 50, 'å—äº¬å¸‚'),
(543, 1, 5, 51, '13336879000'),
(544, 1, 7, 51, ''),
(545, 1, 12, 51, 'e10adc3949ba59abbe56e057f20f883e'),
(546, 1, 3, 51, 'Default Store View'),
(547, 1, 137, 51, '70035'),
(548, 1, 132, 51, '13336879000'),
(549, 1, 133, 51, '1990-01-01 00:00:00'),
(550, 1, 134, 51, '1'),
(551, 1, 135, 51, '/image/apple.jpg'),
(552, 1, 136, 51, '13336879000'),
(553, 1, 138, 51, 'å—äº¬å¸‚'),
(554, 1, 5, 52, '15399249994'),
(555, 1, 7, 52, ''),
(556, 1, 12, 52, 'e10adc3949ba59abbe56e057f20f883e'),
(557, 1, 3, 52, 'Default Store View'),
(558, 1, 137, 52, '70037'),
(559, 1, 132, 52, '15399249994'),
(560, 1, 133, 52, '1990-01-01 00:00:00'),
(561, 1, 134, 52, '1'),
(562, 1, 135, 52, '/image/apple.jpg'),
(563, 1, 136, 52, '15399249994'),
(564, 1, 138, 52, 'å—äº¬å¸‚'),
(565, 1, 5, 53, '13863057223'),
(566, 1, 7, 53, ''),
(567, 1, 12, 53, 'e10adc3949ba59abbe56e057f20f883e'),
(568, 1, 3, 53, 'Default Store View'),
(569, 1, 137, 53, '70043'),
(570, 1, 132, 53, '13863057223'),
(571, 1, 133, 53, '1990-01-01 00:00:00'),
(572, 1, 134, 53, '1'),
(573, 1, 135, 53, '/image/apple.jpg'),
(574, 1, 136, 53, '13863057223'),
(575, 1, 138, 53, 'å—äº¬å¸‚'),
(576, 1, 5, 54, '13386831112'),
(577, 1, 7, 54, ''),
(578, 1, 12, 54, 'e10adc3949ba59abbe56e057f20f883e'),
(579, 1, 3, 54, 'Default Store View'),
(580, 1, 137, 54, '70045'),
(581, 1, 132, 54, '13386831112'),
(582, 1, 133, 54, '1990-01-01 00:00:00'),
(583, 1, 134, 54, '1'),
(584, 1, 135, 54, '/image/apple.jpg'),
(585, 1, 136, 54, '13386831112'),
(586, 1, 138, 54, 'å—äº¬å¸‚'),
(587, 1, 5, 55, '18817392880'),
(588, 1, 7, 55, ''),
(589, 1, 12, 55, 'e10adc3949ba59abbe56e057f20f883e'),
(590, 1, 3, 55, 'Default Store View'),
(591, 1, 137, 55, '70047'),
(592, 1, 132, 55, '18817392880'),
(593, 1, 133, 55, '1990-01-01 00:00:00'),
(594, 1, 134, 55, '1'),
(595, 1, 135, 55, '/image/apple.jpg'),
(596, 1, 136, 55, '18817392880'),
(597, 1, 138, 55, 'å—äº¬å¸‚'),
(598, 1, 5, 56, '15009012758'),
(599, 1, 7, 56, ''),
(600, 1, 12, 56, 'e10adc3949ba59abbe56e057f20f883e'),
(601, 1, 3, 56, 'Default Store View'),
(602, 1, 137, 56, '70049'),
(603, 1, 132, 56, '15009012758'),
(604, 1, 133, 56, '1990-01-01 00:00:00'),
(605, 1, 134, 56, '1'),
(606, 1, 135, 56, '/image/apple.jpg'),
(607, 1, 136, 56, '15009012758'),
(608, 1, 138, 56, 'å—äº¬å¸‚'),
(609, 1, 5, 57, '13482467295'),
(610, 1, 7, 57, ''),
(611, 1, 12, 57, 'e10adc3949ba59abbe56e057f20f883e'),
(612, 1, 3, 57, 'Default Store View'),
(613, 1, 137, 57, '70051'),
(614, 1, 132, 57, '13482467295'),
(615, 1, 133, 57, '1990-01-01 00:00:00'),
(616, 1, 134, 57, '1'),
(617, 1, 135, 57, '/image/apple.jpg'),
(618, 1, 136, 57, '13482467295'),
(619, 1, 138, 57, 'å—äº¬å¸‚'),
(620, 1, 5, 58, '15996358512'),
(621, 1, 7, 58, ''),
(622, 1, 12, 58, 'e10adc3949ba59abbe56e057f20f883e'),
(623, 1, 3, 58, 'Default Store View'),
(624, 1, 137, 58, '70053'),
(625, 1, 132, 58, '15996358512'),
(626, 1, 133, 58, '1990-01-01 00:00:00'),
(627, 1, 134, 58, '1'),
(628, 1, 135, 58, '/image/apple.jpg'),
(629, 1, 136, 58, '15996358512'),
(630, 1, 138, 58, 'å—äº¬å¸‚'),
(631, 1, 5, 59, '18243085994'),
(632, 1, 7, 59, ''),
(633, 1, 12, 59, 'e10adc3949ba59abbe56e057f20f883e'),
(634, 1, 3, 59, 'Default Store View'),
(635, 1, 137, 59, '70057'),
(636, 1, 132, 59, '18243085994'),
(637, 1, 133, 59, '1990-01-01 00:00:00'),
(638, 1, 134, 59, '1'),
(639, 1, 135, 59, '/image/apple.jpg'),
(640, 1, 136, 59, '18243085994'),
(641, 1, 138, 59, 'å—äº¬å¸‚'),
(642, 1, 5, 60, '13814545990'),
(643, 1, 7, 60, ''),
(644, 1, 12, 60, 'e10adc3949ba59abbe56e057f20f883e'),
(645, 1, 3, 60, 'Default Store View'),
(646, 1, 137, 60, '70060'),
(647, 1, 132, 60, '13814545990'),
(648, 1, 133, 60, '1990-01-01 00:00:00'),
(649, 1, 134, 60, '1'),
(650, 1, 135, 60, '/image/apple.jpg'),
(651, 1, 136, 60, '13814545990'),
(652, 1, 138, 60, 'å—äº¬å¸‚'),
(653, 1, 5, 61, '13641959146'),
(654, 1, 7, 61, ''),
(655, 1, 12, 61, 'e10adc3949ba59abbe56e057f20f883e'),
(656, 1, 3, 61, 'Default Store View'),
(657, 1, 137, 61, '70061'),
(658, 1, 132, 61, '13641959146'),
(659, 1, 133, 61, '1990-01-01 00:00:00'),
(660, 1, 134, 61, '1'),
(661, 1, 135, 61, '/image/apple.jpg'),
(662, 1, 136, 61, '13641959146'),
(663, 1, 138, 61, 'ä¸Šæµ·å¸‚'),
(664, 1, 5, 62, '15811816417'),
(665, 1, 7, 62, ''),
(666, 1, 12, 62, 'e10adc3949ba59abbe56e057f20f883e'),
(667, 1, 3, 62, 'Default Store View'),
(668, 1, 137, 62, '70062'),
(669, 1, 132, 62, '15811816417'),
(670, 1, 133, 62, '1990-01-01 00:00:00'),
(671, 1, 134, 62, '1'),
(672, 1, 135, 62, '/image/apple.jpg'),
(673, 1, 136, 62, '15811816417'),
(674, 1, 138, 62, 'å—äº¬å¸‚'),
(675, 1, 5, 63, '18061476945'),
(676, 1, 7, 63, ''),
(677, 1, 12, 63, 'e10adc3949ba59abbe56e057f20f883e'),
(678, 1, 3, 63, 'Default Store View'),
(679, 1, 137, 63, '70064'),
(680, 1, 132, 63, '18061476945'),
(681, 1, 133, 63, '1990-01-01 00:00:00'),
(682, 1, 134, 63, '1'),
(683, 1, 135, 63, '/image/apple.jpg'),
(684, 1, 136, 63, '18061476945'),
(685, 1, 138, 63, 'å—äº¬å¸‚'),
(686, 1, 5, 64, '18551633538'),
(687, 1, 7, 64, ''),
(688, 1, 12, 64, 'e10adc3949ba59abbe56e057f20f883e'),
(689, 1, 3, 64, 'Default Store View'),
(690, 1, 137, 64, '70066'),
(691, 1, 132, 64, '18551633538'),
(692, 1, 133, 64, '1990-01-01 00:00:00'),
(693, 1, 134, 64, '1'),
(694, 1, 135, 64, '/image/apple.jpg'),
(695, 1, 136, 64, '18551633538'),
(696, 1, 138, 64, 'å—äº¬å¸‚'),
(697, 1, 5, 65, '18679188551'),
(698, 1, 7, 65, ''),
(699, 1, 12, 65, 'e10adc3949ba59abbe56e057f20f883e'),
(700, 1, 3, 65, 'Default Store View'),
(701, 1, 137, 65, '70081'),
(702, 1, 132, 65, '18679188551'),
(703, 1, 133, 65, '1990-01-01 00:00:00'),
(704, 1, 134, 65, '1'),
(705, 1, 135, 65, '/image/apple.jpg'),
(706, 1, 136, 65, '18679188551'),
(707, 1, 138, 65, 'å—äº¬å¸‚'),
(708, 1, 5, 66, '18688160658'),
(709, 1, 7, 66, ''),
(710, 1, 12, 66, 'e10adc3949ba59abbe56e057f20f883e'),
(711, 1, 3, 66, 'Default Store View'),
(712, 1, 137, 66, '70086'),
(713, 1, 132, 66, '18688160658'),
(714, 1, 133, 66, '1990-01-01 00:00:00'),
(715, 1, 134, 66, '1'),
(716, 1, 135, 66, '/image/apple.jpg'),
(717, 1, 136, 66, '18688160658'),
(718, 1, 138, 66, 'å—äº¬å¸‚'),
(719, 1, 5, 67, '13913029316'),
(720, 1, 7, 67, ''),
(721, 1, 12, 67, 'e10adc3949ba59abbe56e057f20f883e'),
(722, 1, 3, 67, 'Default Store View'),
(723, 1, 137, 67, '70090'),
(724, 1, 132, 67, '13913029316'),
(725, 1, 133, 67, '1990-01-01 00:00:00'),
(726, 1, 134, 67, '1'),
(727, 1, 135, 67, '/image/apple.jpg'),
(728, 1, 136, 67, '13913029316'),
(729, 1, 138, 67, 'å—äº¬å¸‚'),
(730, 1, 5, 68, '13343338444'),
(731, 1, 7, 68, ''),
(732, 1, 12, 68, 'e10adc3949ba59abbe56e057f20f883e'),
(733, 1, 3, 68, 'Default Store View'),
(734, 1, 137, 68, '70096'),
(735, 1, 132, 68, '13343338444'),
(736, 1, 133, 68, '1990-01-01 00:00:00'),
(737, 1, 134, 68, '1'),
(738, 1, 135, 68, '/image/apple.jpg'),
(739, 1, 136, 68, '13343338444'),
(740, 1, 138, 68, 'å—äº¬å¸‚'),
(741, 1, 5, 69, '18951821118'),
(742, 1, 7, 69, ''),
(743, 1, 12, 69, 'e10adc3949ba59abbe56e057f20f883e'),
(744, 1, 3, 69, 'Default Store View'),
(745, 1, 137, 69, '70097'),
(746, 1, 132, 69, '18951821118'),
(747, 1, 133, 69, '1990-01-01 00:00:00'),
(748, 1, 134, 69, '1'),
(749, 1, 135, 69, '/image/apple.jpg'),
(750, 1, 136, 69, '18951821118'),
(751, 1, 138, 69, 'å—äº¬å¸‚'),
(752, 1, 5, 70, '13001951654'),
(753, 1, 7, 70, ''),
(754, 1, 12, 70, 'e10adc3949ba59abbe56e057f20f883e'),
(755, 1, 3, 70, 'Default Store View'),
(756, 1, 137, 70, '70101'),
(757, 1, 132, 70, '13001951654'),
(758, 1, 133, 70, '1990-01-01 00:00:00'),
(759, 1, 134, 70, '1'),
(760, 1, 135, 70, '/image/apple.jpg'),
(761, 1, 136, 70, '13001951654'),
(762, 1, 138, 70, 'å—äº¬å¸‚'),
(763, 1, 5, 71, '15916753029'),
(764, 1, 7, 71, ''),
(765, 1, 12, 71, 'e10adc3949ba59abbe56e057f20f883e'),
(766, 1, 3, 71, 'Default Store View'),
(767, 1, 137, 71, '70102'),
(768, 1, 132, 71, '15916753029'),
(769, 1, 133, 71, '1990-01-01 00:00:00'),
(770, 1, 134, 71, '1'),
(771, 1, 135, 71, '/image/apple.jpg'),
(772, 1, 136, 71, '15916753029'),
(773, 1, 138, 71, 'å—äº¬å¸‚'),
(774, 1, 5, 72, '13512105511'),
(775, 1, 7, 72, ''),
(776, 1, 12, 72, 'e10adc3949ba59abbe56e057f20f883e'),
(777, 1, 3, 72, 'Default Store View'),
(778, 1, 137, 72, '70107'),
(779, 1, 132, 72, '13512105511'),
(780, 1, 133, 72, '1990-01-01 00:00:00'),
(781, 1, 134, 72, '1'),
(782, 1, 135, 72, '/image/apple.jpg'),
(783, 1, 136, 72, '13512105511'),
(784, 1, 138, 72, 'å—äº¬å¸‚'),
(785, 1, 5, 73, '15832146830'),
(786, 1, 7, 73, ''),
(787, 1, 12, 73, 'e10adc3949ba59abbe56e057f20f883e'),
(788, 1, 3, 73, 'Default Store View'),
(789, 1, 137, 73, '70112'),
(790, 1, 132, 73, '15832146830'),
(791, 1, 133, 73, '1990-01-01 00:00:00'),
(792, 1, 134, 73, '1'),
(793, 1, 135, 73, '/image/apple.jpg'),
(794, 1, 136, 73, '15832146830'),
(795, 1, 138, 73, 'å—äº¬å¸‚'),
(796, 1, 5, 74, '15251718866'),
(797, 1, 7, 74, ''),
(798, 1, 12, 74, 'e10adc3949ba59abbe56e057f20f883e'),
(799, 1, 3, 74, 'Default Store View'),
(800, 1, 137, 74, '70125'),
(801, 1, 132, 74, '15251718866'),
(802, 1, 133, 74, '1990-01-01 00:00:00'),
(803, 1, 134, 74, '1'),
(804, 1, 135, 74, '/image/apple.jpg'),
(805, 1, 136, 74, '15251718866'),
(806, 1, 138, 74, 'å—äº¬å¸‚'),
(807, 1, 5, 75, '18936859551'),
(808, 1, 7, 75, ''),
(809, 1, 12, 75, 'e10adc3949ba59abbe56e057f20f883e'),
(810, 1, 3, 75, 'Default Store View'),
(811, 1, 137, 75, '70128'),
(812, 1, 132, 75, '18936859551'),
(813, 1, 133, 75, '1990-01-01 00:00:00'),
(814, 1, 134, 75, '1'),
(815, 1, 135, 75, '/image/apple.jpg'),
(816, 1, 136, 75, '18936859551'),
(817, 1, 138, 75, 'å—äº¬å¸‚'),
(818, 1, 5, 76, '18275203317'),
(819, 1, 7, 76, ''),
(820, 1, 12, 76, 'e10adc3949ba59abbe56e057f20f883e'),
(821, 1, 3, 76, 'Default Store View'),
(822, 1, 137, 76, '70131'),
(823, 1, 132, 76, '18275203317'),
(824, 1, 133, 76, '1990-01-01 00:00:00'),
(825, 1, 134, 76, '1'),
(826, 1, 135, 76, '/image/apple.jpg'),
(827, 1, 136, 76, '18275203317'),
(828, 1, 138, 76, 'å—äº¬å¸‚'),
(829, 1, 5, 77, '18060309433'),
(830, 1, 7, 77, ''),
(831, 1, 12, 77, 'e10adc3949ba59abbe56e057f20f883e'),
(832, 1, 3, 77, 'Default Store View'),
(833, 1, 137, 77, '70149'),
(834, 1, 132, 77, '18060309433'),
(835, 1, 133, 77, '1990-01-01 00:00:00'),
(836, 1, 134, 77, '1'),
(837, 1, 135, 77, '/image/apple.jpg'),
(838, 1, 136, 77, '18060309433'),
(839, 1, 138, 77, 'å—äº¬å¸‚'),
(840, 1, 5, 78, '18601040934'),
(841, 1, 7, 78, ''),
(842, 1, 12, 78, 'e10adc3949ba59abbe56e057f20f883e'),
(843, 1, 3, 78, 'Default Store View'),
(844, 1, 137, 78, '70157'),
(845, 1, 132, 78, '18601040934'),
(846, 1, 133, 78, '1990-01-01 00:00:00'),
(847, 1, 134, 78, '1'),
(848, 1, 135, 78, '/image/apple.jpg'),
(849, 1, 136, 78, '18601040934'),
(850, 1, 138, 78, 'å—äº¬å¸‚'),
(851, 1, 5, 79, '13910849695'),
(852, 1, 7, 79, ''),
(853, 1, 12, 79, 'e10adc3949ba59abbe56e057f20f883e'),
(854, 1, 3, 79, 'Default Store View'),
(855, 1, 137, 79, '70158'),
(856, 1, 132, 79, '13910849695'),
(857, 1, 133, 79, '1990-01-01 00:00:00'),
(858, 1, 134, 79, '1'),
(859, 1, 135, 79, '/image/apple.jpg'),
(860, 1, 136, 79, '13910849695'),
(861, 1, 138, 79, 'å—äº¬å¸‚'),
(862, 1, 5, 80, '18563988579'),
(863, 1, 7, 80, ''),
(864, 1, 12, 80, 'e10adc3949ba59abbe56e057f20f883e'),
(865, 1, 3, 80, 'Default Store View'),
(866, 1, 137, 80, '70166'),
(867, 1, 132, 80, '18563988579'),
(868, 1, 133, 80, '1990-01-01 00:00:00'),
(869, 1, 134, 80, '1'),
(870, 1, 135, 80, '/image/apple.jpg'),
(871, 1, 136, 80, '18563988579'),
(872, 1, 138, 80, 'å—äº¬å¸‚'),
(873, 1, 5, 81, '15374718779'),
(874, 1, 7, 81, ''),
(875, 1, 12, 81, 'e10adc3949ba59abbe56e057f20f883e'),
(876, 1, 3, 81, 'Default Store View'),
(877, 1, 137, 81, '70167'),
(878, 1, 132, 81, '15374718779'),
(879, 1, 133, 81, '1990-01-01 00:00:00'),
(880, 1, 134, 81, '1'),
(881, 1, 135, 81, '/image/apple.jpg'),
(882, 1, 136, 81, '15374718779'),
(883, 1, 138, 81, 'å—äº¬å¸‚'),
(884, 1, 5, 82, '15169080718'),
(885, 1, 7, 82, ''),
(886, 1, 12, 82, 'e10adc3949ba59abbe56e057f20f883e'),
(887, 1, 3, 82, 'Default Store View'),
(888, 1, 137, 82, '70173'),
(889, 1, 132, 82, '15169080718'),
(890, 1, 133, 82, '1990-01-01 00:00:00'),
(891, 1, 134, 82, '1'),
(892, 1, 135, 82, '/image/apple.jpg'),
(893, 1, 136, 82, '15169080718'),
(894, 1, 138, 82, 'å—äº¬å¸‚'),
(895, 1, 5, 83, '13875879875'),
(896, 1, 7, 83, ''),
(897, 1, 12, 83, 'e10adc3949ba59abbe56e057f20f883e'),
(898, 1, 3, 83, 'Default Store View'),
(899, 1, 137, 83, '70175'),
(900, 1, 132, 83, '13875879875'),
(901, 1, 133, 83, '1990-01-01 00:00:00'),
(902, 1, 134, 83, '1'),
(903, 1, 135, 83, '/image/apple.jpg'),
(904, 1, 136, 83, '13875879875'),
(905, 1, 138, 83, 'å—äº¬å¸‚'),
(906, 1, 5, 84, '13770586220'),
(907, 1, 7, 84, ''),
(908, 1, 12, 84, 'e10adc3949ba59abbe56e057f20f883e'),
(909, 1, 3, 84, 'Default Store View'),
(910, 1, 137, 84, '70181'),
(911, 1, 132, 84, '13770586220'),
(912, 1, 133, 84, '1990-01-01 00:00:00'),
(913, 1, 134, 84, '1'),
(914, 1, 135, 84, '/image/apple.jpg'),
(915, 1, 136, 84, '13770586220'),
(916, 1, 138, 84, 'å—äº¬å¸‚'),
(917, 1, 5, 85, '13437174579'),
(918, 1, 7, 85, ''),
(919, 1, 12, 85, 'e10adc3949ba59abbe56e057f20f883e'),
(920, 1, 3, 85, 'Default Store View'),
(921, 1, 137, 85, '70183'),
(922, 1, 132, 85, '13437174579'),
(923, 1, 133, 85, '1990-01-01 00:00:00'),
(924, 1, 134, 85, '1'),
(925, 1, 135, 85, '/image/apple.jpg'),
(926, 1, 136, 85, '13437174579'),
(927, 1, 138, 85, 'å—äº¬å¸‚'),
(928, 1, 5, 86, '15203398930'),
(929, 1, 7, 86, ''),
(930, 1, 12, 86, 'e10adc3949ba59abbe56e057f20f883e'),
(931, 1, 3, 86, 'Default Store View'),
(932, 1, 137, 86, '70184'),
(933, 1, 132, 86, '15203398930'),
(934, 1, 133, 86, '1990-01-01 00:00:00'),
(935, 1, 134, 86, '1'),
(936, 1, 135, 86, '/image/apple.jpg'),
(937, 1, 136, 86, '15203398930'),
(938, 1, 138, 86, 'å—äº¬å¸‚'),
(939, 1, 5, 87, '15135513939'),
(940, 1, 7, 87, ''),
(941, 1, 12, 87, 'e10adc3949ba59abbe56e057f20f883e'),
(942, 1, 3, 87, 'Default Store View'),
(943, 1, 137, 87, '70187'),
(944, 1, 132, 87, '15135513939'),
(945, 1, 133, 87, '1990-01-01 00:00:00'),
(946, 1, 134, 87, '1'),
(947, 1, 135, 87, '/image/apple.jpg'),
(948, 1, 136, 87, '15135513939'),
(949, 1, 138, 87, 'å—äº¬å¸‚'),
(950, 1, 5, 88, '13761373199'),
(951, 1, 7, 88, ''),
(952, 1, 12, 88, 'e10adc3949ba59abbe56e057f20f883e'),
(953, 1, 3, 88, 'Default Store View'),
(954, 1, 137, 88, '70191'),
(955, 1, 132, 88, '13761373199'),
(956, 1, 133, 88, '1990-01-01 00:00:00'),
(957, 1, 134, 88, '1'),
(958, 1, 135, 88, '/image/apple.jpg'),
(959, 1, 136, 88, '13761373199'),
(960, 1, 138, 88, 'å—äº¬å¸‚'),
(961, 1, 5, 89, '15601230624'),
(962, 1, 7, 89, ''),
(963, 1, 12, 89, 'e10adc3949ba59abbe56e057f20f883e'),
(964, 1, 3, 89, 'Default Store View'),
(965, 1, 137, 89, '70198'),
(966, 1, 132, 89, '15601230624'),
(967, 1, 133, 89, '1990-01-01 00:00:00'),
(968, 1, 134, 89, '1'),
(969, 1, 135, 89, '/image/apple.jpg'),
(970, 1, 136, 89, '15601230624'),
(971, 1, 138, 89, 'å—äº¬å¸‚'),
(972, 1, 5, 90, '13915990686'),
(973, 1, 7, 90, ''),
(974, 1, 12, 90, 'e10adc3949ba59abbe56e057f20f883e'),
(975, 1, 3, 90, 'Default Store View'),
(976, 1, 137, 90, '70199'),
(977, 1, 132, 90, '13915990686'),
(978, 1, 133, 90, '1990-01-01 00:00:00'),
(979, 1, 134, 90, '1'),
(980, 1, 135, 90, '/image/apple.jpg'),
(981, 1, 136, 90, '13915990686'),
(982, 1, 138, 90, 'å—äº¬å¸‚'),
(983, 1, 5, 91, '13770961049'),
(984, 1, 7, 91, ''),
(985, 1, 12, 91, 'e10adc3949ba59abbe56e057f20f883e'),
(986, 1, 3, 91, 'Default Store View'),
(987, 1, 137, 91, '70202'),
(988, 1, 132, 91, '13770961049'),
(989, 1, 133, 91, '1990-01-01 00:00:00'),
(990, 1, 134, 91, '1'),
(991, 1, 135, 91, '/image/apple.jpg'),
(992, 1, 136, 91, '13770961049'),
(993, 1, 138, 91, 'å—äº¬å¸‚'),
(994, 1, 5, 92, '15861842000'),
(995, 1, 7, 92, ''),
(996, 1, 12, 92, 'e10adc3949ba59abbe56e057f20f883e'),
(997, 1, 3, 92, 'Default Store View'),
(998, 1, 137, 92, '70206'),
(999, 1, 132, 92, '15861842000'),
(1000, 1, 133, 92, '1990-01-01 00:00:00'),
(1001, 1, 134, 92, '1'),
(1002, 1, 135, 92, '/image/apple.jpg'),
(1003, 1, 136, 92, '15861842000'),
(1004, 1, 138, 92, 'å—äº¬å¸‚'),
(1005, 1, 5, 93, '13151585635'),
(1006, 1, 7, 93, ''),
(1007, 1, 12, 93, 'e10adc3949ba59abbe56e057f20f883e'),
(1008, 1, 3, 93, 'Default Store View'),
(1009, 1, 137, 93, '70207'),
(1010, 1, 132, 93, '13151585635'),
(1011, 1, 133, 93, '1990-01-01 00:00:00'),
(1012, 1, 134, 93, '1'),
(1013, 1, 135, 93, '/image/apple.jpg'),
(1014, 1, 136, 93, '13151585635'),
(1015, 1, 138, 93, 'å—äº¬å¸‚'),
(1016, 1, 5, 94, '18020167583'),
(1017, 1, 7, 94, ''),
(1018, 1, 12, 94, 'e10adc3949ba59abbe56e057f20f883e'),
(1019, 1, 3, 94, 'Default Store View'),
(1020, 1, 137, 94, '70210'),
(1021, 1, 132, 94, '18020167583'),
(1022, 1, 133, 94, '1990-01-01 00:00:00'),
(1023, 1, 134, 94, '1'),
(1024, 1, 135, 94, '/image/apple.jpg'),
(1025, 1, 136, 94, '18020167583'),
(1026, 1, 138, 94, 'å—äº¬å¸‚'),
(1027, 1, 5, 95, '15851857851'),
(1028, 1, 7, 95, ''),
(1029, 1, 12, 95, 'e10adc3949ba59abbe56e057f20f883e'),
(1030, 1, 3, 95, 'Default Store View'),
(1031, 1, 137, 95, '70212'),
(1032, 1, 132, 95, '15851857851'),
(1033, 1, 133, 95, '1990-01-01 00:00:00'),
(1034, 1, 134, 95, '1'),
(1035, 1, 135, 95, '/image/apple.jpg'),
(1036, 1, 136, 95, '15851857851'),
(1037, 1, 138, 95, 'å—äº¬å¸‚'),
(1038, 1, 5, 96, '18068807263'),
(1039, 1, 7, 96, ''),
(1040, 1, 12, 96, 'e10adc3949ba59abbe56e057f20f883e'),
(1041, 1, 3, 96, 'Default Store View'),
(1042, 1, 137, 96, '70213'),
(1043, 1, 132, 96, '18068807263'),
(1044, 1, 133, 96, '1990-01-01 00:00:00'),
(1045, 1, 134, 96, '1'),
(1046, 1, 135, 96, '/image/apple.jpg'),
(1047, 1, 136, 96, '18068807263'),
(1048, 1, 138, 96, 'å—äº¬å¸‚'),
(1049, 1, 5, 97, '13910120992'),
(1050, 1, 7, 97, ''),
(1051, 1, 12, 97, 'e10adc3949ba59abbe56e057f20f883e'),
(1052, 1, 3, 97, 'Default Store View'),
(1053, 1, 137, 97, '70225'),
(1054, 1, 132, 97, '13910120992'),
(1055, 1, 133, 97, '1990-01-01 00:00:00'),
(1056, 1, 134, 97, '1'),
(1057, 1, 135, 97, '/image/apple.jpg'),
(1058, 1, 136, 97, '13910120992'),
(1059, 1, 138, 97, 'å—äº¬å¸‚'),
(1060, 1, 5, 98, '13951016607'),
(1061, 1, 7, 98, ''),
(1062, 1, 12, 98, 'e10adc3949ba59abbe56e057f20f883e'),
(1063, 1, 3, 98, 'Default Store View'),
(1064, 1, 137, 98, '70226'),
(1065, 1, 132, 98, '13951016607'),
(1066, 1, 133, 98, '1990-01-01 00:00:00'),
(1067, 1, 134, 98, '1'),
(1068, 1, 135, 98, '/image/apple.jpg'),
(1069, 1, 136, 98, '13951016607'),
(1070, 1, 138, 98, 'å—äº¬å¸‚'),
(1071, 1, 5, 99, '18375622453'),
(1072, 1, 7, 99, ''),
(1073, 1, 12, 99, 'e10adc3949ba59abbe56e057f20f883e'),
(1074, 1, 3, 99, 'Default Store View'),
(1075, 1, 137, 99, '70227'),
(1076, 1, 132, 99, '18375622453'),
(1077, 1, 133, 99, '1990-01-01 00:00:00'),
(1078, 1, 134, 99, '1'),
(1079, 1, 135, 99, '/image/apple.jpg'),
(1080, 1, 136, 99, '18375622453'),
(1081, 1, 138, 99, 'å—äº¬å¸‚'),
(1082, 1, 5, 100, '18306600981'),
(1083, 1, 7, 100, ''),
(1084, 1, 12, 100, 'e10adc3949ba59abbe56e057f20f883e'),
(1085, 1, 3, 100, 'Default Store View'),
(1086, 1, 137, 100, '70241'),
(1087, 1, 132, 100, '18306600981'),
(1088, 1, 133, 100, '1990-01-01 00:00:00'),
(1089, 1, 134, 100, '1'),
(1090, 1, 135, 100, '/image/apple.jpg'),
(1091, 1, 136, 100, '18306600981'),
(1092, 1, 138, 100, 'å—äº¬å¸‚'),
(1093, 1, 5, 101, '18151614168'),
(1094, 1, 7, 101, ''),
(1095, 1, 12, 101, 'e10adc3949ba59abbe56e057f20f883e'),
(1096, 1, 3, 101, 'Default Store View'),
(1097, 1, 137, 101, '70244'),
(1098, 1, 132, 101, '18151614168'),
(1099, 1, 133, 101, '1990-01-01 00:00:00'),
(1100, 1, 134, 101, '1'),
(1101, 1, 135, 101, '/image/apple.jpg'),
(1102, 1, 136, 101, '18151614168'),
(1103, 1, 138, 101, 'å—äº¬å¸‚'),
(1104, 1, 5, 102, '18382455885'),
(1105, 1, 7, 102, ''),
(1106, 1, 12, 102, 'e10adc3949ba59abbe56e057f20f883e'),
(1107, 1, 3, 102, 'Default Store View'),
(1108, 1, 137, 102, '70245'),
(1109, 1, 132, 102, '18382455885'),
(1110, 1, 133, 102, '1990-01-01 00:00:00'),
(1111, 1, 134, 102, '1'),
(1112, 1, 135, 102, '/image/apple.jpg'),
(1113, 1, 136, 102, '18382455885'),
(1114, 1, 138, 102, 'å—äº¬å¸‚'),
(1115, 1, 5, 103, '13729840508'),
(1116, 1, 7, 103, ''),
(1117, 1, 12, 103, 'e10adc3949ba59abbe56e057f20f883e'),
(1118, 1, 3, 103, 'Default Store View'),
(1119, 1, 137, 103, '70251'),
(1120, 1, 132, 103, '13729840508'),
(1121, 1, 133, 103, '1990-01-01 00:00:00'),
(1122, 1, 134, 103, '1'),
(1123, 1, 135, 103, '/image/apple.jpg'),
(1124, 1, 136, 103, '13729840508'),
(1125, 1, 138, 103, 'å—äº¬å¸‚'),
(1126, 1, 5, 104, '18201899832'),
(1127, 1, 7, 104, ''),
(1128, 1, 12, 104, 'e10adc3949ba59abbe56e057f20f883e'),
(1129, 1, 3, 104, 'Default Store View'),
(1130, 1, 137, 104, '70265'),
(1131, 1, 132, 104, '18201899832'),
(1132, 1, 133, 104, '1990-01-01 00:00:00'),
(1133, 1, 134, 104, '1'),
(1134, 1, 135, 104, '/image/apple.jpg'),
(1135, 1, 136, 104, '18201899832'),
(1136, 1, 138, 104, 'å—äº¬å¸‚'),
(1137, 1, 5, 105, '18692241334'),
(1138, 1, 7, 105, ''),
(1139, 1, 12, 105, 'e10adc3949ba59abbe56e057f20f883e'),
(1140, 1, 3, 105, 'Default Store View'),
(1141, 1, 137, 105, '70269'),
(1142, 1, 132, 105, '18692241334'),
(1143, 1, 133, 105, '1990-01-01 00:00:00'),
(1144, 1, 134, 105, '1'),
(1145, 1, 135, 105, '/image/apple.jpg'),
(1146, 1, 136, 105, '18692241334'),
(1147, 1, 138, 105, 'å—äº¬å¸‚'),
(1148, 1, 5, 106, '15624145677'),
(1149, 1, 7, 106, ''),
(1150, 1, 12, 106, 'e10adc3949ba59abbe56e057f20f883e'),
(1151, 1, 3, 106, 'Default Store View'),
(1152, 1, 137, 106, '70275'),
(1153, 1, 132, 106, '15624145677'),
(1154, 1, 133, 106, '1990-01-01 00:00:00'),
(1155, 1, 134, 106, '1'),
(1156, 1, 135, 106, '/image/apple.jpg'),
(1157, 1, 136, 106, '15624145677'),
(1158, 1, 138, 106, 'å—äº¬å¸‚'),
(1159, 1, 5, 107, '18936879009'),
(1160, 1, 7, 107, ''),
(1161, 1, 12, 107, 'e10adc3949ba59abbe56e057f20f883e'),
(1162, 1, 3, 107, 'Default Store View'),
(1163, 1, 137, 107, '70280'),
(1164, 1, 132, 107, '18936879009'),
(1165, 1, 133, 107, '1990-01-01 00:00:00'),
(1166, 1, 134, 107, '1'),
(1167, 1, 135, 107, '/image/apple.jpg'),
(1168, 1, 136, 107, '18936879009'),
(1169, 1, 138, 107, 'å—äº¬å¸‚'),
(1170, 1, 5, 108, '17600833170'),
(1171, 1, 7, 108, ''),
(1172, 1, 12, 108, 'e10adc3949ba59abbe56e057f20f883e'),
(1173, 1, 3, 108, 'Default Store View'),
(1174, 1, 137, 108, '70281'),
(1175, 1, 132, 108, '17600833170'),
(1176, 1, 133, 108, '1990-01-01 00:00:00'),
(1177, 1, 134, 108, '1'),
(1178, 1, 135, 108, '/image/apple.jpg'),
(1179, 1, 136, 108, '17600833170'),
(1180, 1, 138, 108, 'å—äº¬å¸‚'),
(1181, 1, 5, 109, '13585141788'),
(1182, 1, 7, 109, ''),
(1183, 1, 12, 109, 'e10adc3949ba59abbe56e057f20f883e'),
(1184, 1, 3, 109, 'Default Store View'),
(1185, 1, 137, 109, '70287'),
(1186, 1, 132, 109, '13585141788'),
(1187, 1, 133, 109, '1990-01-01 00:00:00'),
(1188, 1, 134, 109, '1'),
(1189, 1, 135, 109, '/image/apple.jpg'),
(1190, 1, 136, 109, '13585141788'),
(1191, 1, 138, 109, 'å—äº¬å¸‚'),
(1192, 1, 5, 110, '15517960657'),
(1193, 1, 7, 110, ''),
(1194, 1, 12, 110, 'e10adc3949ba59abbe56e057f20f883e'),
(1195, 1, 3, 110, 'Default Store View'),
(1196, 1, 137, 110, '70289'),
(1197, 1, 132, 110, '15517960657'),
(1198, 1, 133, 110, '1990-01-01 00:00:00'),
(1199, 1, 134, 110, '1'),
(1200, 1, 135, 110, '/image/apple.jpg'),
(1201, 1, 136, 110, '15517960657'),
(1202, 1, 138, 110, 'å—äº¬å¸‚'),
(1203, 1, 5, 111, '13927227059'),
(1204, 1, 7, 111, ''),
(1205, 1, 12, 111, 'e10adc3949ba59abbe56e057f20f883e'),
(1206, 1, 3, 111, 'Default Store View'),
(1207, 1, 137, 111, '70290'),
(1208, 1, 132, 111, '13927227059'),
(1209, 1, 133, 111, '1990-01-01 00:00:00'),
(1210, 1, 134, 111, '1'),
(1211, 1, 135, 111, '/image/apple.jpg'),
(1212, 1, 136, 111, '13927227059'),
(1213, 1, 138, 111, 'å—äº¬å¸‚'),
(1214, 1, 5, 112, '13770698976'),
(1215, 1, 7, 112, ''),
(1216, 1, 12, 112, 'e10adc3949ba59abbe56e057f20f883e'),
(1217, 1, 3, 112, 'Default Store View'),
(1218, 1, 137, 112, '70292'),
(1219, 1, 132, 112, '13770698976'),
(1220, 1, 133, 112, '1990-01-01 00:00:00'),
(1221, 1, 134, 112, '1'),
(1222, 1, 135, 112, '/image/apple.jpg'),
(1223, 1, 136, 112, '13770698976'),
(1224, 1, 138, 112, 'å—äº¬å¸‚'),
(1225, 1, 5, 113, '13951941864'),
(1226, 1, 7, 113, ''),
(1227, 1, 12, 113, 'e10adc3949ba59abbe56e057f20f883e'),
(1228, 1, 3, 113, 'Default Store View'),
(1229, 1, 137, 113, '70293'),
(1230, 1, 132, 113, '13951941864'),
(1231, 1, 133, 113, '1990-01-01 00:00:00'),
(1232, 1, 134, 113, '1'),
(1233, 1, 135, 113, '/image/apple.jpg'),
(1234, 1, 136, 113, '13951941864'),
(1235, 1, 138, 113, 'å—äº¬å¸‚'),
(1236, 1, 5, 114, '13785066016'),
(1237, 1, 7, 114, ''),
(1238, 1, 12, 114, 'e10adc3949ba59abbe56e057f20f883e'),
(1239, 1, 3, 114, 'Default Store View'),
(1240, 1, 137, 114, '70294'),
(1241, 1, 132, 114, '13785066016'),
(1242, 1, 133, 114, '1990-01-01 00:00:00'),
(1243, 1, 134, 114, '1'),
(1244, 1, 135, 114, '/image/apple.jpg'),
(1245, 1, 136, 114, '13785066016'),
(1246, 1, 138, 114, 'å—äº¬å¸‚'),
(1247, 1, 5, 115, '18018351682'),
(1248, 1, 7, 115, ''),
(1249, 1, 12, 115, 'e10adc3949ba59abbe56e057f20f883e'),
(1250, 1, 3, 115, 'Default Store View'),
(1251, 1, 137, 115, '70299'),
(1252, 1, 132, 115, '18018351682'),
(1253, 1, 133, 115, '1990-01-01 00:00:00'),
(1254, 1, 134, 115, '1'),
(1255, 1, 135, 115, '/image/apple.jpg'),
(1256, 1, 136, 115, '18018351682'),
(1257, 1, 138, 115, 'å—äº¬å¸‚'),
(1258, 1, 5, 116, '18272897132'),
(1259, 1, 7, 116, ''),
(1260, 1, 12, 116, 'e10adc3949ba59abbe56e057f20f883e'),
(1261, 1, 3, 116, 'Default Store View'),
(1262, 1, 137, 116, '70301'),
(1263, 1, 132, 116, '18272897132'),
(1264, 1, 133, 116, '1990-01-01 00:00:00'),
(1265, 1, 134, 116, '1'),
(1266, 1, 135, 116, '/image/apple.jpg'),
(1267, 1, 136, 116, '18272897132'),
(1268, 1, 138, 116, 'å—äº¬å¸‚'),
(1269, 1, 5, 117, '18817391850'),
(1270, 1, 7, 117, ''),
(1271, 1, 12, 117, 'e10adc3949ba59abbe56e057f20f883e'),
(1272, 1, 3, 117, 'Default Store View'),
(1273, 1, 137, 117, '70308'),
(1274, 1, 132, 117, '18817391850'),
(1275, 1, 133, 117, '1990-01-01 00:00:00'),
(1276, 1, 134, 117, '1'),
(1277, 1, 135, 117, '/image/apple.jpg'),
(1278, 1, 136, 117, '18817391850'),
(1279, 1, 138, 117, 'å—äº¬å¸‚'),
(1280, 1, 5, 118, '13889229321'),
(1281, 1, 7, 118, ''),
(1282, 1, 12, 118, 'e10adc3949ba59abbe56e057f20f883e'),
(1283, 1, 3, 118, 'Default Store View'),
(1284, 1, 137, 118, '70312'),
(1285, 1, 132, 118, '13889229321'),
(1286, 1, 133, 118, '1990-01-01 00:00:00'),
(1287, 1, 134, 118, '1'),
(1288, 1, 135, 118, '/image/apple.jpg'),
(1289, 1, 136, 118, '13889229321'),
(1290, 1, 138, 118, 'å—äº¬å¸‚'),
(1291, 1, 5, 119, '15905155022'),
(1292, 1, 7, 119, ''),
(1293, 1, 12, 119, 'e10adc3949ba59abbe56e057f20f883e'),
(1294, 1, 3, 119, 'Default Store View'),
(1295, 1, 137, 119, '70314'),
(1296, 1, 132, 119, '15905155022'),
(1297, 1, 133, 119, '1990-01-01 00:00:00'),
(1298, 1, 134, 119, '1'),
(1299, 1, 135, 119, '/image/apple.jpg'),
(1300, 1, 136, 119, '15905155022'),
(1301, 1, 138, 119, 'å—äº¬å¸‚'),
(1302, 1, 5, 120, '13851555235'),
(1303, 1, 7, 120, ''),
(1304, 1, 12, 120, 'e10adc3949ba59abbe56e057f20f883e'),
(1305, 1, 3, 120, 'Default Store View'),
(1306, 1, 137, 120, '70318'),
(1307, 1, 132, 120, '13851555235'),
(1308, 1, 133, 120, '1990-01-01 00:00:00'),
(1309, 1, 134, 120, '1'),
(1310, 1, 135, 120, '/image/apple.jpg'),
(1311, 1, 136, 120, '13851555235'),
(1312, 1, 138, 120, 'å—äº¬å¸‚'),
(1313, 1, 5, 121, '18502228621'),
(1314, 1, 7, 121, ''),
(1315, 1, 12, 121, 'e10adc3949ba59abbe56e057f20f883e'),
(1316, 1, 3, 121, 'Default Store View'),
(1317, 1, 137, 121, '70323'),
(1318, 1, 132, 121, '18502228621'),
(1319, 1, 133, 121, '1990-01-01 00:00:00'),
(1320, 1, 134, 121, '1'),
(1321, 1, 135, 121, '/image/apple.jpg'),
(1322, 1, 136, 121, '18502228621'),
(1323, 1, 138, 121, 'å—äº¬å¸‚'),
(1324, 1, 5, 122, '18640025069'),
(1325, 1, 7, 122, ''),
(1326, 1, 12, 122, 'e10adc3949ba59abbe56e057f20f883e'),
(1327, 1, 3, 122, 'Default Store View'),
(1328, 1, 137, 122, '70329'),
(1329, 1, 132, 122, '18640025069'),
(1330, 1, 133, 122, '1990-01-01 00:00:00'),
(1331, 1, 134, 122, '1'),
(1332, 1, 135, 122, '/image/apple.jpg'),
(1333, 1, 136, 122, '18640025069'),
(1334, 1, 138, 122, 'å—äº¬å¸‚'),
(1335, 1, 5, 123, '13913300726'),
(1336, 1, 7, 123, ''),
(1337, 1, 12, 123, 'e10adc3949ba59abbe56e057f20f883e'),
(1338, 1, 3, 123, 'Default Store View'),
(1339, 1, 137, 123, '70331'),
(1340, 1, 132, 123, '13913300726'),
(1341, 1, 133, 123, '1990-01-01 00:00:00'),
(1342, 1, 134, 123, '1'),
(1343, 1, 135, 123, '/image/apple.jpg'),
(1344, 1, 136, 123, '13913300726'),
(1345, 1, 138, 123, 'å—äº¬å¸‚'),
(1346, 1, 5, 124, '13815885530'),
(1347, 1, 7, 124, ''),
(1348, 1, 12, 124, 'e10adc3949ba59abbe56e057f20f883e'),
(1349, 1, 3, 124, 'Default Store View'),
(1350, 1, 137, 124, '70335'),
(1351, 1, 132, 124, '13815885530'),
(1352, 1, 133, 124, '1990-01-01 00:00:00'),
(1353, 1, 134, 124, '1'),
(1354, 1, 135, 124, '/image/apple.jpg'),
(1355, 1, 136, 124, '13815885530'),
(1356, 1, 138, 124, 'å—äº¬å¸‚'),
(1357, 1, 5, 125, '13901584247'),
(1358, 1, 7, 125, ''),
(1359, 1, 12, 125, 'e10adc3949ba59abbe56e057f20f883e'),
(1360, 1, 3, 125, 'Default Store View'),
(1361, 1, 137, 125, '70336'),
(1362, 1, 132, 125, '13901584247'),
(1363, 1, 133, 125, '1990-01-01 00:00:00'),
(1364, 1, 134, 125, '1'),
(1365, 1, 135, 125, '/image/apple.jpg'),
(1366, 1, 136, 125, '13901584247'),
(1367, 1, 138, 125, 'å—äº¬å¸‚'),
(1368, 1, 5, 126, '18662721076'),
(1369, 1, 7, 126, ''),
(1370, 1, 12, 126, 'e10adc3949ba59abbe56e057f20f883e'),
(1371, 1, 3, 126, 'Default Store View'),
(1372, 1, 137, 126, '70337'),
(1373, 1, 132, 126, '18662721076'),
(1374, 1, 133, 126, '1990-01-01 00:00:00'),
(1375, 1, 134, 126, '1'),
(1376, 1, 135, 126, '/image/apple.jpg'),
(1377, 1, 136, 126, '18662721076'),
(1378, 1, 138, 126, 'å—äº¬å¸‚'),
(1379, 1, 5, 127, '13901584045'),
(1380, 1, 7, 127, ''),
(1381, 1, 12, 127, 'e10adc3949ba59abbe56e057f20f883e'),
(1382, 1, 3, 127, 'Default Store View'),
(1383, 1, 137, 127, '70338'),
(1384, 1, 132, 127, '13901584045'),
(1385, 1, 133, 127, '1990-01-01 00:00:00'),
(1386, 1, 134, 127, '1'),
(1387, 1, 135, 127, '/image/apple.jpg'),
(1388, 1, 136, 127, '13901584045'),
(1389, 1, 138, 127, 'å—äº¬å¸‚'),
(1390, 1, 5, 128, '13585195606'),
(1391, 1, 7, 128, ''),
(1392, 1, 12, 128, 'e10adc3949ba59abbe56e057f20f883e'),
(1393, 1, 3, 128, 'Default Store View'),
(1394, 1, 137, 128, '70339'),
(1395, 1, 132, 128, '13585195606'),
(1396, 1, 133, 128, '1990-01-01 00:00:00'),
(1397, 1, 134, 128, '1'),
(1398, 1, 135, 128, '/image/apple.jpg'),
(1399, 1, 136, 128, '13585195606'),
(1400, 1, 138, 128, 'å—äº¬å¸‚'),
(1401, 1, 5, 129, '18351874833'),
(1402, 1, 7, 129, ''),
(1403, 1, 12, 129, 'e10adc3949ba59abbe56e057f20f883e'),
(1404, 1, 3, 129, 'Default Store View'),
(1405, 1, 137, 129, '70341'),
(1406, 1, 132, 129, '18351874833'),
(1407, 1, 133, 129, '1990-01-01 00:00:00'),
(1408, 1, 134, 129, '1'),
(1409, 1, 135, 129, '/image/apple.jpg'),
(1410, 1, 136, 129, '18351874833'),
(1411, 1, 138, 129, 'å—äº¬å¸‚'),
(1412, 1, 5, 130, '13813080616'),
(1413, 1, 7, 130, ''),
(1414, 1, 12, 130, 'e10adc3949ba59abbe56e057f20f883e'),
(1415, 1, 3, 130, 'Default Store View'),
(1416, 1, 137, 130, '70342'),
(1417, 1, 132, 130, '13813080616'),
(1418, 1, 133, 130, '1990-01-01 00:00:00'),
(1419, 1, 134, 130, '1'),
(1420, 1, 135, 130, '/image/apple.jpg'),
(1421, 1, 136, 130, '13813080616'),
(1422, 1, 138, 130, 'å—äº¬å¸‚'),
(1423, 1, 5, 131, '18061230460'),
(1424, 1, 7, 131, ''),
(1425, 1, 12, 131, 'e10adc3949ba59abbe56e057f20f883e'),
(1426, 1, 3, 131, 'Default Store View'),
(1427, 1, 137, 131, '70343'),
(1428, 1, 132, 131, '18061230460'),
(1429, 1, 133, 131, '1990-01-01 00:00:00'),
(1430, 1, 134, 131, '1'),
(1431, 1, 135, 131, '/image/apple.jpg'),
(1432, 1, 136, 131, '18061230460'),
(1433, 1, 138, 131, 'å—äº¬å¸‚'),
(1434, 1, 5, 132, '15151891969'),
(1435, 1, 7, 132, ''),
(1436, 1, 12, 132, 'e10adc3949ba59abbe56e057f20f883e'),
(1437, 1, 3, 132, 'Default Store View'),
(1438, 1, 137, 132, '70345'),
(1439, 1, 132, 132, '15151891969'),
(1440, 1, 133, 132, '1990-01-01 00:00:00'),
(1441, 1, 134, 132, '1'),
(1442, 1, 135, 132, '/image/apple.jpg'),
(1443, 1, 136, 132, '15151891969'),
(1444, 1, 138, 132, 'å—äº¬å¸‚'),
(1445, 1, 5, 133, '13655188367'),
(1446, 1, 7, 133, ''),
(1447, 1, 12, 133, 'e10adc3949ba59abbe56e057f20f883e'),
(1448, 1, 3, 133, 'Default Store View'),
(1449, 1, 137, 133, '70347'),
(1450, 1, 132, 133, '13655188367'),
(1451, 1, 133, 133, '1990-01-01 00:00:00'),
(1452, 1, 134, 133, '1'),
(1453, 1, 135, 133, '/image/apple.jpg'),
(1454, 1, 136, 133, '13655188367'),
(1455, 1, 138, 133, 'å—äº¬å¸‚'),
(1456, 1, 5, 134, '13811865459'),
(1457, 1, 7, 134, ''),
(1458, 1, 12, 134, 'e10adc3949ba59abbe56e057f20f883e'),
(1459, 1, 3, 134, 'Default Store View'),
(1460, 1, 137, 134, '70348'),
(1461, 1, 132, 134, '13811865459'),
(1462, 1, 133, 134, '1990-01-01 00:00:00'),
(1463, 1, 134, 134, '1'),
(1464, 1, 135, 134, '/image/apple.jpg'),
(1465, 1, 136, 134, '13811865459'),
(1466, 1, 138, 134, 'å—äº¬å¸‚'),
(1467, 1, 5, 135, '13918250797'),
(1468, 1, 7, 135, ''),
(1469, 1, 12, 135, 'e10adc3949ba59abbe56e057f20f883e'),
(1470, 1, 3, 135, 'Default Store View'),
(1471, 1, 137, 135, '70350');
INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1472, 1, 132, 135, '13918250797'),
(1473, 1, 133, 135, '1990-01-01 00:00:00'),
(1474, 1, 134, 135, '1'),
(1475, 1, 135, 135, '/image/apple.jpg'),
(1476, 1, 136, 135, '13918250797'),
(1477, 1, 138, 135, 'å—äº¬å¸‚'),
(1478, 1, 5, 136, '15651868762'),
(1479, 1, 7, 136, ''),
(1480, 1, 12, 136, 'e10adc3949ba59abbe56e057f20f883e'),
(1481, 1, 3, 136, 'Default Store View'),
(1482, 1, 137, 136, '70352'),
(1483, 1, 132, 136, '15651868762'),
(1484, 1, 133, 136, '1990-01-01 00:00:00'),
(1485, 1, 134, 136, '1'),
(1486, 1, 135, 136, '/image/apple.jpg'),
(1487, 1, 136, 136, '15651868762'),
(1488, 1, 138, 136, 'å—äº¬å¸‚'),
(1489, 1, 5, 137, '18016040251'),
(1490, 1, 7, 137, ''),
(1491, 1, 12, 137, 'e10adc3949ba59abbe56e057f20f883e'),
(1492, 1, 3, 137, 'Default Store View'),
(1493, 1, 137, 137, '70353'),
(1494, 1, 132, 137, '18016040251'),
(1495, 1, 133, 137, '1990-01-01 00:00:00'),
(1496, 1, 134, 137, '1'),
(1497, 1, 135, 137, '/image/apple.jpg'),
(1498, 1, 136, 137, '18016040251'),
(1499, 1, 138, 137, 'å¸¸å·žå¸‚'),
(1500, 1, 5, 138, '13675177731'),
(1501, 1, 7, 138, ''),
(1502, 1, 12, 138, 'e10adc3949ba59abbe56e057f20f883e'),
(1503, 1, 3, 138, 'Default Store View'),
(1504, 1, 137, 138, '70354'),
(1505, 1, 132, 138, '13675177731'),
(1506, 1, 133, 138, '1990-01-01 00:00:00'),
(1507, 1, 134, 138, '1'),
(1508, 1, 135, 138, '/image/apple.jpg'),
(1509, 1, 136, 138, '13675177731'),
(1510, 1, 138, 138, 'å—äº¬å¸‚'),
(1511, 1, 5, 139, '18651807668'),
(1512, 1, 7, 139, ''),
(1513, 1, 12, 139, 'e10adc3949ba59abbe56e057f20f883e'),
(1514, 1, 3, 139, 'Default Store View'),
(1515, 1, 137, 139, '70356'),
(1516, 1, 132, 139, '18651807668'),
(1517, 1, 133, 139, '1990-01-01 00:00:00'),
(1518, 1, 134, 139, '1'),
(1519, 1, 135, 139, '/image/apple.jpg'),
(1520, 1, 136, 139, '18651807668'),
(1521, 1, 138, 139, 'å—äº¬å¸‚'),
(1522, 1, 5, 140, '13805291265'),
(1523, 1, 7, 140, ''),
(1524, 1, 12, 140, 'e10adc3949ba59abbe56e057f20f883e'),
(1525, 1, 3, 140, 'Default Store View'),
(1526, 1, 137, 140, '70357'),
(1527, 1, 132, 140, '13805291265'),
(1528, 1, 133, 140, '1990-01-01 00:00:00'),
(1529, 1, 134, 140, '1'),
(1530, 1, 135, 140, '/image/apple.jpg'),
(1531, 1, 136, 140, '13805291265'),
(1532, 1, 138, 140, 'å—äº¬å¸‚'),
(1533, 1, 5, 141, '13915979303'),
(1534, 1, 7, 141, ''),
(1535, 1, 12, 141, 'e10adc3949ba59abbe56e057f20f883e'),
(1536, 1, 3, 141, 'Default Store View'),
(1537, 1, 137, 141, '70359'),
(1538, 1, 132, 141, '13915979303'),
(1539, 1, 133, 141, '1990-01-01 00:00:00'),
(1540, 1, 134, 141, '1'),
(1541, 1, 135, 141, '/image/apple.jpg'),
(1542, 1, 136, 141, '13915979303'),
(1543, 1, 138, 141, 'å—äº¬å¸‚'),
(1544, 1, 5, 142, '18252077319'),
(1545, 1, 7, 142, ''),
(1546, 1, 12, 142, 'e10adc3949ba59abbe56e057f20f883e'),
(1547, 1, 3, 142, 'Default Store View'),
(1548, 1, 137, 142, '70364'),
(1549, 1, 132, 142, '18252077319'),
(1550, 1, 133, 142, '1990-01-01 00:00:00'),
(1551, 1, 134, 142, '1'),
(1552, 1, 135, 142, '/image/apple.jpg'),
(1553, 1, 136, 142, '18252077319'),
(1554, 1, 138, 142, 'å—äº¬å¸‚');

-- --------------------------------------------------------

--
-- 表的结构 `customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- 转存表中的数据 `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- 表的结构 `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- 表的结构 `custom_activity_cards`
--

CREATE TABLE IF NOT EXISTS `custom_activity_cards` (
  `mobile` varchar(20) CHARACTER SET latin1 NOT NULL COMMENT 'Phone number',
  `card_count` int(2) NOT NULL DEFAULT '0' COMMENT 'The count of cards',
  `status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Status, 2,used,1,enabled 0,disabled',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last update date',
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `custom_activity_cards`
--

INSERT INTO `custom_activity_cards` (`mobile`, `card_count`, `status`, `creation_date`, `last_update_date`) VALUES
('15151834774', 7, 2, '2015-07-22 03:12:15', '2015-07-22 03:14:35');

-- --------------------------------------------------------

--
-- 表的结构 `custom_errorcode`
--

CREATE TABLE IF NOT EXISTS `custom_errorcode` (
  `errorcode_id` int(10) NOT NULL AUTO_INCREMENT,
  `errorcode_number` int(10) NOT NULL,
  `code` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`errorcode_id`),
  UNIQUE KEY `errorcode_number` (`errorcode_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `custom_promotions`
--

CREATE TABLE IF NOT EXISTS `custom_promotions` (
  `promotion_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Promotion id',
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon id',
  `mobile` varchar(20) CHARACTER SET latin1 NOT NULL COMMENT 'Phone number',
  `catalog` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT 'Catalog',
  `enable_flag` smallint(1) unsigned NOT NULL COMMENT 'Enable flag, 1,enabled 0,disabled',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `last_update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Last update date',
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `custom_promotions`
--

INSERT INTO `custom_promotions` (`promotion_id`, `coupon_id`, `mobile`, `catalog`, `enable_flag`, `creation_date`, `last_update_date`) VALUES
(8, 2, '15151834774', '', 1, '2015-07-22 02:57:08', '2015-07-22 02:57:08');

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dataflow_profile`
--

INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2015-07-16 03:42:51', '2015-07-16 03:42:51', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dataflow_profile_history`
--

INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2015-07-16 03:42:51'),
(2, 2, 'create', 0, '2015-07-16 03:42:51'),
(3, 3, 'create', 0, '2015-07-16 03:42:51'),
(4, 4, 'create', 0, '2015-07-16 03:42:51'),
(5, 5, 'create', 0, '2015-07-16 03:42:51'),
(6, 6, 'create', 0, '2015-07-16 03:42:51');

-- --------------------------------------------------------

--
-- 表的结构 `dataflow_session`
--

CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `design_change`
--

CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `directory_country`
--

CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- 转存表中的数据 `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- 表的结构 `directory_country_format`
--

CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `directory_country_region`
--

CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- 转存表中的数据 `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- 表的结构 `directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- 转存表中的数据 `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- 表的结构 `directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- 转存表中的数据 `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link`
--

CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=147 ;

--
-- 转存表中的数据 `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 1, 'mobile', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(133, 1, 'birthday', NULL, NULL, 'datetime', NULL, NULL, 'date', 'Birthday', NULL, NULL, 0, 0, NULL, 0, NULL),
(134, 1, 'sex', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Sex', NULL, NULL, 0, 0, NULL, 0, NULL),
(135, 1, 'myimage', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(136, 1, 'nickname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Nick Name', NULL, NULL, 0, 0, NULL, 0, NULL),
(137, 1, 'origin_user_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(138, 1, 'reg_city', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(139, 2, 'origin_address_id', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(140, 2, 'district', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(141, 2, 'area', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(142, 2, 'remark', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(143, 2, 'dateline', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(144, 3, 'origin_cat_id', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(145, 3, 'origin_path', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(146, 3, 'origin_parent_id', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- 表的结构 `eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity`
--

CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(71, 4, 4, 7, 71, 1),
(72, 4, 4, 7, 72, 2),
(73, 4, 4, 7, 73, 3),
(74, 4, 4, 7, 74, 4),
(75, 4, 4, 8, 75, 1),
(76, 4, 4, 8, 76, 3),
(77, 4, 4, 8, 77, 4),
(78, 4, 4, 8, 78, 5),
(79, 4, 4, 8, 79, 6),
(80, 4, 4, 7, 80, 5),
(81, 4, 4, 9, 82, 1),
(82, 4, 4, 9, 83, 2),
(83, 4, 4, 9, 84, 3),
(84, 4, 4, 10, 85, 1),
(85, 4, 4, 10, 86, 2),
(86, 4, 4, 10, 87, 3),
(87, 4, 4, 10, 88, 4),
(88, 4, 4, 7, 89, 6),
(89, 4, 4, 8, 90, 2),
(90, 4, 4, 8, 91, 7),
(91, 4, 4, 7, 93, 7),
(92, 4, 4, 7, 94, 8),
(93, 4, 4, 10, 95, 5),
(94, 4, 4, 7, 96, 9),
(95, 4, 4, 7, 97, 10),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(98, 4, 4, 11, 100, 1),
(99, 4, 4, 11, 101, 2),
(100, 4, 4, 7, 102, 12),
(101, 4, 4, 12, 103, 1),
(102, 4, 4, 12, 104, 2),
(103, 4, 4, 12, 105, 3),
(104, 4, 4, 12, 106, 4),
(105, 4, 4, 12, 107, 5),
(106, 4, 4, 7, 108, 13),
(107, 4, 4, 12, 109, 6),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(115, 4, 4, 7, 117, 21),
(116, 4, 4, 8, 118, 9),
(117, 4, 4, 8, 119, 10),
(118, 4, 4, 8, 120, 11),
(119, 4, 4, 8, 121, 12),
(120, 4, 4, 17, 122, 1),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(124, 4, 4, 8, 126, 13),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(130, 1, 1, 1, 132, 0),
(131, 1, 1, 1, 133, 0),
(132, 1, 1, 1, 134, 0),
(133, 1, 1, 1, 135, 0),
(134, 1, 1, 1, 136, 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `eav_entity_store`
--

INSERT INTO `eav_entity_store` (`entity_store_id`, `entity_type_id`, `store_id`, `increment_prefix`, `increment_last_id`) VALUES
(1, 5, 1, '1', '100000002');

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_element`
--

CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `eav_form_fieldset`
--

INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- 转存表中的数据 `eav_form_fieldset_label`
--

INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_type`
--

CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- 转存表中的数据 `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- 表的结构 `gift_message`
--

CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `importexport_importdata`
--

INSERT INTO `importexport_importdata` (`id`, `entity`, `behavior`, `data`) VALUES
(1, 'catalog_product', 'append', '[{"sku":"peach","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-06-26 03:33:05","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u6768\\u5c71\\u6c34\\u871c\\u6843","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/p\\/3\\/p3.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u6768\\u5c71\\u6c34\\u871c\\u6843","news_from_date":"2015-06-01 00:00:00","news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"10.0000","required_options":"0","short_description":"\\u6768\\u5c71\\u6c34\\u871c\\u6843","small_image":"\\/p\\/3\\/p3.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/p\\/3\\/p3.jpg","thumbnail_label":null,"updated_at":"2015-06-26 03:35:48","url_key":null,"url_path":".html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/p\\/3\\/p3.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"pamp","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-06-26 03:37:14","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u8461\\u8404\\u67da","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/p\\/2\\/p2.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u8461\\u8404\\u67da","news_from_date":"2015-06-01 00:00:00","news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"10.0000","required_options":"0","short_description":"\\u8461\\u8404\\u67da","small_image":"\\/p\\/2\\/p2.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/p\\/2\\/p2.jpg","thumbnail_label":null,"updated_at":"2015-06-26 07:05:22","url_key":null,"url_path":"--3.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/p\\/3\\/p3_1.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/p\\/2\\/p2.jpg","_media_lable":null,"_media_position":"2","_media_is_disabled":"0"},{"sku":"rice","_store":null,"_attribute_set":"Default","_type":"simple","_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-06-26 07:05:42","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u5927\\u7c73","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u5927\\u7c73","news_from_date":"2015-06-01 00:00:00","news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"50.0000","required_options":"0","short_description":"\\u5927\\u7c73","small_image":"\\/_\\/3\\/_398.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398.jpg","thumbnail_label":null,"updated_at":"2015-06-26 08:01:00","url_key":null,"url_path":"--4.html","visibility":"4","weight":"20.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":"litchi","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:21:41","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u8d8a\\u5357\\u8354\\u679d","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u8d8a\\u5357\\u8354\\u679d","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"5.0000","required_options":"0","short_description":"\\u8d8a\\u5357\\u8354\\u679d","small_image":"\\/_\\/3\\/_398px.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:25:17","url_key":null,"url_path":"--5.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"apple","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:32:04","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u9655\\u897f\\u7ea2\\u5bcc\\u58eb","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_1.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u9655\\u897f\\u7ea2\\u5bcc\\u58eb","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"5.0000","required_options":"0","short_description":"\\u9655\\u897f\\u7ea2\\u5bcc\\u58eb","small_image":"\\/_\\/3\\/_398px_1.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_1.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:33:44","url_key":null,"url_path":"--6.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_1.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"banana","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:37:27","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u83f2\\u5f8b\\u5bbe\\u9999\\u8549","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_2.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u83f2\\u5f8b\\u5bbe\\u9999\\u8549","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"8.0000","required_options":"0","short_description":"\\u83f2\\u5f8b\\u5bbe\\u9999\\u8549","small_image":"\\/_\\/3\\/_398px_2.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_2.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:39:21","url_key":null,"url_path":"--7.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_2.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"kiwi","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:43:39","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u65b0\\u897f\\u5170\\u7eff\\u5947\\u5f02\\u679c","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_3.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u65b0\\u897f\\u5170\\u7eff\\u5947\\u5f02\\u679c","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"8.0000","required_options":"0","short_description":"\\u65b0\\u897f\\u5170\\u7eff\\u5947\\u5f02\\u679c","small_image":"\\/_\\/3\\/_398px_3.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_3.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:44:26","url_key":null,"url_path":"--8.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_3.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"pineapple","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:48:38","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u6d77\\u5357\\u51e4\\u68a8","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_1.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u6d77\\u5357\\u51e4\\u68a8","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"30.0000","required_options":"0","short_description":"\\u6d77\\u5357\\u51e4\\u68a8","small_image":"\\/_\\/3\\/_398_1.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_1.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:49:18","url_key":null,"url_path":"--9.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_1.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"millet","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:50:46","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u5c0f\\u7c73","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_2.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u5c0f\\u7c73","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"20.0000","required_options":"0","short_description":"\\u5c0f\\u7c73","small_image":"\\/_\\/3\\/_398_2.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_2.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:51:21","url_key":null,"url_path":"--10.html","visibility":"4","weight":"5.0000","qty":"999.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_2.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Red bean","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:52:31","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u7ea2\\u8c46","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_3.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u7ea2\\u8c46","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"20.0000","required_options":"0","short_description":"\\u7ea2\\u8c46","small_image":"\\/_\\/3\\/_398_3.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_3.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:53:00","url_key":null,"url_path":"--11.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_3.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Cucumber","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:54:10","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u6c34\\u679c\\u9ec4\\u74dc","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_4.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u6c34\\u679c\\u9ec4\\u74dc","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"10.0000","required_options":"0","short_description":"\\u6c34\\u679c\\u9ec4\\u74dc","small_image":"\\/_\\/3\\/_398px_4.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_4.jpg","thumbnail_label":null,"updated_at":"2015-07-02 09:56:05","url_key":null,"url_path":"--12.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_4.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Soybean","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 09:59:45","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u9ec4\\u8c46","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_4.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u9ec4\\u8c46","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"15.0000","required_options":"0","short_description":"\\u9ec4\\u8c46","small_image":"\\/_\\/3\\/_398_4.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_4.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:01:10","url_key":null,"url_path":"--13.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_4.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"mung","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:05:17","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u7eff\\u8c46","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_5.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u7eff\\u8c46","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"15.0000","required_options":"0","short_description":"\\u7eff\\u8c46","small_image":"\\/_\\/3\\/_398_5.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_5.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:06:13","url_key":null,"url_path":"--14.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_5.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Cherry","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:08:55","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u7f8e\\u65e9\\u6a31\\u6843","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_5.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u7f8e\\u65e9\\u6a31\\u6843","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"10.0000","required_options":"0","short_description":"\\u7f8e\\u65e9\\u6a31\\u6843","small_image":"\\/_\\/3\\/_398px_5.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_5.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:09:43","url_key":null,"url_path":"--15.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_5.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Apricot","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:11:12","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u674f\\u5b50","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_6.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u674f\\u5b50","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"6.0000","required_options":"0","short_description":"\\u674f\\u5b50","small_image":"\\/_\\/3\\/_398px_6.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_6.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:12:25","url_key":null,"url_path":"--16.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_6.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Jujube","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:14:48","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u7ea2\\u67a3","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_7.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u7ea2\\u67a3","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"18.0000","required_options":"0","short_description":"\\u7ea2\\u67a3","small_image":"\\/_\\/3\\/_398px_7.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_7.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:15:54","url_key":null,"url_path":"--17.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_7.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6742\\u7cae","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Pear","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:22:04","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u7800\\u5c71\\u68a8","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_8.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u7800\\u5c71\\u68a8","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"8.0000","required_options":"0","short_description":"\\u7800\\u5c71\\u68a8","small_image":"\\/_\\/3\\/_398px_8.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_8.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:22:40","url_key":null,"url_path":"--18.html","visibility":"4","weight":"4.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_8.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Mango","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:25:31","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u8292\\u679c","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_6.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u8292\\u679c","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"6.0000","required_options":"0","short_description":"\\u8292\\u679c","small_image":"\\/_\\/3\\/_398_6.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_6.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:25:59","url_key":null,"url_path":"--19.html","visibility":"4","weight":"2.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_6.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Watermelon","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:28:06","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u897f\\u74dc","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398_7.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u897f\\u74dc","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"16.0000","required_options":"0","short_description":"\\u897f\\u74dc","small_image":"\\/_\\/3\\/_398_7.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398_7.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:28:34","url_key":null,"url_path":"--20.html","visibility":"4","weight":"10.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398_7.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null},{"sku":"Cherry Tomatoes","_store":null,"_attribute_set":"Default","_type":"simple","_category":null,"_root_category":"Default Category","_product_websites":"base","color":null,"cost":null,"country_of_manufacture":null,"created_at":"2015-07-02 10:30:22","custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":"\\u5723\\u5973\\u679c","gallery":null,"gift_message_available":null,"has_options":"0","image":"\\/_\\/3\\/_398px_9.jpg","image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":"\\u7528\\u6237\\u914d\\u7f6e","msrp_enabled":"\\u7528\\u6237\\u914d\\u7f6e","name":"\\u5723\\u5973\\u679c","news_from_date":null,"news_to_date":null,"options_container":"\\u4ea7\\u54c1\\u4fe1\\u606f\\u680f","page_layout":null,"price":"25.0000","required_options":"0","short_description":"\\u5723\\u5973\\u679c","small_image":"\\/_\\/3\\/_398px_9.jpg","small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":"1","tax_class_id":"0","thumbnail":"\\/_\\/3\\/_398px_9.jpg","thumbnail_label":null,"updated_at":"2015-07-02 10:30:57","url_key":null,"url_path":"--21.html","visibility":"4","weight":"5.0000","qty":"1000.0000","min_qty":"0.0000","use_config_min_qty":"1","is_qty_decimal":"0","backorders":"0","use_config_backorders":"1","min_sale_qty":"1.0000","use_config_min_sale_qty":"1","max_sale_qty":"0.0000","use_config_max_sale_qty":"1","is_in_stock":"1","notify_stock_qty":null,"use_config_notify_stock_qty":"1","manage_stock":"0","use_config_manage_stock":"1","stock_status_changed_auto":"0","use_config_qty_increments":"1","qty_increments":"0.0000","use_config_enable_qty_inc":"1","enable_qty_increments":"0","is_decimal_divided":"0","_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":"88","_media_image":"\\/_\\/3\\/_398px_9.jpg","_media_lable":null,"_media_position":"1","_media_is_disabled":"0"},{"sku":null,"_store":null,"_attribute_set":null,"_type":null,"_category":"\\u6c34\\u679c","_root_category":"Default Category","_product_websites":null,"color":null,"cost":null,"country_of_manufacture":null,"created_at":null,"custom_design":null,"custom_design_from":null,"custom_design_to":null,"custom_layout_update":null,"description":null,"gallery":null,"gift_message_available":null,"has_options":null,"image":null,"image_label":null,"manufacturer":null,"media_gallery":null,"meta_description":null,"meta_keyword":null,"meta_title":null,"minimal_price":null,"msrp":null,"msrp_display_actual_price_type":null,"msrp_enabled":null,"name":null,"news_from_date":null,"news_to_date":null,"options_container":null,"page_layout":null,"price":null,"required_options":null,"short_description":null,"small_image":null,"small_image_label":null,"special_from_date":null,"special_price":null,"special_to_date":null,"status":null,"tax_class_id":null,"thumbnail":null,"thumbnail_label":null,"updated_at":null,"url_key":null,"url_path":null,"visibility":null,"weight":null,"qty":null,"min_qty":null,"use_config_min_qty":null,"is_qty_decimal":null,"backorders":null,"use_config_backorders":null,"min_sale_qty":null,"use_config_min_sale_qty":null,"max_sale_qty":null,"use_config_max_sale_qty":null,"is_in_stock":null,"notify_stock_qty":null,"use_config_notify_stock_qty":null,"manage_stock":null,"use_config_manage_stock":null,"stock_status_changed_auto":null,"use_config_qty_increments":null,"qty_increments":null,"use_config_enable_qty_inc":null,"enable_qty_increments":null,"is_decimal_divided":null,"_links_related_sku":null,"_links_related_position":null,"_links_crosssell_sku":null,"_links_crosssell_position":null,"_links_upsell_sku":null,"_links_upsell_position":null,"_associated_sku":null,"_associated_default_qty":null,"_associated_position":null,"_tier_price_website":null,"_tier_price_customer_group":null,"_tier_price_qty":null,"_tier_price_price":null,"_group_price_website":null,"_group_price_customer_group":null,"_group_price_price":null,"_media_attribute_id":null,"_media_image":null,"_media_lable":null,"_media_position":null,"_media_is_disabled":null}]');

-- --------------------------------------------------------

--
-- 表的结构 `index_event`
--

CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `index_event`
--

INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2015-07-16 03:43:03', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2015-07-16 03:43:03', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'catalog_category', 3, '2015-07-21 20:28:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(4, 'save', 'catalog_category', 4, '2015-07-21 20:28:55', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(5, 'save', 'catalog_category', 5, '2015-07-28 21:50:34', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(6, 'save', 'catalog_category', 6, '2015-07-28 22:06:14', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(7, 'save', 'catalog_category', 7, '2015-07-28 22:07:11', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(8, 'save', 'catalog_category', 8, '2015-07-29 18:33:16', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(9, 'save', 'catalog_category', 12, '2015-07-30 03:00:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(10, 'save', 'cataloginventory_stock_item', 21, '2015-07-31 01:25:34', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(11, 'save', 'catalog_product', 21, '2015-07-31 01:25:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(12, 'catalog_reindex_price', 'catalog_product', 21, '2015-07-31 01:25:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}');

-- --------------------------------------------------------

--
-- 表的结构 `index_process`
--

CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `index_process`
--

INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(2, 'catalog_product_price', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(3, 'catalog_url', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(4, 'catalog_product_flat', 'require_reindex', '2015-07-16 03:46:12', '2015-07-16 03:46:13', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2015-07-16 03:46:13', '2015-07-16 03:46:14', 'real_time'),
(6, 'catalog_category_product', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(8, 'cataloginventory_stock', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time'),
(9, 'tag_summary', 'pending', '2015-07-31 01:25:59', '2015-07-31 01:25:59', 'real_time');

-- --------------------------------------------------------

--
-- 表的结构 `index_process_event`
--

CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- 表的结构 `log_customer`
--

CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `log_customer`
--

INSERT INTO `log_customer` (`log_id`, `visitor_id`, `customer_id`, `login_at`, `logout_at`, `store_id`) VALUES
(1, 2, 1, '2015-07-16 03:50:30', NULL, 1),
(2, 3, 2, '2015-07-17 04:11:52', NULL, 1),
(3, 4, 1, '2015-07-21 20:40:20', NULL, 1),
(4, 4, 1, '2015-07-22 18:02:58', '2015-07-22 18:03:40', 1),
(5, 4, 1, '2015-07-22 18:03:54', NULL, 1),
(6, 5, 26, '2015-07-22 23:54:49', '2015-07-22 23:56:13', 1),
(7, 5, 1, '2015-07-22 23:56:29', NULL, 1),
(8, 6, 5, '2015-07-23 01:55:31', NULL, 1),
(9, 7, 1, '2015-07-26 21:21:07', NULL, 1),
(10, 9, 91, '2015-07-27 19:24:02', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `log_quote`
--

CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- 转存表中的数据 `log_quote`
--

INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(1, 2, '2015-07-16 03:50:30', NULL),
(2, 3, '2015-07-17 04:11:52', NULL),
(5, 5, '2015-07-22 23:54:49', NULL),
(6, 6, '2015-07-23 01:55:31', NULL),
(7, 9, '2015-07-27 19:24:02', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `log_summary`
--

CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `log_summary_type`
--

CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `log_summary_type`
--

INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- 表的结构 `log_url`
--

CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`),
  KEY `url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- 转存表中的数据 `log_url`
--

INSERT INTO `log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2015-07-16 03:43:56'),
(2, 2, '2015-07-16 03:44:55'),
(3, 2, '2015-07-16 03:45:00'),
(4, 2, '2015-07-16 03:50:30'),
(5, 2, '2015-07-16 03:50:31'),
(6, 3, '2015-07-17 04:11:07'),
(7, 3, '2015-07-17 04:11:20'),
(8, 3, '2015-07-17 04:11:52'),
(9, 3, '2015-07-17 04:11:54'),
(10, 4, '2015-07-21 20:29:34'),
(11, 4, '2015-07-21 20:29:39'),
(12, 4, '2015-07-21 20:29:42'),
(13, 4, '2015-07-21 20:30:17'),
(14, 4, '2015-07-21 20:30:20'),
(15, 4, '2015-07-21 20:40:09'),
(16, 4, '2015-07-21 20:40:20'),
(17, 4, '2015-07-21 20:40:23'),
(18, 4, '2015-07-21 20:40:31'),
(19, 4, '2015-07-21 20:40:38'),
(20, 4, '2015-07-21 20:40:40'),
(21, 4, '2015-07-21 20:41:05'),
(22, 4, '2015-07-21 20:41:06'),
(23, 4, '2015-07-21 20:42:31'),
(24, 4, '2015-07-21 20:42:33'),
(25, 4, '2015-07-21 20:42:34'),
(26, 4, '2015-07-21 20:42:35'),
(27, 4, '2015-07-21 20:43:25'),
(28, 4, '2015-07-21 20:43:26'),
(29, 4, '2015-07-21 20:43:37'),
(30, 4, '2015-07-21 20:43:38'),
(31, 4, '2015-07-21 20:46:05'),
(32, 4, '2015-07-21 20:46:07'),
(33, 4, '2015-07-21 20:46:13'),
(34, 4, '2015-07-21 20:46:59'),
(35, 4, '2015-07-21 20:47:00'),
(36, 4, '2015-07-21 20:47:00'),
(37, 4, '2015-07-21 20:47:01'),
(38, 4, '2015-07-21 20:47:03'),
(39, 4, '2015-07-21 20:47:04'),
(40, 4, '2015-07-21 20:47:04'),
(41, 4, '2015-07-21 20:47:10'),
(42, 4, '2015-07-21 20:47:10'),
(43, 4, '2015-07-21 20:47:20'),
(44, 4, '2015-07-21 20:47:21'),
(45, 4, '2015-07-21 20:55:46'),
(46, 4, '2015-07-21 20:55:50'),
(47, 4, '2015-07-21 20:55:54'),
(48, 4, '2015-07-21 20:55:57'),
(49, 4, '2015-07-21 20:55:59'),
(50, 4, '2015-07-21 20:59:37'),
(51, 4, '2015-07-21 20:59:39'),
(52, 4, '2015-07-21 20:59:44'),
(53, 4, '2015-07-21 20:59:50'),
(54, 4, '2015-07-21 21:00:06'),
(55, 4, '2015-07-21 21:00:10'),
(56, 4, '2015-07-21 21:00:10'),
(57, 4, '2015-07-21 21:00:11'),
(58, 4, '2015-07-21 21:00:11'),
(59, 4, '2015-07-21 21:00:13'),
(60, 4, '2015-07-21 21:00:13'),
(61, 4, '2015-07-21 21:00:13'),
(62, 4, '2015-07-21 21:00:16'),
(63, 4, '2015-07-21 21:00:16'),
(64, 4, '2015-07-21 21:00:20'),
(65, 4, '2015-07-21 21:00:21'),
(66, 4, '2015-07-21 21:05:14'),
(67, 4, '2015-07-21 21:05:22'),
(68, 4, '2015-07-21 21:06:05'),
(69, 4, '2015-07-21 21:06:08'),
(70, 4, '2015-07-21 21:06:46'),
(71, 4, '2015-07-21 21:06:49'),
(72, 4, '2015-07-21 21:06:53'),
(73, 4, '2015-07-21 21:06:55'),
(74, 4, '2015-07-21 21:06:59'),
(75, 4, '2015-07-21 21:07:01'),
(76, 4, '2015-07-22 18:02:45'),
(77, 4, '2015-07-22 18:02:51'),
(78, 4, '2015-07-22 18:02:58'),
(79, 4, '2015-07-22 18:03:00'),
(80, 4, '2015-07-22 18:03:40'),
(81, 4, '2015-07-22 18:03:41'),
(82, 4, '2015-07-22 18:03:44'),
(83, 4, '2015-07-22 18:03:44'),
(84, 4, '2015-07-22 18:03:45'),
(85, 4, '2015-07-22 18:03:49'),
(86, 4, '2015-07-22 18:03:54'),
(87, 4, '2015-07-22 18:03:55'),
(88, 5, '2015-07-22 23:52:06'),
(89, 5, '2015-07-22 23:52:26'),
(90, 5, '2015-07-22 23:52:38'),
(91, 5, '2015-07-22 23:52:39'),
(92, 5, '2015-07-22 23:53:12'),
(93, 5, '2015-07-22 23:53:12'),
(94, 5, '2015-07-22 23:54:49'),
(95, 5, '2015-07-22 23:54:50'),
(96, 5, '2015-07-22 23:55:03'),
(97, 5, '2015-07-22 23:55:11'),
(98, 5, '2015-07-22 23:55:11'),
(99, 5, '2015-07-22 23:55:14'),
(100, 5, '2015-07-22 23:56:09'),
(101, 5, '2015-07-22 23:56:13'),
(102, 5, '2015-07-22 23:56:14'),
(103, 5, '2015-07-22 23:56:17'),
(104, 5, '2015-07-22 23:56:22'),
(105, 5, '2015-07-22 23:56:22'),
(106, 5, '2015-07-22 23:56:29'),
(107, 5, '2015-07-22 23:56:33'),
(108, 5, '2015-07-22 23:56:50'),
(109, 5, '2015-07-23 00:15:49'),
(110, 5, '2015-07-23 00:15:50'),
(111, 5, '2015-07-23 00:17:15'),
(112, 5, '2015-07-23 00:17:16'),
(113, 5, '2015-07-23 00:17:37'),
(114, 5, '2015-07-23 00:17:38'),
(115, 5, '2015-07-23 00:17:45'),
(116, 5, '2015-07-23 00:17:45'),
(117, 5, '2015-07-23 00:17:55'),
(118, 5, '2015-07-23 00:17:56'),
(119, 5, '2015-07-23 00:18:38'),
(120, 5, '2015-07-23 00:18:39'),
(121, 6, '2015-07-23 01:54:20'),
(122, 6, '2015-07-23 01:55:18'),
(123, 6, '2015-07-23 01:55:31'),
(124, 6, '2015-07-23 01:55:32'),
(125, 6, '2015-07-23 01:55:36'),
(126, 6, '2015-07-23 01:55:36'),
(127, 6, '2015-07-23 01:55:39'),
(128, 6, '2015-07-23 01:56:26'),
(129, 6, '2015-07-23 01:56:27'),
(130, 7, '2015-07-26 21:20:47'),
(131, 7, '2015-07-26 21:20:52'),
(132, 7, '2015-07-26 21:21:07'),
(133, 7, '2015-07-26 21:21:18'),
(134, 9, '2015-07-27 19:23:29'),
(135, 9, '2015-07-27 19:23:36'),
(136, 9, '2015-07-27 19:23:36'),
(137, 9, '2015-07-27 19:24:02'),
(138, 9, '2015-07-27 19:24:03'),
(139, 10, '2015-07-28 17:27:43'),
(140, 10, '2015-07-28 17:27:53'),
(141, 10, '2015-07-28 17:28:42'),
(142, 10, '2015-07-28 17:29:52'),
(143, 11, '2015-07-29 18:32:26'),
(144, 12, '2015-07-29 18:56:05'),
(145, 12, '2015-07-29 18:56:13'),
(146, 12, '2015-07-29 18:56:18'),
(147, 12, '2015-07-29 18:58:55'),
(148, 12, '2015-07-29 18:59:03'),
(149, 12, '2015-07-29 19:02:40'),
(150, 12, '2015-07-29 19:02:45'),
(151, 12, '2015-07-29 19:02:48'),
(152, 12, '2015-07-29 19:02:50'),
(153, 12, '2015-07-29 19:03:27'),
(154, 12, '2015-07-29 19:03:31'),
(155, 12, '2015-07-29 19:03:38'),
(156, 12, '2015-07-29 19:03:41'),
(157, 13, '2015-07-30 02:59:37'),
(158, 13, '2015-07-30 03:00:40');

-- --------------------------------------------------------

--
-- 表的结构 `log_url_info`
--

CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=159 ;

--
-- 转存表中的数据 `log_url_info`
--

INSERT INTO `log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://localhost/magento/index.php/', 'http://localhost/magento/index.php/install/wizard/end/'),
(2, 'http://localhost/magento/index.php', NULL),
(3, 'http://localhost/magento/index.php/customer/account/create/', 'http://localhost/magento/index.php'),
(4, 'http://localhost/magento/index.php/customer/account/createpost/', 'http://localhost/magento/index.php/customer/account/create/'),
(5, 'http://localhost/magento/index.php/customer/account/index/', 'http://localhost/magento/index.php/customer/account/create/'),
(6, 'http://localhost/magento/', NULL),
(7, 'http://localhost/magento/index.php/customer/account/create/', 'http://localhost/magento/'),
(8, 'http://localhost/magento/index.php/customer/account/createpost/', 'http://localhost/magento/index.php/customer/account/create/'),
(9, 'http://localhost/magento/index.php/customer/account/index/', 'http://localhost/magento/index.php/customer/account/create/'),
(10, 'http://localhost/magento/', NULL),
(11, 'http://localhost/magento/index.php/catalog/category/view/id/3/', 'http://localhost/magento/'),
(12, 'http://localhost/magento/index.php/catalog/category/view/id/4/', 'http://localhost/magento/index.php/catalog/category/view/id/3/'),
(13, 'http://localhost/magento/index.php/', 'http://localhost/magento/index.php/catalog/category/view/id/4/'),
(14, 'http://localhost/magento/index.php/catalog/category/view/id/3/', 'http://localhost/magento/index.php/'),
(15, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/catalog/category/view/id/3/'),
(16, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(17, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(18, 'http://localhost/magento/index.php/catalog/category/view/id/3', NULL),
(19, 'http://localhost/magento/index.php/checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLmh0bWw,/product/1/form_key/ngUMjMvgVKRSBJ0H/', 'http://localhost/magento/index.php/-.html'),
(20, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/-.html'),
(21, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(22, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(23, 'http://localhost/magento/index.php/checkout/cart/updatePost/', 'http://localhost/magento/index.php/checkout/cart/'),
(24, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(25, 'http://localhost/magento/index.php/checkout/cart/updatePost/', 'http://localhost/magento/index.php/checkout/cart/'),
(26, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(27, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(28, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(29, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(30, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(31, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(32, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(33, 'http://localhost/magento/index.php/checkout/onepage/', 'http://localhost/magento/index.php/checkout/cart/'),
(34, 'http://localhost/magento/index.php/checkout/onepage/saveBilling/', 'http://localhost/magento/index.php/checkout/onepage/'),
(35, 'http://localhost/magento/index.php/checkout/onepage/getAdditional/', 'http://localhost/magento/index.php/checkout/onepage/'),
(36, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=shipping', 'http://localhost/magento/index.php/checkout/onepage/'),
(37, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=billing', 'http://localhost/magento/index.php/checkout/onepage/'),
(38, 'http://localhost/magento/index.php/checkout/onepage/saveShippingMethod/', 'http://localhost/magento/index.php/checkout/onepage/'),
(39, 'http://localhost/magento/index.php/checkout/onepage/progress/', 'http://localhost/magento/index.php/checkout/onepage/'),
(40, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=shipping_method', 'http://localhost/magento/index.php/checkout/onepage/'),
(41, 'http://localhost/magento/index.php/checkout/onepage/savePayment/', 'http://localhost/magento/index.php/checkout/onepage/'),
(42, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=payment', 'http://localhost/magento/index.php/checkout/onepage/'),
(43, 'http://localhost/magento/index.php/checkout/onepage/saveOrder/form_key/ngUMjMvgVKRSBJ0H/', 'http://localhost/magento/index.php/checkout/onepage/'),
(44, 'http://localhost/magento/index.php/checkout/onepage/success/', 'http://localhost/magento/index.php/checkout/onepage/'),
(45, 'http://localhost/magento/index.php/', 'http://localhost/magento/index.php/checkout/onepage/success/'),
(46, 'http://localhost/magento/index.php/catalog/category/view/id/3', 'http://localhost/magento/index.php/'),
(47, 'http://localhost/magento/index.php/catalog/product/view/id/19/category/3', 'http://localhost/magento/index.php/-.html'),
(48, 'http://localhost/magento/index.php/checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLy0xOS5odG1sP19fX1NJRD1V/product/19/form_key/ngUMjMvgVKRSBJ0H/', 'http://localhost/magento/index.php/-/-19.html'),
(49, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/-/-19.html'),
(50, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(51, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(52, 'http://localhost/magento/index.php/checkout/onepage/', 'http://localhost/magento/index.php/checkout/cart/'),
(53, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(54, 'http://localhost/magento/index.php/checkout/onepage/', 'http://localhost/magento/index.php/checkout/cart/'),
(55, 'http://localhost/magento/index.php/checkout/onepage/saveBilling/', 'http://localhost/magento/index.php/checkout/onepage/'),
(56, 'http://localhost/magento/index.php/checkout/onepage/getAdditional/', 'http://localhost/magento/index.php/checkout/onepage/'),
(57, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=billing', 'http://localhost/magento/index.php/checkout/onepage/'),
(58, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=shipping', 'http://localhost/magento/index.php/checkout/onepage/'),
(59, 'http://localhost/magento/index.php/checkout/onepage/saveShippingMethod/', 'http://localhost/magento/index.php/checkout/onepage/'),
(60, 'http://localhost/magento/index.php/checkout/onepage/progress/', 'http://localhost/magento/index.php/checkout/onepage/'),
(61, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=shipping_method', 'http://localhost/magento/index.php/checkout/onepage/'),
(62, 'http://localhost/magento/index.php/checkout/onepage/savePayment/', 'http://localhost/magento/index.php/checkout/onepage/'),
(63, 'http://localhost/magento/index.php/checkout/onepage/progress/?prevStep=payment', 'http://localhost/magento/index.php/checkout/onepage/'),
(64, 'http://localhost/magento/index.php/checkout/onepage/saveOrder/form_key/ngUMjMvgVKRSBJ0H/', 'http://localhost/magento/index.php/checkout/onepage/'),
(65, 'http://localhost/magento/index.php/checkout/onepage/success/', 'http://localhost/magento/index.php/checkout/onepage/'),
(66, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/checkout/onepage/success/'),
(67, 'http://localhost/magento/index.php/sales/order/view/order_id/2/', 'http://localhost/magento/index.php/customer/account/'),
(68, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/checkout/onepage/success/'),
(69, 'http://localhost/magento/index.php/sales/order/view/order_id/1/', 'http://localhost/magento/index.php/customer/account/'),
(70, 'http://localhost/magento/index.php/catalog/category/view/id/3', 'http://localhost/magento/index.php/sales/order/view/order_id/1/'),
(71, 'http://localhost/magento/index.php/catalog/product/view/id/1/category/3', 'http://localhost/magento/index.php/-.html'),
(72, 'http://localhost/magento/index.php/checkout/cart/add/uenc/aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLy5odG1sP19fX1NJRD1V/product/1/form_key/ngUMjMvgVKRSBJ0H/', 'http://localhost/magento/index.php/-/.html'),
(73, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/-/.html'),
(74, 'http://localhost/magento/index.php/checkout/cart/couponPost/', 'http://localhost/magento/index.php/checkout/cart/'),
(75, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/checkout/cart/'),
(76, 'http://localhost/magento/', NULL),
(77, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/'),
(78, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(79, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(80, 'http://localhost/magento/index.php/customer/account/logout/', 'http://localhost/magento/index.php/customer/account/'),
(81, 'http://localhost/magento/index.php/customer/account/logoutSuccess/', 'http://localhost/magento/index.php/customer/account/'),
(82, 'http://localhost/magento/index.php/checkout/', 'http://localhost/magento/index.php/customer/account/logoutSuccess/'),
(83, 'http://localhost/magento/index.php/checkout/onepage/', 'http://localhost/magento/index.php/customer/account/logoutSuccess/'),
(84, 'http://localhost/magento/index.php/checkout/cart/', 'http://localhost/magento/index.php/customer/account/logoutSuccess/'),
(85, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/checkout/cart/'),
(86, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(87, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(88, 'http://localhost/magento/', NULL),
(89, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/'),
(90, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(91, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/login/'),
(92, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(93, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/login/'),
(94, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(95, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(96, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/'),
(97, 'http://localhost/magento/index.php/customer/address/', 'http://localhost/magento/index.php/customer/account/'),
(98, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/account/'),
(99, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/account/'),
(100, 'http://localhost/magento/', NULL),
(101, 'http://localhost/magento/index.php/customer/account/logout/', 'http://localhost/magento/'),
(102, 'http://localhost/magento/index.php/customer/account/logoutSuccess/', 'http://localhost/magento/'),
(103, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/logoutSuccess/'),
(104, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(105, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/login/'),
(106, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(107, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(108, 'http://localhost/magento/index.php/customer/address/', 'http://localhost/magento/index.php/customer/account/'),
(109, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/address/'),
(110, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/address/'),
(111, 'http://localhost/magento/index.php/customer/address/formPost/', 'http://localhost/magento/index.php/customer/address/new/'),
(112, 'http://localhost/magento/index.php/customer/address/index/', 'http://localhost/magento/index.php/customer/address/new/'),
(113, 'http://localhost/magento/index.php/customer/address/edit/id/2/', 'http://localhost/magento/index.php/customer/address/index/'),
(114, 'http://localhost/magento/index.php/customer/address/edit/id/2/', 'http://localhost/magento/index.php/customer/address/index/'),
(115, 'http://localhost/magento/index.php/customer/address/formPost/id/2/', 'http://localhost/magento/index.php/customer/address/edit/id/2/'),
(116, 'http://localhost/magento/index.php/customer/address/index/', 'http://localhost/magento/index.php/customer/address/edit/id/2/'),
(117, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/address/index/'),
(118, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/address/index/'),
(119, 'http://localhost/magento/index.php/customer/address/formPost/', 'http://localhost/magento/index.php/customer/address/new/'),
(120, 'http://localhost/magento/index.php/customer/address/index/', 'http://localhost/magento/index.php/customer/address/new/'),
(121, 'http://localhost/magento/', NULL),
(122, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/'),
(123, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(124, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(125, 'http://localhost/magento/index.php/customer/address/', 'http://localhost/magento/index.php/customer/account/'),
(126, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/account/'),
(127, 'http://localhost/magento/index.php/customer/address/new/', 'http://localhost/magento/index.php/customer/account/'),
(128, 'http://localhost/magento/index.php/customer/address/formPost/', 'http://localhost/magento/index.php/customer/address/new/'),
(129, 'http://localhost/magento/index.php/customer/address/index/', 'http://localhost/magento/index.php/customer/address/new/'),
(130, 'http://localhost/magento/', NULL),
(131, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/'),
(132, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(133, 'http://localhost/magento/index.php/customer/account/', 'http://localhost/magento/index.php/customer/account/login/'),
(134, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/'),
(135, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(136, 'http://localhost/magento/index.php/customer/account/login/', 'http://localhost/magento/index.php/customer/account/login/'),
(137, 'http://localhost/magento/index.php/customer/account/loginPost/', 'http://localhost/magento/index.php/customer/account/login/'),
(138, 'http://localhost/magento/index.php/customer/address/index/', 'http://localhost/magento/index.php/customer/account/login/'),
(139, 'http://localhost/magento/magmi/web/installation', NULL),
(140, 'http://localhost/magento/magmi/web/installation.php', NULL),
(141, 'http://localhost/magento/magmi/web/installation/', NULL),
(142, 'http://localhost/magento/magmi/web/installation/', NULL),
(143, 'http://localhost/magento/index.php/admimn', NULL),
(144, 'http://localhost/magento/', NULL),
(145, 'http://localhost/magento/index.php/catalog/category/view/id/7', 'http://localhost/magento/'),
(146, 'http://localhost/magento/index.php/catalog/category/view/id/5', 'http://localhost/magento/index.php/url-key/2url.html'),
(147, 'http://localhost/magento/index.php/catalog/category/view/id/5', 'http://localhost/magento/index.php/url-key/2url.html'),
(148, 'http://localhost/magento/index.php/catalog/category/view/id/8', 'http://localhost/magento/index.php/url-key.html'),
(149, 'http://localhost/magento/index.php/', 'http://localhost/magento/index.php/url-key/test3.html'),
(150, 'http://localhost/magento/index.php/catalog/category/view/id/6', 'http://localhost/magento/index.php/'),
(151, 'http://localhost/magento/index.php/catalog/category/view/id/7', 'http://localhost/magento/index.php/-/1url.html'),
(152, 'http://localhost/magento/index.php/catalog/category/view/id/8', 'http://localhost/magento/index.php/url-key/2url.html'),
(153, 'http://localhost/magento/index.php/', 'http://localhost/magento/index.php/url-key/test3.html'),
(154, 'http://localhost/magento/index.php/catalog/category/view/id/5', 'http://localhost/magento/index.php/'),
(155, 'http://localhost/magento/index.php/catalog/category/view/id/7', 'http://localhost/magento/index.php/url-key.html'),
(156, 'http://localhost/magento/index.php/catalog/category/view/id/8', 'http://localhost/magento/index.php/url-key/2url.html'),
(157, 'http://localhost/magento/', NULL),
(158, 'http://localhost/magento/', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor`
--

CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `log_visitor`
--

INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, 'otv6mf0vo4lcbr2687mlkq6i25', '2015-07-16 03:43:55', '2015-07-16 03:43:56', 1, 1),
(2, 'j62ggi3cegngsamc1fvn479rj4', '2015-07-16 03:44:55', '2015-07-16 03:50:31', 5, 1),
(3, '8dlfvfhsp1uq3hgt0rtmfecop5', '2015-07-17 04:11:03', '2015-07-17 04:11:54', 9, 1),
(4, '1mgjibado1f2ur2o6u3m5od160', '2015-07-22 18:02:43', '2015-07-22 18:03:55', 87, 1),
(5, 'hfh48v1o4l1h1acdoklosj0490', '2015-07-22 23:52:03', '2015-07-23 00:18:39', 120, 1),
(6, 'k4377kdi2tetegs12skhe9uk53', '2015-07-23 01:54:17', '2015-07-23 01:56:27', 129, 1),
(7, 'iok7p2993nu9rvoq8slplr1je5', '2015-07-26 21:20:36', '2015-07-26 21:21:18', 133, 1),
(8, 'c3if5h5c35ta35caohqgs351m6', '2015-07-27 19:23:28', '2015-07-27 19:23:28', 0, 1),
(9, '9ruf1fhgu0mu37cujre7rqi1o4', '2015-07-27 19:23:28', '2015-07-27 19:24:03', 138, 1),
(10, '9uil16nrmrloi3952jb7f9uqu4', '2015-07-28 17:27:36', '2015-07-28 17:29:52', 142, 1),
(11, 'fgbbe4vmgrr652nt946b3v84b2', '2015-07-29 18:32:21', '2015-07-29 18:32:26', 143, 1),
(12, 'kta1vp0k40oquggjqv6t4dr147', '2015-07-29 18:56:04', '2015-07-29 19:03:41', 156, 1);

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- 转存表中的数据 `log_visitor_info`
--

INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://localhost/magento/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', NULL, 'zh-CN,zh;q=0.8,en;q=0.6', 0, 0),
(2, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(3, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(4, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(5, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(6, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(7, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(8, 'http://localhost/magento/index.php/customer/account/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(9, 'http://localhost/magento/index.php/customer/account/', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(10, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(11, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0),
(12, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', NULL, 'zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `newsletter_template`
--

CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `newsletter_template`
--

INSERT INTO `newsletter_template` (`template_id`, `template_code`, `template_text`, `template_text_preprocessed`, `template_styles`, `template_type`, `template_subject`, `template_sender_name`, `template_sender_email`, `template_actual`, `added_at`, `modified_at`) VALUES
(1, 'Example Newsletter Template', '{{template config_path="design/email/header"}}\n{{inlinecss file="email-inline.css"}}\n\n<table cellpadding="0" cellspacing="0" border="0">\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td class="email-heading">\n                    <h1>Welcome</h1>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                    sed do eiusmod tempor incididunt ut labore et.</p>\n                </td>\n                <td class="store-info">\n                    <h4>Contact Us</h4>\n                    <p>\n                        {{depend store_phone}}\n                        <b>Call Us:</b>\n                        <a href="tel:{{var phone}}">{{var store_phone}}</a><br>\n                        {{/depend}}\n                        {{depend store_hours}}\n                        <span class="no-link">{{var store_hours}}</span><br>\n                        {{/depend}}\n                        {{depend store_email}}\n                        <b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a>\n                        {{/depend}}\n                    </p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td>\n                    <img width="600" src="http://placehold.it/600x200" class="main-image">\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n        <table class="columns">\n            <tr>\n                <td class="panel">\n                    <p>Phasellus dictum sapien a neque luctus cursus. Pellentesque sem dolor, fringilla et pharetra\n                    vitae. <a href="#">Click it! &raquo;</a></p>\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class="row">\n            <tr>\n                <td class="half left wrapper">\n                    <table class="columns">\n                        <tr>\n                            <td>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                                sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed\n                                do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <table class="button">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Click Me!</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n                <td class="half right wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td class="panel sidebar-links">\n                                <h6>Header Thing</h6>\n                                <p>Sub-head or something</p>\n                                <table>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr><td>&nbsp;</td></tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                    <br>\n                    <table class="columns">\n                        <tr>\n                            <td class="panel">\n                                <h6>Connect With Us:</h6>\n                                <table class="social-button facebook">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Facebook</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button twitter">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Twitter</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button google-plus">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Google +</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <br>\n                                <h6>Contact Info:</h6>\n                                {{depend store_phone}}\n                                <p>\n                                    <b>Call Us:</b>\n                                    <a href="tel:{{var phone}}">{{var store_phone}}</a>\n                                </p>\n                                {{/depend}}\n                                {{depend store_hours}}\n                                <p><span class="no-link">{{var store_hours}}</span><br></p>\n                                {{/depend}}\n                                {{depend store_email}}\n                                <p><b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a></p>\n                                {{/depend}}\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper">\n                    {{block type="catalog/product_new" template="email/catalog/product/new.phtml" products_count="4"\n                    column_count="4" }}\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td align="center">\n                                <center>\n                                    <p><a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Unsubscribe</a></p>\n                                </center>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n</table>\n\n{{template config_path="design/email/footer"}}', NULL, NULL, 2, 'Example Subject', 'Owner', 'owner@example.com', 1, '2015-07-16 03:43:11', '2015-07-16 03:43:11');

-- --------------------------------------------------------

--
-- 表的结构 `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- --------------------------------------------------------

--
-- 表的结构 `oauth_token`
--

CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `paypal_cert`
--

CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `persistent_session`
--

CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `poll`
--

INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2015-07-16 03:43:06', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `poll_answer`
--

CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `poll_answer`
--

INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `poll_store`
--

CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- 转存表中的数据 `poll_store`
--

INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `poll_vote`
--

CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `product_alert_price`
--

CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- 表的结构 `rating_entity`
--

CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- 表的结构 `rating_option`
--

CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- 表的结构 `rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `rating_store`
--

CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- 表的结构 `rating_title`
--

CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- 表的结构 `report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `report_event`
--

CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2015-07-21 20:40:38', 4, 1, 1, 0, 1),
(2, '2015-07-21 20:55:53', 1, 19, 1, 0, 1),
(3, '2015-07-21 20:55:57', 4, 19, 1, 0, 1),
(4, '2015-07-21 21:06:48', 1, 1, 1, 0, 1),
(5, '2015-07-21 21:06:53', 4, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `report_event_types`
--

CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- 表的结构 `report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `review_detail`
--

CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `review_entity`
--

CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- 表的结构 `review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `review_status`
--

CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- 表的结构 `review_store`
--

CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- 表的结构 `salesrule`
--

CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `salesrule`
--

INSERT INTO `salesrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `uses_per_customer`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `is_advanced`, `product_ids`, `sort_order`, `simple_action`, `discount_amount`, `discount_qty`, `discount_step`, `simple_free_shipping`, `apply_to_shipping`, `times_used`, `is_rss`, `coupon_type`, `use_auto_generation`, `uses_per_coupon`) VALUES
(1, 'Free shipping', NULL, '2015-07-17', '2015-07-24', 1, 1, 'a:7:{s:4:"type";s:32:"salesrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:1:{i:0;a:5:{s:4:"type";s:32:"salesrule/rule_condition_address";s:9:"attribute";s:13:"base_subtotal";s:8:"operator";s:1:">";s:5:"value";s:2:"20";s:18:"is_value_processed";b:0;}}}', 'a:6:{s:4:"type";s:40:"salesrule/rule_condition_product_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";}', 0, 1, NULL, 0, 'by_percent', '0.0000', NULL, 0, 2, 0, 1, 1, 2, 1, 1),
(2, '5OFF', NULL, '2015-07-22', '2015-07-31', 1, 1, 'a:7:{s:4:"type";s:32:"salesrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";s:10:"conditions";a:1:{i:0;a:5:{s:4:"type";s:32:"salesrule/rule_condition_address";s:9:"attribute";s:13:"base_subtotal";s:8:"operator";s:1:">";s:5:"value";s:2:"10";s:18:"is_value_processed";b:0;}}}', 'a:6:{s:4:"type";s:40:"salesrule/rule_condition_product_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";}', 0, 1, NULL, 0, 'by_fixed', '5.0000', NULL, 0, 0, 0, 2, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `salesrule_coupon`
--

INSERT INTO `salesrule_coupon` (`coupon_id`, `rule_id`, `code`, `usage_limit`, `usage_per_customer`, `times_used`, `expiration_date`, `is_primary`, `created_at`, `type`) VALUES
(1, 1, 'XAS6381WJC7R', 1, 1, 0, '2015-07-16 16:00:00', NULL, '2015-07-16 04:06:59', 1),
(2, 1, '7ZJIJCWQ1BUT', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-16 04:06:59', 1),
(3, 1, 'K14G8LXUCBFV', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-16 04:06:59', 1),
(4, 1, '1YC1DK052FTR', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-16 04:06:59', 1),
(5, 1, 'WE5E09FCXWGA', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-16 04:06:59', 1),
(6, 1, 'FREESHIPRSME6640TZ7F43MA0MR1', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(7, 1, 'FREESHIPVYUK6GNOAIXFEQY0SXVN', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(8, 1, 'FREESHIPO14J4DCY8VRN1OHQQIWJ', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(9, 1, 'FREESHIPTZ0VTVAKLA4H6H3H7YI8', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(10, 1, 'FREESHIPD6KUIBQXMK5XFCKYU4WO', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(11, 1, 'FREESHIP5AH1FC24UGBT8MH6COPH', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(12, 1, 'FREESHIPIQXJ0DYDA8QK5WIZS8FT', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(13, 1, 'FREESHIPG1O3KPECRGMT7CMIG03G', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(14, 1, 'FREESHIPWYKRL3SLRRIB9UMUKXX3', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(15, 1, 'FREESHIP6ERGKNIFIA3CCM71DVI1', 1, 1, 0, '2015-07-23 16:00:00', NULL, '2015-07-21 20:41:34', 1),
(16, 2, 'DISCOUNT5EWXTAECIQE5PH2YB91TD', 1, 1, 1, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(17, 2, 'DISCOUNT53JTASEVRERT3Y7POTM5N', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(18, 2, 'DISCOUNT5LQDBUMOSTADCOI4FFG5R', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(19, 2, 'DISCOUNT5H4FFUUG9WBCXDASQCWZ9', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(20, 2, 'DISCOUNT5K7Y3AIAPF19VO727I9AT', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(21, 2, 'DISCOUNT5GPWRNN88PYZVEZDDE4D1', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(22, 2, 'DISCOUNT5S2RC9MGBF6J8F72XQVZD', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(23, 2, 'DISCOUNT577YOPRLHCQIFB37HI216', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(24, 2, 'DISCOUNT586BIWD2PT07GGP69NNZB', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1),
(25, 2, 'DISCOUNT5YOFCYDVLCUSJEUKA6JIQ', 1, 1, 0, '2015-07-30 16:00:00', NULL, '2015-07-21 20:55:30', 1);

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

--
-- 转存表中的数据 `salesrule_coupon_usage`
--

INSERT INTO `salesrule_coupon_usage` (`coupon_id`, `customer_id`, `times_used`) VALUES
(16, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `salesrule_customer`
--

INSERT INTO `salesrule_customer` (`rule_customer_id`, `rule_id`, `customer_id`, `times_used`) VALUES
(1, 2, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- 转存表中的数据 `salesrule_customer_group`
--

INSERT INTO `salesrule_customer_group` (`rule_id`, `customer_group_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_label`
--

CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- 表的结构 `salesrule_website`
--

CREATE TABLE IF NOT EXISTS `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- 转存表中的数据 `salesrule_website`
--

INSERT INTO `salesrule_website` (`rule_id`, `website_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sales_flat_order`
--

INSERT INTO `sales_flat_order` (`entity_id`, `state`, `status`, `coupon_code`, `protect_code`, `shipping_description`, `is_virtual`, `store_id`, `customer_id`, `base_discount_amount`, `base_discount_canceled`, `base_discount_invoiced`, `base_discount_refunded`, `base_grand_total`, `base_shipping_amount`, `base_shipping_canceled`, `base_shipping_invoiced`, `base_shipping_refunded`, `base_shipping_tax_amount`, `base_shipping_tax_refunded`, `base_subtotal`, `base_subtotal_canceled`, `base_subtotal_invoiced`, `base_subtotal_refunded`, `base_tax_amount`, `base_tax_canceled`, `base_tax_invoiced`, `base_tax_refunded`, `base_to_global_rate`, `base_to_order_rate`, `base_total_canceled`, `base_total_invoiced`, `base_total_invoiced_cost`, `base_total_offline_refunded`, `base_total_online_refunded`, `base_total_paid`, `base_total_qty_ordered`, `base_total_refunded`, `discount_amount`, `discount_canceled`, `discount_invoiced`, `discount_refunded`, `grand_total`, `shipping_amount`, `shipping_canceled`, `shipping_invoiced`, `shipping_refunded`, `shipping_tax_amount`, `shipping_tax_refunded`, `store_to_base_rate`, `store_to_order_rate`, `subtotal`, `subtotal_canceled`, `subtotal_invoiced`, `subtotal_refunded`, `tax_amount`, `tax_canceled`, `tax_invoiced`, `tax_refunded`, `total_canceled`, `total_invoiced`, `total_offline_refunded`, `total_online_refunded`, `total_paid`, `total_qty_ordered`, `total_refunded`, `can_ship_partially`, `can_ship_partially_item`, `customer_is_guest`, `customer_note_notify`, `billing_address_id`, `customer_group_id`, `edit_increment`, `email_sent`, `forced_shipment_with_invoice`, `payment_auth_expiration`, `quote_address_id`, `quote_id`, `shipping_address_id`, `adjustment_negative`, `adjustment_positive`, `base_adjustment_negative`, `base_adjustment_positive`, `base_shipping_discount_amount`, `base_subtotal_incl_tax`, `base_total_due`, `payment_authorization_amount`, `shipping_discount_amount`, `subtotal_incl_tax`, `total_due`, `weight`, `customer_dob`, `increment_id`, `applied_rule_ids`, `base_currency_code`, `customer_email`, `customer_firstname`, `customer_lastname`, `customer_middlename`, `customer_prefix`, `customer_suffix`, `customer_taxvat`, `discount_description`, `ext_customer_id`, `ext_order_id`, `global_currency_code`, `hold_before_state`, `hold_before_status`, `order_currency_code`, `original_increment_id`, `relation_child_id`, `relation_child_real_id`, `relation_parent_id`, `relation_parent_real_id`, `remote_ip`, `shipping_method`, `store_currency_code`, `store_name`, `x_forwarded_for`, `customer_note`, `created_at`, `updated_at`, `total_item_count`, `customer_gender`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `shipping_incl_tax`, `base_shipping_incl_tax`, `coupon_rule_name`, `paypal_ipn_customer_notified`, `gift_message_id`) VALUES
(1, 'new', 'pending', 'FREESHIPRSME6640TZ7F43MA0MR1', 'e8ea09', 'Flat Rate - Fixed', 0, 1, 1, '0.0000', NULL, NULL, NULL, '30.0000', '0.0000', NULL, NULL, NULL, '0.0000', NULL, '30.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '30.0000', '0.0000', NULL, NULL, NULL, '0.0000', NULL, '1.0000', '1.0000', '30.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.0000', NULL, NULL, NULL, 0, 1, 1, 1, NULL, 1, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '0.0000', '30.0000', NULL, NULL, '0.0000', '30.0000', NULL, '6.0000', NULL, '100000001', '1', 'CNY', 'hb4daemon@163.com', 'daemon', 'wang', NULL, NULL, NULL, NULL, 'FREESHIPRSME6640TZ7F43MA0MR1', NULL, NULL, 'CNY', NULL, NULL, 'CNY', NULL, NULL, NULL, NULL, NULL, '::1', 'flatrate_flatrate', 'CNY', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2015-07-21 20:47:15', '2015-07-21 20:47:16', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '0.0000', '0.0000', 'Free shipping', 0, NULL),
(2, 'new', 'pending', 'DISCOUNT5EWXTAECIQE5PH2YB91TD ', 'ae4d57', 'Flat Rate - Fixed', 0, 1, 1, '-15.0000', NULL, NULL, NULL, '48.0000', '15.0000', NULL, NULL, NULL, '0.0000', NULL, '48.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, '1.0000', '1.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-15.0000', NULL, NULL, NULL, '48.0000', '15.0000', NULL, NULL, NULL, '0.0000', NULL, '1.0000', '1.0000', '48.0000', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.0000', NULL, NULL, NULL, 0, 1, 3, 1, NULL, 1, NULL, NULL, NULL, 3, 4, NULL, NULL, NULL, NULL, '0.0000', '48.0000', NULL, NULL, '0.0000', '48.0000', NULL, '30.0000', NULL, '100000002', '2', 'CNY', 'hb4daemon@163.com', 'daemon', 'wang', NULL, NULL, NULL, NULL, 'DISCOUNT5EWXTAECIQE5PH2YB91TD ', NULL, NULL, 'CNY', NULL, NULL, 'CNY', NULL, NULL, NULL, NULL, NULL, '::1', 'flatrate_flatrate', 'CNY', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2015-07-21 21:00:19', '2015-07-21 21:00:19', 1, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, '15.0000', '15.0000', '5OFF', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `sales_flat_order_address`
--

INSERT INTO `sales_flat_order_address` (`entity_id`, `parent_id`, `customer_address_id`, `quote_address_id`, `region_id`, `customer_id`, `fax`, `region`, `postcode`, `lastname`, `street`, `city`, `email`, `telephone`, `country_id`, `firstname`, `address_type`, `prefix`, `middlename`, `suffix`, `company`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 'Jiangsu', '210000', 'wang', 'address1\naddress2', 'Nanjing', 'hb4daemon@163.com', '15151834774', 'CN', 'daemon', 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, 1, NULL, 'Jiangsu', '210000', 'wang', 'address1\naddress2', 'Nanjing', 'hb4daemon@163.com', '15151834774', 'CN', 'daemon', 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 1, NULL, NULL, 1, NULL, 'Jiangsu', '210000', 'wang', 'address1\naddress2', 'Nanjing', 'hb4daemon@163.com', '15151834774', 'CN', 'daemon', 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 1, NULL, NULL, 1, NULL, 'Jiangsu', '210000', 'wang', 'address1\naddress2', 'Nanjing', 'hb4daemon@163.com', '15151834774', 'CN', 'daemon', 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

--
-- 转存表中的数据 `sales_flat_order_grid`
--

INSERT INTO `sales_flat_order_grid` (`entity_id`, `status`, `store_id`, `store_name`, `customer_id`, `base_grand_total`, `base_total_paid`, `grand_total`, `total_paid`, `increment_id`, `base_currency_code`, `order_currency_code`, `shipping_name`, `billing_name`, `created_at`, `updated_at`) VALUES
(1, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, '30.0000', NULL, '30.0000', NULL, '100000001', 'CNY', 'CNY', 'daemon wang', 'daemon wang', '2015-07-21 20:47:15', '2015-07-21 20:47:16'),
(2, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, '48.0000', NULL, '48.0000', NULL, '100000002', 'CNY', 'CNY', 'daemon wang', 'daemon wang', '2015-07-21 21:00:19', '2015-07-21 21:00:19');

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sales_flat_order_item`
--

INSERT INTO `sales_flat_order_item` (`item_id`, `order_id`, `parent_item_id`, `quote_item_id`, `store_id`, `created_at`, `updated_at`, `product_id`, `product_type`, `product_options`, `weight`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `qty_backordered`, `qty_canceled`, `qty_invoiced`, `qty_ordered`, `qty_refunded`, `qty_shipped`, `base_cost`, `price`, `base_price`, `original_price`, `base_original_price`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_invoiced`, `base_tax_invoiced`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `amount_refunded`, `base_amount_refunded`, `row_total`, `base_row_total`, `row_invoiced`, `base_row_invoiced`, `row_weight`, `base_tax_before_discount`, `tax_before_discount`, `ext_order_item_id`, `locked_do_invoice`, `locked_do_ship`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `is_nominal`, `tax_canceled`, `hidden_tax_canceled`, `tax_refunded`, `base_tax_refunded`, `discount_refunded`, `base_discount_refunded`, `gift_message_id`, `gift_message_available`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_applied`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(1, 1, NULL, 1, 1, '2015-07-21 20:47:16', '2015-07-21 20:47:16', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:4:{s:4:"uenc";s:56:"aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLmh0bWw,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"ngUMjMvgVKRSBJ0H";s:3:"qty";i:1;}}', '2.0000', 0, 'peach', '杨山水蜜桃', NULL, '1', NULL, 0, 0, 0, NULL, '0.0000', '0.0000', '3.0000', '0.0000', '0.0000', NULL, '10.0000', '10.0000', '10.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30.0000', '30.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '30.0000', '30.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', '0.0000'),
(2, 2, NULL, 2, 1, '2015-07-21 21:00:19', '2015-07-21 21:00:19', 19, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:72:"aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLy0xOS5odG1sP19fX1NJRD1V";s:7:"product";s:2:"19";s:8:"form_key";s:16:"ngUMjMvgVKRSBJ0H";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}}', '10.0000', 0, 'Watermelon', '西瓜', NULL, '2', NULL, 0, 0, 0, NULL, '0.0000', '0.0000', '3.0000', '0.0000', '0.0000', NULL, '16.0000', '16.0000', '16.0000', '16.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '15.0000', '15.0000', '0.0000', '0.0000', '0.0000', '0.0000', '48.0000', '48.0000', '0.0000', '0.0000', '30.0000', NULL, NULL, NULL, NULL, NULL, '16.0000', '16.0000', '48.0000', '48.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sales_flat_order_payment`
--

INSERT INTO `sales_flat_order_payment` (`entity_id`, `parent_id`, `base_shipping_captured`, `shipping_captured`, `amount_refunded`, `base_amount_paid`, `amount_canceled`, `base_amount_authorized`, `base_amount_paid_online`, `base_amount_refunded_online`, `base_shipping_amount`, `shipping_amount`, `amount_paid`, `amount_authorized`, `base_amount_ordered`, `base_shipping_refunded`, `shipping_refunded`, `base_amount_refunded`, `amount_ordered`, `base_amount_canceled`, `quote_payment_id`, `additional_data`, `cc_exp_month`, `cc_ss_start_year`, `echeck_bank_name`, `method`, `cc_debug_request_body`, `cc_secure_verify`, `protection_eligibility`, `cc_approval`, `cc_last4`, `cc_status_description`, `echeck_type`, `cc_debug_response_serialized`, `cc_ss_start_month`, `echeck_account_type`, `last_trans_id`, `cc_cid_status`, `cc_owner`, `cc_type`, `po_number`, `cc_exp_year`, `cc_status`, `echeck_routing_number`, `account_status`, `anet_trans_method`, `cc_debug_response_body`, `cc_ss_issue`, `echeck_account_name`, `cc_avs_status`, `cc_number_enc`, `cc_trans_id`, `paybox_request_number`, `address_status`, `additional_information`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, '30.0000', NULL, NULL, NULL, '30.0000', NULL, NULL, NULL, '0', '0', NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15.0000', '15.0000', NULL, NULL, '48.0000', NULL, NULL, NULL, '48.0000', NULL, NULL, NULL, '0', '0', NULL, 'checkmo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sales_flat_order_status_history`
--

INSERT INTO `sales_flat_order_status_history` (`entity_id`, `parent_id`, `is_customer_notified`, `is_visible_on_front`, `comment`, `status`, `created_at`, `entity_name`) VALUES
(1, 1, 1, 0, NULL, 'pending', '2015-07-21 20:47:16', 'order'),
(2, 2, 1, 0, NULL, 'pending', '2015-07-21 21:00:19', 'order');

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `sales_flat_quote`
--

INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`) VALUES
(1, 1, '2015-07-16 03:50:29', '2015-07-21 20:47:19', NULL, 0, 0, 0, 1, '3.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '30.0000', '30.0000', NULL, 1, 3, 1, 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, NULL, 1, 0, '::1', '1', '100000001', NULL, 'FREESHIPRSME6640TZ7F43MA0MR1', 'CNY', '1.0000', '1.0000', NULL, NULL, '30.0000', '30.0000', '30.0000', '30.0000', 1, 0, NULL, NULL, 0),
(2, 1, '2015-07-17 04:11:44', '2015-07-17 04:11:44', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'USD', 'USD', 'USD', '0.0000', '0.0000', NULL, 2, 3, 1, 'hb4daemon@126.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'USD', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0),
(3, 1, '2015-07-21 20:55:57', '2015-07-21 21:00:20', NULL, 0, 0, 0, 1, '3.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '48.0000', '48.0000', NULL, 1, 3, 1, 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, NULL, 1, 0, '::1', '2', '100000002', NULL, 'DISCOUNT5EWXTAECIQE5PH2YB91TD ', 'CNY', '1.0000', '1.0000', NULL, NULL, '48.0000', '48.0000', '33.0000', '33.0000', 1, 0, NULL, NULL, 0),
(4, 1, '2015-07-21 21:06:53', '2015-07-21 21:07:00', NULL, 1, 0, 0, 1, '5.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '50.0000', '50.0000', NULL, 1, 3, 1, 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'CNY', '1.0000', '1.0000', NULL, NULL, '50.0000', '50.0000', '50.0000', '50.0000', 1, 0, NULL, NULL, 0),
(5, 1, '2015-07-22 23:54:47', '2015-07-22 23:54:47', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '0.0000', '0.0000', NULL, 26, 3, 1, '15950470109@meiguoyouxian.com', NULL, '15950470109', NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'CNY', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0),
(6, 1, '2015-07-23 01:55:30', '2015-07-23 01:55:30', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '0.0000', '0.0000', NULL, 5, 3, 1, '18604509832@meiguoyouxian.com', NULL, '18604509832', NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'CNY', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0),
(7, 1, '2015-07-27 19:24:01', '2015-07-27 19:24:01', NULL, 1, 0, 0, 0, '0.0000', 0, '1.0000', '1.0000', 'CNY', 'CNY', 'CNY', '0.0000', '0.0000', NULL, 91, 3, 1, '13770961049@meiguoyouxian.com', NULL, '13770961049', NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'CNY', '1.0000', '1.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `sales_flat_quote_address`
--

INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2015-07-16 03:50:29', '2015-07-21 20:47:15', 1, 1, 1, 'billing', 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, 'address1\naddress2', 'Nanjing', 'Jiangsu', NULL, '210000', 'CN', '15151834774', NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2015-07-16 03:50:29', '2015-07-21 20:47:15', 1, 0, NULL, 'shipping', 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, 'address1\naddress2', 'Nanjing', 'Jiangsu', NULL, '210000', 'CN', '15151834774', NULL, 1, 1, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '6.0000', '30.0000', '30.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30.0000', '30.0000', NULL, 'a:0:{}', 'FREESHIPRSME6640TZ7F43MA0MR1', '0.0000', '0.0000', '30.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2015-07-17 04:11:45', '2015-07-17 04:11:45', 2, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2015-07-17 04:11:45', '2015-07-17 04:11:45', 2, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2015-07-21 20:55:57', '2015-07-21 21:00:19', 1, 0, 1, 'billing', 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, 'address1\naddress2', 'Nanjing', 'Jiangsu', NULL, '210000', 'CN', '15151834774', NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2015-07-21 20:55:57', '2015-07-21 21:00:19', 1, 0, 1, 'shipping', 'hb4daemon@163.com', NULL, 'daemon', NULL, 'wang', NULL, NULL, 'address1\naddress2', 'Nanjing', 'Jiangsu', NULL, '210000', 'CN', '15151834774', NULL, 1, 0, 0, 'flatrate_flatrate', 'Flat Rate - Fixed', '30.0000', '48.0000', '48.0000', '0.0000', '0.0000', '0.0000', '0.0000', '15.0000', '15.0000', '0.0000', '0.0000', '-15.0000', '-15.0000', '48.0000', '48.0000', NULL, 'a:0:{}', 'DISCOUNT5EWXTAECIQE5PH2YB91TD ', '0.0000', '0.0000', '48.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '15.0000', '15.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2015-07-21 21:06:53', '2015-07-21 21:07:00', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, '2015-07-21 21:06:53', '2015-07-21 21:07:00', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '10.0000', '50.0000', '50.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '50.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, '2015-07-22 23:54:48', '2015-07-22 23:54:48', 26, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, '2015-07-22 23:54:48', '2015-07-22 23:54:48', 26, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, '2015-07-23 01:55:31', '2015-07-23 01:55:31', 5, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, '2015-07-23 01:55:31', '2015-07-23 01:55:31', 5, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 7, '2015-07-27 19:24:02', '2015-07-27 19:24:02', 91, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, '2015-07-27 19:24:02', '2015-07-27 19:24:02', 91, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'a:0:{}', NULL, NULL, NULL, '0.0000', NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `sales_flat_quote_item`
--

INSERT INTO `sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(1, 1, '2015-07-21 20:40:38', '2015-07-21 20:46:05', 1, 1, NULL, 0, 'peach', '杨山水蜜桃', NULL, '1', NULL, 0, 0, 0, '2.0000', '3.0000', '10.0000', '10.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '30.0000', '30.0000', '0.0000', '0.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '30.0000', '30.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(2, 3, '2015-07-21 20:55:57', '2015-07-21 20:59:37', 19, 1, NULL, 0, 'Watermelon', '西瓜', NULL, '2', NULL, 0, 0, 0, '10.0000', '3.0000', '16.0000', '16.0000', NULL, '0.0000', '15.0000', '15.0000', '0.0000', '0.0000', '0.0000', '48.0000', '48.0000', '0.0000', '30.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '16.0000', '16.0000', '48.0000', '48.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL),
(3, 4, '2015-07-21 21:06:53', '2015-07-21 21:06:53', 1, 1, NULL, 0, 'peach', '杨山水蜜桃', NULL, NULL, NULL, 0, 0, 0, '2.0000', '5.0000', '10.0000', '10.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '50.0000', '50.0000', '0.0000', '10.0000', 'simple', NULL, NULL, NULL, NULL, NULL, '10.0000', '10.0000', '50.0000', '50.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', '0.0000', '0.0000', 'a:0:{}', '0.0000', '0.0000', '0.0000', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `sales_flat_quote_item_option`
--

INSERT INTO `sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:56:"aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLmh0bWw,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"ngUMjMvgVKRSBJ0H";s:3:"qty";i:1;}'),
(2, 2, 19, 'info_buyRequest', 'a:5:{s:4:"uenc";s:72:"aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLy0xOS5odG1sP19fX1NJRD1V";s:7:"product";s:2:"19";s:8:"form_key";s:16:"ngUMjMvgVKRSBJ0H";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}'),
(3, 3, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:68:"aHR0cDovL2xvY2FsaG9zdC9tYWdlbnRvL2luZGV4LnBocC8tLy5odG1sP19fX1NJRD1V";s:7:"product";s:1:"1";s:8:"form_key";s:16:"ngUMjMvgVKRSBJ0H";s:15:"related_product";s:0:"";s:3:"qty";s:1:"5";}');

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `sales_flat_quote_payment`
--

INSERT INTO `sales_flat_quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
(1, 1, '2015-07-21 20:46:12', '2015-07-21 20:47:15', 'checkmo', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, '2015-07-21 20:59:44', '2015-07-21 21:00:19', 'checkmo', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `sales_flat_quote_shipping_rate`
--

INSERT INTO `sales_flat_quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
(3, 2, '2015-07-21 20:47:09', '2015-07-21 20:47:15', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '0.0000', NULL, 'Fixed'),
(7, 6, '2015-07-21 21:00:16', '2015-07-21 21:00:19', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '15.0000', NULL, 'Fixed');

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_status`
--

CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- 转存表中的数据 `sales_order_status`
--

INSERT INTO `sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- 转存表中的数据 `sales_order_status_state`
--

INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `sitemap`
--

CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tag_properties`
--

CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- 表的结构 `tag_relation`
--

CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tag_summary`
--

CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation`
--

CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- 表的结构 `tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `weee_discount`
--

CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- 表的结构 `weee_tax`
--

CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `widget_instance`
--

CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- 表的结构 `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, '158a0361c1d749ae33b65a45a3ee085a', '2015-07-21 20:42:30');

-- --------------------------------------------------------

--
-- 表的结构 `wishlist_item`
--

CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=1 ;

--
-- 限制导出的表
--

--
-- 限制表 `admin_rule`
--
ALTER TABLE `admin_rule`
  ADD CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api2_acl_rule`
--
ALTER TABLE `api2_acl_rule`
  ADD CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api2_acl_user`
--
ALTER TABLE `api2_acl_user`
  ADD CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api_rule`
--
ALTER TABLE `api_rule`
  ADD CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `api_session`
--
ALTER TABLE `api_session`
  ADD CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogsearch_query`
--
ALTER TABLE `catalogsearch_query`
  ADD CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalogsearch_result`
--
ALTER TABLE `catalogsearch_result`
  ADD CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_flat_store_1`
--
ALTER TABLE `catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_enabled_index`
--
ALTER TABLE `catalog_product_enabled_index`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_group_price`
--
ALTER TABLE `catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_flat_1`
--
ALTER TABLE `catalog_product_flat_1`
  ADD CONSTRAINT `FK_CAT_PRD_FLAT_1_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_group_price`
--
ALTER TABLE `catalog_product_index_group_price`
  ADD CONSTRAINT `FK_195DF97C81B0BDD6A2EEC50F870E16D1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_attribute_pricing`
--
ALTER TABLE `catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_email_queue_recipients`
--
ALTER TABLE `core_email_queue_recipients`
  ADD CONSTRAINT `FK_6F4948F3ABF97DE12127EF14B140802A` FOREIGN KEY (`message_id`) REFERENCES `core_email_queue` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_layout_link`
--
ALTER TABLE `core_layout_link`
  ADD CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_store`
--
ALTER TABLE `core_store`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_store_group`
--
ALTER TABLE `core_store_group`
  ADD CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_translate`
--
ALTER TABLE `core_translate`
  ADD CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_url_rewrite`
--
ALTER TABLE `core_url_rewrite`
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `core_variable_value`
--
ALTER TABLE `core_variable_value`
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `coupon_aggregated`
--
ALTER TABLE `coupon_aggregated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `coupon_aggregated_order`
--
ALTER TABLE `coupon_aggregated_order`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `coupon_aggregated_updated`
--
ALTER TABLE `coupon_aggregated_updated`
  ADD CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `dataflow_batch`
--
ALTER TABLE `dataflow_batch`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `dataflow_batch_export`
--
ALTER TABLE `dataflow_batch_export`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `dataflow_batch_import`
--
ALTER TABLE `dataflow_batch_import`
  ADD CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `dataflow_import_data`
--
ALTER TABLE `dataflow_import_data`
  ADD CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `dataflow_profile_history`
--
ALTER TABLE `dataflow_profile_history`
  ADD CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `index_process_event`
--
ALTER TABLE `index_process_event`
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll_store`
--
ALTER TABLE `poll_store`
  ADD CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `poll_vote`
--
ALTER TABLE `poll_vote`
  ADD CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 限制表 `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- 限制表 `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `FK_SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALESRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_billing_agreement`
--
ALTER TABLE `sales_billing_agreement`
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_billing_agreement_order`
--
ALTER TABLE `sales_billing_agreement_order`
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo`
--
ALTER TABLE `sales_flat_creditmemo`
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_comment`
--
ALTER TABLE `sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_grid`
--
ALTER TABLE `sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_creditmemo_item`
--
ALTER TABLE `sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice`
--
ALTER TABLE `sales_flat_invoice`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_comment`
--
ALTER TABLE `sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_grid`
--
ALTER TABLE `sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_invoice_item`
--
ALTER TABLE `sales_flat_invoice_item`
  ADD CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order`
--
ALTER TABLE `sales_flat_order`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_address`
--
ALTER TABLE `sales_flat_order_address`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_grid`
--
ALTER TABLE `sales_flat_order_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_item`
--
ALTER TABLE `sales_flat_order_item`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_payment`
--
ALTER TABLE `sales_flat_order_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_order_status_history`
--
ALTER TABLE `sales_flat_order_status_history`
  ADD CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote`
--
ALTER TABLE `sales_flat_quote`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_address`
--
ALTER TABLE `sales_flat_quote_address`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_address_item`
--
ALTER TABLE `sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_item`
--
ALTER TABLE `sales_flat_quote_item`
  ADD CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_item_option`
--
ALTER TABLE `sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_payment`
--
ALTER TABLE `sales_flat_quote_payment`
  ADD CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_quote_shipping_rate`
--
ALTER TABLE `sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment`
--
ALTER TABLE `sales_flat_shipment`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_comment`
--
ALTER TABLE `sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_grid`
--
ALTER TABLE `sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_item`
--
ALTER TABLE `sales_flat_shipment_item`
  ADD CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_flat_shipment_track`
--
ALTER TABLE `sales_flat_shipment_track`
  ADD CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_invoiced_aggregated`
--
ALTER TABLE `sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_invoiced_aggregated_order`
--
ALTER TABLE `sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_order_aggregated_created`
--
ALTER TABLE `sales_order_aggregated_created`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_order_aggregated_updated`
--
ALTER TABLE `sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_order_status_label`
--
ALTER TABLE `sales_order_status_label`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_order_status_state`
--
ALTER TABLE `sales_order_status_state`
  ADD CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_order_tax_item`
--
ALTER TABLE `sales_order_tax_item`
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_payment_transaction`
--
ALTER TABLE `sales_payment_transaction`
  ADD CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_recurring_profile`
--
ALTER TABLE `sales_recurring_profile`
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_recurring_profile_order`
--
ALTER TABLE `sales_recurring_profile_order`
  ADD CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `sales_refunded_aggregated`
--
ALTER TABLE `sales_refunded_aggregated`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_refunded_aggregated_order`
--
ALTER TABLE `sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_shipping_aggregated`
--
ALTER TABLE `sales_shipping_aggregated`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sales_shipping_aggregated_order`
--
ALTER TABLE `sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `sitemap`
--
ALTER TABLE `sitemap`
  ADD CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- 限制表 `tag_properties`
--
ALTER TABLE `tag_properties`
  ADD CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag_relation`
--
ALTER TABLE `tag_relation`
  ADD CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tag_summary`
--
ALTER TABLE `tag_summary`
  ADD CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_order_aggregated_created`
--
ALTER TABLE `tax_order_aggregated_created`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `tax_order_aggregated_updated`
--
ALTER TABLE `tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `weee_discount`
--
ALTER TABLE `weee_discount`
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `weee_tax`
--
ALTER TABLE `weee_tax`
  ADD CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `widget_instance_page`
--
ALTER TABLE `widget_instance_page`
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `widget_instance_page_layout`
--
ALTER TABLE `widget_instance_page_layout`
  ADD CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `wishlist_item_option`
--
ALTER TABLE `wishlist_item_option`
  ADD CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
