/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : cwd_db

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 12/10/2022 15:04:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ap_banner
-- ----------------------------
DROP TABLE IF EXISTS `ap_banner`;
CREATE TABLE `ap_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(5) NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `displayed_time` datetime(0) NOT NULL COMMENT 'ngay publish',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'ngay tao',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'ngay sua',
  `mobile_thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order` int(6) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_banner
-- ----------------------------
INSERT INTO `ap_banner` VALUES (5, 1, 'banner-home.jpg', '', NULL, NULL, 1, '2020-12-23 00:00:00', '2020-10-21 17:11:36', '2020-12-23 16:57:48', 'news-home3.jpg', 0);
INSERT INTO `ap_banner` VALUES (6, 2, 'avatar-info.png', '', NULL, NULL, 1, '2020-10-29 00:00:00', '2020-10-29 09:42:46', '2020-10-29 09:42:46', '', 0);
INSERT INTO `ap_banner` VALUES (7, 2, 'img-news5.jpg', '', NULL, NULL, 1, '2020-10-29 00:00:00', '2020-10-29 09:43:02', '2020-10-29 09:43:02', '', 0);

-- ----------------------------
-- Table structure for ap_banner_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_banner_translations`;
CREATE TABLE `ap_banner_translations`  (
  `id` int(11) NULL DEFAULT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `ap_banner_translations_id_language_code_pk`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_banner_translations
-- ----------------------------
INSERT INTO `ap_banner_translations` VALUES (1, 'vi', NULL, 'Banner1', '', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (2, 'vi', NULL, 'Badasdsad', '123123', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (3, 'vi', NULL, 'Banner 1', '', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (4, 'vi', NULL, 'asdas asdsa asdas', 'asdsa asdsa asdsa', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (5, 'vi', NULL, 'TRƯỜNG MẦM NON', 'PHẦN MỀM LIÊN LẠC & HỌC TẬP THÔNG MINH CHO', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (3, 'en', NULL, 'hii', 'ád sg sd', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (4, 'en', NULL, 'sdsdfsdf', '', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (5, 'en', NULL, '(SELECT 1 FROM dual)', 'srtwe wer wer wer', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (6, 'en', NULL, 'hii', '', NULL, NULL, NULL, NULL);
INSERT INTO `ap_banner_translations` VALUES (7, 'en', NULL, 'hAD', '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ap_category
-- ----------------------------
DROP TABLE IF EXISTS `ap_category`;
CREATE TABLE `ap_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_featured` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Background for parent_id = 0',
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'style html',
  `class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'post' COMMENT 'type theo đúng tên controller',
  `order` int(3) NULL DEFAULT 0,
  `is_status` tinyint(2) NOT NULL DEFAULT 1,
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `color` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_category
-- ----------------------------
INSERT INTO `ap_category` VALUES (1, 0, '', '', '1', NULL, NULL, 'post', 1, 1, '2020-11-12 23:27:52', '2020-12-23 10:56:26', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (2, 0, '', '', '1', NULL, NULL, 'post', 0, 1, '2020-11-12 23:28:03', '2020-12-28 16:57:16', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (3, 0, '', '', NULL, NULL, NULL, 'tutorial', 0, 1, '2020-12-10 16:01:41', '2020-12-10 16:01:41', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (4, 0, '', '', NULL, NULL, NULL, 'tutorial', 0, 1, '2020-12-10 16:01:56', '2020-12-10 16:01:56', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (5, 0, '', '', NULL, NULL, NULL, 'tutorial', 0, 1, '2020-12-10 16:02:08', '2020-12-10 16:02:08', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (6, 0, 'banner-home1.jpg', '', '1', NULL, NULL, 'field', 0, 1, '2020-12-15 14:13:44', '2020-12-23 09:54:34', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (7, 0, '', '', NULL, NULL, NULL, 'document', 0, 1, '2020-12-16 11:47:06', '2020-12-16 11:47:06', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (8, 0, '', '', NULL, NULL, NULL, 'event', 0, 1, '2020-12-23 16:12:46', '2020-12-23 16:12:46', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (9, 0, '', '', NULL, NULL, NULL, 'ecosystem', 0, 1, '2021-07-23 21:44:00', '2021-07-23 21:44:00', '', '', NULL, NULL);
INSERT INTO `ap_category` VALUES (10, 0, '', '', NULL, NULL, NULL, 'calendar', 0, 1, '2021-07-24 15:06:01', '2021-07-24 15:06:01', '', '', NULL, '#fa0909');

-- ----------------------------
-- Table structure for ap_category_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_category_translations`;
CREATE TABLE `ap_category_translations`  (
  `id` int(11) NOT NULL,
  `language_code` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title_highlight` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_adv` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumb_home` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `ap_category_translations_id_language_code_pk`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_category_translations
-- ----------------------------
INSERT INTO `ap_category_translations` VALUES (1, 'vi', 'Về apeckids', NULL, '', 've-apeckids', 'Về apeckids', '', '', '<p>erfg sds&nbsp;</p>', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (2, 'en', 'fgdfgd', NULL, '', 'fgdfgd', '', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (2, 'vi', 'Cẩm nang', NULL, '', 'cam-nang', 'Cẩm nang', '', '', '<p>fserfs</p>', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (3, 'vi', 'hướng dẫn sử dụng APP DÀNH CHO GIÁO VIÊN', NULL, 'hướng dẫn sử dụng APP DÀNH CHO GIÁO VIÊN', 'huong-dan-su-dung-app-danh-cho-giao-vien', 'hướng dẫn sử dụng APP DÀNH CHO GIÁO VIÊN', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (4, 'vi', 'hướng dẫn sử dụng APP DÀNH CHO PHỤ HUYNH', NULL, 'hướng dẫn sử dụng APP DÀNH CHO PHỤ HUYNH', 'huong-dan-su-dung-app-danh-cho-phu-huynh', 'hướng dẫn sử dụng APP DÀNH CHO PHỤ HUYNH', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (5, 'vi', 'hướng dẫn QUẢN TRỊ WEBSITE ADMIN', NULL, 'hướng dẫn QUẢN TRỊ WEBSITE ADMIN', 'huong-dan-quan-tri-website-admin', 'hướng dẫn QUẢN TRỊ WEBSITE ADMIN', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (6, 'vi', 'field 1', NULL, '', 'field-1', 'field 1', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (7, 'vi', 'tài liệu 1', NULL, '', 'tai-lieu-1', 'tài liệu 1', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (8, 'vi', 'category event 1', NULL, '', 'category-event-1', 'category event 1', '', '', '', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (9, 'vi', 'Hệ thống trường học', 'trường học', 'Hệ thống trường học', 'he-thong-truong-hoc', 'Hệ thống trường học', '', '', '<p>Hệ thống trường học</p>', NULL, NULL);
INSERT INTO `ap_category_translations` VALUES (10, 'vi', 'sdfsdfsdfsdf', NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL);

-- ----------------------------
-- Table structure for ap_contact
-- ----------------------------
DROP TABLE IF EXISTS `ap_contact`;
CREATE TABLE `ap_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_contact
-- ----------------------------
INSERT INTO `ap_contact` VALUES (1, 'Trang Quỳnh Nguyễn', 'quynhtrang220@gmail.com', '0979634153', '', '2020-11-16 11:03:36', NULL, NULL, '', NULL, 'register');
INSERT INTO `ap_contact` VALUES (2, 'Đinh Thế Sang', 'thesang201@gmail.com', '0976564542', '', '2020-11-16 13:32:06', NULL, NULL, 'tesst', NULL, 'register');
INSERT INTO `ap_contact` VALUES (3, 'Trang Quỳnh Nguyễn', 'quynhtrang220@gmail.com', '0979634153', 'esv è sd', '2020-11-16 13:33:59', NULL, NULL, 'rvee', NULL, 'register');
INSERT INTO `ap_contact` VALUES (4, 'Nguyễn Đức', 'ducnv@apecsoft.asia', '0909090909', 'Test', '2020-11-16 15:16:32', NULL, NULL, 'ApecSchool', NULL, 'register');
INSERT INTO `ap_contact` VALUES (5, 'Nguyễn Đức', 'ducnv@apecsoft.asia', '0909090909', 'Test', '2020-11-16 15:16:36', NULL, NULL, 'ApecSchool', NULL, 'register');

-- ----------------------------
-- Table structure for ap_currency
-- ----------------------------
DROP TABLE IF EXISTS `ap_currency`;
CREATE TABLE `ap_currency`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_status` tinyint(1) NOT NULL DEFAULT 1,
  `symbol` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `rateBaseEUR` decimal(15, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_groups
-- ----------------------------
DROP TABLE IF EXISTS `ap_groups`;
CREATE TABLE `ap_groups`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_groups
-- ----------------------------
INSERT INTO `ap_groups` VALUES (1, 'Admin', 'Administrator', '{\"calendar\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"media\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"account\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"report\":{\"view\":\"1\",\"export\":\"1\"},\"day_off\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"employee\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"view\":\"1\",\"delete\":\"1\",\"export\":\"1\"},\"question\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"gallery\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"feedback\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"service\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"store\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"banner\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"page\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"menus\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"category\":{\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"service\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"question\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"}}}');
INSERT INTO `ap_groups` VALUES (2, 'Biên tập viên', 'Nhóm biên tập quản trị nội dung web', '{\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"page\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"contact\":{\"view\":\"1\",\"delete\":\"1\"},\"buy_docs\":{\"view\":\"1\",\"delete\":\"1\"},\"donate\":{\"view\":\"1\",\"delete\":\"1\",\"export\":\"1\"},\"category\":{\"post\":{\"view\":\"1\",\"edit\":\"1\"}}}');
INSERT INTO `ap_groups` VALUES (19, 'Quản trị viên sdf sd', 'Quản trị viên', '{\"store\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"banner\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"page\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"menus\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"},\"category\":{\"post\":{\"view\":\"1\",\"add\":\"1\",\"edit\":\"1\",\"delete\":\"1\"}}}');

-- ----------------------------
-- Table structure for ap_library
-- ----------------------------
DROP TABLE IF EXISTS `ap_library`;
CREATE TABLE `ap_library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `album` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_status` tinyint(2) NOT NULL DEFAULT 2,
  `displayed_time` date NULL DEFAULT NULL,
  `order` tinyint(1) NOT NULL,
  `linkvideo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(2) NOT NULL COMMENT '1: album anh 2:video  3:document',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_library
-- ----------------------------
INSERT INTO `ap_library` VALUES (1, 'collection-home2.jpg', '[\"about-home.jpg\",\"collection-home1.jpg\",\"collection-home2.jpg\"]', 1, '2020-10-16', 0, NULL, NULL, 1, '2020-10-16 16:14:39', '2020-10-26 14:41:20', NULL);
INSERT INTO `ap_library` VALUES (2, 'avatar-info.png', '[\"avatar-info.png\"]', 1, '2020-10-26', 0, NULL, NULL, 1, '2020-10-26 14:41:41', '2020-10-26 14:41:41', NULL);
INSERT INTO `ap_library` VALUES (3, 'avatar-info.png', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:57:36', '2020-10-29 14:57:36', NULL);
INSERT INTO `ap_library` VALUES (4, 'collection-home1.jpg', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:57:46', '2020-10-29 14:57:46', NULL);
INSERT INTO `ap_library` VALUES (5, 'collection-home2.jpg', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:57:59', '2020-10-29 14:57:59', NULL);
INSERT INTO `ap_library` VALUES (6, 'img-about1.jpg', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:58:17', '2020-10-29 14:58:17', NULL);
INSERT INTO `ap_library` VALUES (7, 'img-desc-banner.png', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:58:30', '2020-10-29 14:58:30', NULL);
INSERT INTO `ap_library` VALUES (8, 'manicurist2.jpg', '', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:58:45', '2020-10-29 15:21:12', NULL);
INSERT INTO `ap_library` VALUES (9, 'avatar-info.png', '[\"banner-home1.png\",\"collection-home1.jpg\",\"collection-home2.jpg\"]', 1, '2020-10-29', 0, NULL, NULL, 1, '2020-10-29 14:59:01', '2020-10-29 15:30:53', NULL);
INSERT INTO `ap_library` VALUES (10, 'banner-home1.jpg', NULL, 1, '2020-12-16', 0, NULL, 'files/nextcloud_manual.pdf', 3, '2020-12-16 12:00:46', '2020-12-16 12:00:46', NULL);
INSERT INTO `ap_library` VALUES (11, 'about-home.jpg', NULL, 1, '2020-12-23', 0, 'https://www.youtube.com/watch?v=oA7asFEgYfc', NULL, 2, '2020-12-23 11:22:08', '2020-12-23 11:49:40', '03:10');
INSERT INTO `ap_library` VALUES (12, 'about-home.jpg', '[\"about-home2.jpg\",\"action-home1.jpg\"]', 1, '2020-12-23', 0, NULL, NULL, 1, '2020-12-23 11:27:57', '2020-12-23 11:27:57', NULL);
INSERT INTO `ap_library` VALUES (13, 'about-home.jpg', '[\"about-home2.jpg\",\"action-home1.jpg\"]', 1, '2020-12-23', 0, NULL, NULL, 1, '2020-12-23 16:55:48', '2020-12-29 09:19:46', NULL);
INSERT INTO `ap_library` VALUES (14, 'event-home3.jpg', NULL, 1, '2020-12-23', 0, '', NULL, 2, '2020-12-23 16:56:03', '2020-12-23 16:59:33', NULL);
INSERT INTO `ap_library` VALUES (15, 'action-home1.jpg', '', 1, '2020-12-29', 0, NULL, NULL, 1, '2020-12-29 09:21:02', '2020-12-29 09:27:01', NULL);
INSERT INTO `ap_library` VALUES (16, 'action-home1.jpg', NULL, 1, '2020-12-30', 0, 'https://www.youtube.com/watch?v=oA7asFEgYfc', NULL, 2, '2020-12-29 09:49:18', '2020-12-29 09:49:18', '03:10');
INSERT INTO `ap_library` VALUES (17, 'about-home1.jpg', NULL, 1, '2020-12-29', 0, 'https://www.youtube.com/watch?v=oA7asFEgYfc&list=RDoA7asFEgYfc&start_radio=1', NULL, 2, '2020-12-29 15:43:32', '2020-12-29 15:43:32', '03:10');
INSERT INTO `ap_library` VALUES (18, '', NULL, 1, '2020-12-29', 0, '', NULL, 2, '2020-12-29 15:43:39', '2020-12-29 15:43:39', NULL);

-- ----------------------------
-- Table structure for ap_library_category
-- ----------------------------
DROP TABLE IF EXISTS `ap_library_category`;
CREATE TABLE `ap_library_category`  (
  `library_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`library_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_library_category
-- ----------------------------
INSERT INTO `ap_library_category` VALUES (10, 7);

-- ----------------------------
-- Table structure for ap_library_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_library_translations`;
CREATE TABLE `ap_library_translations`  (
  `id` int(11) NULL DEFAULT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `id`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_library_translations
-- ----------------------------
INSERT INTO `ap_library_translations` VALUES (1, 'en', 'asda', 'asdsa', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (2, 'en', 'à asdas asd á asd asd á sa á', 'asd á á á ad a asda á a asd a á  a á', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (3, 'en', 'asda asd', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (4, 'en', 'asdfas', 'adasd asd asd', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (5, 'en', 'asdasd', 'asd as asd', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (6, 'en', 'aew4rte ert', 'erter erter ertnfb rtyrt ert', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (7, 'en', 'ert ert', 'terter ert ert erte tert ertert', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (8, 'en', 'ertert', 'erte rtert', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (9, 'en', 'ertert', 'erte rt', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (10, 'vi', 'Liên hệ', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (11, 'vi', 'video 1', 'oke', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (12, 'vi', 'image 1', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (13, 'vi', 'image empty', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (14, 'vi', 'video empty', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (15, 'vi', 'ádasdasd', 'ASCsdasas', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (16, 'vi', 'ddđ', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (17, 'vi', 'Liên hệ', '', '', NULL, NULL, NULL);
INSERT INTO `ap_library_translations` VALUES (18, 'vi', 'Liên', '', '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ap_location_city
-- ----------------------------
DROP TABLE IF EXISTS `ap_location_city`;
CREATE TABLE `ap_location_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region` tinyint(4) NULL DEFAULT NULL COMMENT '1:mien bac 2:mien trung 3: mien nam',
  `name_with_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(6) NULL DEFAULT 0,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_location_city
-- ----------------------------
INSERT INTO `ap_location_city` VALUES (1, 'Hà Nội', '1', 'Thành phố', 'ha-noi', 1, 'Thành phố Hà Nội', '21.0031177', '105.82014079999999', 5, '1556854168.jpeg', 1);
INSERT INTO `ap_location_city` VALUES (2, 'Hà Giang', '24', 'Tỉnh', 'ha-giang', 1, 'Tỉnh Hà Giang', '22.7662056', '104.9388853', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (4, 'Cao Bằng', '17', 'Tỉnh', 'cao-bang', 1, 'Tỉnh Cao Bằng', '22.6356890', '106.2522143', 0, NULL, 1);
INSERT INTO `ap_location_city` VALUES (6, 'Bắc Kạn', '6', 'Tỉnh', 'bac-kan', 1, 'Tỉnh Bắc Kạn', '22.3032923', '105.8760040', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (8, 'Tuyên Quang', '60', 'Tỉnh', 'tuyen-quang', 1, 'Tỉnh Tuyên Quang', '22.1726708', '105.3131185', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (10, 'Lào Cai', '38', 'Tỉnh', 'lao-cai', 1, 'Tỉnh Lào Cai', '22.3380865', '104.1487055', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (11, 'Điện Biên', '20', 'Tỉnh', 'dien-bien', 1, 'Tỉnh Điện Biên', '21.8042309', '103.1076525', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (12, 'Lai Châu', '35', 'Tỉnh', 'lai-chau', 1, 'Tỉnh Lai Châu', '22.3686613', '103.3119085', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (14, 'Sơn La', '52', 'Tỉnh', 'son-la', 1, 'Tỉnh Sơn La', '21.1022284', '103.7289167', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (15, 'Yên Bái', '63', 'Tỉnh', 'yen-bai', 1, 'Tỉnh Yên Bái', '21.6837923', '104.4551361', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (17, 'Hoà Bình', '30', 'Tỉnh', 'hoa-binh', 1, 'Tỉnh Hoà Bình', '20.6861265', '105.3131185', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (19, 'Thái Nguyên', '55', 'Tỉnh', 'thai-nguyen', 1, 'Tỉnh Thái Nguyên', '21.5613771', '105.8760040', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (20, 'Lạng Sơn', '37', 'Tỉnh', 'lang-son', 1, 'Tỉnh Lạng Sơn', '21.8563705', '106.6291304', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (22, 'Quảng Ninh', '49', 'Tỉnh', 'quang-ninh', 1, 'Tỉnh Quảng Ninh', '21.0063820', '107.2925144', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (24, 'Bắc Giang', '5', 'Tỉnh', 'bac-giang', 1, 'Tỉnh Bắc Giang', '21.3014947', '106.6291304', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (25, 'Phú Thọ', '44', 'Tỉnh', 'phu-tho', 1, 'Tỉnh Phú Thọ', '21.2684430', '105.2045573', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (26, 'Vĩnh Phúc', '62', 'Tỉnh', 'vinh-phuc', 1, 'Tỉnh Vĩnh Phúc', '21.3608805', '105.5474373', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (27, 'Bắc Ninh', '8', 'Tỉnh', 'bac-ninh', 1, 'Tỉnh Bắc Ninh', '21.1214440', '106.1110501', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (30, 'Hải Dương', '25', 'Tỉnh', 'hai-duong', 1, 'Tỉnh Hải Dương', '20.9385958', '106.3206861', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (31, 'Hải Phòng', '4', 'Thành phố', 'hai-phong', 1, 'Thành phố Hải Phòng', '20.8449115', '106.6880841', 2, NULL, 0);
INSERT INTO `ap_location_city` VALUES (33, 'Hưng Yên', '31', 'Tỉnh', 'hung-yen', 1, 'Tỉnh Hưng Yên', '20.8525711', '106.0169971', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (34, 'Thái Bình', '54', 'Tỉnh', 'thai-binh', 1, 'Tỉnh Thái Bình', '20.5386936', '106.3934777', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (35, 'Hà Nam', '27', 'Tỉnh', 'ha-nam', 1, 'Tỉnh Hà Nam', '20.5835196', '105.9229900', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (36, 'Nam Định', '40', 'Tỉnh', 'nam-dinh', 1, 'Tỉnh Nam Định', '20.2791804', '106.2051484', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (37, 'Ninh Bình', '42', 'Tỉnh', 'ninh-binh', 1, 'Tỉnh Ninh Bình', '20.2129969', '105.9229900', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (38, 'Thanh Hóa', '56', 'Tỉnh', 'thanh-hoa', 2, 'Tỉnh Thanh Hóa', '20.1291279', '105.3131185', 0, NULL, 1);
INSERT INTO `ap_location_city` VALUES (40, 'Nghệ An', '41', 'Tỉnh', 'nghe-an', 2, 'Tỉnh Nghệ An', '19.2342489', '104.9200365', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (42, 'Hà Tĩnh', '28', 'Tỉnh', 'ha-tinh', 2, 'Tỉnh Hà Tĩnh', '18.2943776', '105.6745247', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (44, 'Quảng Bình', '46', 'Tỉnh', 'quang-binh', 2, 'Tỉnh Quảng Bình', '17.6102715', '106.3487474', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (45, 'Quảng Trị', '50', 'Tỉnh', 'quang-tri', 2, 'Tỉnh Quảng Trị', '16.7943472', '106.9634090', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (46, 'Thừa Thiên Huế', '57', 'Tỉnh', 'thua-thien-hue', 2, 'Tỉnh Thừa Thiên Huế', '16.4673970', '107.5905326', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (48, 'Đà Nẵng', '3', 'Thành phố', 'da-nang', 2, 'Thành phố Đà Nẵng', '16.0544068', '108.2021667', 3, NULL, 0);
INSERT INTO `ap_location_city` VALUES (49, 'Quảng Nam', '47', 'Tỉnh', 'quang-nam', 2, 'Tỉnh Quảng Nam', '15.5393538', '108.0191020', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (51, 'Quảng Ngãi', '48', 'Tỉnh', 'quang-ngai', 2, 'Tỉnh Quảng Ngãi', '15.0759838', '108.7125791', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (52, 'Bình Định', '11', 'Tỉnh', 'binh-dinh', 2, 'Tỉnh Bình Định', '14.1665324', '108.9026830', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (54, 'Phú Yên', '45', 'Tỉnh', 'phu-yen', 2, 'Tỉnh Phú Yên', '13.0881861', '109.0928764', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (56, 'Khánh Hòa', '32', 'Tỉnh', 'khanh-hoa', 2, 'Tỉnh Khánh Hòa', '12.2585098', '109.0526076', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (58, 'Ninh Thuận', '43', 'Tỉnh', 'ninh-thuan', 2, 'Tỉnh Ninh Thuận', '11.6738767', '108.8629572', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (60, 'Bình Thuận', '14', 'Tỉnh', 'binh-thuan', 2, 'Tỉnh Bình Thuận', '11.0903703', '108.0720781', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (62, 'Kon Tum', '34', 'Tỉnh', 'kon-tum', 2, 'Tỉnh Kon Tum', '14.6611670', '107.8388500', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (64, 'Gia Lai', '23', 'Tỉnh', 'gia-lai', 2, 'Tỉnh Gia Lai', '13.8078943', '108.1093750', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (66, 'Đắk Lắk', '18', 'Tỉnh', 'dak-lak', 2, 'Tỉnh Đắk Lắk', '12.7100116', '108.2377519', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (67, 'Đắk Nông', '19', 'Tỉnh', 'dak-nong', 2, 'Tỉnh Đắk Nông', '12.2646476', '107.6098060', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (68, 'Lâm Đồng', '36', 'Tỉnh', 'lam-dong', 3, 'Tỉnh Lâm Đồng', '11.5752791', '108.1428669', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (70, 'Bình Phước', '13', 'Tỉnh', 'binh-phuoc', 3, 'Tỉnh Bình Phước', '11.7511894', '106.7234639', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (72, 'Tây Ninh', '53', 'Tỉnh', 'tay-ninh', 3, 'Tỉnh Tây Ninh', '11.3494766', '106.0640179', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (74, 'Bình Dương', '12', 'Tỉnh', 'binh-duong', 3, 'Tỉnh Bình Dương', '11.3254024', '106.4770170', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (75, 'Đồng Nai', '21', 'Tỉnh', 'dong-nai', 3, 'Tỉnh Đồng Nai', '11.0686305', '107.1675976', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (77, 'Bà Rịa - Vũng Tàu', '9', 'Tỉnh', 'ba-ria---vung-tau', 3, 'Tỉnh Bà Rịa - Vũng Tàu', '10.5417397', '107.2429976', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (79, 'Hồ Chí Minh', '2', 'Thành phố', 'ho-chi-minh', 3, 'Thành phố Hồ Chí Minh', '10.8230989', '106.6296638', 4, 'hinh-anh-thiet-ke-noi-that-chung-cu-hoa-binh-green-112620-060217.jpg', 1);
INSERT INTO `ap_location_city` VALUES (80, 'Long An', '39', 'Tỉnh', 'long-an', 3, 'Tỉnh Long An', '10.6955720', '106.2431205', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (82, 'Tiền Giang', '58', 'Tỉnh', 'tien-giang', 3, 'Tỉnh Tiền Giang', '10.4493324', '106.3420504', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (83, 'Bến Tre', '10', 'Tỉnh', 'ben-tre', 3, 'Tỉnh Bến Tre', '10.1081553', '106.4405872', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (84, 'Trà Vinh', '59', 'Tỉnh', 'tra-vinh', 3, 'Tỉnh Trà Vinh', '9.8127410', '106.2992912', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (86, 'Vĩnh Long', '61', 'Tỉnh', 'vinh-long', 3, 'Tỉnh Vĩnh Long', '10.0861281', '106.0169971', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (87, 'Đồng Tháp', '22', 'Tỉnh', 'dong-thap', 3, 'Tỉnh Đồng Tháp', '10.4937989', '105.6881788', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (89, 'An Giang', '5', 'Tỉnh', 'an-giang', 3, 'Tỉnh An Giang', '10.5215836', '105.1258955', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (91, 'Kiên Giang', '33', 'Tỉnh', 'kien-giang', 3, 'Tỉnh Kiên Giang', '9.8249587', '105.1258955', 0, NULL, 0);
INSERT INTO `ap_location_city` VALUES (92, 'Cần Thơ', '5', 'Thành phố', 'can-tho', 3, 'Thành phố Cần Thơ', '10.0451618', '105.7468535', 1, NULL, 1);
INSERT INTO `ap_location_city` VALUES (93, 'Hậu Giang', '29', 'Tỉnh', 'hau-giang', 3, 'Tỉnh Hậu Giang', '9.7578980', '105.6412527', 0, NULL, 1);
INSERT INTO `ap_location_city` VALUES (94, 'Sóc Trăng', '51', 'Tỉnh', 'soc-trang', 3, 'Tỉnh Sóc Trăng', '9.6003688', '105.9599539', 0, NULL, 1);
INSERT INTO `ap_location_city` VALUES (95, 'Bạc Liêu', '7', 'Tỉnh', 'bac-lieu', 3, 'Tỉnh Bạc Liêu', '9.2515555', '105.5136472', 0, NULL, 1);
INSERT INTO `ap_location_city` VALUES (96, 'Cà Mau', '15', 'Tỉnh', 'ca-mau', 3, 'Tỉnh Cà Mau', '8.9624099', '105.1258955', 0, NULL, 1);

-- ----------------------------
-- Table structure for ap_location_country
-- ----------------------------
DROP TABLE IF EXISTS `ap_location_country`;
CREATE TABLE `ap_location_country`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `format` decimal(10, 2) NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '1:hien, 0: ẩn',
  `currency_apply` int(1) NULL DEFAULT 0,
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_location_country
-- ----------------------------
INSERT INTO `ap_location_country` VALUES (6, 'Việt Nam', 'Dong', 'VND', '₫', 2222.00, 1, 0, '2019-06-10 10:24:18', '2019-06-10 10:24:18');
INSERT INTO `ap_location_country` VALUES (7, 'English', 'EURO', 'EUR', '€', 1.00, 1, 1, '2019-07-08 04:36:07', '2019-07-08 04:36:07');
INSERT INTO `ap_location_country` VALUES (8, 'Denmark', 'Krone', 'DKK', 'kr', 7.47, 1, 1, '2019-07-08 04:36:07', '2019-07-08 04:36:07');
INSERT INTO `ap_location_country` VALUES (31, 'Úc', 'Đô la Úc', 'AUD', '$, A$, AU$', 30000.00, 1, 0, '2019-08-01 15:09:39', '2019-08-01 15:09:39');
INSERT INTO `ap_location_country` VALUES (39, 'Germany', 'EUR', 'EUR', 'DE', 3500.00, 1, 0, '2019-08-21 22:45:57', '2019-08-21 22:45:57');
INSERT INTO `ap_location_country` VALUES (40, 'Singapore', NULL, NULL, NULL, NULL, 1, 0, '2019-08-26 17:29:48', '2019-08-26 17:29:48');
INSERT INTO `ap_location_country` VALUES (41, 'sweden', 'Kronor', 'SEK', 'SEK', 10.00, 1, 0, '2019-08-28 06:15:19', '2019-08-28 06:15:19');

-- ----------------------------
-- Table structure for ap_location_district
-- ----------------------------
DROP TABLE IF EXISTS `ap_location_district`;
CREATE TABLE `ap_location_district`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Tỉnh / TP Trực thuộc TW',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_with_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT 0,
  `is_featured` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 977 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_location_district
-- ----------------------------
INSERT INTO `ap_location_district` VALUES (973, 96, 'Ngọc Hiển', '354', 'Huyện', 'ngoc-hien', 'Huyện Ngọc Hiển, Cà Mau', '8.6677256', '105.0032366', NULL, 0);
INSERT INTO `ap_location_district` VALUES (972, 96, 'Phú Tân', '399', 'Huyện', 'phu-tan', 'Huyện Phú Tân, Cà Mau', '8.9291357', '104.8921668', NULL, 0);
INSERT INTO `ap_location_district` VALUES (971, 96, 'Năm Căn', '332', 'Huyện', 'nam-can', 'Huyện Năm Căn, Cà Mau', '8.8153071', '105.0557415', NULL, 0);
INSERT INTO `ap_location_district` VALUES (970, 96, 'Đầm Dơi', '671', 'Huyện', 'dam-doi', 'Huyện Đầm Dơi, Cà Mau', '8.9994186', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (969, 96, 'Cái Nước', '75', 'Huyện', 'cai-nuoc', 'Huyện Cái Nước, Cà Mau', '8.9867763', '105.0557415', NULL, 0);
INSERT INTO `ap_location_district` VALUES (968, 96, 'Trần Văn Thời', '568', 'Huyện', 'tran-van-thoi', 'Huyện Trần Văn Thời, Cà Mau', '9.1009716', '104.8921668', NULL, 0);
INSERT INTO `ap_location_district` VALUES (966, 96, 'U Minh', '594', 'Huyện', 'u-minh', 'Huyện U Minh, Cà Mau', '9.3554435', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (967, 96, 'Thới Bình', '537', 'Huyện', 'thoi-binh', 'Huyện Thới Bình, Cà Mau', '9.3473628', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (964, 96, 'Cà Mau', '71', 'Thành phố', 'ca-mau', 'Thành phố Cà Mau, Cà Mau', '9.1526728', '105.1960795', NULL, 0);
INSERT INTO `ap_location_district` VALUES (961, 95, 'Hoà Bình', '195', 'Huyện', 'hoa-binh', 'Huyện Hoà Bình, Bạc Liêu', '9.2704595', '105.5897386', NULL, 0);
INSERT INTO `ap_location_district` VALUES (959, 95, 'Giá Rai', '157', 'Thị xã', 'gia-rai', 'Thị xã Giá Rai, Bạc Liêu', '9.2601360', '105.3753129', NULL, 0);
INSERT INTO `ap_location_district` VALUES (960, 95, 'Đông Hải', '690', 'Huyện', 'dong-hai', 'Huyện Đông Hải, Bạc Liêu', '9.1630642', '105.4536718', NULL, 0);
INSERT INTO `ap_location_district` VALUES (958, 95, 'Vĩnh Lợi', '621', 'Huyện', 'vinh-loi', 'Huyện Vĩnh Lợi, Bạc Liêu', '9.3450296', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (956, 95, 'Hồng Dân', '213', 'Huyện', 'hong-dan', 'Huyện Hồng Dân, Bạc Liêu', '9.5539029', '105.4520500', NULL, 0);
INSERT INTO `ap_location_district` VALUES (957, 95, 'Phước Long', '410', 'Huyện', 'phuoc-long', 'Huyện Phước Long, Bạc Liêu', '9.4006715', '105.4302383', NULL, 0);
INSERT INTO `ap_location_district` VALUES (954, 95, 'Bạc Liêu', '26', 'Thành phố', 'bac-lieu', 'Thành phố Bạc Liêu, Bạc Liêu', '9.2573324', '105.7557791', NULL, 0);
INSERT INTO `ap_location_district` VALUES (951, 94, 'Trần Đề', '570', 'Huyện', 'tran-de', 'Huyện Trần Đề, Sóc Trăng', '9.4997800', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (950, 94, 'Vĩnh Châu', '616', 'Thị xã', 'vinh-chau', 'Thị xã Vĩnh Châu, Sóc Trăng', '9.3249582', '105.9804542', NULL, 0);
INSERT INTO `ap_location_district` VALUES (949, 94, 'Thạnh Trị', '531', 'Huyện', 'thanh-tri', 'Huyện Thạnh Trị, Sóc Trăng', '9.4741407', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (948, 94, 'Ngã Năm', '344', 'Thị xã', 'nga-nam', 'Thị xã Ngã Năm, Sóc Trăng', '9.5215171', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (947, 94, 'Mỹ Xuyên', '328', 'Huyện', 'my-xuyen', 'Huyện Mỹ Xuyên, Sóc Trăng', '9.4655111', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (946, 94, 'Long Phú', '289', 'Huyện', 'long-phu', 'Huyện Long Phú, Sóc Trăng', '9.6289421', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (945, 94, 'Cù Lao Dung', '136', 'Huyện', 'cu-lao-dung', 'Huyện Cù Lao Dung, Sóc Trăng', '9.5791522', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (944, 94, 'Mỹ Tú', '327', 'Huyện', 'my-tu', 'Huyện Mỹ Tú, Sóc Trăng', '9.5991040', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (943, 94, 'Kế Sách', '231', 'Huyện', 'ke-sach', 'Huyện Kế Sách, Sóc Trăng', '9.8310108', '105.9229900', NULL, 0);
INSERT INTO `ap_location_district` VALUES (942, 94, 'Châu Thành', '112', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Sóc Trăng', '9.6809726', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (941, 94, 'Sóc Trăng', '455', 'Thành phố', 'soc-trang', 'Thành phố Sóc Trăng, Sóc Trăng', '9.6025210', '105.9739049', NULL, 0);
INSERT INTO `ap_location_district` VALUES (937, 93, 'Long Mỹ', '288', 'Thị xã', 'long-my', 'Thị xã Long Mỹ, Hậu Giang', '9.6695970', '105.5650239', NULL, 0);
INSERT INTO `ap_location_district` VALUES (935, 93, 'Vị Thuỷ', '610', 'Huyện', 'vi-thuy', 'Huyện Vị Thuỷ, Hậu Giang', '9.8260824', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (936, 93, 'Long Mỹ', '287', 'Huyện', 'long-my', 'Huyện Long Mỹ, Hậu Giang', '9.6552847', '105.5239912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (934, 93, 'Phụng Hiệp', '408', 'Huyện', 'phung-hiep', 'Huyện Phụng Hiệp, Hậu Giang', '9.7762126', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (933, 93, 'Châu Thành', '111', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Hậu Giang', '9.9216255', '105.8073554', NULL, 0);
INSERT INTO `ap_location_district` VALUES (932, 93, 'Châu Thành A', '113', 'Huyện', 'chau-thanh-a', 'Huyện Châu Thành A, Hậu Giang', '9.9267260', '105.6315594', NULL, 0);
INSERT INTO `ap_location_district` VALUES (931, 93, 'Ngã Bảy', '343', 'Thị xã', 'nga-bay', 'Thị xã Ngã Bảy, Hậu Giang', '9.8252566', '105.8172881', NULL, 0);
INSERT INTO `ap_location_district` VALUES (930, 93, 'Vị Thanh', '609', 'Thành phố', 'vi-thanh', 'Thành phố Vị Thanh, Hậu Giang', '9.7731921', '105.4537082', NULL, 0);
INSERT INTO `ap_location_district` VALUES (927, 92, 'Thới Lai', '538', 'Huyện', 'thoi-lai', 'Huyện Thới Lai, Cần Thơ', '10.0681881', '105.5599728', NULL, 0);
INSERT INTO `ap_location_district` VALUES (925, 92, 'Cờ Đỏ', '131', 'Huyện', 'co-do', 'Huyện Cờ Đỏ, Cần Thơ', '10.0972302', '105.4304423', NULL, 0);
INSERT INTO `ap_location_district` VALUES (926, 92, 'Phong Điền', '382', 'Huyện', 'phong-dien', 'Huyện Phong Điền, Cần Thơ', '9.9967657', '105.6686611', NULL, 0);
INSERT INTO `ap_location_district` VALUES (924, 92, 'Vĩnh Thạnh', '624', 'Huyện', 'vinh-thanh', 'Huyện Vĩnh Thạnh, Cần Thơ', '10.2322696', '105.3987034', NULL, 0);
INSERT INTO `ap_location_district` VALUES (923, 92, 'Thốt Nốt', '541', 'Quận', 'thot-not', 'Quận Thốt Nốt, Cần Thơ', '10.2405338', '105.5336815', NULL, 0);
INSERT INTO `ap_location_district` VALUES (919, 92, 'Cái Răng', '76', 'Quận', 'cai-rang', 'Quận Cái Răng, Cần Thơ', '9.9992392', '105.8043572', NULL, 0);
INSERT INTO `ap_location_district` VALUES (918, 92, 'Bình Thuỷ', '61', 'Quận', 'binh-thuy', 'Quận Bình Thuỷ, Cần Thơ', '10.0622567', '105.7381017', NULL, 0);
INSERT INTO `ap_location_district` VALUES (917, 92, 'Ô Môn', '375', 'Quận', 'o-mon', 'Quận Ô Môn, Cần Thơ', '10.1164943', '105.6326457', NULL, 0);
INSERT INTO `ap_location_district` VALUES (916, 92, 'Ninh Kiều', '369', 'Quận', 'ninh-kieu', 'Quận Ninh Kiều, Cần Thơ', '10.0272537', '105.7698039', NULL, 0);
INSERT INTO `ap_location_district` VALUES (914, 91, 'Giang Thành', '159', 'Huyện', 'giang-thanh', 'Huyện Giang Thành, Kiên Giang', '10.4771358', '104.6821048', NULL, 0);
INSERT INTO `ap_location_district` VALUES (913, 91, 'U Minh Thượng', '595', 'Huyện', 'u-minh-thuong', 'Huyện U Minh Thượng, Kiên Giang', '9.6311125', '105.1025075', NULL, 0);
INSERT INTO `ap_location_district` VALUES (912, 91, 'Kiên Hải', '236', 'Huyện', 'kien-hai', 'Huyện Kiên Hải, Kiên Giang', '9.8091362', '104.6296338', NULL, 0);
INSERT INTO `ap_location_district` VALUES (911, 91, 'Phú Quốc', '396', 'Huyện', 'phu-quoc', 'Huyện Phú Quốc, Kiên Giang', '10.1586245', '103.9840200', NULL, 0);
INSERT INTO `ap_location_district` VALUES (910, 91, 'Vĩnh Thuận', '625', 'Huyện', 'vinh-thuan', 'Huyện Vĩnh Thuận, Kiên Giang', '9.5384134', '105.2428853', NULL, 0);
INSERT INTO `ap_location_district` VALUES (909, 91, 'An Minh', '6', 'Huyện', 'an-minh', 'Huyện An Minh, Kiên Giang', '9.6647183', '104.9495651', NULL, 0);
INSERT INTO `ap_location_district` VALUES (907, 91, 'Gò Quao', '168', 'Huyện', 'go-quao', 'Huyện Gò Quao, Kiên Giang', '9.7525077', '105.2897042', NULL, 0);
INSERT INTO `ap_location_district` VALUES (908, 91, 'An Biên', '1', 'Huyện', 'an-bien', 'Huyện An Biên, Kiên Giang', '9.8064559', '105.0557415', NULL, 0);
INSERT INTO `ap_location_district` VALUES (906, 91, 'Giồng Riềng', '162', 'Huyện', 'giong-rieng', 'Huyện Giồng Riềng, Kiên Giang', '9.9238222', '105.3728845', NULL, 0);
INSERT INTO `ap_location_district` VALUES (905, 91, 'Châu Thành', '110', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Kiên Giang', '9.8889535', '105.1492869', NULL, 0);
INSERT INTO `ap_location_district` VALUES (904, 91, 'Tân Hiệp', '484', 'Huyện', 'tan-hiep', 'Huyện Tân Hiệp, Kiên Giang', '10.1154358', '105.2834404', NULL, 0);
INSERT INTO `ap_location_district` VALUES (903, 91, 'Hòn Đất', '211', 'Huyện', 'hon-dat', 'Huyện Hòn Đất, Kiên Giang', '10.2227003', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (902, 91, 'Kiên Lương', '237', 'Huyện', 'kien-luong', 'Huyện Kiên Lương, Kiên Giang', '10.3043903', '104.6354631', NULL, 0);
INSERT INTO `ap_location_district` VALUES (900, 91, 'Hà Tiên', '175', 'Thị xã', 'ha-tien', 'Thị xã Hà Tiên, Kiên Giang', '10.3819090', '104.4901728', NULL, 0);
INSERT INTO `ap_location_district` VALUES (899, 91, 'Rạch Giá', '447', 'Thành phố', 'rach-gia', 'Thành phố Rạch Giá, Kiên Giang', '10.0215070', '105.0910974', NULL, 0);
INSERT INTO `ap_location_district` VALUES (894, 89, 'Thoại Sơn', '536', 'Huyện', 'thoai-son', 'Huyện Thoại Sơn, An Giang', '10.2595103', '105.2608002', NULL, 0);
INSERT INTO `ap_location_district` VALUES (893, 89, 'Chợ Mới', '122', 'Huyện', 'cho-moi', 'Huyện Chợ Mới, An Giang', '10.4825247', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (891, 89, 'Tri Tôn', '574', 'Huyện', 'tri-ton', 'Huyện Tri Tôn, An Giang', '10.3972321', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (892, 89, 'Châu Thành', '109', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, An Giang', '10.4454629', '105.3835120', NULL, 0);
INSERT INTO `ap_location_district` VALUES (890, 89, 'Tịnh Biên', '560', 'Huyện', 'tinh-bien', 'Huyện Tịnh Biên, An Giang', '10.5491070', '105.0089888', NULL, 0);
INSERT INTO `ap_location_district` VALUES (889, 89, 'Châu Phú', '102', 'Huyện', 'chau-phu', 'Huyện Châu Phú, An Giang', '10.5630265', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (888, 89, 'Phú Tân', '398', 'Huyện', 'phu-tan', 'Huyện Phú Tân, An Giang', '10.5942654', '105.3528491', NULL, 0);
INSERT INTO `ap_location_district` VALUES (887, 89, 'Tân Châu', '483', 'Thị xã', 'tan-chau', 'Thị xã Tân Châu, An Giang', '10.8026827', '105.1960795', NULL, 0);
INSERT INTO `ap_location_district` VALUES (886, 89, 'An Phú', '8', 'Huyện', 'an-phu', 'Huyện An Phú, An Giang', '10.8512167', '105.1025075', NULL, 0);
INSERT INTO `ap_location_district` VALUES (884, 89, 'Châu Đốc', '114', 'Thành phố', 'chau-doc', 'Thành phố Châu Đốc, An Giang', '10.6820814', '105.0823967', NULL, 0);
INSERT INTO `ap_location_district` VALUES (883, 89, 'Long Xuyên', '291', 'Thành phố', 'long-xuyen', 'Thành phố Long Xuyên, An Giang', '10.3759416', '105.4185406', NULL, 0);
INSERT INTO `ap_location_district` VALUES (877, 87, 'Châu Thành', '108', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Đồng Tháp', '10.2050554', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (876, 87, 'Lai Vung', '267', 'Huyện', 'lai-vung', 'Huyện Lai Vung, Đồng Tháp', '10.2554550', '105.6647142', NULL, 0);
INSERT INTO `ap_location_district` VALUES (874, 87, 'Thanh Bình', '518', 'Huyện', 'thanh-binh', 'Huyện Thanh Bình, Đồng Tháp', '10.6135294', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (875, 87, 'Lấp Vò', '277', 'Huyện', 'lap-vo', 'Huyện Lấp Vò, Đồng Tháp', '10.3578054', '105.6308159', NULL, 0);
INSERT INTO `ap_location_district` VALUES (873, 87, 'Cao Lãnh', '94', 'Huyện', 'cao-lanh', 'Huyện Cao Lãnh, Đồng Tháp', '10.4659577', '105.7059785', NULL, 0);
INSERT INTO `ap_location_district` VALUES (872, 87, 'Tháp Mười', '533', 'Huyện', 'thap-muoi', 'Huyện Tháp Mười, Đồng Tháp', '10.5302706', '105.8290298', NULL, 0);
INSERT INTO `ap_location_district` VALUES (870, 87, 'Hồng Ngự', '216', 'Huyện', 'hong-ngu', 'Huyện Hồng Ngự, Đồng Tháp', '10.7979866', '105.2897042', NULL, 0);
INSERT INTO `ap_location_district` VALUES (871, 87, 'Tam Nông', '475', 'Huyện', 'tam-nong', 'Huyện Tam Nông, Đồng Tháp', '10.7192793', '105.5474373', NULL, 0);
INSERT INTO `ap_location_district` VALUES (869, 87, 'Tân Hồng', '485', 'Huyện', 'tan-hong', 'Huyện Tân Hồng, Đồng Tháp', '10.8761150', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (868, 87, 'Hồng Ngự', '215', 'Thị xã', 'hong-ngu', 'Thị xã Hồng Ngự, Đồng Tháp', '10.8255238', '105.3950939', NULL, 0);
INSERT INTO `ap_location_district` VALUES (867, 87, 'Sa Đéc', '450', 'Thành phố', 'sa-dec', 'Thành phố Sa Đéc, Đồng Tháp', '10.3057678', '105.7468535', NULL, 0);
INSERT INTO `ap_location_district` VALUES (866, 87, 'Cao Lãnh', '93', 'Thành phố', 'cao-lanh', 'Thành phố Cao Lãnh, Đồng Tháp', '10.4549723', '105.6340352', NULL, 0);
INSERT INTO `ap_location_district` VALUES (862, 86, 'Trà Ôn', '565', 'Huyện', 'tra-on', 'Huyện Trà Ôn, Vĩnh Long', '9.9789961', '105.9934910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (863, 86, 'Bình Tân', '59', 'Huyện', 'binh-tan', 'Huyện Bình Tân, Vĩnh Long', '10.1218894', '105.7728863', NULL, 0);
INSERT INTO `ap_location_district` VALUES (861, 86, 'Bình Minh', '56', 'Thị xã', 'binh-minh', 'Thị xã Bình Minh, Vĩnh Long', '10.0291920', '105.8525154', NULL, 0);
INSERT INTO `ap_location_district` VALUES (860, 86, 'Tam Bình', '471', 'Huyện', 'tam-binh', 'Huyện Tam Bình, Vĩnh Long', '10.0679356', '105.9464874', NULL, 0);
INSERT INTO `ap_location_district` VALUES (859, 86, 'Vũng Liêm', '632', 'Huyện', '#NAME?', 'Huyện Vũng Liêm, Vĩnh Long', '10.0586320', '106.1345705', NULL, 0);
INSERT INTO `ap_location_district` VALUES (858, 86, 'Mang Thít', '303', 'Huyện', 'mang-thit', 'Huyện Mang Thít, Vĩnh Long', '10.1807600', '106.0757749', NULL, 0);
INSERT INTO `ap_location_district` VALUES (857, 86, 'Long Hồ', '285', 'Huyện', 'long-ho', 'Huyện Long Hồ, Vĩnh Long', '10.1980682', '105.9464874', NULL, 0);
INSERT INTO `ap_location_district` VALUES (855, 86, 'Vĩnh Long', '622', 'Thành phố', 'vinh-long', 'Thành phố Vĩnh Long, Vĩnh Long', '10.2448442', '105.9588650', NULL, 0);
INSERT INTO `ap_location_district` VALUES (851, 84, 'Duyên Hải', '149', 'Thị xã', 'duyen-hai', 'Thị xã Duyên Hải, Trà Vinh', '9.6331608', '106.4975726', NULL, 0);
INSERT INTO `ap_location_district` VALUES (849, 84, 'Trà Cú', '563', 'Huyện', 'tra-cu', 'Huyện Trà Cú, Trà Vinh', '9.7060851', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (850, 84, 'Duyên Hải', '148', 'Huyện', 'duyen-hai', 'Huyện Duyên Hải, Trà Vinh', '9.6311842', '106.4877072', NULL, 0);
INSERT INTO `ap_location_district` VALUES (848, 84, 'Cầu Ngang', '101', 'Huyện', 'cau-ngang', 'Huyện Cầu Ngang, Trà Vinh', '9.7830517', '106.4641459', NULL, 0);
INSERT INTO `ap_location_district` VALUES (847, 84, 'Châu Thành', '107', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Trà Vinh', '9.8331585', '106.3228338', NULL, 0);
INSERT INTO `ap_location_district` VALUES (845, 84, 'Cầu Kè', '100', 'Huyện', 'cau-ke', 'Huyện Cầu Kè, Trà Vinh', '9.8878863', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (846, 84, 'Tiểu Cần', '559', 'Huyện', 'tieu-can', 'Huyện Tiểu Cần, Trà Vinh', '9.7969156', '106.1816196', NULL, 0);
INSERT INTO `ap_location_district` VALUES (844, 84, 'Càng Long', '91', 'Huyện', 'cang-long', 'Huyện Càng Long, Trà Vinh', '9.9674087', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (842, 84, 'Trà Vinh', '566', 'Thành phố', 'tra-vinh', 'Thành phố Trà Vinh, Trà Vinh', '9.9513316', '106.3346061', NULL, 0);
INSERT INTO `ap_location_district` VALUES (838, 83, 'Mỏ Cày Bắc', '309', 'Huyện', 'mo-cay-bac', 'Huyện Mỏ Cày Bắc, Bến Tre', '10.1700758', '106.2875210', NULL, 0);
INSERT INTO `ap_location_district` VALUES (836, 83, 'Ba Tri', '17', 'Huyện', 'ba-tri', 'Huyện Ba Tri, Bến Tre', '10.0417849', '106.5936741', NULL, 0);
INSERT INTO `ap_location_district` VALUES (837, 83, 'Thạnh Phú', '527', 'Huyện', 'thanh-phu', 'Huyện Thạnh Phú, Bến Tre', '9.9077234', '106.5584071', NULL, 0);
INSERT INTO `ap_location_district` VALUES (835, 83, 'Bình Đại', '63', 'Huyện', 'binh-dai', 'Huyện Bình Đại, Bến Tre', '10.1596899', '106.6998767', NULL, 0);
INSERT INTO `ap_location_district` VALUES (834, 83, 'Giồng Trôm', '163', 'Huyện', 'giong-trom', 'Huyện Giồng Trôm, Bến Tre', '10.1718844', '106.4641459', NULL, 0);
INSERT INTO `ap_location_district` VALUES (833, 83, 'Mỏ Cày Nam', '310', 'Huyện', 'mo-cay-nam', 'Huyện Mỏ Cày Nam, Bến Tre', '10.0468396', '106.3699271', NULL, 0);
INSERT INTO `ap_location_district` VALUES (832, 83, 'Chợ Lách', '120', 'Huyện', 'cho-lach', 'Huyện Chợ Lách, Bến Tre', '10.2410940', '106.1698563', NULL, 0);
INSERT INTO `ap_location_district` VALUES (831, 83, 'Châu Thành', '106', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Bến Tre', '10.3067813', '106.3699271', NULL, 0);
INSERT INTO `ap_location_district` VALUES (829, 83, 'Bến Tre', '47', 'Thành phố', 'ben-tre', 'Thành phố Bến Tre, Bến Tre', '10.2413610', '106.3762601', NULL, 0);
INSERT INTO `ap_location_district` VALUES (825, 82, 'Tân Phú Đông', '491', 'Huyện', 'tan-phu-dong', 'Huyện Tân Phú Đông, Tiền Giang', '10.2462427', '106.6998767', NULL, 0);
INSERT INTO `ap_location_district` VALUES (824, 82, 'Gò Công Đông', '166', 'Huyện', 'go-cong-dong', 'Huyện Gò Công Đông, Tiền Giang', '10.3737254', '106.7470536', NULL, 0);
INSERT INTO `ap_location_district` VALUES (823, 82, 'Gò Công Tây', '165', 'Huyện', 'go-cong-tay', 'Huyện Gò Công Tây, Tiền Giang', '10.3378629', '106.6055534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (822, 82, 'Chợ Gạo', '119', 'Huyện', 'cho-gao', 'Huyện Chợ Gạo, Tiền Giang', '10.3793903', '106.4541903', NULL, 0);
INSERT INTO `ap_location_district` VALUES (820, 82, 'Cai Lậy', '74', 'Huyện', 'cai-lay', 'Huyện Cai Lậy, Tiền Giang', '10.4287401', '106.1110501', NULL, 0);
INSERT INTO `ap_location_district` VALUES (821, 82, 'Châu Thành', '105', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Tiền Giang', '10.4009358', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (819, 82, 'Cái Bè', '72', 'Huyện', 'cai-be', 'Huyện Cái Bè, Tiền Giang', '10.3718873', '105.9464874', NULL, 0);
INSERT INTO `ap_location_district` VALUES (818, 82, 'Tân Phước', '492', 'Huyện', 'tan-phuoc', 'Huyện Tân Phước, Tiền Giang', '10.5314211', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (816, 82, 'Gò Công', '164', 'Thị xã', 'go-cong', 'Thị xã Gò Công, Tiền Giang', '10.4106494', '106.6645007', NULL, 0);
INSERT INTO `ap_location_district` VALUES (817, 82, 'Cai Lậy', '73', 'Thị xã', 'cai-lay', 'Thị xã Cai Lậy, Tiền Giang', '10.4050639', '106.1186715', NULL, 0);
INSERT INTO `ap_location_district` VALUES (815, 82, 'Mỹ Tho', '326', 'Thành phố', 'my-tho', 'Thành phố Mỹ Tho, Tiền Giang', '10.3765284', '106.3438891', NULL, 0);
INSERT INTO `ap_location_district` VALUES (808, 80, 'Châu Thành', '104', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Long An', '10.4640645', '106.4759262', NULL, 0);
INSERT INTO `ap_location_district` VALUES (806, 80, 'Cần Đước', '90', 'Huyện', 'can-duoc', 'Huyện Cần Đước, Long An', '10.5549448', '106.6055534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (807, 80, 'Cần Giuộc', '88', 'Huyện', 'can-giuoc', 'Huyện Cần Giuộc, Long An', '10.6009679', '106.6650358', NULL, 0);
INSERT INTO `ap_location_district` VALUES (805, 80, 'Tân Trụ', '496', 'Huyện', 'tan-tru', 'Huyện Tân Trụ, Long An', '10.5280095', '106.4994889', NULL, 0);
INSERT INTO `ap_location_district` VALUES (804, 80, 'Thủ Thừa', '543', 'Huyện', 'thu-thua', 'Huyện Thủ Thừa, Long An', '10.7006857', '106.3228338', NULL, 0);
INSERT INTO `ap_location_district` VALUES (802, 80, 'Đức Hòa', '703', 'Huyện', 'duc-hoa', 'Huyện Đức Hòa, Long An', '10.9023378', '106.4185340', NULL, 0);
INSERT INTO `ap_location_district` VALUES (803, 80, 'Bến Lức', '46', 'Huyện', 'ben-luc', 'Huyện Bến Lức, Long An', '10.6411620', '106.4856006', NULL, 0);
INSERT INTO `ap_location_district` VALUES (801, 80, 'Đức Huệ', '704', 'Huyện', 'duc-hue', 'Huyện Đức Huệ, Long An', '10.8777796', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (800, 80, 'Thạnh Hóa', '522', 'Huyện', 'thanh-hoa', 'Huyện Thạnh Hóa, Long An', '10.6645870', '106.1816196', NULL, 0);
INSERT INTO `ap_location_district` VALUES (799, 80, 'Tân Thạnh', '495', 'Huyện', 'tan-thanh', 'Huyện Tân Thạnh, Long An', '10.6078027', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (798, 80, 'Mộc Hóa', '313', 'Huyện', 'moc-hoa', 'Huyện Mộc Hóa, Long An', '10.7642485', '105.9464874', NULL, 0);
INSERT INTO `ap_location_district` VALUES (797, 80, 'Vĩnh Hưng', '618', 'Huyện', 'vinh-hung', 'Huyện Vĩnh Hưng, Long An', '10.9028612', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (796, 80, 'Tân Hưng', '486', 'Huyện', 'tan-hung', 'Huyện Tân Hưng, Long An', '10.8226522', '105.6647142', NULL, 0);
INSERT INTO `ap_location_district` VALUES (794, 80, 'Tân An', '479', 'Thành phố', 'tan-an', 'Thành phố Tân An, Long An', '10.5330098', '106.4052541', NULL, 0);
INSERT INTO `ap_location_district` VALUES (795, 80, 'Kiến Tường', '239', 'Thị xã', 'kien-tuong', 'Thị xã Kiến Tường, Long An', '10.7667086', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (787, 79, 'Cần Giờ', '87', 'Huyện', 'can-gio', 'Huyện Cần Giờ, Hồ Chí Minh', '10.5083266', '106.8635004', NULL, 0);
INSERT INTO `ap_location_district` VALUES (786, 79, 'Nhà Bè', '359', 'Huyện', 'nha-be', 'Huyện Nhà Bè, Hồ Chí Minh', '10.6952642', '106.7048740', NULL, 0);
INSERT INTO `ap_location_district` VALUES (785, 79, 'Bình Chánh', '50', 'Huyện', 'binh-chanh', 'Huyện Bình Chánh, Hồ Chí Minh', '10.6873920', '106.5938538', NULL, 0);
INSERT INTO `ap_location_district` VALUES (783, 79, 'Củ Chi', '133', 'Huyện', 'cu-chi', 'Huyện Củ Chi, Hồ Chí Minh', '11.0066683', '106.5131967', NULL, 0);
INSERT INTO `ap_location_district` VALUES (784, 79, 'Hóc Môn', '208', 'Huyện', 'hoc-mon', 'Huyện Hóc Môn, Hồ Chí Minh', '10.8839675', '106.5870611', NULL, 0);
INSERT INTO `ap_location_district` VALUES (778, 79, 'Quận 7', '422', 'Quận', 'quan-7', 'Quận 7, Hồ Chí Minh', '10.7340344', '106.7215787', NULL, 0);
INSERT INTO `ap_location_district` VALUES (777, 79, 'Bình Tân', '58', 'Quận', 'binh-tan', 'Quận Bình Tân, Hồ Chí Minh', '10.7652581', '106.6038535', NULL, 0);
INSERT INTO `ap_location_district` VALUES (775, 79, 'Quận 6', '421', 'Quận', 'quan-6', 'Quận 6, Hồ Chí Minh', '10.7480929', '106.6352362', NULL, 0);
INSERT INTO `ap_location_district` VALUES (776, 79, 'Quận 8', '423', 'Quận', 'quan-8', 'Quận 8, Hồ Chí Minh', '10.7240878', '106.6286259', NULL, 0);
INSERT INTO `ap_location_district` VALUES (774, 79, 'Quận 5', '420', 'Quận', 'quan-5', 'Quận 5, Hồ Chí Minh', '10.7540279', '106.6633746', NULL, 0);
INSERT INTO `ap_location_district` VALUES (772, 79, 'Quận 11', '415', 'Quận', 'quan-11', 'Quận 11, Hồ Chí Minh', '10.7629739', '106.6500840', NULL, 0);
INSERT INTO `ap_location_district` VALUES (773, 79, 'Quận 4', '419', 'Quận', 'quan-4', 'Quận 4, Hồ Chí Minh', '10.7578263', '106.7012968', NULL, 0);
INSERT INTO `ap_location_district` VALUES (771, 79, 'Quận 10', '414', 'Quận', 'quan-10', 'Quận 10, Hồ Chí Minh', '10.7745965', '106.6679542', NULL, 0);
INSERT INTO `ap_location_district` VALUES (769, 79, 'Quận 2', '417', 'Quận', 'quan-2', 'Quận 2, Hồ Chí Minh', '10.7872729', '106.7498105', NULL, 0);
INSERT INTO `ap_location_district` VALUES (770, 79, 'Quận 3', '418', 'Quận', 'quan-3', 'Quận 3, Hồ Chí Minh', '10.7843695', '106.6844089', NULL, 0);
INSERT INTO `ap_location_district` VALUES (768, 79, 'Phú Nhuận', '392', 'Quận', 'phu-nhuan', 'Quận Phú Nhuận, Hồ Chí Minh', '10.7991944', '106.6802639', NULL, 0);
INSERT INTO `ap_location_district` VALUES (767, 79, 'Tân Phú', '490', 'Quận', 'tan-phu', 'Quận Tân Phú, Hồ Chí Minh', '10.7900517', '106.6281901', NULL, 0);
INSERT INTO `ap_location_district` VALUES (766, 79, 'Tân Bình', '481', 'Quận', 'tan-binh', 'Quận Tân Bình, Hồ Chí Minh', '10.8014659', '106.6525974', NULL, 0);
INSERT INTO `ap_location_district` VALUES (764, 79, 'Gò Vấp', '169', 'Quận', 'go-vap', 'Quận Gò Vấp, Hồ Chí Minh', '10.8386779', '106.6652904', NULL, 0);
INSERT INTO `ap_location_district` VALUES (765, 79, 'Bình Thạnh', '60', 'Quận', 'binh-thanh', 'Quận Bình Thạnh, Hồ Chí Minh', '10.8105831', '106.7091422', NULL, 0);
INSERT INTO `ap_location_district` VALUES (763, 79, 'Quận 9', '424', 'Quận', 'quan-9', 'Quận 9, Hồ Chí Minh', '10.8428402', '106.8286851', NULL, 0);
INSERT INTO `ap_location_district` VALUES (762, 79, 'Thủ Đức', '544', 'Quận', 'thu-duc', 'Quận Thủ Đức, Hồ Chí Minh', '10.8494094', '106.7537055', NULL, 0);
INSERT INTO `ap_location_district` VALUES (760, 79, 'Quận 1', '413', 'Quận', 'quan-1', 'Quận 1, Hồ Chí Minh', '10.7756587', '106.7004238', NULL, 0);
INSERT INTO `ap_location_district` VALUES (761, 79, 'Quận 12', '416', 'Quận', 'quan-12', 'Quận 12, Hồ Chí Minh', '10.8671531', '106.6413322', NULL, 0);
INSERT INTO `ap_location_district` VALUES (754, 77, 'Tân Thành', '494', 'Huyện', 'tan-thanh', 'Huyện Tân Thành, Bà Rịa - Vũng Tàu', '10.5640726', '107.0595233', NULL, 0);
INSERT INTO `ap_location_district` VALUES (753, 77, 'Đất Đỏ', '675', 'Huyện', 'dat-do', 'Huyện Đất Đỏ, Bà Rịa - Vũng Tàu', '10.4728035', '107.3139304', NULL, 0);
INSERT INTO `ap_location_district` VALUES (752, 77, 'Long Điền', '292', 'Huyện', 'long-dien', 'Huyện Long Điền, Bà Rịa - Vũng Tàu', '10.4449241', '107.2311774', NULL, 0);
INSERT INTO `ap_location_district` VALUES (751, 77, 'Xuyên Mộc', '637', 'Huyện', 'xuyen-moc', 'Huyện Xuyên Mộc, Bà Rịa - Vũng Tàu', '10.6177683', '107.4321959', NULL, 0);
INSERT INTO `ap_location_district` VALUES (750, 77, 'Châu Đức', '115', 'Huyện', 'chau-duc', 'Huyện Châu Đức, Bà Rịa - Vũng Tàu', '10.6284702', '107.2429976', NULL, 0);
INSERT INTO `ap_location_district` VALUES (748, 77, 'Bà Rịa', '14', 'Thành phố', 'ba-ria', 'Thành phố Bà Rịa, Bà Rịa - Vũng Tàu', '10.5089280', '107.1816257', NULL, 0);
INSERT INTO `ap_location_district` VALUES (747, 77, 'Vũng Tàu', '633', 'Thành phố', 'vung-tau', 'Thành phố Vũng Tàu, Bà Rịa - Vũng Tàu', '10.4113797', '107.1362240', NULL, 0);
INSERT INTO `ap_location_district` VALUES (741, 75, 'Xuân Lộc', '635', 'Huyện', 'xuan-loc', 'Huyện Xuân Lộc, Đồng Nai', '10.9652026', '107.4321959', NULL, 0);
INSERT INTO `ap_location_district` VALUES (742, 75, 'Nhơn Trạch', '362', 'Huyện', 'nhon-trach', 'Huyện Nhơn Trạch, Đồng Nai', '10.6968843', '106.8907696', NULL, 0);
INSERT INTO `ap_location_district` VALUES (739, 75, 'Cẩm Mỹ', '82', 'Huyện', 'cam-my', 'Huyện Cẩm Mỹ, Đồng Nai', '10.8225699', '107.2666396', NULL, 0);
INSERT INTO `ap_location_district` VALUES (740, 75, 'Long Thành', '290', 'Huyện', 'long-thanh', 'Huyện Long Thành, Đồng Nai', '10.7932946', '107.0135297', NULL, 0);
INSERT INTO `ap_location_district` VALUES (738, 75, 'Thống Nhất', '539', 'Huyện', 'thong-nhat', 'Huyện Thống Nhất, Đồng Nai', '10.9943590', '107.1547158', NULL, 0);
INSERT INTO `ap_location_district` VALUES (737, 75, 'Trảng Bom', '572', 'Huyện', 'trang-bom', 'Huyện Trảng Bom, Đồng Nai', '10.9667039', '107.0303221', NULL, 0);
INSERT INTO `ap_location_district` VALUES (736, 75, 'Định Quán', '682', 'Huyện', 'dinh-quan', 'Huyện Định Quán, Đồng Nai', '11.1576779', '107.2740528', NULL, 0);
INSERT INTO `ap_location_district` VALUES (735, 75, 'Vĩnh Cửu', '617', 'Huyện', 'vinh-cuu', 'Huyện Vĩnh Cửu, Đồng Nai', '11.3049005', '107.0605278', NULL, 0);
INSERT INTO `ap_location_district` VALUES (734, 75, 'Tân Phú', '489', 'Huyện', 'tan-phu', 'Huyện Tân Phú, Đồng Nai', '11.4275308', '107.3612300', NULL, 0);
INSERT INTO `ap_location_district` VALUES (732, 75, 'Long Khánh', '286', 'Thị xã', 'long-khanh', 'Thị xã Long Khánh, Đồng Nai', '10.9442612', '107.2311774', NULL, 0);
INSERT INTO `ap_location_district` VALUES (726, 74, 'Bắc Tân Uyên', '31', 'Huyện', 'bac-tan-uyen', 'Huyện Bắc Tân Uyên, Bình Dương', '11.1498411', '106.8452402', NULL, 0);
INSERT INTO `ap_location_district` VALUES (731, 75, 'Biên Hòa', '48', 'Thành phố', 'bien-hoa', 'Thành phố Biên Hòa, Đồng Nai', '10.9574128', '106.8426871', NULL, 0);
INSERT INTO `ap_location_district` VALUES (725, 74, 'Thuận An', '545', 'Thị xã', 'thuan-an', 'Thị xã Thuận An, Bình Dương', '10.9302095', '106.7116700', NULL, 0);
INSERT INTO `ap_location_district` VALUES (724, 74, 'Dĩ An', '140', 'Thị xã', 'di-an', 'Thị xã Dĩ An, Bình Dương', '10.9155965', '106.7692013', NULL, 0);
INSERT INTO `ap_location_district` VALUES (723, 74, 'Tân Uyên', '498', 'Thị xã', 'tan-uyen', 'Thị xã Tân Uyên, Bình Dương', '11.0715863', '106.6943524', NULL, 0);
INSERT INTO `ap_location_district` VALUES (722, 74, 'Phú Giáo', '386', 'Huyện', 'phu-giao', 'Huyện Phú Giáo, Bình Dương', '11.2655822', '106.7706458', NULL, 0);
INSERT INTO `ap_location_district` VALUES (721, 74, 'Bến Cát', '44', 'Thị xã', 'ben-cat', 'Thị xã Bến Cát, Bình Dương', '11.1013020', '106.5819789', NULL, 0);
INSERT INTO `ap_location_district` VALUES (720, 74, 'Dầu Tiếng', '139', 'Huyện', 'dau-tieng', 'Huyện Dầu Tiếng, Bình Dương', '11.3489090', '106.4641459', NULL, 0);
INSERT INTO `ap_location_district` VALUES (719, 74, 'Bàu Bàng', '43', 'Huyện', 'bau-bang', 'Huyện Bàu Bàng, Bình Dương', '11.2454323', '106.6243358', NULL, 0);
INSERT INTO `ap_location_district` VALUES (718, 74, 'Thủ Dầu Một', '542', 'Thành phố', 'thu-dau-mot', 'Thành phố Thủ Dầu Một, Bình Dương', '10.9929842', '106.6557073', NULL, 0);
INSERT INTO `ap_location_district` VALUES (712, 72, 'Trảng Bàng', '571', 'Huyện', 'trang-bang', 'Huyện Trảng Bàng, Tây Ninh', '11.0328111', '106.3645677', NULL, 0);
INSERT INTO `ap_location_district` VALUES (711, 72, 'Bến Cầu', '45', 'Huyện', 'ben-cau', 'Huyện Bến Cầu, Tây Ninh', '11.1506368', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (710, 72, 'Gò Dầu', '167', 'Huyện', 'go-dau', 'Huyện Gò Dầu, Tây Ninh', '11.1402783', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (709, 72, 'Hòa Thành', '197', 'Huyện', 'hoa-thanh', 'Huyện Hòa Thành, Tây Ninh', '11.2680459', '106.1463317', NULL, 0);
INSERT INTO `ap_location_district` VALUES (708, 72, 'Châu Thành', '103', 'Huyện', 'chau-thanh', 'Huyện Châu Thành, Tây Ninh', '11.3081393', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (707, 72, 'Dương Minh Châu', '145', 'Huyện', 'duong-minh-chau', 'Huyện Dương Minh Châu, Tây Ninh', '11.3595908', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (706, 72, 'Tân Châu', '482', 'Huyện', 'tan-chau', 'Huyện Tân Châu, Tây Ninh', '11.5614393', '106.2051484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (705, 72, 'Tân Biên', '480', 'Huyện', 'tan-bien', 'Huyện Tân Biên, Tây Ninh', '11.5721150', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (703, 72, 'Tây Ninh', '504', 'Thành phố', 'tay-ninh', 'Thành phố Tây Ninh, Tây Ninh', '11.3675415', '106.1192802', NULL, 0);
INSERT INTO `ap_location_district` VALUES (698, 70, 'Phú Riềng', '397', 'Huyện', 'phu-rieng', 'Huyện Phú Riềng, Bình Phước', '11.6698337', '106.9021946', NULL, 0);
INSERT INTO `ap_location_district` VALUES (697, 70, 'Chơn Thành', '124', 'Huyện', 'chon-thanh', 'Huyện Chơn Thành, Bình Phước', '11.4696902', '106.6527099', NULL, 0);
INSERT INTO `ap_location_district` VALUES (696, 70, 'Bù Đăng', '66', 'Huyện', 'bu-dang', 'Huyện Bù Đăng, Bình Phước', '11.7693374', '107.1484521', NULL, 0);
INSERT INTO `ap_location_district` VALUES (695, 70, 'Đồng Phú', '695', 'Huyện', 'dong-phu', 'Huyện Đồng Phú, Bình Phước', '11.5123355', '106.9905473', NULL, 0);
INSERT INTO `ap_location_district` VALUES (694, 70, 'Hớn Quản', '210', 'Huyện', 'hon-quan', 'Huyện Hớn Quản, Bình Phước', '11.6014622', '106.6527099', NULL, 0);
INSERT INTO `ap_location_district` VALUES (693, 70, 'Bù Đốp', '67', 'Huyện', 'bu-dop', 'Huyện Bù Đốp, Bình Phước', '11.9891869', '106.7942405', NULL, 0);
INSERT INTO `ap_location_district` VALUES (692, 70, 'Lộc Ninh', '283', 'Huyện', 'loc-ninh', 'Huyện Lộc Ninh, Bình Phước', '11.8036770', '106.5819789', NULL, 0);
INSERT INTO `ap_location_district` VALUES (691, 70, 'Bù Gia Mập', '65', 'Huyện', 'bu-gia-map', 'Huyện Bù Gia Mập, Bình Phước', '12.0392238', '107.0539434', NULL, 0);
INSERT INTO `ap_location_district` VALUES (690, 70, 'Bình Long', '54', 'Thị xã', 'binh-long', 'Thị xã Bình Long, Bình Phước', '11.6922032', '106.6055534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (689, 70, 'Đồng Xoài', '699', 'Thị xã', 'dong-xoai', 'Thị xã Đồng Xoài, Bình Phước', '11.5360230', '106.8908253', NULL, 0);
INSERT INTO `ap_location_district` VALUES (688, 70, 'Phước Long', '409', 'Thị xã', 'phuoc-long', 'Thị xã Phước Long, Bình Phước', '11.8337331', '106.9948945', NULL, 0);
INSERT INTO `ap_location_district` VALUES (683, 68, 'Cát Tiên', '98', 'Huyện', 'cat-tien', 'Huyện Cát Tiên, Lâm Đồng', '11.6903361', '107.3612300', NULL, 0);
INSERT INTO `ap_location_district` VALUES (682, 68, 'Đạ Tẻh', '659', 'Huyện', 'da-teh', 'Huyện Đạ Tẻh, Lâm Đồng', '11.5705176', '107.5268471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (681, 68, 'Đạ Huoai', '656', 'Huyện', 'da-huoai', 'Huyện Đạ Huoai, Lâm Đồng', '11.4101516', '107.6452085', NULL, 0);
INSERT INTO `ap_location_district` VALUES (680, 68, 'Bảo Lâm', '38', 'Huyện', 'bao-lam', 'Huyện Bảo Lâm, Lâm Đồng', '11.7337863', '107.7162500', NULL, 0);
INSERT INTO `ap_location_district` VALUES (679, 68, 'Di Linh', '141', 'Huyện', 'di-linh', 'Huyện Di Linh, Lâm Đồng', '11.5346745', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (678, 68, 'Đức Trọng', '708', 'Huyện', 'duc-trong', 'Huyện Đức Trọng, Lâm Đồng', '11.6419270', '108.3102916', NULL, 0);
INSERT INTO `ap_location_district` VALUES (677, 68, 'Đơn Dương', '686', 'Huyện', 'don-duong', 'Huyện Đơn Dương, Lâm Đồng', '11.7452329', '108.5463165', NULL, 0);
INSERT INTO `ap_location_district` VALUES (676, 68, 'Lâm Hà', '270', 'Huyện', 'lam-ha', 'Huyện Lâm Hà, Lâm Đồng', '11.7906825', '108.1903059', NULL, 0);
INSERT INTO `ap_location_district` VALUES (675, 68, 'Lạc Dương', '263', 'Huyện', 'lac-duong', 'Huyện Lạc Dương, Lâm Đồng', '12.1218309', '108.4750846', NULL, 0);
INSERT INTO `ap_location_district` VALUES (674, 68, 'Đam Rông', '673', 'Huyện', 'dam-rong', 'Huyện Đam Rông, Lâm Đồng', '12.0598218', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (673, 68, 'Bảo Lộc', '39', 'Thành phố', 'bao-loc', 'Thành phố Bảo Lộc, Lâm Đồng', '11.5731051', '107.8346924', NULL, 0);
INSERT INTO `ap_location_district` VALUES (672, 68, 'Đà Lạt', '658', 'Thành phố', 'da-lat', 'Thành phố Đà Lạt, Lâm Đồng', '11.9404192', '108.4583132', NULL, 0);
INSERT INTO `ap_location_district` VALUES (667, 67, 'Tuy Đức', '591', 'Huyện', 'tuy-duc', 'Huyện Tuy Đức, Đắk Nông', '12.1576117', '107.4342313', NULL, 0);
INSERT INTO `ap_location_district` VALUES (666, 67, 'Đắk R\'Lấp', '667', 'Huyện', 'dak-r\'lap', 'Huyện Đắk R\'Lấp, Đắk Nông', '11.9213338', '107.5268471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (665, 67, 'Đắk Song', '668', 'Huyện', 'dak-song', 'Huyện Đắk Song, Đắk Nông', '12.2328311', '107.6216789', NULL, 0);
INSERT INTO `ap_location_district` VALUES (664, 67, 'Krông Nô', '255', 'Huyện', 'krong-no', 'Huyện Krông Nô, Đắk Nông', '12.3426475', '107.8110000', NULL, 0);
INSERT INTO `ap_location_district` VALUES (663, 67, 'Đắk Mil', '665', 'Huyện', 'dak-mil', 'Huyện Đắk Mil, Đắk Nông', '12.5049537', '107.6925674', NULL, 0);
INSERT INTO `ap_location_district` VALUES (662, 67, 'Cư Jút', '134', 'Huyện', 'cu-jut', 'Huyện Cư Jút, Đắk Nông', '12.6572820', '107.8656124', NULL, 0);
INSERT INTO `ap_location_district` VALUES (661, 67, 'Đăk Glong', '663', 'Huyện', 'dak-glong', 'Huyện Đăk Glong, Đắk Nông', '12.1013642', '107.8023543', NULL, 0);
INSERT INTO `ap_location_district` VALUES (660, 67, 'Gia Nghĩa', '156', 'Thị xã', 'gia-nghia', 'Thị xã Gia Nghĩa, Đắk Nông', '12.0036455', '107.6876481', NULL, 0);
INSERT INTO `ap_location_district` VALUES (656, 66, 'Lắk', '268', 'Huyện', 'lak', 'Huyện Lắk, Đắk Lắk', '12.3169361', '108.1903059', NULL, 0);
INSERT INTO `ap_location_district` VALUES (657, 66, 'Cư Kuin', '135', 'Huyện', 'cu-kuin', 'Huyện Cư Kuin, Đắk Lắk', '12.5810594', '108.1903059', NULL, 0);
INSERT INTO `ap_location_district` VALUES (655, 66, 'Krông A Na', '251', 'Huyện', 'krong-a-na', 'Huyện Krông A Na, Đắk Lắk', '12.4823793', '108.0243010', NULL, 0);
INSERT INTO `ap_location_district` VALUES (654, 66, 'Krông Pắc', '257', 'Huyện', 'krong-pac', 'Huyện Krông Pắc, Đắk Lắk', '12.7439968', '108.3801314', NULL, 0);
INSERT INTO `ap_location_district` VALUES (653, 66, 'Krông Bông', '252', 'Huyện', 'krong-bong', 'Huyện Krông Bông, Đắk Lắk', '12.4730320', '108.4750846', NULL, 0);
INSERT INTO `ap_location_district` VALUES (652, 66, 'M\'Đrắk', '300', 'Huyện', 'm\'drak', 'Huyện M\'Đrắk, Đắk Lắk', '12.7165586', '108.7600963', NULL, 0);
INSERT INTO `ap_location_district` VALUES (651, 66, 'Ea Kar', '151', 'Huyện', 'ea-kar', 'Huyện Ea Kar, Đắk Lắk', '12.7981778', '108.5463165', NULL, 0);
INSERT INTO `ap_location_district` VALUES (650, 66, 'Krông Năng', '254', 'Huyện', 'krong-nang', 'Huyện Krông Năng, Đắk Lắk', '13.0089192', '108.3801314', NULL, 0);
INSERT INTO `ap_location_district` VALUES (649, 66, 'Krông Búk', '253', 'Huyện', 'krong-buk', 'Huyện Krông Búk, Đắk Lắk', '13.0226831', '108.1903059', NULL, 0);
INSERT INTO `ap_location_district` VALUES (648, 66, 'Cư M\'gar', '137', 'Huyện', 'cu-m\'gar', 'Huyện Cư M\'gar, Đắk Lắk', '12.8525649', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (647, 66, 'Buôn Đôn', '70', 'Huyện', 'buon-don', 'Huyện Buôn Đôn, Đắk Lắk', '12.8791607', '107.7162500', NULL, 0);
INSERT INTO `ap_location_district` VALUES (646, 66, 'Ea Súp', '152', 'Huyện', 'ea-sup', 'Huyện Ea Súp, Đắk Lắk', '13.1862227', '107.7636210', NULL, 0);
INSERT INTO `ap_location_district` VALUES (645, 66, 'Ea H\'leo', '150', 'Huyện', 'ea-h\'leo', 'Huyện Ea H\'leo, Đắk Lắk', '13.1998141', '108.1903059', NULL, 0);
INSERT INTO `ap_location_district` VALUES (644, 66, 'Buôn Hồ', '68', 'Thị xã', 'buon-ho', 'Thị xã Buôn Hồ, Đắk Lắk', '12.8628297', '108.2614775', NULL, 0);
INSERT INTO `ap_location_district` VALUES (643, 66, 'Buôn Ma Thuột', '69', 'Thành phố', 'buon-ma-thuot', 'Thành phố Buôn Ma Thuột, Đắk Lắk', '12.6661944', '108.0382475', NULL, 0);
INSERT INTO `ap_location_district` VALUES (639, 64, 'Chư Pưh', '127', 'Huyện', 'chu-puh', 'Huyện Chư Pưh, Gia Lai', '13.4730527', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (637, 64, 'Krông Pa', '256', 'Huyện', 'krong-pa', 'Huyện Krông Pa, Gia Lai', '13.2160038', '108.6726891', NULL, 0);
INSERT INTO `ap_location_district` VALUES (638, 64, 'Phú Thiện', '400', 'Huyện', 'phu-thien', 'Huyện Phú Thiện, Gia Lai', '13.4589308', '108.2852049', NULL, 0);
INSERT INTO `ap_location_district` VALUES (635, 64, 'Ia Pa', '229', 'Huyện', 'ia-pa', 'Huyện Ia Pa, Gia Lai', '13.5261514', '108.5700636', NULL, 0);
INSERT INTO `ap_location_district` VALUES (634, 64, 'Đăk Pơ', '666', 'Huyện', 'dak-po', 'Huyện Đăk Pơ, Gia Lai', '13.9464250', '108.5938124', NULL, 0);
INSERT INTO `ap_location_district` VALUES (633, 64, 'Chư Sê', '128', 'Huyện', 'chu-se', 'Huyện Chư Sê, Gia Lai', '13.7399629', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (632, 64, 'Chư Prông', '126', 'Huyện', 'chu-prong', 'Huyện Chư Prông, Gia Lai', '13.5419180', '107.7636210', NULL, 0);
INSERT INTO `ap_location_district` VALUES (631, 64, 'Đức Cơ', '702', 'Huyện', 'duc-co', 'Huyện Đức Cơ, Gia Lai', '13.7752327', '107.6215321', NULL, 0);
INSERT INTO `ap_location_district` VALUES (630, 64, 'Kông Chro', '250', 'Huyện', 'kong-chro', 'Huyện Kông Chro, Gia Lai', '13.7037218', '108.5700636', NULL, 0);
INSERT INTO `ap_location_district` VALUES (628, 64, 'Ia Grai', '227', 'Huyện', 'ia-grai', 'Huyện Ia Grai, Gia Lai', '13.9539099', '107.6215321', NULL, 0);
INSERT INTO `ap_location_district` VALUES (629, 64, 'Mang Yang', '304', 'Huyện', 'mang-yang', 'Huyện Mang Yang, Gia Lai', '13.9928022', '108.2852049', NULL, 0);
INSERT INTO `ap_location_district` VALUES (627, 64, 'Chư Păh', '125', 'Huyện', 'chu-pah', 'Huyện Chư Păh, Gia Lai', '14.1765309', '107.9294815', NULL, 0);
INSERT INTO `ap_location_district` VALUES (626, 64, 'Đăk Đoa', '670', 'Huyện', 'dak-doa', 'Huyện Đăk Đoa, Gia Lai', '14.1135412', '108.1665855', NULL, 0);
INSERT INTO `ap_location_district` VALUES (625, 64, 'KBang', '230', 'Huyện', 'kbang', 'Huyện KBang, Gia Lai', '14.3348056', '108.4750846', NULL, 0);
INSERT INTO `ap_location_district` VALUES (624, 64, 'Ayun Pa', '11', 'Thị xã', 'ayun-pa', 'Thị xã Ayun Pa, Gia Lai', '13.3743393', '108.3989809', NULL, 0);
INSERT INTO `ap_location_district` VALUES (623, 64, 'An Khê', '3', 'Thị xã', 'an-khe', 'Thị xã An Khê, Gia Lai', '14.0279256', '108.6888227', NULL, 0);
INSERT INTO `ap_location_district` VALUES (622, 64, 'Pleiku', '412', 'Thành phố', 'pleiku', 'Thành phố Pleiku, Gia Lai', '13.9718356', '108.0150796', NULL, 0);
INSERT INTO `ap_location_district` VALUES (618, 62, 'Ia H\' Drai', '228', 'Huyện', 'ia-h\'-drai', 'Huyện Ia H\' Drai, Kon Tum', '14.0189165', '107.4477032', NULL, 0);
INSERT INTO `ap_location_district` VALUES (617, 62, 'Tu Mơ Rông', '581', 'Huyện', 'tu-mo-rong', 'Huyện Tu Mơ Rông, Kon Tum', '14.9105786', '108.0005933', NULL, 0);
INSERT INTO `ap_location_district` VALUES (616, 62, 'Sa Thầy', '449', 'Huyện', 'sa-thay', 'Huyện Sa Thầy, Kon Tum', '14.4355779', '107.7636210', NULL, 0);
INSERT INTO `ap_location_district` VALUES (614, 62, 'Kon Rẫy', '248', 'Huyện', 'kon-ray', 'Huyện Kon Rẫy, Kon Tum', '14.5607568', '108.1665855', NULL, 0);
INSERT INTO `ap_location_district` VALUES (615, 62, 'Đắk Hà', '664', 'Huyện', 'dak-ha', 'Huyện Đắk Hà, Kon Tum', '14.6412140', '108.0005933', NULL, 0);
INSERT INTO `ap_location_district` VALUES (613, 62, 'Kon Plông', '247', 'Huyện', 'kon-plong', 'Huyện Kon Plông, Kon Tum', '14.7976892', '108.2852049', NULL, 0);
INSERT INTO `ap_location_district` VALUES (612, 62, 'Đắk Tô', '669', 'Huyện', 'dak-to', 'Huyện Đắk Tô, Kon Tum', '14.6562021', '107.8110000', NULL, 0);
INSERT INTO `ap_location_district` VALUES (611, 62, 'Ngọc Hồi', '355', 'Huyện', 'ngoc-hoi', 'Huyện Ngọc Hồi, Kon Tum', '14.6710249', '107.6215321', NULL, 0);
INSERT INTO `ap_location_district` VALUES (610, 62, 'Đắk Glei', '662', 'Huyện', 'dak-glei', 'Huyện Đắk Glei, Kon Tum', '15.1134720', '107.7162500', NULL, 0);
INSERT INTO `ap_location_district` VALUES (608, 62, 'Kon Tum', '249', 'Thành phố', 'kon-tum', 'Thành phố Kon Tum, Kon Tum', '14.3497403', '108.0004606', NULL, 0);
INSERT INTO `ap_location_district` VALUES (602, 60, 'Phú Quí', '395', 'Huyện', 'phu-qui', 'Huyện Phú Quí, Bình Thuận', '10.5335281', '108.9442804', NULL, 0);
INSERT INTO `ap_location_district` VALUES (601, 60, 'Hàm Tân', '186', 'Huyện', 'ham-tan', 'Huyện Hàm Tân, Bình Thuận', '10.6935927', '107.6215321', NULL, 0);
INSERT INTO `ap_location_district` VALUES (600, 60, 'Đức Linh', '705', 'Huyện', 'duc-linh', 'Huyện Đức Linh, Bình Thuận', '11.1977289', '107.5505152', NULL, 0);
INSERT INTO `ap_location_district` VALUES (599, 60, 'Tánh Linh', '500', 'Huyện', 'tanh-linh', 'Huyện Tánh Linh, Bình Thuận', '11.0980639', '107.6785010', NULL, 0);
INSERT INTO `ap_location_district` VALUES (598, 60, 'Hàm Thuận Nam', '188', 'Huyện', 'ham-thuan-nam', 'Huyện Hàm Thuận Nam, Bình Thuận', '10.8502937', '107.9057813', NULL, 0);
INSERT INTO `ap_location_district` VALUES (597, 60, 'Hàm Thuận Bắc', '187', 'Huyện', 'ham-thuan-bac', 'Huyện Hàm Thuận Bắc, Bình Thuận', '11.1116858', '108.1319634', NULL, 0);
INSERT INTO `ap_location_district` VALUES (596, 60, 'Bắc Bình', '22', 'Huyện', 'bac-binh', 'Huyện Bắc Bình, Bình Thuận', '11.2551834', '108.3801314', NULL, 0);
INSERT INTO `ap_location_district` VALUES (594, 60, 'La Gi', '262', 'Thị xã', 'la-gi', 'Thị xã La Gi, Bình Thuận', '10.7157400', '107.7991545', NULL, 0);
INSERT INTO `ap_location_district` VALUES (595, 60, 'Tuy Phong', '589', 'Huyện', 'tuy-phong', 'Huyện Tuy Phong, Bình Thuận', '11.3178827', '108.6579603', NULL, 0);
INSERT INTO `ap_location_district` VALUES (593, 60, 'Phan Thiết', '378', 'Thành phố', 'phan-thiet', 'Thành phố Phan Thiết, Bình Thuận', '10.9804603', '108.2614775', NULL, 0);
INSERT INTO `ap_location_district` VALUES (589, 58, 'Thuận Nam', '548', 'Huyện', 'thuan-nam', 'Huyện Thuận Nam, Ninh Thuận', '11.4702151', '108.9145675', NULL, 0);
INSERT INTO `ap_location_district` VALUES (588, 58, 'Thuận Bắc', '546', 'Huyện', 'thuan-bac', 'Huyện Thuận Bắc, Ninh Thuận', '11.7533327', '109.0690976', NULL, 0);
INSERT INTO `ap_location_district` VALUES (587, 58, 'Ninh Phước', '370', 'Huyện', 'ninh-phuoc', 'Huyện Ninh Phước, Ninh Thuận', '11.4850435', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (586, 58, 'Ninh Hải', '367', 'Huyện', 'ninh-hai', 'Huyện Ninh Hải, Ninh Thuận', '11.7032481', '109.1642208', NULL, 0);
INSERT INTO `ap_location_district` VALUES (585, 58, 'Ninh Sơn', '371', 'Huyện', 'ninh-son', 'Huyện Ninh Sơn, Ninh Thuận', '11.6888699', '108.7363370', NULL, 0);
INSERT INTO `ap_location_district` VALUES (584, 58, 'Bác Ái', '21', 'Huyện', 'bac-ai', 'Huyện Bác Ái, Ninh Thuận', '11.8334154', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (582, 58, 'Phan Rang - Tháp Chàm', '377', 'Thành phố', 'phan-rang-thap-cham', 'Thành phố Phan Rang-Tháp Chàm, Ninh Thuận', '11.5825677', '108.9912066', NULL, 0);
INSERT INTO `ap_location_district` VALUES (576, 56, 'Trường Sa', '579', 'Huyện', 'truong-sa', 'Huyện Trường Sa, Khánh Hòa', '12.2469211', '109.1944155', NULL, 0);
INSERT INTO `ap_location_district` VALUES (575, 56, 'Khánh Sơn', '232', 'Huyện', 'khanh-son', 'Huyện Khánh Sơn, Khánh Hòa', '12.0249415', '108.9264524', NULL, 0);
INSERT INTO `ap_location_district` VALUES (574, 56, 'Diên Khánh', '143', 'Huyện', 'dien-khanh', 'Huyện Diên Khánh, Khánh Hòa', '12.2570417', '109.0453200', NULL, 0);
INSERT INTO `ap_location_district` VALUES (573, 56, 'Khánh Vĩnh', '233', 'Huyện', 'khanh-vinh', 'Huyện Khánh Vĩnh, Khánh Hòa', '12.2705951', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (572, 56, 'Ninh Hòa', '368', 'Thị xã', 'ninh-hoa', 'Thị xã Ninh Hòa, Khánh Hòa', '12.5129970', '109.1404380', NULL, 0);
INSERT INTO `ap_location_district` VALUES (570, 56, 'Cam Lâm', '79', 'Huyện', 'cam-lam', 'Huyện Cam Lâm, Khánh Hòa', '12.0753900', '109.1404380', NULL, 0);
INSERT INTO `ap_location_district` VALUES (571, 56, 'Vạn Ninh', '605', 'Huyện', 'van-ninh', 'Huyện Vạn Ninh, Khánh Hòa', '12.7243439', '109.2626992', NULL, 0);
INSERT INTO `ap_location_district` VALUES (569, 56, 'Cam Ranh', '84', 'Thành phố', 'cam-ranh', 'Thành phố Cam Ranh, Khánh Hòa', '11.9008657', '109.1404380', NULL, 0);
INSERT INTO `ap_location_district` VALUES (568, 56, 'Nha Trang', '360', 'Thành phố', 'nha-trang', 'Thành phố Nha Trang, Khánh Hòa', '12.2387911', '109.1967488', NULL, 0);
INSERT INTO `ap_location_district` VALUES (564, 54, 'Đông Hòa', '691', 'Huyện', 'dong-hoa', 'Huyện Đông Hòa, Phú Yên', '12.9580642', '109.3545270', NULL, 0);
INSERT INTO `ap_location_district` VALUES (563, 54, 'Phú Hoà', '387', 'Huyện', 'phu-hoa', 'Huyện Phú Hoà, Phú Yên', '13.0606953', '109.1642208', NULL, 0);
INSERT INTO `ap_location_district` VALUES (562, 54, 'Tây Hoà', '503', 'Huyện', 'tay-hoa', 'Huyện Tây Hoà, Phú Yên', '12.9285815', '109.1642208', NULL, 0);
INSERT INTO `ap_location_district` VALUES (561, 54, 'Sông Hinh', '467', 'Huyện', 'song-hinh', 'Huyện Sông Hinh, Phú Yên', '12.8786353', '108.9502232', NULL, 0);
INSERT INTO `ap_location_district` VALUES (560, 54, 'Sơn Hòa', '458', 'Huyện', 'son-hoa', 'Huyện Sơn Hòa, Phú Yên', '13.1431691', '108.9502232', NULL, 0);
INSERT INTO `ap_location_district` VALUES (558, 54, 'Đồng Xuân', '700', 'Huyện', 'dong-xuan', 'Huyện Đồng Xuân, Phú Yên', '13.4083074', '108.9502232', NULL, 0);
INSERT INTO `ap_location_district` VALUES (559, 54, 'Tuy An', '587', 'Huyện', 'tuy-an', 'Huyện Tuy An, Phú Yên', '13.2977350', '109.2355764', NULL, 0);
INSERT INTO `ap_location_district` VALUES (557, 54, 'Sông Cầu', '465', 'Thị xã', 'song-cau', 'Thị xã Sông Cầu, Phú Yên', '13.4744193', '109.2355764', NULL, 0);
INSERT INTO `ap_location_district` VALUES (555, 54, 'Tuy Hoà', '588', 'Thành phố', 'tuy-hoa', 'Thành phố Tuy Hoà, Phú Yên', '13.1057062', '109.2950480', NULL, 0);
INSERT INTO `ap_location_district` VALUES (551, 52, 'Vân Canh', '599', 'Huyện', 'van-canh', 'Huyện Vân Canh, Bình Định', '13.6740330', '108.9502232', NULL, 0);
INSERT INTO `ap_location_district` VALUES (550, 52, 'Tuy Phước', '590', 'Huyện', 'tuy-phuoc', 'Huyện Tuy Phước, Bình Định', '13.8565034', '109.1642208', NULL, 0);
INSERT INTO `ap_location_district` VALUES (549, 52, 'An Nhơn', '7', 'Thị xã', 'an-nhon', 'Thị xã An Nhơn, Bình Định', '13.8641717', '109.0690976', NULL, 0);
INSERT INTO `ap_location_district` VALUES (548, 52, 'Phù Cát', '384', 'Huyện', 'phu-cat', 'Huyện Phù Cát, Bình Định', '14.0134002', '109.0547476', NULL, 0);
INSERT INTO `ap_location_district` VALUES (547, 52, 'Tây Sơn', '505', 'Huyện', 'tay-son', 'Huyện Tây Sơn, Bình Định', '13.9479428', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (545, 52, 'Phù Mỹ', '391', 'Huyện', 'phu-my', 'Huyện Phù Mỹ, Bình Định', '14.2157645', '109.1166566', NULL, 0);
INSERT INTO `ap_location_district` VALUES (546, 52, 'Vĩnh Thạnh', '623', 'Huyện', 'vinh-thanh', 'Huyện Vĩnh Thạnh, Bình Định', '14.2468401', '108.7363370', NULL, 0);
INSERT INTO `ap_location_district` VALUES (544, 52, 'Hoài Ân', '199', 'Huyện', 'hoai-an', 'Huyện Hoài Ân, Bình Định', '14.3040385', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (543, 52, 'Hoài Nhơn', '200', 'Huyện', 'hoai-nhon', 'Huyện Hoài Nhơn, Bình Định', '14.4666386', '109.0453200', NULL, 0);
INSERT INTO `ap_location_district` VALUES (542, 52, 'An Lão', '5', 'Huyện', 'an-lao', 'Huyện An Lão, Bình Định', '14.5717294', '108.8551484', NULL, 0);
INSERT INTO `ap_location_district` VALUES (540, 52, 'Qui Nhơn', '440', 'Thành phố', 'qui-nhon', 'Thành phố Qui Nhơn, Bình Định', '13.7829673', '109.2196634', NULL, 0);
INSERT INTO `ap_location_district` VALUES (536, 51, 'Lý Sơn', '299', 'Huyện', 'ly-son', 'Huyện Lý Sơn, Quảng Ngãi', '15.3833610', '109.1107114', NULL, 0);
INSERT INTO `ap_location_district` VALUES (535, 51, 'Ba Tơ', '16', 'Huyện', 'ba-to', 'Huyện Ba Tơ, Quảng Ngãi', '14.7663789', '108.6650678', NULL, 0);
INSERT INTO `ap_location_district` VALUES (534, 51, 'Đức Phổ', '706', 'Huyện', 'duc-pho', 'Huyện Đức Phổ, Quảng Ngãi', '14.7627960', '108.9739954', NULL, 0);
INSERT INTO `ap_location_district` VALUES (533, 51, 'Mộ Đức', '311', 'Huyện', 'mo-duc', 'Huyện Mộ Đức, Quảng Ngãi', '14.9498041', '108.8789150', NULL, 0);
INSERT INTO `ap_location_district` VALUES (532, 51, 'Nghĩa Hành', '349', 'Huyện', 'nghia-hanh', 'Huyện Nghĩa Hành, Quảng Ngãi', '15.0026852', '108.7838572', NULL, 0);
INSERT INTO `ap_location_district` VALUES (531, 51, 'Minh Long', '308', 'Huyện', 'minh-long', 'Huyện Minh Long, Quảng Ngãi', '14.9659262', '108.6888227', NULL, 0);
INSERT INTO `ap_location_district` VALUES (530, 51, 'Sơn Tây', '461', 'Huyện', 'son-tay', 'Huyện Sơn Tây, Quảng Ngãi', '14.9488528', '108.3563972', NULL, 0);
INSERT INTO `ap_location_district` VALUES (529, 51, 'Sơn Hà', '457', 'Huyện', 'son-ha', 'Huyện Sơn Hà, Quảng Ngãi', '15.0431944', '108.5700636', NULL, 0);
INSERT INTO `ap_location_district` VALUES (528, 51, 'Tư Nghĩa', '582', 'Huyện', 'tu-nghia', 'Huyện Tư Nghĩa, Quảng Ngãi', '15.1065785', '108.7482165', NULL, 0);
INSERT INTO `ap_location_district` VALUES (527, 51, 'Sơn Tịnh', '462', 'Huyện', 'son-tinh', 'Huyện Sơn Tịnh, Quảng Ngãi', '15.1860945', '108.7363370', NULL, 0);
INSERT INTO `ap_location_district` VALUES (526, 51, 'Tây Trà', '506', 'Huyện', 'tay-tra', 'Huyện Tây Trà, Quảng Ngãi', '15.1734012', '108.3563972', NULL, 0);
INSERT INTO `ap_location_district` VALUES (525, 51, 'Trà Bồng', '562', 'Huyện', 'tra-bong', 'Huyện Trà Bồng, Quảng Ngãi', '15.2512645', '108.4988269', NULL, 0);
INSERT INTO `ap_location_district` VALUES (524, 51, 'Bình Sơn', '57', 'Huyện', 'binh-son', 'Huyện Bình Sơn, Quảng Ngãi', '15.3166491', '108.7838572', NULL, 0);
INSERT INTO `ap_location_district` VALUES (522, 51, 'Quảng Ngãi', '429', 'Thành phố', 'quang-ngai', 'Thành phố Quảng Ngãi, Quảng Ngãi', '15.1213873', '108.8044145', NULL, 0);
INSERT INTO `ap_location_district` VALUES (519, 49, 'Nông Sơn', '373', 'Huyện', 'nong-son', 'Huyện Nông Sơn, Quảng Nam', '15.6557978', '107.9768875', NULL, 0);
INSERT INTO `ap_location_district` VALUES (518, 49, 'Phú Ninh', '394', 'Huyện', 'phu-ninh', 'Huyện Phú Ninh, Quảng Nam', '15.5743256', '108.4038672', NULL, 0);
INSERT INTO `ap_location_district` VALUES (517, 49, 'Núi Thành', '374', 'Huyện', 'nui-thanh', 'Huyện Núi Thành, Quảng Nam', '15.4229422', '108.5938124', NULL, 0);
INSERT INTO `ap_location_district` VALUES (516, 49, 'Nam Trà My', '337', 'Huyện', 'nam-tra-my', 'Huyện Nam Trà My, Quảng Nam', '15.0826614', '108.0954351', NULL, 0);
INSERT INTO `ap_location_district` VALUES (515, 49, 'Bắc Trà My', '32', 'Huyện', 'bac-tra-my', 'Huyện Bắc Trà My, Quảng Nam', '15.3202715', '108.2140280', NULL, 0);
INSERT INTO `ap_location_district` VALUES (514, 49, 'Tiên Phước', '557', 'Huyện', 'tien-phuoc', 'Huyện Tiên Phước, Quảng Nam', '15.4964006', '108.2614775', NULL, 0);
INSERT INTO `ap_location_district` VALUES (513, 49, 'Thăng Bình', '516', 'Huyện', 'thang-binh', 'Huyện Thăng Bình, Quảng Nam', '15.6890346', '108.3801314', NULL, 0);
INSERT INTO `ap_location_district` VALUES (512, 49, 'Hiệp Đức', '192', 'Huyện', 'hiep-duc', 'Huyện Hiệp Đức, Quảng Nam', '15.5590682', '108.0805694', NULL, 0);
INSERT INTO `ap_location_district` VALUES (511, 49, 'Phước Sơn', '411', 'Huyện', 'phuoc-son', 'Huyện Phước Sơn, Quảng Nam', '15.3762517', '107.8110000', NULL, 0);
INSERT INTO `ap_location_district` VALUES (510, 49, 'Nam Giang', '333', 'Huyện', 'nam-giang', 'Huyện Nam Giang, Quảng Nam', '15.6628546', '107.6215321', NULL, 0);
INSERT INTO `ap_location_district` VALUES (509, 49, 'Quế Sơn', '438', 'Huyện', 'que-son', 'Huyện Quế Sơn, Quảng Nam', '15.6848385', '108.1665855', NULL, 0);
INSERT INTO `ap_location_district` VALUES (508, 49, 'Duy Xuyên', '147', 'Huyện', 'duy-xuyen', 'Huyện Duy Xuyên, Quảng Nam', '15.7751100', '108.1665855', NULL, 0);
INSERT INTO `ap_location_district` VALUES (507, 49, 'Điện Bàn', '676', 'Thị xã', 'dien-ban', 'Thị xã Điện Bàn, Quảng Nam', '15.8902573', '108.2522087', NULL, 0);
INSERT INTO `ap_location_district` VALUES (506, 49, 'Đại Lộc', '660', 'Huyện', 'dai-loc', 'Huyện Đại Lộc, Quảng Nam', '15.8497875', '108.0668661', NULL, 0);
INSERT INTO `ap_location_district` VALUES (505, 49, 'Đông Giang', '688', 'Huyện', 'dong-giang', 'Huyện Đông Giang, Quảng Nam', '15.9660249', '107.7831632', NULL, 0);
INSERT INTO `ap_location_district` VALUES (504, 49, 'Tây Giang', '501', 'Huyện', 'tay-giang', 'Huyện Tây Giang, Quảng Nam', '15.8852628', '107.4890302', NULL, 0);
INSERT INTO `ap_location_district` VALUES (503, 49, 'Hội An', '209', 'Thành phố', 'hoi-an', 'Thành phố Hội An, Quảng Nam', '15.8800584', '108.3380469', NULL, 0);
INSERT INTO `ap_location_district` VALUES (497, 48, 'Hòa Vang', '198', 'Huyện', 'hoa-vang', 'Huyện Hòa Vang, Đà Nẵng', '15.9999880', '108.1457994', NULL, 0);
INSERT INTO `ap_location_district` VALUES (502, 49, 'Tam Kỳ', '473', 'Thành phố', 'tam-ky', 'Thành phố Tam Kỳ, Quảng Nam', '15.5638825', '108.4786313', NULL, 0);
INSERT INTO `ap_location_district` VALUES (495, 48, 'Cẩm Lệ', '80', 'Quận', 'cam-le', 'Quận Cẩm Lệ, Đà Nẵng', '16.0153669', '108.1962362', NULL, 0);
INSERT INTO `ap_location_district` VALUES (493, 48, 'Sơn Trà', '463', 'Quận', 'son-tra', 'Quận Sơn Trà, Đà Nẵng', '16.1069981', '108.2521815', NULL, 0);
INSERT INTO `ap_location_district` VALUES (494, 48, 'Ngũ Hành Sơn', '357', 'Quận', 'ngu-hanh-son', 'Quận Ngũ Hành Sơn, Đà Nẵng', '15.9955056', '108.2588049', NULL, 0);
INSERT INTO `ap_location_district` VALUES (492, 48, 'Hải Châu', '181', 'Quận', 'hai-chau', 'Quận Hải Châu, Đà Nẵng', '16.0472002', '108.2199588', NULL, 0);
INSERT INTO `ap_location_district` VALUES (491, 48, 'Thanh Khê', '523', 'Quận', 'thanh-khe', 'Quận Thanh Khê, Đà Nẵng', '16.0641802', '108.1873407', NULL, 0);
INSERT INTO `ap_location_district` VALUES (490, 48, 'Liên Chiểu', '280', 'Quận', 'lien-chieu', 'Quận Liên Chiểu, Đà Nẵng', '16.0717704', '108.1503823', NULL, 0);
INSERT INTO `ap_location_district` VALUES (483, 46, 'Nam Đông', '342', 'Huyện', 'nam-dong', 'Huyện Nam Đông, Thừa Thiên Huế', '16.1249688', '107.6707417', NULL, 0);
INSERT INTO `ap_location_district` VALUES (482, 46, 'Phú Lộc', '388', 'Huyện', 'phu-loc', 'Huyện Phú Lộc, Thừa Thiên Huế', '16.2725431', '107.9394761', NULL, 0);
INSERT INTO `ap_location_district` VALUES (481, 46, 'A Lưới', '0', 'Huyện', 'a-luoi', 'Huyện A Lưới, Thừa Thiên Huế', '16.2303741', '107.3375791', NULL, 0);
INSERT INTO `ap_location_district` VALUES (480, 46, 'Hương Trà', '225', 'Thị xã', 'huong-tra', 'Thị xã Hương Trà, Thừa Thiên Huế', '16.4207960', '107.5031811', NULL, 0);
INSERT INTO `ap_location_district` VALUES (479, 46, 'Hương Thủy', '224', 'Thị xã', 'huong-thuy', 'Thị xã Hương Thủy, Thừa Thiên Huế', '16.4198395', '107.6464295', NULL, 0);
INSERT INTO `ap_location_district` VALUES (478, 46, 'Phú Vang', '402', 'Huyện', 'phu-vang', 'Huyện Phú Vang, Thừa Thiên Huế', '16.4912130', '107.7399345', NULL, 0);
INSERT INTO `ap_location_district` VALUES (476, 46, 'Phong Điền', '381', 'Huyện', 'phong-dien', 'Huyện Phong Điền, Thừa Thiên Huế', '16.5031120', '107.3375791', NULL, 0);
INSERT INTO `ap_location_district` VALUES (477, 46, 'Quảng Điền', '436', 'Huyện', 'quang-dien', 'Huyện Quảng Điền, Thừa Thiên Huế', '16.5902415', '107.5150139', NULL, 0);
INSERT INTO `ap_location_district` VALUES (474, 46, 'Huế', '217', 'Thành phố', 'hue', 'Thành phố Huế, Thừa Thiên Huế', '16.4498000', '107.5623501', NULL, 0);
INSERT INTO `ap_location_district` VALUES (470, 45, 'Hải Lăng', '185', 'Huyện', 'hai-lang', 'Huyện Hải Lăng, Quảng Trị', '16.7140020', '107.2666396', NULL, 0);
INSERT INTO `ap_location_district` VALUES (469, 45, 'Triệu Phong', '575', 'Huyện', 'trieu-phong', 'Huyện Triệu Phong, Quảng Trị', '16.8091840', '107.2193578', NULL, 0);
INSERT INTO `ap_location_district` VALUES (468, 45, 'Cam Lộ', '81', 'Huyện', 'cam-lo', 'Huyện Cam Lộ, Quảng Trị', '16.7836950', '106.9830865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (467, 45, 'Đa Krông', '657', 'Huyện', 'da-krong', 'Huyện Đa Krông, Quảng Trị', '16.5349165', '106.9594723', NULL, 0);
INSERT INTO `ap_location_district` VALUES (466, 45, 'Gio Linh', '161', 'Huyện', 'gio-linh', 'Huyện Gio Linh, Quảng Trị', '16.9165711', '107.0303221', NULL, 0);
INSERT INTO `ap_location_district` VALUES (465, 45, 'Hướng Hóa', '221', 'Huyện', 'huong-hoa', 'Huyện Hướng Hóa, Quảng Trị', '16.6495512', '106.6762920', NULL, 0);
INSERT INTO `ap_location_district` VALUES (464, 45, 'Vĩnh Linh', '619', 'Huyện', 'vinh-linh', 'Huyện Vĩnh Linh, Quảng Trị', '17.0743311', '107.0539434', NULL, 0);
INSERT INTO `ap_location_district` VALUES (462, 45, 'Quảng Trị', '432', 'Thị xã', 'quang-tri', 'Thị xã Quảng Trị, Quảng Trị', '16.7505630', '107.1857063', NULL, 0);
INSERT INTO `ap_location_district` VALUES (461, 45, 'Đông Hà', '689', 'Thành phố', 'dong-ha', 'Thành phố Đông Hà, Quảng Trị', '16.8088928', '107.0893798', NULL, 0);
INSERT INTO `ap_location_district` VALUES (458, 44, 'Ba Đồn', '20', 'Thị xã', 'ba-don', 'Thị xã Ba Đồn, Quảng Bình', '17.7530355', '106.4235285', NULL, 0);
INSERT INTO `ap_location_district` VALUES (457, 44, 'Lệ Thủy', '279', 'Huyện', 'le-thuy', 'Huyện Lệ Thủy, Quảng Bình', '17.1064913', '106.6762920', NULL, 0);
INSERT INTO `ap_location_district` VALUES (456, 44, 'Quảng Ninh', '430', 'Huyện', 'quang-ninh', 'Huyện Quảng Ninh, Quảng Bình', '17.2394584', '106.4616246', NULL, 0);
INSERT INTO `ap_location_district` VALUES (455, 44, 'Bố Trạch', '64', 'Huyện', 'bo-trach', 'Huyện Bố Trạch, Quảng Bình', '17.5047078', '106.2992912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (453, 44, 'Tuyên Hóa', '592', 'Huyện', 'tuyen-hoa', 'Huyện Tuyên Hóa, Quảng Bình', '17.9319039', '105.9722814', NULL, 0);
INSERT INTO `ap_location_district` VALUES (454, 44, 'Quảng Trạch', '431', 'Huyện', 'quang-trach', 'Huyện Quảng Trạch, Quảng Bình', '17.8640126', '106.3934777', NULL, 0);
INSERT INTO `ap_location_district` VALUES (452, 44, 'Minh Hóa', '307', 'Huyện', 'minh-hoa', 'Huyện Minh Hóa, Quảng Bình', '17.7198160', '105.9229900', NULL, 0);
INSERT INTO `ap_location_district` VALUES (450, 44, 'Đồng Hới', '692', 'Thành phố', 'dong-hoi', 'Thành phố Đồng Hới, Quảng Bình', '17.4659391', '106.5983958', NULL, 0);
INSERT INTO `ap_location_district` VALUES (449, 42, 'Kỳ Anh', '259', 'Thị xã', 'ky-anh', 'Thị xã Kỳ Anh, Hà Tĩnh', '18.0654497', '106.2994872', NULL, 0);
INSERT INTO `ap_location_district` VALUES (448, 42, 'Lộc Hà', '282', 'Huyện', 'loc-ha', 'Huyện Lộc Hà, Hà Tĩnh', '18.4817584', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (447, 42, 'Kỳ Anh', '258', 'Huyện', 'ky-anh', 'Huyện Kỳ Anh, Hà Tĩnh', '18.0559583', '106.2992912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (446, 42, 'Cẩm Xuyên', '86', 'Huyện', 'cam-xuyen', 'Huyện Cẩm Xuyên, Hà Tĩnh', '18.1721653', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (445, 42, 'Thạch Hà', '508', 'Huyện', 'thach-ha', 'Huyện Thạch Hà, Hà Tĩnh', '18.3013160', '105.8525154', NULL, 0);
INSERT INTO `ap_location_district` VALUES (444, 42, 'Hương Khê', '222', 'Huyện', 'huong-khe', 'Huyện Hương Khê, Hà Tĩnh', '18.2037562', '105.6412527', NULL, 0);
INSERT INTO `ap_location_district` VALUES (443, 42, 'Can Lộc', '89', 'Huyện', 'can-loc', 'Huyện Can Lộc, Hà Tĩnh', '18.4516009', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (442, 42, 'Nghi Xuân', '348', 'Huyện', 'nghi-xuan', 'Huyện Nghi Xuân, Hà Tĩnh', '18.6282217', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (441, 42, 'Vũ Quang', '630', 'Huyện', 'vu-quang', 'Huyện Vũ Quang, Hà Tĩnh', '18.3365936', '105.4302383', NULL, 0);
INSERT INTO `ap_location_district` VALUES (440, 42, 'Đức Thọ', '707', 'Huyện', 'duc-tho', 'Huyện Đức Thọ, Hà Tĩnh', '18.5056718', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (439, 42, 'Hương Sơn', '223', 'Huyện', 'huong-son', 'Huyện Hương Sơn, Hà Tĩnh', '18.5118006', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (437, 42, 'Hồng Lĩnh', '214', 'Thị xã', 'hong-linh', 'Thị xã Hồng Lĩnh, Hà Tĩnh', '18.5301567', '105.7064569', NULL, 0);
INSERT INTO `ap_location_district` VALUES (436, 42, 'Hà Tĩnh', '176', 'Thành phố', 'ha-tinh', 'Thành phố Hà Tĩnh, Hà Tĩnh', '18.3559537', '105.8877494', NULL, 0);
INSERT INTO `ap_location_district` VALUES (432, 40, 'Hoàng Mai', '205', 'Thị xã', 'hoang-mai', 'Thị xã Hoàng Mai, Nghệ An', '19.2370094', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (430, 40, 'Nam Đàn', '340', 'Huyện', 'nam-dan', 'Huyện Nam Đàn, Nghệ An', '18.6983445', '105.5239912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (431, 40, 'Hưng Nguyên', '219', 'Huyện', 'hung-nguyen', 'Huyện Hưng Nguyên, Nghệ An', '18.6316742', '105.6295230', NULL, 0);
INSERT INTO `ap_location_district` VALUES (429, 40, 'Nghi Lộc', '347', 'Huyện', 'nghi-loc', 'Huyện Nghi Lộc, Nghệ An', '18.8142042', '105.5835663', NULL, 0);
INSERT INTO `ap_location_district` VALUES (428, 40, 'Thanh Chương', '519', 'Huyện', 'thanh-chuong', 'Huyện Thanh Chương, Nghệ An', '18.6967739', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (427, 40, 'Đô Lương', '683', 'Huyện', 'do-luong', 'Huyện Đô Lương, Nghệ An', '18.8990982', '105.3365360', NULL, 0);
INSERT INTO `ap_location_district` VALUES (426, 40, 'Yên Thành', '651', 'Huyện', 'yen-thanh', 'Huyện Yên Thành, Nghệ An', '19.0511285', '105.4536718', NULL, 0);
INSERT INTO `ap_location_district` VALUES (425, 40, 'Diễn Châu', '142', 'Huyện', 'dien-chau', 'Huyện Diễn Châu, Nghệ An', '19.0179688', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (424, 40, 'Anh Sơn', '10', 'Huyện', 'anh-son', 'Huyện Anh Sơn, Nghệ An', '18.9688054', '105.0557415', NULL, 0);
INSERT INTO `ap_location_district` VALUES (423, 40, 'Tân Kỳ', '487', 'Huyện', 'tan-ky', 'Huyện Tân Kỳ, Nghệ An', '19.0748796', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (421, 40, 'Quỳnh Lưu', '444', 'Huyện', 'quynh-luu', 'Huyện Quỳnh Lưu, Nghệ An', '19.2200256', '105.6412527', NULL, 0);
INSERT INTO `ap_location_district` VALUES (422, 40, 'Con Cuông', '132', 'Huyện', 'con-cuong', 'Huyện Con Cuông, Nghệ An', '19.0130593', '104.7987710', NULL, 0);
INSERT INTO `ap_location_district` VALUES (420, 40, 'Quỳ Hợp', '443', 'Huyện', 'quy-hop', 'Huyện Quỳ Hợp, Nghệ An', '19.3528917', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (419, 40, 'Nghĩa Đàn', '352', 'Huyện', 'nghia-dan', 'Huyện Nghĩa Đàn, Nghệ An', '19.4003352', '105.4302383', NULL, 0);
INSERT INTO `ap_location_district` VALUES (418, 40, 'Tương Dương', '586', 'Huyện', 'tuong-duong', 'Huyện Tương Dương, Nghệ An', '19.2640131', '104.5655273', NULL, 0);
INSERT INTO `ap_location_district` VALUES (417, 40, 'Kỳ Sơn', '261', 'Huyện', 'ky-son', 'Huyện Kỳ Sơn, Nghệ An', '19.3854700', '104.1827912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (416, 40, 'Quỳ Châu', '442', 'Huyện', 'quy-chau', 'Huyện Quỳ Châu, Nghệ An', '19.5463056', '105.0791228', NULL, 0);
INSERT INTO `ap_location_district` VALUES (415, 40, 'Quế Phong', '437', 'Huyện', 'que-phong', 'Huyện Quế Phong, Nghệ An', '19.6862686', '104.9563176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (414, 40, 'Thái Hoà', '512', 'Thị xã', 'thai-hoa', 'Thị xã Thái Hoà, Nghệ An', '19.2931124', '105.4653897', NULL, 0);
INSERT INTO `ap_location_district` VALUES (413, 40, 'Cửa Lò', '138', 'Thị xã', 'cua-lo', 'Thị xã Cửa Lò, Nghệ An', '18.7916127', '105.7175138', NULL, 0);
INSERT INTO `ap_location_district` VALUES (412, 40, 'Vinh', '614', 'Thành phố', 'vinh', 'Thành phố Vinh, Nghệ An', '18.6795848', '105.6813333', NULL, 0);
INSERT INTO `ap_location_district` VALUES (407, 38, 'Tĩnh Gia', '561', 'Huyện', 'tinh-gia', 'Huyện Tĩnh Gia, Thanh Hóa', '19.4383800', '105.7745131', NULL, 0);
INSERT INTO `ap_location_district` VALUES (406, 38, 'Quảng Xương', '434', 'Huyện', 'quang-xuong', 'Huyện Quảng Xương, Thanh Hóa', '19.6913377', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (405, 38, 'Đông Sơn', '696', 'Huyện', 'dong-son', 'Huyện Đông Sơn, Thanh Hóa', '19.8049755', '105.6999122', NULL, 0);
INSERT INTO `ap_location_district` VALUES (404, 38, 'Nông Cống', '372', 'Huyện', 'nong-cong', 'Huyện Nông Cống, Thanh Hóa', '19.6113284', '105.6647142', NULL, 0);
INSERT INTO `ap_location_district` VALUES (403, 38, 'Như Thanh', '363', 'Huyện', 'nhu-thanh', 'Huyện Như Thanh, Thanh Hóa', '19.5733122', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (402, 38, 'Như Xuân', '364', 'Huyện', 'nhu-xuan', 'Huyện Như Xuân, Thanh Hóa', '19.6149135', '105.3599568', NULL, 0);
INSERT INTO `ap_location_district` VALUES (400, 38, 'Hậu Lộc', '190', 'Huyện', 'hau-loc', 'Huyện Hậu Lộc, Thanh Hóa', '19.9268879', '105.8877494', NULL, 0);
INSERT INTO `ap_location_district` VALUES (401, 38, 'Nga Sơn', '345', 'Huyện', 'nga-son', 'Huyện Nga Sơn, Thanh Hóa', '19.9981878', '105.9934910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (399, 38, 'Hoằng Hóa', '203', 'Huyện', 'hoang-hoa', 'Huyện Hoằng Hóa, Thanh Hóa', '19.8216851', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (398, 38, 'Thiệu Hóa', '534', 'Huyện', 'thieu-hoa', 'Huyện Thiệu Hóa, Thanh Hóa', '19.8891820', '105.6647142', NULL, 0);
INSERT INTO `ap_location_district` VALUES (397, 38, 'Triệu Sơn', '576', 'Huyện', 'trieu-son', 'Huyện Triệu Sơn, Thanh Hóa', '19.8512387', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (396, 38, 'Thường Xuân', '551', 'Huyện', 'thuong-xuan', 'Huyện Thường Xuân, Thanh Hóa', '19.9012787', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (395, 38, 'Thọ Xuân', '535', 'Huyện', 'tho-xuan', 'Huyện Thọ Xuân, Thanh Hóa', '19.9059121', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (393, 38, 'Vĩnh Lộc', '620', 'Huyện', 'vinh-loc', 'Huyện Vĩnh Lộc, Thanh Hóa', '20.0408049', '105.6529830', NULL, 0);
INSERT INTO `ap_location_district` VALUES (394, 38, 'Yên Định', '654', 'Huyện', 'yen-dinh', 'Huyện Yên Định, Thanh Hóa', '19.9860515', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (392, 38, 'Hà Trung', '177', 'Huyện', 'ha-trung', 'Huyện Hà Trung, Thanh Hóa', '20.0617086', '105.8055471', NULL, 0);
INSERT INTO `ap_location_district` VALUES (391, 38, 'Thạch Thành', '509', 'Huyện', 'thach-thanh', 'Huyện Thạch Thành, Thanh Hóa', '20.2177814', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (390, 38, 'Cẩm Thủy', '85', 'Huyện', 'cam-thuy', 'Huyện Cẩm Thủy, Thanh Hóa', '20.1841010', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (389, 38, 'Ngọc Lặc', '356', 'Huyện', 'ngoc-lac', 'Huyện Ngọc Lặc, Thanh Hóa', '20.0785891', '105.3599568', NULL, 0);
INSERT INTO `ap_location_district` VALUES (388, 38, 'Lang Chánh', '272', 'Huyện', 'lang-chanh', 'Huyện Lang Chánh, Thanh Hóa', '20.1667590', '105.1492869', NULL, 0);
INSERT INTO `ap_location_district` VALUES (387, 38, 'Quan Sơn', '427', 'Huyện', 'quan-son', 'Huyện Quan Sơn, Thanh Hóa', '20.2123327', '104.8921668', NULL, 0);
INSERT INTO `ap_location_district` VALUES (385, 38, 'Quan Hóa', '426', 'Huyện', 'quan-hoa', 'Huyện Quan Hóa, Thanh Hóa', '20.4830433', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (386, 38, 'Bá Thước', '15', 'Huyện', 'ba-thuoc', 'Huyện Bá Thước, Thanh Hóa', '20.3653356', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (384, 38, 'Mường Lát', '320', 'Huyện', 'muong-lat', 'Huyện Mường Lát, Thanh Hóa', '20.4941326', '104.5888356', NULL, 0);
INSERT INTO `ap_location_district` VALUES (382, 38, 'Sầm Sơn', '451', 'Thị xã', 'sam-son', 'Thị xã Sầm Sơn, Thanh Hóa', '19.7575271', '105.9053689', NULL, 0);
INSERT INTO `ap_location_district` VALUES (381, 38, 'Bỉm Sơn', '49', 'Thị xã', 'bim-son', 'Thị xã Bỉm Sơn, Thanh Hóa', '20.0889153', '105.8877494', NULL, 0);
INSERT INTO `ap_location_district` VALUES (380, 38, 'Thanh Hóa', '521', 'Thành phố', 'thanh-hoa', 'Thành phố Thanh Hóa, Thanh Hóa', '19.8066920', '105.7851816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (377, 37, 'Yên Mô', '647', 'Huyện', 'yen-mo', 'Huyện Yên Mô, Ninh Bình', '20.1370289', '105.9934910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (376, 37, 'Kim Sơn', '243', 'Huyện', 'kim-son', 'Huyện Kim Sơn, Ninh Bình', '20.0462334', '106.0992910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (375, 37, 'Yên Khánh', '643', 'Huyện', 'yen-khanh', 'Huyện Yên Khánh, Ninh Bình', '20.1872280', '106.0757749', NULL, 0);
INSERT INTO `ap_location_district` VALUES (374, 37, 'Hoa Lư', '196', 'Huyện', 'hoa-lu', 'Huyện Hoa Lư, Ninh Bình', '20.2488130', '105.9112424', NULL, 0);
INSERT INTO `ap_location_district` VALUES (373, 37, 'Gia Viễn', '158', 'Huyện', 'gia-vien', 'Huyện Gia Viễn, Ninh Bình', '20.3353002', '105.8525154', NULL, 0);
INSERT INTO `ap_location_district` VALUES (372, 37, 'Nho Quan', '361', 'Huyện', 'nho-quan', 'Huyện Nho Quan, Ninh Bình', '20.2976274', '105.7585908', NULL, 0);
INSERT INTO `ap_location_district` VALUES (370, 37, 'Tam Điệp', '477', 'Thành phố', 'tam-diep', 'Thành phố Tam Điệp, Ninh Bình', '20.1564917', '105.8736936', NULL, 0);
INSERT INTO `ap_location_district` VALUES (369, 37, 'Ninh Bình', '365', 'Thành phố', 'ninh-binh', 'Thành phố Ninh Bình, Ninh Bình', '20.2506149', '105.9744536', NULL, 0);
INSERT INTO `ap_location_district` VALUES (366, 36, 'Hải Hậu', '184', 'Huyện', 'hai-hau', 'Huyện Hải Hậu, Nam Định', '20.1568875', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (365, 36, 'Giao Thủy', '160', 'Huyện', 'giao-thuy', 'Huyện Giao Thủy, Nam Định', '20.2314086', '106.4641459', NULL, 0);
INSERT INTO `ap_location_district` VALUES (364, 36, 'Xuân Trường', '636', 'Huyện', 'xuan-truong', 'Huyện Xuân Trường, Nam Định', '20.2993311', '106.3581527', NULL, 0);
INSERT INTO `ap_location_district` VALUES (363, 36, 'Trực Ninh', '577', 'Huyện', 'truc-ninh', 'Huyện Trực Ninh, Nam Định', '20.2433760', '106.2169139', NULL, 0);
INSERT INTO `ap_location_district` VALUES (362, 36, 'Nam Trực', '338', 'Huyện', 'nam-truc', 'Huyện Nam Trực, Nam Định', '20.3358927', '106.2169139', NULL, 0);
INSERT INTO `ap_location_district` VALUES (361, 36, 'Nghĩa Hưng', '350', 'Huyện', 'nghia-hung', 'Huyện Nghĩa Hưng, Nam Định', '20.0732479', '106.1816196', NULL, 0);
INSERT INTO `ap_location_district` VALUES (360, 36, 'Ý Yên', '638', 'Huyện', 'y-yen', 'Huyện Ý Yên, Nam Định', '20.3684984', '105.9934910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (359, 36, 'Vụ Bản', '629', 'Huyện', 'vu-ban', 'Huyện Vụ Bản, Nam Định', '20.3701420', '106.0992910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (358, 36, 'Mỹ Lộc', '325', 'Huyện', 'my-loc', 'Huyện Mỹ Lộc, Nam Định', '20.4604906', '106.1228099', NULL, 0);
INSERT INTO `ap_location_district` VALUES (353, 35, 'Lý Nhân', '298', 'Huyện', 'ly-nhan', 'Huyện Lý Nhân, Hà Nam', '20.5553005', '106.0992910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (356, 36, 'Nam Định', '341', 'Thành phố', 'nam-dinh', 'Thành phố Nam Định, Nam Định', '20.4388225', '106.1621053', NULL, 0);
INSERT INTO `ap_location_district` VALUES (352, 35, 'Bình Lục', '55', 'Huyện', 'binh-luc', 'Huyện Bình Lục, Hà Nam', '20.5029885', '106.0405060', NULL, 0);
INSERT INTO `ap_location_district` VALUES (351, 35, 'Thanh Liêm', '524', 'Huyện', 'thanh-liem', 'Huyện Thanh Liêm, Hà Nam', '20.4699057', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (350, 35, 'Kim Bảng', '241', 'Huyện', 'kim-bang', 'Huyện Kim Bảng, Hà Nam', '20.5633623', '105.8562473', NULL, 0);
INSERT INTO `ap_location_district` VALUES (349, 35, 'Duy Tiên', '146', 'Huyện', 'duy-tien', 'Huyện Duy Tiên, Hà Nam', '20.6268420', '105.9515540', NULL, 0);
INSERT INTO `ap_location_district` VALUES (344, 34, 'Vũ Thư', '631', 'Huyện', 'vu-thu', 'Huyện Vũ Thư, Thái Bình', '20.4343787', '106.2757514', NULL, 0);
INSERT INTO `ap_location_district` VALUES (347, 35, 'Phủ Lý', '390', 'Thành phố', 'phu-ly', 'Thành phố Phủ Lý, Hà Nam', '20.5476734', '105.9347384', NULL, 0);
INSERT INTO `ap_location_district` VALUES (343, 34, 'Kiến Xương', '240', 'Huyện', 'kien-xuong', 'Huyện Kiến Xương, Thái Bình', '20.4208256', '106.4170311', NULL, 0);
INSERT INTO `ap_location_district` VALUES (342, 34, 'Tiền Hải', '554', 'Huyện', 'tien-hai', 'Huyện Tiền Hải, Thái Bình', '20.3609414', '106.5584071', NULL, 0);
INSERT INTO `ap_location_district` VALUES (341, 34, 'Thái Thụy', '514', 'Huyện', 'thai-thuy', 'Huyện Thái Thụy, Thái Bình', '20.5655791', '106.5648803', NULL, 0);
INSERT INTO `ap_location_district` VALUES (340, 34, 'Đông Hưng', '693', 'Huyện', 'dong-hung', 'Huyện Đông Hưng, Thái Bình', '20.5640924', '106.3699271', NULL, 0);
INSERT INTO `ap_location_district` VALUES (339, 34, 'Hưng Hà', '218', 'Huyện', 'hung-ha', 'Huyện Hưng Hà, Thái Bình', '20.5903748', '106.2169139', NULL, 0);
INSERT INTO `ap_location_district` VALUES (338, 34, 'Quỳnh Phụ', '446', 'Huyện', 'quynh-phu', 'Huyện Quỳnh Phụ, Thái Bình', '20.6608254', '106.3276864', NULL, 0);
INSERT INTO `ap_location_district` VALUES (336, 34, 'Thái Bình', '511', 'Thành phố', 'thai-binh', 'Thành phố Thái Bình, Thái Bình', '20.4463471', '106.3365828', NULL, 0);
INSERT INTO `ap_location_district` VALUES (333, 33, 'Phù Cừ', '385', 'Huyện', 'phu-cu', 'Huyện Phù Cừ, Hưng Yên', '20.7083369', '106.1933837', NULL, 0);
INSERT INTO `ap_location_district` VALUES (332, 33, 'Tiên Lữ', '556', 'Huyện', 'tien-lu', 'Huyện Tiên Lữ, Hưng Yên', '20.6919516', '106.1228099', NULL, 0);
INSERT INTO `ap_location_district` VALUES (331, 33, 'Kim Động', '245', 'Huyện', 'kim-dong', 'Huyện Kim Động, Hưng Yên', '20.7325036', '106.0563755', NULL, 0);
INSERT INTO `ap_location_district` VALUES (330, 33, 'Khoái Châu', '234', 'Huyện', 'khoai-chau', 'Huyện Khoái Châu, Hưng Yên', '20.8415456', '105.9804247', NULL, 0);
INSERT INTO `ap_location_district` VALUES (328, 33, 'Mỹ Hào', '324', 'Huyện', 'my-hao', 'Huyện Mỹ Hào, Hưng Yên', '20.9257379', '106.0992910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (329, 33, 'Ân Thi', '9', 'Huyện', 'an-thi', 'Huyện Ân Thi, Hưng Yên', '20.8099609', '106.0992910', NULL, 0);
INSERT INTO `ap_location_district` VALUES (327, 33, 'Yên Mỹ', '648', 'Huyện', 'yen-my', 'Huyện Yên Mỹ, Hưng Yên', '20.8861904', '106.0287512', NULL, 0);
INSERT INTO `ap_location_district` VALUES (326, 33, 'Văn Giang', '601', 'Huyện', 'van-giang', 'Huyện Văn Giang, Hưng Yên', '20.9414842', '105.9569025', NULL, 0);
INSERT INTO `ap_location_district` VALUES (325, 33, 'Văn Lâm', '603', 'Huyện', 'van-lam', 'Huyện Văn Lâm, Hưng Yên', '20.9854595', '106.0463746', NULL, 0);
INSERT INTO `ap_location_district` VALUES (317, 31, 'Cát Hải', '97', 'Huyện', 'cat-hai', 'Huyện Cát Hải, Hải Phòng', '20.8041045', '106.9302268', NULL, 0);
INSERT INTO `ap_location_district` VALUES (323, 33, 'Hưng Yên', '220', 'Thành phố', 'hung-yen', 'Thành phố Hưng Yên, Hưng Yên', '20.6523683', '106.0522616', NULL, 0);
INSERT INTO `ap_location_district` VALUES (316, 31, 'Vĩnh Bảo', '615', 'Huyện', 'vinh-bao', 'Huyện Vĩnh Bảo, Hải Phòng', '20.6889140', '106.4814255', NULL, 0);
INSERT INTO `ap_location_district` VALUES (315, 31, 'Tiên Lãng', '555', 'Huyện', 'tien-lang', 'Huyện Tiên Lãng, Hải Phòng', '20.7240400', '106.5535966', NULL, 0);
INSERT INTO `ap_location_district` VALUES (314, 31, 'Kiến Thuỵ', '238', 'Huyện', 'kien-thuy', 'Huyện Kiến Thuỵ, Hải Phòng', '20.7515698', '106.6701329', NULL, 0);
INSERT INTO `ap_location_district` VALUES (313, 31, 'An Lão', '4', 'Huyện', 'an-lao', 'Huyện An Lão, Hải Phòng', '20.8214217', '106.5565478', NULL, 0);
INSERT INTO `ap_location_district` VALUES (312, 31, 'An Dương', '2', 'Huyện', 'an-duong', 'Huyện An Dương, Hải Phòng', '20.9003561', '106.5788703', NULL, 0);
INSERT INTO `ap_location_district` VALUES (311, 31, 'Thuỷ Nguyên', '552', 'Huyện', 'thuy-nguyen', 'Huyện Thuỷ Nguyên, Hải Phòng', '20.9451331', '106.6715543', NULL, 0);
INSERT INTO `ap_location_district` VALUES (308, 31, 'Đồ Sơn', '684', 'Quận', 'do-son', 'Quận Đồ Sơn, Hải Phòng', '20.7247533', '106.7742534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (309, 31, 'Dương Kinh', '144', 'Quận', 'duong-kinh', 'Quận Dương Kinh, Hải Phòng', '20.7733918', '106.7213703', NULL, 0);
INSERT INTO `ap_location_district` VALUES (307, 31, 'Kiến An', '235', 'Quận', 'kien-an', 'Quận Kiến An, Hải Phòng', '20.8013772', '106.6263194', NULL, 0);
INSERT INTO `ap_location_district` VALUES (306, 31, 'Hải An', '179', 'Quận', 'hai-an', 'Quận Hải An, Hải Phòng', '20.8300935', '106.7219631', NULL, 0);
INSERT INTO `ap_location_district` VALUES (305, 31, 'Lê Chân', '278', 'Quận', 'le-chan', 'Quận Lê Chân, Hải Phòng', '20.8345046', '106.6831336', NULL, 0);
INSERT INTO `ap_location_district` VALUES (304, 31, 'Ngô Quyền', '353', 'Quận', 'ngo-quyen', 'Quận Ngô Quyền, Hải Phòng', '20.8566653', '106.6994903', NULL, 0);
INSERT INTO `ap_location_district` VALUES (303, 31, 'Hồng Bàng', '212', 'Quận', 'hong-bang', 'Quận Hồng Bàng, Hải Phòng', '20.8595313', '106.6669930', NULL, 0);
INSERT INTO `ap_location_district` VALUES (300, 30, 'Thanh Miện', '525', 'Huyện', 'thanh-mien', 'Huyện Thanh Miện, Hải Dương', '20.7821204', '106.2203815', NULL, 0);
INSERT INTO `ap_location_district` VALUES (298, 30, 'Tứ Kỳ', '580', 'Huyện', 'tu-ky', 'Huyện Tứ Kỳ, Hải Dương', '20.8168182', '106.4112446', NULL, 0);
INSERT INTO `ap_location_district` VALUES (299, 30, 'Ninh Giang', '366', 'Huyện', 'ninh-giang', 'Huyện Ninh Giang, Hải Dương', '20.7491091', '106.3699271', NULL, 0);
INSERT INTO `ap_location_district` VALUES (297, 30, 'Gia Lộc', '155', 'Huyện', 'gia-loc', 'Huyện Gia Lộc, Hải Dương', '20.8612295', '106.2875210', NULL, 0);
INSERT INTO `ap_location_district` VALUES (296, 30, 'Bình Giang', '52', 'Huyện', 'binh-giang', 'Huyện Bình Giang, Hải Dương', '20.8703560', '106.1933837', NULL, 0);
INSERT INTO `ap_location_district` VALUES (295, 30, 'Cẩm Giàng', '77', 'Huyện', 'cam-giang', 'Huyện Cẩm Giàng, Hải Dương', '20.9479485', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (294, 30, 'Thanh Hà', '520', 'Huyện', 'thanh-ha', 'Huyện Thanh Hà, Hải Dương', '20.9083580', '106.4276087', NULL, 0);
INSERT INTO `ap_location_district` VALUES (293, 30, 'Kim Thành', '244', 'Huyện', 'kim-thanh', 'Huyện Kim Thành, Hải Dương', '20.8984531', '106.5141873', NULL, 0);
INSERT INTO `ap_location_district` VALUES (292, 30, 'Kinh Môn', '246', 'Huyện', 'kinh-mon', 'Huyện Kinh Môn, Hải Dương', '21.0110318', '106.5273651', NULL, 0);
INSERT INTO `ap_location_district` VALUES (290, 30, 'Chí Linh', '117', 'Thị xã', 'chi-linh', 'Thị xã Chí Linh, Hải Dương', '21.1608547', '106.4170311', NULL, 0);
INSERT INTO `ap_location_district` VALUES (291, 30, 'Nam Sách', '336', 'Huyện', 'nam-sach', 'Huyện Nam Sách, Hải Dương', '20.9954640', '106.3346061', NULL, 0);
INSERT INTO `ap_location_district` VALUES (288, 30, 'Hải Dương', '182', 'Thành phố', 'hai-duong', 'Thành phố Hải Dương, Hải Dương', '20.9373413', '106.3145542', NULL, 0);
INSERT INTO `ap_location_district` VALUES (264, 27, 'Lương Tài', '297', 'Huyện', 'luong-tai', 'Huyện Lương Tài, Bắc Ninh', '21.0278149', '106.2404468', NULL, 0);
INSERT INTO `ap_location_district` VALUES (263, 27, 'Gia Bình', '153', 'Huyện', 'gia-binh', 'Huyện Gia Bình, Bắc Ninh', '21.0764073', '106.2169139', NULL, 0);
INSERT INTO `ap_location_district` VALUES (262, 27, 'Thuận Thành', '549', 'Huyện', 'thuan-thanh', 'Huyện Thuận Thành, Bắc Ninh', '21.0357781', '106.0792574', NULL, 0);
INSERT INTO `ap_location_district` VALUES (261, 27, 'Từ Sơn', '583', 'Thị xã', 'tu-son', 'Thị xã Từ Sơn, Bắc Ninh', '21.1196529', '105.9623161', NULL, 0);
INSERT INTO `ap_location_district` VALUES (260, 27, 'Tiên Du', '553', 'Huyện', 'tien-du', 'Huyện Tiên Du, Bắc Ninh', '21.1178311', '106.0287512', NULL, 0);
INSERT INTO `ap_location_district` VALUES (258, 27, 'Yên Phong', '649', 'Huyện', 'yen-phong', 'Huyện Yên Phong, Bắc Ninh', '21.2029570', '105.9581624', NULL, 0);
INSERT INTO `ap_location_district` VALUES (259, 27, 'Quế Võ', '439', 'Huyện', 'que-vo', 'Huyện Quế Võ, Bắc Ninh', '21.1377307', '106.1816196', NULL, 0);
INSERT INTO `ap_location_district` VALUES (256, 27, 'Bắc Ninh', '28', 'Thành phố', 'bac-ninh', 'Thành phố Bắc Ninh, Bắc Ninh', '21.1766814', '106.0621591', NULL, 0);
INSERT INTO `ap_location_district` VALUES (253, 26, 'Sông Lô', '468', 'Huyện', 'song-lo', 'Huyện Sông Lô, Vĩnh Phúc', '21.4564665', '105.3950939', NULL, 0);
INSERT INTO `ap_location_district` VALUES (252, 26, 'Vĩnh Tường', '626', 'Huyện', 'vinh-tuong', 'Huyện Vĩnh Tường, Vĩnh Phúc', '21.2537742', '105.4899167', NULL, 0);
INSERT INTO `ap_location_district` VALUES (251, 26, 'Yên Lạc', '644', 'Huyện', 'yen-lac', 'Huyện Yên Lạc, Vĩnh Phúc', '21.1962199', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (249, 26, 'Bình Xuyên', '62', 'Huyện', 'binh-xuyen', 'Huyện Bình Xuyên, Vĩnh Phúc', '21.3138570', '105.6764461', NULL, 0);
INSERT INTO `ap_location_district` VALUES (248, 26, 'Tam Đảo', '476', 'Huyện', 'tam-dao', 'Huyện Tam Đảo, Vĩnh Phúc', '21.4747064', '105.5708865', NULL, 0);
INSERT INTO `ap_location_district` VALUES (247, 26, 'Tam Dương', '472', 'Huyện', 'tam-duong', 'Huyện Tam Dương, Vĩnh Phúc', '21.3713778', '105.5591615', NULL, 0);
INSERT INTO `ap_location_district` VALUES (246, 26, 'Lập Thạch', '276', 'Huyện', 'lap-thach', 'Huyện Lập Thạch, Vĩnh Phúc', '21.4371499', '105.4771084', NULL, 0);
INSERT INTO `ap_location_district` VALUES (244, 26, 'Phúc Yên', '407', 'Thị xã', 'phuc-yen', 'Thị xã Phúc Yên, Vĩnh Phúc', '21.3325846', '105.7233814', NULL, 0);
INSERT INTO `ap_location_district` VALUES (243, 26, 'Vĩnh Yên', '627', 'Thành phố', 'vinh-yen', 'Thành phố Vĩnh Yên, Vĩnh Phúc', '21.2973262', '105.6060661', NULL, 0);
INSERT INTO `ap_location_district` VALUES (240, 25, 'Tân Sơn', '493', 'Huyện', 'tan-son', 'Huyện Tân Sơn, Phú Thọ', '21.1665519', '104.9894851', NULL, 0);
INSERT INTO `ap_location_district` VALUES (239, 25, 'Thanh Thuỷ', '529', 'Huyện', 'thanh-thuy', 'Huyện Thanh Thuỷ, Phú Thọ', '21.1141818', '105.2807163', NULL, 0);
INSERT INTO `ap_location_district` VALUES (237, 25, 'Lâm Thao', '271', 'Huyện', 'lam-thao', 'Huyện Lâm Thao, Phú Thọ', '21.3026143', '105.3014109', NULL, 0);
INSERT INTO `ap_location_district` VALUES (238, 25, 'Thanh Sơn', '528', 'Huyện', 'thanh-son', 'Huyện Thanh Sơn, Phú Thọ', '21.0240198', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (236, 25, 'Tam Nông', '474', 'Huyện', 'tam-nong', 'Huyện Tam Nông, Phú Thọ', '21.2858685', '105.2311827', NULL, 0);
INSERT INTO `ap_location_district` VALUES (235, 25, 'Cẩm Khê', '78', 'Huyện', 'cam-khe', 'Huyện Cẩm Khê, Phú Thọ', '21.4298041', '105.0557415', NULL, 0);
INSERT INTO `ap_location_district` VALUES (234, 25, 'Yên Lập', '645', 'Huyện', 'yen-lap', 'Huyện Yên Lập, Phú Thọ', '21.3410625', '105.0089888', NULL, 0);
INSERT INTO `ap_location_district` VALUES (233, 25, 'Phù Ninh', '393', 'Huyện', 'phu-ninh', 'Huyện Phù Ninh, Phú Thọ', '21.4753257', '105.2844608', NULL, 0);
INSERT INTO `ap_location_district` VALUES (232, 25, 'Thanh Ba', '517', 'Huyện', 'thanh-ba', 'Huyện Thanh Ba, Phú Thọ', '21.4677045', '105.1492869', NULL, 0);
INSERT INTO `ap_location_district` VALUES (230, 25, 'Đoan Hùng', '685', 'Huyện', 'doan-hung', 'Huyện Đoan Hùng, Phú Thọ', '21.6071636', '105.1492869', NULL, 0);
INSERT INTO `ap_location_district` VALUES (231, 25, 'Hạ Hoà', '171', 'Huyện', 'ha-hoa', 'Huyện Hạ Hoà, Phú Thọ', '21.5735989', '105.0089888', NULL, 0);
INSERT INTO `ap_location_district` VALUES (228, 25, 'Phú Thọ', '401', 'Thị xã', 'phu-tho', 'Thị xã Phú Thọ, Phú Thọ', '21.4252786', '105.2311827', NULL, 0);
INSERT INTO `ap_location_district` VALUES (227, 25, 'Việt Trì', '612', 'Thành phố', 'viet-tri', 'Thành phố Việt Trì, Phú Thọ', '21.3425399', '105.3716684', NULL, 0);
INSERT INTO `ap_location_district` VALUES (223, 24, 'Hiệp Hòa', '191', 'Huyện', 'hiep-hoa', 'Huyện Hiệp Hòa, Bắc Giang', '21.3552222', '105.9790377', NULL, 0);
INSERT INTO `ap_location_district` VALUES (222, 24, 'Việt Yên', '613', 'Huyện', 'viet-yen', 'Huyện Việt Yên, Bắc Giang', '21.2858633', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (221, 24, 'Yên Dũng', '642', 'Huyện', 'yen-dung', 'Huyện Yên Dũng, Bắc Giang', '21.2257315', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (220, 24, 'Sơn Động', '464', 'Huyện', 'son-dong', 'Huyện Sơn Động, Bắc Giang', '21.3520004', '106.8849897', NULL, 0);
INSERT INTO `ap_location_district` VALUES (219, 24, 'Lục Ngạn', '294', 'Huyện', 'luc-ngan', 'Huyện Lục Ngạn, Bắc Giang', '21.4354043', '106.6762920', NULL, 0);
INSERT INTO `ap_location_district` VALUES (218, 24, 'Lục Nam', '293', 'Huyện', 'luc-nam', 'Huyện Lục Nam, Bắc Giang', '21.2996631', '106.4170311', NULL, 0);
INSERT INTO `ap_location_district` VALUES (217, 24, 'Lạng Giang', '273', 'Huyện', 'lang-giang', 'Huyện Lạng Giang, Bắc Giang', '21.3646422', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (216, 24, 'Tân Yên', '499', 'Huyện', 'tan-yen', 'Huyện Tân Yên, Bắc Giang', '21.3785203', '106.0875326', NULL, 0);
INSERT INTO `ap_location_district` VALUES (215, 24, 'Yên Thế', '652', 'Huyện', 'yen-the', 'Huyện Yên Thế, Bắc Giang', '21.5128774', '106.1345705', NULL, 0);
INSERT INTO `ap_location_district` VALUES (207, 22, 'Cô Tô', '130', 'Huyện', 'co-to', 'Huyện Cô Tô, Quảng Ninh', '21.1062206', '107.8346924', NULL, 0);
INSERT INTO `ap_location_district` VALUES (213, 24, 'Bắc Giang', '23', 'Thành phố', 'bac-giang', 'Thành phố Bắc Giang, Bắc Giang', '21.2909028', '106.1867027', NULL, 0);
INSERT INTO `ap_location_district` VALUES (206, 22, 'Quảng Yên', '435', 'Thị xã', 'quang-yen', 'Thị xã Quảng Yên, Quảng Ninh', '20.9334638', '106.8414374', NULL, 0);
INSERT INTO `ap_location_district` VALUES (205, 22, 'Đông Triều', '697', 'Thị xã', 'dong-trieu', 'Thị xã Đông Triều, Quảng Ninh', '21.0958153', '106.6055534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (204, 22, 'Hoành Bồ', '207', 'Huyện', 'hoanh-bo', 'Huyện Hoành Bồ, Quảng Ninh', '21.0551849', '107.0405167', NULL, 0);
INSERT INTO `ap_location_district` VALUES (203, 22, 'Vân Đồn', '608', 'Huyện', 'van-don', 'Huyện Vân Đồn, Quảng Ninh', '21.0693983', '107.4202262', NULL, 0);
INSERT INTO `ap_location_district` VALUES (202, 22, 'Ba Chẽ', '13', 'Huyện', 'ba-che', 'Huyện Ba Chẽ, Quảng Ninh', '21.2943250', '107.1484521', NULL, 0);
INSERT INTO `ap_location_district` VALUES (201, 22, 'Hải Hà', '183', 'Huyện', 'hai-ha', 'Huyện Hải Hà, Quảng Ninh', '21.4182232', '107.7162500', NULL, 0);
INSERT INTO `ap_location_district` VALUES (200, 22, 'Đầm Hà', '672', 'Huyện', 'dam-ha', 'Huyện Đầm Hà, Quảng Ninh', '21.3619435', '107.5978577', NULL, 0);
INSERT INTO `ap_location_district` VALUES (199, 22, 'Tiên Yên', '558', 'Huyện', 'tien-yen', 'Huyện Tiên Yên, Quảng Ninh', '21.3666878', '107.3375791', NULL, 0);
INSERT INTO `ap_location_district` VALUES (198, 22, 'Bình Liêu', '53', 'Huyện', 'binh-lieu', 'Huyện Bình Liêu, Quảng Ninh', '21.5410162', '107.4321959', NULL, 0);
INSERT INTO `ap_location_district` VALUES (196, 22, 'Uông Bí', '597', 'Thành phố', 'uong-bi', 'Thành phố Uông Bí, Quảng Ninh', '21.0815850', '106.7470536', NULL, 0);
INSERT INTO `ap_location_district` VALUES (195, 22, 'Cẩm Phả', '83', 'Thành phố', 'cam-pha', 'Thành phố Cẩm Phả, Quảng Ninh', '21.0694762', '107.3139304', NULL, 0);
INSERT INTO `ap_location_district` VALUES (194, 22, 'Móng Cái', '314', 'Thành phố', 'mong-cai', 'Thành phố Móng Cái, Quảng Ninh', '21.5419456', '107.8794943', NULL, 0);
INSERT INTO `ap_location_district` VALUES (193, 22, 'Hạ Long', '173', 'Thành phố', 'ha-long', 'Thành phố Hạ Long, Quảng Ninh', '20.9711977', '107.0448069', NULL, 0);
INSERT INTO `ap_location_district` VALUES (189, 20, 'Đình Lập', '681', 'Huyện', 'dinh-lap', 'Huyện Đình Lập, Lạng Sơn', '21.5711978', '107.1484521', NULL, 0);
INSERT INTO `ap_location_district` VALUES (187, 20, 'Chi Lăng', '116', 'Huyện', 'chi-lang', 'Huyện Chi Lăng, Lạng Sơn', '21.6506944', '106.6055534', NULL, 0);
INSERT INTO `ap_location_district` VALUES (188, 20, 'Lộc Bình', '281', 'Huyện', 'loc-binh', 'Huyện Lộc Bình, Lạng Sơn', '21.7757592', '106.9594723', NULL, 0);
INSERT INTO `ap_location_district` VALUES (186, 20, 'Hữu Lũng', '226', 'Huyện', 'huu-lung', 'Huyện Hữu Lũng, Lạng Sơn', '21.5659824', '106.2992912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (185, 20, 'Bắc Sơn', '30', 'Huyện', 'bac-son', 'Huyện Bắc Sơn, Lạng Sơn', '21.8437729', '106.2992912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (184, 20, 'Văn Quan', '606', 'Huyện', 'van-quan', 'Huyện Văn Quan, Lạng Sơn', '21.8453587', '106.5112712', NULL, 0);
INSERT INTO `ap_location_district` VALUES (183, 20, 'Cao Lộc', '95', 'Huyện', 'cao-loc', 'Huyện Cao Lộc, Lạng Sơn', '21.9036302', '106.8414374', NULL, 0);
INSERT INTO `ap_location_district` VALUES (182, 20, 'Văn Lãng', '604', 'Huyện', 'van-lang', 'Huyện Văn Lãng, Lạng Sơn', '22.0924829', '106.5819789', NULL, 0);
INSERT INTO `ap_location_district` VALUES (181, 20, 'Bình Gia', '51', 'Huyện', 'binh-gia', 'Huyện Bình Gia, Lạng Sơn', '22.0639906', '106.3340858', NULL, 0);
INSERT INTO `ap_location_district` VALUES (180, 20, 'Tràng Định', '573', 'Huyện', 'trang-dinh', 'Huyện Tràng Định, Lạng Sơn', '22.2872995', '106.4877072', NULL, 0);
INSERT INTO `ap_location_district` VALUES (173, 19, 'Phú Bình', '383', 'Huyện', 'phu-binh', 'Huyện Phú Bình, Thái Nguyên', '21.4849768', '105.9464874', NULL, 0);
INSERT INTO `ap_location_district` VALUES (178, 20, 'Lạng Sơn', '274', 'Thành phố', 'lang-son', 'Thành phố Lạng Sơn, Lạng Sơn', '21.8537080', '106.7615190', NULL, 0);
INSERT INTO `ap_location_district` VALUES (172, 19, 'Phổ Yên', '379', 'Thị xã', 'pho-yen', 'Thị xã Phổ Yên, Thái Nguyên', '21.4138750', '105.8486183', NULL, 0);
INSERT INTO `ap_location_district` VALUES (171, 19, 'Đại Từ', '661', 'Huyện', 'dai-tu', 'Huyện Đại Từ, Thái Nguyên', '21.6304358', '105.6412527', NULL, 0);
INSERT INTO `ap_location_district` VALUES (170, 19, 'Võ Nhai', '628', 'Huyện', 'vo-nhai', 'Huyện Võ Nhai, Thái Nguyên', '21.7793409', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (169, 19, 'Đồng Hỷ', '694', 'Huyện', 'dong-hy', 'Huyện Đồng Hỷ, Thái Nguyên', '21.6286393', '105.8994956', NULL, 0);
INSERT INTO `ap_location_district` VALUES (168, 19, 'Phú Lương', '389', 'Huyện', 'phu-luong', 'Huyện Phú Lương, Thái Nguyên', '21.7860570', '105.7116464', NULL, 0);
INSERT INTO `ap_location_district` VALUES (167, 19, 'Định Hóa', '680', 'Huyện', 'dinh-hoa', 'Huyện Định Hóa, Thái Nguyên', '21.8879551', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (165, 19, 'Sông Công', '466', 'Thành phố', 'song-cong', 'Thành phố Sông Công, Thái Nguyên', '21.4757637', '105.8234766', NULL, 0);
INSERT INTO `ap_location_district` VALUES (159, 17, 'Lạc Thủy', '265', 'Huyện', 'lac-thuy', 'Huyện Lạc Thủy, Hoà Bình', '20.5136724', '105.7333455', NULL, 0);
INSERT INTO `ap_location_district` VALUES (164, 19, 'Thái Nguyên', '513', 'Thành phố', 'thai-nguyen', 'Thành phố Thái Nguyên, Thái Nguyên', '21.5671559', '105.8252038', NULL, 0);
INSERT INTO `ap_location_district` VALUES (158, 17, 'Yên Thủy', '653', 'Huyện', 'yen-thuy', 'Huyện Yên Thủy, Hoà Bình', '20.4032247', '105.6177942', NULL, 0);
INSERT INTO `ap_location_district` VALUES (157, 17, 'Lạc Sơn', '264', 'Huyện', 'lac-son', 'Huyện Lạc Sơn, Hoà Bình', '20.4413353', '105.4536718', NULL, 0);
INSERT INTO `ap_location_district` VALUES (156, 17, 'Mai Châu', '301', 'Huyện', 'mai-chau', 'Huyện Mai Châu, Hoà Bình', '20.6901339', '105.0089888', NULL, 0);
INSERT INTO `ap_location_district` VALUES (154, 17, 'Cao Phong', '96', 'Huyện', 'cao-phong', 'Huyện Cao Phong, Hoà Bình', '20.7072205', '105.3365360', NULL, 0);
INSERT INTO `ap_location_district` VALUES (155, 17, 'Tân Lạc', '488', 'Huyện', 'tan-lac', 'Huyện Tân Lạc, Hoà Bình', '20.6228033', '105.2428853', NULL, 0);
INSERT INTO `ap_location_district` VALUES (153, 17, 'Kim Bôi', '242', 'Huyện', 'kim-boi', 'Huyện Kim Bôi, Hoà Bình', '20.6901132', '105.5239912', NULL, 0);
INSERT INTO `ap_location_district` VALUES (151, 17, 'Kỳ Sơn', '260', 'Huyện', 'ky-son', 'Huyện Kỳ Sơn, Hoà Bình', '20.9030231', '105.3932378', NULL, 0);
INSERT INTO `ap_location_district` VALUES (152, 17, 'Lương Sơn', '296', 'Huyện', 'luong-son', 'Huyện Lương Sơn, Hoà Bình', '20.8719130', '105.5040269', NULL, 0);
INSERT INTO `ap_location_district` VALUES (150, 17, 'Đà Bắc', '655', 'Huyện', 'da-bac', 'Huyện Đà Bắc, Hoà Bình', '20.8381545', '105.1726816', NULL, 0);
INSERT INTO `ap_location_district` VALUES (148, 17, 'Hòa Bình', '194', 'Thành phố', 'hoa-binh', 'Thành phố Hòa Bình, Hoà Bình', '20.8285780', '105.3380302', NULL, 0);
INSERT INTO `ap_location_district` VALUES (141, 15, 'Yên Bình', '640', 'Huyện', 'yen-binh', 'Huyện Yên Bình, Yên Bái', '21.7850519', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (140, 15, 'Văn Chấn', '600', 'Huyện', 'van-chan', 'Huyện Văn Chấn, Yên Bái', '21.4298431', '104.7987710', NULL, 0);
INSERT INTO `ap_location_district` VALUES (139, 15, 'Trạm Tấu', '567', 'Huyện', 'tram-tau', 'Huyện Trạm Tấu, Yên Bái', '21.4629385', '104.4257533', NULL, 0);
INSERT INTO `ap_location_district` VALUES (138, 15, 'Trấn Yên', '569', 'Huyện', 'tran-yen', 'Huyện Trấn Yên, Yên Bái', '21.6160083', '104.7987710', NULL, 0);
INSERT INTO `ap_location_district` VALUES (137, 15, 'Mù Căng Chải', '315', 'Huyện', 'mu-cang-chai', 'Huyện Mù Căng Chải, Yên Bái', '21.7670046', '104.1466046', NULL, 0);
INSERT INTO `ap_location_district` VALUES (136, 15, 'Văn Yên', '607', 'Huyện', 'van-yen', 'Huyện Văn Yên, Yên Bái', '21.8698428', '104.5655273', NULL, 0);
INSERT INTO `ap_location_district` VALUES (135, 15, 'Lục Yên', '295', 'Huyện', 'luc-yen', 'Huyện Lục Yên, Yên Bái', '22.0900049', '104.7054310', NULL, 0);
INSERT INTO `ap_location_district` VALUES (133, 15, 'Nghĩa Lộ', '351', 'Thị xã', 'nghia-lo', 'Thị xã Nghĩa Lộ, Yên Bái', '21.6018769', '104.5062651', NULL, 0);
INSERT INTO `ap_location_district` VALUES (132, 15, 'Yên Bái', '639', 'Thành phố', 'yen-bai', 'Thành phố Yên Bái, Yên Bái', '21.7167689', '104.8985878', NULL, 0);
INSERT INTO `ap_location_district` VALUES (128, 14, 'Vân Hồ', '602', 'Huyện', 'van-ho', 'Huyện Vân Hồ, Sơn La', '20.7931051', '104.7637619', NULL, 0);
INSERT INTO `ap_location_district` VALUES (127, 14, 'Sốp Cộp', '470', 'Huyện', 'sop-cop', 'Huyện Sốp Cộp, Sơn La', '20.8874516', '103.4974258', NULL, 0);
INSERT INTO `ap_location_district` VALUES (125, 14, 'Mai Sơn', '302', 'Huyện', 'mai-son', 'Huyện Mai Sơn, Sơn La', '21.1219095', '104.0536760', NULL, 0);
INSERT INTO `ap_location_district` VALUES (126, 14, 'Sông Mã', '469', 'Huyện', 'song-ma', 'Huyện Sông Mã, Sơn La', '21.0593251', '103.6825860', NULL, 0);
INSERT INTO `ap_location_district` VALUES (124, 14, 'Yên Châu', '641', 'Huyện', 'yen-chau', 'Huyện Yên Châu, Sơn La', '21.0050006', '104.3326440', NULL, 0);
INSERT INTO `ap_location_district` VALUES (123, 14, 'Mộc Châu', '312', 'Huyện', 'moc-chau', 'Huyện Mộc Châu, Sơn La', '20.9220823', '104.7520939', NULL, 0);
INSERT INTO `ap_location_district` VALUES (122, 14, 'Phù Yên', '404', 'Huyện', 'phu-yen', 'Huyện Phù Yên, Sơn La', '21.2623608', '104.6441102', NULL, 0);
INSERT INTO `ap_location_district` VALUES (121, 14, 'Bắc Yên', '34', 'Huyện', 'bac-yen', 'Huyện Bắc Yên, Sơn La', '21.2765545', '104.4257533', NULL, 0);
INSERT INTO `ap_location_district` VALUES (120, 14, 'Mường La', '319', 'Huyện', 'muong-la', 'Huyện Mường La, Sơn La', '21.4951120', '104.0536760', NULL, 0);
INSERT INTO `ap_location_district` VALUES (119, 14, 'Thuận Châu', '547', 'Huyện', 'thuan-chau', 'Huyện Thuận Châu, Sơn La', '21.3900652', '103.6362715', NULL, 0);
INSERT INTO `ap_location_district` VALUES (118, 14, 'Quỳnh Nhai', '445', 'Huyện', 'quynh-nhai', 'Huyện Quỳnh Nhai, Sơn La', '21.7132038', '103.6825860', NULL, 0);
INSERT INTO `ap_location_district` VALUES (116, 14, 'Sơn La', '459', 'Thành phố', 'son-la', 'Thành phố Sơn La, Sơn La', '21.3270341', '103.9141288', NULL, 0);
INSERT INTO `ap_location_district` VALUES (112, 12, 'Nậm Nhùn', '334', 'Huyện', 'nam-nhun', 'Huyện Nậm Nhùn, Lai Châu', '22.1443402', '103.0215186', NULL, 0);
INSERT INTO `ap_location_district` VALUES (111, 12, 'Tân Uyên', '497', 'Huyện', 'tan-uyen', 'Huyện Tân Uyên, Lai Châu', '22.0868845', '103.6825860', NULL, 0);
INSERT INTO `ap_location_district` VALUES (110, 12, 'Than Uyên', '515', 'Huyện', 'than-uyen', 'Huyện Than Uyên, Lai Châu', '21.8922107', '103.7752634', NULL, 0);
INSERT INTO `ap_location_district` VALUES (108, 12, 'Sìn Hồ', '453', 'Huyện', 'sin-ho', 'Huyện Sìn Hồ, Lai Châu', '22.3048884', '103.3125299', NULL, 0);
INSERT INTO `ap_location_district` VALUES (109, 12, 'Phong Thổ', '380', 'Huyện', 'phong-tho', 'Huyện Phong Thổ, Lai Châu', '22.5776336', '103.4049445', NULL, 0);
INSERT INTO `ap_location_district` VALUES (107, 12, 'Mường Tè', '323', 'Huyện', 'muong-te', 'Huyện Mường Tè, Lai Châu', '22.4003790', '102.7135121', NULL, 0);
INSERT INTO `ap_location_district` VALUES (106, 12, 'Tam Đường', '478', 'Huyện', 'tam-duong', 'Huyện Tam Đường, Lai Châu', '22.3497051', '103.6131203', NULL, 0);
INSERT INTO `ap_location_district` VALUES (105, 12, 'Lai Châu', '266', 'Thành phố', 'lai-chau', 'Thành phố Lai Châu, Lai Châu', '22.0730990', '103.1574020', NULL, 0);
INSERT INTO `ap_location_district` VALUES (103, 11, 'Nậm Pồ', '335', 'Huyện', 'nam-po', 'Huyện Nậm Pồ, Điện Biên', '21.8284538', '102.7541010', NULL, 0);
INSERT INTO `ap_location_district` VALUES (102, 11, 'Mường Ảng', '316', 'Huyện', 'muong-ang', 'Huyện Mường Ảng, Điện Biên', '21.5641438', '103.2201828', NULL, 0);
INSERT INTO `ap_location_district` VALUES (101, 11, 'Điện Biên Đông', '679', 'Huyện', 'dien-bien-dong', 'Huyện Điện Biên Đông, Điện Biên', '21.2835093', '103.2201828', NULL, 0);
INSERT INTO `ap_location_district` VALUES (100, 11, 'Điện Biên', '677', 'Huyện', 'dien-bien', 'Huyện Điện Biên, Điện Biên', '21.2044768', '103.0356940', NULL, 0);
INSERT INTO `ap_location_district` VALUES (99, 11, 'Tuần Giáo', '585', 'Huyện', 'tuan-giao', 'Huyện Tuần Giáo, Điện Biên', '21.6427019', '103.4049445', NULL, 0);
INSERT INTO `ap_location_district` VALUES (98, 11, 'Tủa Chùa', '584', 'Huyện', 'tua-chua', 'Huyện Tủa Chùa, Điện Biên', '21.9232005', '103.4049445', NULL, 0);
INSERT INTO `ap_location_district` VALUES (97, 11, 'Mường Chà', '317', 'Huyện', 'muong-cha', 'Huyện Mường Chà, Điện Biên', '21.8596604', '103.0356940', NULL, 0);
INSERT INTO `ap_location_district` VALUES (96, 11, 'Mường Nhé', '322', 'Huyện', 'muong-nhe', 'Huyện Mường Nhé, Điện Biên', '22.0832638', '102.5757028', NULL, 0);
INSERT INTO `ap_location_district` VALUES (95, 11, 'Mường Lay', '321', 'Thị xã', 'muong-lay', 'Thị xã Mường Lay, Điện Biên', '22.0498734', '103.1634988', NULL, 0);
INSERT INTO `ap_location_district` VALUES (94, 11, 'Điện Biên Phủ', '678', 'Thành phố', 'dien-bien-phu', 'Thành phố Điện Biên Phủ, Điện Biên', '21.4094269', '103.0355852', NULL, 0);
INSERT INTO `ap_location_district` VALUES (89, 10, 'Văn Bàn', '598', 'Huyện', 'van-ban', 'Huyện Văn Bàn, Lào Cai', '22.0894109', '104.1930918', NULL, 0);
INSERT INTO `ap_location_district` VALUES (88, 10, 'Sa Pa', '448', 'Huyện', 'sa-pa', 'Huyện Sa Pa, Lào Cai', '22.2497168', '103.9608091', NULL, 0);
INSERT INTO `ap_location_district` VALUES (87, 10, 'Bảo Yên', '41', 'Huyện', 'bao-yen', 'Huyện Bảo Yên, Lào Cai', '22.2763301', '104.4490398', NULL, 0);
INSERT INTO `ap_location_district` VALUES (86, 10, 'Bảo Thắng', '40', 'Huyện', 'bao-thang', 'Huyện Bảo Thắng, Lào Cai', '22.3266996', '104.1466046', NULL, 0);
INSERT INTO `ap_location_district` VALUES (85, 10, 'Bắc Hà', '24', 'Huyện', 'bac-ha', 'Huyện Bắc Hà, Lào Cai', '22.4965469', '104.3326440', NULL, 0);
INSERT INTO `ap_location_district` VALUES (84, 10, 'Si Ma Cai', '452', 'Huyện', 'si-ma-cai', 'Huyện Si Ma Cai, Lào Cai', '22.6659838', '104.2628510', NULL, 0);
INSERT INTO `ap_location_district` VALUES (82, 10, 'Bát Xát', '42', 'Huyện', 'bat-xat', 'Huyện Bát Xát, Lào Cai', '22.5539336', '103.6825860', NULL, 0);
INSERT INTO `ap_location_district` VALUES (83, 10, 'Mường Khương', '318', 'Huyện', 'muong-khuong', 'Huyện Mường Khương, Lào Cai', '22.6785309', '104.1233667', NULL, 0);
INSERT INTO `ap_location_district` VALUES (80, 10, 'Lào Cai', '275', 'Thành phố', 'lao-cai', 'Thành phố Lào Cai, Lào Cai', '22.4458835', '104.0037764', NULL, 0);
INSERT INTO `ap_location_district` VALUES (76, 8, 'Sơn Dương', '456', 'Huyện', 'son-duong', 'Huyện Sơn Dương, Tuyên Quang', '21.6571812', '105.3599568', NULL, 0);
INSERT INTO `ap_location_district` VALUES (75, 8, 'Yên Sơn', '650', 'Huyện', 'yen-son', 'Huyện Yên Sơn, Tuyên Quang', '21.9447986', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (74, 8, 'Hàm Yên', '189', 'Huyện', 'ham-yen', 'Huyện Hàm Yên, Tuyên Quang', '22.0839452', '105.0271740', NULL, 0);
INSERT INTO `ap_location_district` VALUES (73, 8, 'Chiêm Hóa', '118', 'Huyện', 'chiem-hoa', 'Huyện Chiêm Hóa, Tuyên Quang', '22.1306765', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (72, 8, 'Nà Hang', '330', 'Huyện', 'na-hang', 'Huyện Nà Hang, Tuyên Quang', '22.4933358', '105.3599568', NULL, 0);
INSERT INTO `ap_location_district` VALUES (71, 8, 'Lâm Bình', '269', 'Huyện', 'lam-binh', 'Huyện Lâm Bình, Tuyên Quang', '22.5987975', '105.2316283', NULL, 0);
INSERT INTO `ap_location_district` VALUES (70, 8, 'Tuyên Quang', '593', 'Thành phố', 'tuyen-quang', 'Thành phố Tuyên Quang, Tuyên Quang', '21.7767246', '105.2280196', NULL, 0);
INSERT INTO `ap_location_district` VALUES (65, 6, 'Chợ Mới', '121', 'Huyện', 'cho-moi', 'Huyện Chợ Mới, Bắc Kạn', '21.8796650', '105.7776653', NULL, 0);
INSERT INTO `ap_location_district` VALUES (66, 6, 'Na Rì', '331', 'Huyện', 'na-ri', 'Huyện Na Rì, Bắc Kạn', '22.1406595', '106.1110501', NULL, 0);
INSERT INTO `ap_location_district` VALUES (64, 6, 'Chợ Đồn', '123', 'Huyện', 'cho-don', 'Huyện Chợ Đồn, Bắc Kạn', '22.1964994', '105.5474373', NULL, 0);
INSERT INTO `ap_location_district` VALUES (63, 6, 'Bạch Thông', '35', 'Huyện', 'bach-thong', 'Huyện Bạch Thông, Bắc Kạn', '22.2360787', '105.8525154', NULL, 0);
INSERT INTO `ap_location_district` VALUES (62, 6, 'Ngân Sơn', '346', 'Huyện', 'ngan-son', 'Huyện Ngân Sơn, Bắc Kạn', '22.4281787', '106.0169971', NULL, 0);
INSERT INTO `ap_location_district` VALUES (61, 6, 'Ba Bể', '12', 'Huyện', 'ba-be', 'Huyện Ba Bể, Bắc Kạn', '22.3636887', '105.7351171', NULL, 0);
INSERT INTO `ap_location_district` VALUES (60, 6, 'Pác Nặm', '376', 'Huyện', 'pac-nam', 'Huyện Pác Nặm, Bắc Kạn', '22.6126367', '105.6703226', NULL, 0);
INSERT INTO `ap_location_district` VALUES (58, 6, 'Bắc Kạn', '25', 'Thành phố', 'bac-kan', 'Thành phố Bắc Kạn, Bắc Kạn', '22.1329032', '105.8407722', NULL, 0);
INSERT INTO `ap_location_district` VALUES (53, 4, 'Thạch An', '507', 'Huyện', 'thach-an', 'Huyện Thạch An, Cao Bằng', '22.4663561', '106.3228338', NULL, 0);
INSERT INTO `ap_location_district` VALUES (52, 4, 'Nguyên Bình', '358', 'Huyện', 'nguyen-binh', 'Huyện Nguyên Bình, Cao Bằng', '22.6230856', '105.9229900', NULL, 0);
INSERT INTO `ap_location_district` VALUES (51, 4, 'Hoà An', '193', 'Huyện', 'hoa-an', 'Huyện Hoà An, Cao Bằng', '22.7538704', '106.2286800', NULL, 0);
INSERT INTO `ap_location_district` VALUES (50, 4, 'Phục Hoà', '405', 'Huyện', 'phuc-hoa', 'Huyện Phục Hoà, Cao Bằng', '22.5392684', '106.5112712', NULL, 0);
INSERT INTO `ap_location_district` VALUES (48, 4, 'Hạ Lang', '172', 'Huyện', 'ha-lang', 'Huyện Hạ Lang, Cao Bằng', '22.7042438', '106.6998767', NULL, 0);
INSERT INTO `ap_location_district` VALUES (49, 4, 'Quảng Uyên', '433', 'Huyện', 'quang-uyen', 'Huyện Quảng Uyên, Cao Bằng', '22.6829900', '106.4641459', NULL, 0);
INSERT INTO `ap_location_district` VALUES (47, 4, 'Trùng Khánh', '578', 'Huyện', 'trung-khanh', 'Huyện Trùng Khánh, Cao Bằng', '22.8323826', '106.5819789', NULL, 0);
INSERT INTO `ap_location_district` VALUES (46, 4, 'Trà Lĩnh', '564', 'Huyện', 'tra-linh', 'Huyện Trà Lĩnh, Cao Bằng', '22.7903474', '106.3228338', NULL, 0);
INSERT INTO `ap_location_district` VALUES (45, 4, 'Hà Quảng', '174', 'Huyện', 'ha-quang', 'Huyện Hà Quảng, Cao Bằng', '22.9025402', '106.1345705', NULL, 0);
INSERT INTO `ap_location_district` VALUES (44, 4, 'Thông Nông', '540', 'Huyện', 'thong-nong', 'Huyện Thông Nông, Cao Bằng', '22.8439088', '105.9520986', NULL, 0);
INSERT INTO `ap_location_district` VALUES (43, 4, 'Bảo Lạc', '36', 'Huyện', 'bao-lac', 'Huyện Bảo Lạc, Cao Bằng', '22.8786248', '105.6881788', NULL, 0);
INSERT INTO `ap_location_district` VALUES (42, 4, 'Bảo Lâm', '37', 'Huyện', 'bao-lam', 'Huyện Bảo Lâm, Cao Bằng', '22.8464077', '105.5061553', NULL, 0);
INSERT INTO `ap_location_district` VALUES (40, 4, 'Cao Bằng', '92', 'Thành phố', 'cao-bang', 'Thành phố Cao Bằng, Cao Bằng', '22.6655648', '106.2606733', NULL, 0);
INSERT INTO `ap_location_district` VALUES (35, 2, 'Quang Bình', '428', 'Huyện', 'quang-binh', 'Huyện Quang Bình, Hà Giang', '22.4624387', '104.7054310', NULL, 0);
INSERT INTO `ap_location_district` VALUES (34, 2, 'Bắc Quang', '29', 'Huyện', 'bac-quang', 'Huyện Bắc Quang, Hà Giang', '22.4450248', '104.8921668', NULL, 0);
INSERT INTO `ap_location_district` VALUES (33, 2, 'Xín Mần', '634', 'Huyện', 'xin-man', 'Huyện Xín Mần, Hà Giang', '22.6659156', '104.5189214', NULL, 0);
INSERT INTO `ap_location_district` VALUES (31, 2, 'Bắc Mê', '27', 'Huyện', 'bac-me', 'Huyện Bắc Mê, Hà Giang', '22.7811484', '105.2662931', NULL, 0);
INSERT INTO `ap_location_district` VALUES (32, 2, 'Hoàng Su Phì', '206', 'Huyện', 'hoang-su-phi', 'Huyện Hoàng Su Phì, Hà Giang', '22.7417169', '104.7054310', NULL, 0);
INSERT INTO `ap_location_district` VALUES (30, 2, 'Vị Xuyên', '611', 'Huyện', 'vi-xuyen', 'Huyện Vị Xuyên, Hà Giang', '22.7241336', '104.8921668', NULL, 0);
INSERT INTO `ap_location_district` VALUES (29, 2, 'Quản Bạ', '425', 'Huyện', 'quan-ba', 'Huyện Quản Bạ, Hà Giang', '23.0871860', '104.9856176', NULL, 0);
INSERT INTO `ap_location_district` VALUES (28, 2, 'Yên Minh', '646', 'Huyện', 'yen-minh', 'Huyện Yên Minh, Hà Giang', '23.0434955', '105.1960795', NULL, 0);
INSERT INTO `ap_location_district` VALUES (27, 2, 'Mèo Vạc', '306', 'Huyện', 'meo-vac', 'Huyện Mèo Vạc, Hà Giang', '23.1341053', '105.4536718', NULL, 0);
INSERT INTO `ap_location_district` VALUES (26, 2, 'Đồng Văn', '698', 'Huyện', 'dong-van', 'Huyện Đồng Văn, Hà Giang', '23.2246718', '105.2428853', NULL, 0);
INSERT INTO `ap_location_district` VALUES (24, 2, 'Hà Giang', '170', 'Thành phố', 'ha-giang', 'Thành phố Hà Giang, Hà Giang', '22.8025588', '104.9784494', NULL, 0);
INSERT INTO `ap_location_district` VALUES (282, 1, 'Mỹ Đức', '329', 'Huyện', 'my-duc', 'Huyện Mỹ Đức, Hà Nội', '20.7257680', '105.7157513', NULL, 0);
INSERT INTO `ap_location_district` VALUES (281, 1, 'Ứng Hòa', '596', 'Huyện', 'ung-hoa', 'Huyện Ứng Hòa, Hà Nội', '20.7296140', '105.7782061', NULL, 0);
INSERT INTO `ap_location_district` VALUES (280, 1, 'Phú Xuyên', '403', 'Huyện', 'phu-xuyen', 'Huyện Phú Xuyên, Hà Nội', '20.7280728', '105.9029374', NULL, 0);
INSERT INTO `ap_location_district` VALUES (279, 1, 'Thường Tín', '550', 'Huyện', 'thuong-tin', 'Huyện Thường Tín, Hà Nội', '20.8055441', '105.8838579', NULL, 0);
INSERT INTO `ap_location_district` VALUES (278, 1, 'Thanh Oai', '526', 'Huyện', 'thanh-oai', 'Huyện Thanh Oai, Hà Nội', '20.8532165', '105.7688513', NULL, 0);
INSERT INTO `ap_location_district` VALUES (277, 1, 'Chương Mỹ', '129', 'Huyện', 'chuong-my', 'Huyện Chương Mỹ, Hà Nội', '20.8746466', '105.6712465', NULL, 0);
INSERT INTO `ap_location_district` VALUES (276, 1, 'Thạch Thất', '510', 'Huyện', 'thach-that', 'Huyện Thạch Thất, Hà Nội', '20.9905234', '105.5251894', NULL, 0);
INSERT INTO `ap_location_district` VALUES (274, 1, 'Hoài Đức', '201', 'Huyện', 'hoai-duc', 'Huyện Hoài Đức, Hà Nội', '21.0243168', '105.6988892', NULL, 0);
INSERT INTO `ap_location_district` VALUES (275, 1, 'Quốc Oai', '441', 'Huyện', 'quoc-oai', 'Huyện Quốc Oai, Hà Nội', '20.9924634', '105.6404254', NULL, 0);
INSERT INTO `ap_location_district` VALUES (273, 1, 'Đan Phượng', '674', 'Huyện', 'dan-phuong', 'Huyện Đan Phượng, Hà Nội', '21.0848550', '105.6690963', NULL, 0);
INSERT INTO `ap_location_district` VALUES (272, 1, 'Phúc Thọ', '406', 'Huyện', 'phuc-tho', 'Huyện Phúc Thọ, Hà Nội', '21.1241396', '105.5939066', NULL, 0);
INSERT INTO `ap_location_district` VALUES (271, 1, 'Ba Vì', '18', 'Huyện', 'ba-vi', 'Huyện Ba Vì, Hà Nội', '21.1992298', '105.4232116', NULL, 0);
INSERT INTO `ap_location_district` VALUES (269, 1, 'Sơn Tây', '460', 'Thị xã', 'son-tay', 'Thị xã Sơn Tây, Hà Nội', '21.1032279', '105.4969964', NULL, 0);
INSERT INTO `ap_location_district` VALUES (268, 1, 'Hà Đông', '178', 'Quận', 'ha-dong', 'Quận Hà Đông, Hà Nội', '20.9558350', '105.7563658', NULL, 0);
INSERT INTO `ap_location_district` VALUES (250, 1, 'Mê Linh', '305', 'Huyện', 'me-linh', 'Huyện Mê Linh, Hà Nội', '21.1753431', '105.7308045', NULL, 0);
INSERT INTO `ap_location_district` VALUES (21, 1, 'Bắc Từ Liêm', '33', 'Quận', 'bac-tu-liem', 'Quận Bắc Từ Liêm, Hà Nội', '21.0730201', '105.7703287', NULL, 0);
INSERT INTO `ap_location_district` VALUES (20, 1, 'Thanh Trì', '530', 'Huyện', 'thanh-tri', 'Huyện Thanh Trì, Hà Nội', '20.9344418', '105.8462288', NULL, 0);
INSERT INTO `ap_location_district` VALUES (18, 1, 'Gia Lâm', '154', 'Huyện', 'gia-lam', 'Huyện Gia Lâm, Hà Nội', '21.0105208', '105.9529410', NULL, 0);
INSERT INTO `ap_location_district` VALUES (19, 1, 'Nam Từ Liêm', '339', 'Quận', 'nam-tu-liem', 'Quận Nam Từ Liêm, Hà Nội', '21.0034608', '105.7703287', NULL, 0);
INSERT INTO `ap_location_district` VALUES (17, 1, 'Đông Anh', '687', 'Huyện', 'dong-anh', 'Huyện Đông Anh, Hà Nội', '21.1245303', '105.8271398', NULL, 0);
INSERT INTO `ap_location_district` VALUES (16, 1, 'Sóc Sơn', '454', 'Huyện', 'soc-son', 'Huyện Sóc Sơn, Hà Nội', '21.2573126', '105.8480203', NULL, 0);
INSERT INTO `ap_location_district` VALUES (8, 1, 'Hoàng Mai', '204', 'Quận', 'hoang-mai', 'Quận Hoàng Mai, Hà Nội', '20.9836984', '105.8636257', NULL, 0);
INSERT INTO `ap_location_district` VALUES (9, 1, 'Thanh Xuân', '532', 'Quận', 'thanh-xuan', 'Quận Thanh Xuân, Hà Nội', '20.9959819', '105.8097244', NULL, 0);
INSERT INTO `ap_location_district` VALUES (7, 1, 'Hai Bà Trưng', '180', 'Quận', 'hai-ba-trung', 'Quận Hai Bà Trưng, Hà Nội', '21.0090571', '105.8607507', NULL, 0);
INSERT INTO `ap_location_district` VALUES (6, 1, 'Đống Đa', '701', 'Quận', 'dong-da', 'Quận Đống Đa, Hà Nội', '21.0180725', '105.8299495', NULL, 0);
INSERT INTO `ap_location_district` VALUES (5, 1, 'Cầu Giấy', '99', 'Quận', 'cau-giay', 'Quận Cầu Giấy, Hà Nội', '21.0362368', '105.7905825', NULL, 0);
INSERT INTO `ap_location_district` VALUES (4, 1, 'Long Biên', '284', 'Quận', 'long-bien', 'Quận Long Biên, Hà Nội', '21.0548635', '105.8884966', NULL, 0);
INSERT INTO `ap_location_district` VALUES (2, 1, 'Hoàn Kiếm', '202', 'Quận', 'hoan-kiem', 'Quận Hoàn Kiếm, Hà Nội', '21.0279640', '105.8510132', NULL, 0);
INSERT INTO `ap_location_district` VALUES (3, 1, 'Tây Hồ', '502', 'Quận', 'tay-ho', 'Quận Tây Hồ, Hà Nội', '21.0811211', '105.8180306', NULL, 0);
INSERT INTO `ap_location_district` VALUES (1, 1, 'Ba Đình', '19', 'Quận', 'ba-dinh', 'Quận Ba Đình, Hà Nội', '21.0337815', '105.8140539', NULL, 1);

-- ----------------------------
-- Table structure for ap_location_street
-- ----------------------------
DROP TABLE IF EXISTS `ap_location_street`;
CREATE TABLE `ap_location_street`  (
  `id` int(11) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quận huyện',
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_with_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path_with_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_location_ward
-- ----------------------------
DROP TABLE IF EXISTS `ap_location_ward`;
CREATE TABLE `ap_location_ward`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT 'Quận huyện',
  `district_id` int(11) NULL DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `slug` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_with_type` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_location_ward
-- ----------------------------
INSERT INTO `ap_location_ward` VALUES (1, 'Văn Quán', '0', 268, NULL, 1, NULL, 'Phường', 'Phường Văn Quán', '20.978177', '105.792476', 0);
INSERT INTO `ap_location_ward` VALUES (3, 'Tứ Yên', '0', 253, NULL, 26, NULL, 'Xã', 'Xã  Tứ yên', '21.379665', '105.398081', 0);
INSERT INTO `ap_location_ward` VALUES (4, 'Bạch Lưu', '0', 253, NULL, 26, NULL, 'Xã', 'Xã Bạch Lưu', '21.494081', '105.337236', 0);
INSERT INTO `ap_location_ward` VALUES (5, 'Bàn Giản', '0', 246, NULL, 26, NULL, 'Xã', 'Xã Bàn Giản', '21.394180', '105.501086', 0);
INSERT INTO `ap_location_ward` VALUES (6, 'Đình Chu', '0', 246, NULL, 26, NULL, 'Xã', 'Xã Đình Chu', '21.394180', '105.501086', 0);
INSERT INTO `ap_location_ward` VALUES (7, 'An Thượng', '0', 274, NULL, 1, NULL, 'Xã', 'Xã An Thượng', '21.394180', '105.501086', 0);
INSERT INTO `ap_location_ward` VALUES (8, 'Dương Liễu', '0', 274, NULL, 1, NULL, 'Xã', 'Xã Dương Liễu', '21.421860', '105.501086', 0);
INSERT INTO `ap_location_ward` VALUES (9, 'Chiêu Yên', '0', 75, NULL, 8, NULL, 'Xã', 'Xã Chiêu Yên', '21.991075', '105.165636', 0);

-- ----------------------------
-- Table structure for ap_log_action
-- ----------------------------
DROP TABLE IF EXISTS `ap_log_action`;
CREATE TABLE `ap_log_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` int(11) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2892 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_log_action
-- ----------------------------
INSERT INTO `ap_log_action` VALUES (1, 'category', 'Insert category: 1', 1, '2019-10-31 05:00:27');
INSERT INTO `ap_log_action` VALUES (2, 'system_menu', 'Delete system_menu: 103', 1, '2019-10-31 05:08:23');
INSERT INTO `ap_log_action` VALUES (3, 'system_menu', 'Delete system_menu: 96', 1, '2019-11-01 01:40:47');
INSERT INTO `ap_log_action` VALUES (4, 'system_menu', 'Delete system_menu: 81', 1, '2019-11-01 01:43:19');
INSERT INTO `ap_log_action` VALUES (5, 'system_menu', 'Insert system_menu: 105', 1, '2019-11-05 10:20:38');
INSERT INTO `ap_log_action` VALUES (6, 'system_menu', 'Insert system_menu: 106', 1, '2019-11-05 10:23:58');
INSERT INTO `ap_log_action` VALUES (7, 'category', 'Insert category: 2', 1, '2019-11-05 03:54:28');
INSERT INTO `ap_log_action` VALUES (8, 'category', 'Insert category: 3', 1, '2019-11-05 03:54:58');
INSERT INTO `ap_log_action` VALUES (9, 'category', 'Insert category: 4', 1, '2019-11-05 03:55:12');
INSERT INTO `ap_log_action` VALUES (10, 'category', 'Insert category: 5', 1, '2019-11-05 03:55:39');
INSERT INTO `ap_log_action` VALUES (11, 'system_menu', 'Insert system_menu: 107', 1, '2019-11-05 04:00:31');
INSERT INTO `ap_log_action` VALUES (12, 'system_menu', 'Insert system_menu: 108', 1, '2019-11-05 04:01:27');
INSERT INTO `ap_log_action` VALUES (13, 'system_menu', 'Insert system_menu: 109', 1, '2019-11-05 04:03:08');
INSERT INTO `ap_log_action` VALUES (14, 'system_menu', 'Update system_menu: 89', 1, '2019-11-05 04:03:35');
INSERT INTO `ap_log_action` VALUES (15, 'system_menu', 'Update system_menu: 75', 1, '2019-11-05 04:03:51');
INSERT INTO `ap_log_action` VALUES (16, 'system_menu', 'Update system_menu: 79', 1, '2019-11-05 04:04:00');
INSERT INTO `ap_log_action` VALUES (17, 'system_menu', 'Update system_menu: 109', 1, '2019-11-05 04:04:12');
INSERT INTO `ap_log_action` VALUES (18, 'system_menu', 'Delete system_menu: 76', 1, '2019-11-05 04:04:46');
INSERT INTO `ap_log_action` VALUES (19, 'system_menu', 'Update system_menu: 108', 1, '2019-11-05 04:05:14');
INSERT INTO `ap_log_action` VALUES (20, 'system_menu', 'Update system_menu: 109', 1, '2019-11-05 04:06:11');
INSERT INTO `ap_log_action` VALUES (21, 'system_menu', 'Update system_menu: 108', 1, '2019-11-05 04:06:48');
INSERT INTO `ap_log_action` VALUES (22, 'property', 'Insert property: 0', 1, '2019-11-05 04:10:00');
INSERT INTO `ap_log_action` VALUES (23, 'property', 'Insert property: 0', 1, '2019-11-05 04:37:06');
INSERT INTO `ap_log_action` VALUES (24, 'property', 'Insert property: 0', 1, '2019-11-05 04:37:15');
INSERT INTO `ap_log_action` VALUES (25, 'property', 'Update property: 3', 1, '2019-11-05 04:38:22');
INSERT INTO `ap_log_action` VALUES (26, 'property', 'Update property: 2', 1, '2019-11-05 04:38:28');
INSERT INTO `ap_log_action` VALUES (27, 'property', 'Insert property: 0', 1, '2019-11-05 05:07:44');
INSERT INTO `ap_log_action` VALUES (28, 'property', 'Insert property: 0', 1, '2019-11-05 05:07:54');
INSERT INTO `ap_log_action` VALUES (29, 'property', 'Insert property: 0', 1, '2019-11-05 05:08:08');
INSERT INTO `ap_log_action` VALUES (30, 'product', 'Insert product: 1', 1, '2019-11-06 10:17:45');
INSERT INTO `ap_log_action` VALUES (31, 'product', 'Update product: 1', 1, '2019-11-06 10:32:27');
INSERT INTO `ap_log_action` VALUES (32, 'product', 'Update product: 1', 1, '2019-11-06 10:36:14');
INSERT INTO `ap_log_action` VALUES (33, 'product', 'Update product: 1', 1, '2019-11-06 10:36:21');
INSERT INTO `ap_log_action` VALUES (34, 'product', 'Insert product: 2', 1, '2019-11-06 11:14:07');
INSERT INTO `ap_log_action` VALUES (35, 'account', 'Insert account: 2', 1, '2019-11-06 01:34:30');
INSERT INTO `ap_log_action` VALUES (36, 'account', 'Update account: 2', 1, '2019-11-06 01:39:28');
INSERT INTO `ap_log_action` VALUES (37, 'account', 'Update account: 2', 1, '2019-11-06 01:44:38');
INSERT INTO `ap_log_action` VALUES (38, 'account', 'Update account: 2', 1, '2019-11-06 01:46:27');
INSERT INTO `ap_log_action` VALUES (39, 'account', 'Update account: 2', 1, '2019-11-06 01:46:49');
INSERT INTO `ap_log_action` VALUES (40, 'account', 'Update account: 2', 1, '2019-11-06 01:46:56');
INSERT INTO `ap_log_action` VALUES (41, 'account', 'Update account: 2', 1, '2019-11-06 01:47:02');
INSERT INTO `ap_log_action` VALUES (42, 'account', 'Update account: 2', 1, '2019-11-06 01:47:49');
INSERT INTO `ap_log_action` VALUES (43, 'account', 'Update account: 2', 1, '2019-11-06 01:48:01');
INSERT INTO `ap_log_action` VALUES (44, 'account', 'Update account: 2', 1, '2019-11-06 01:48:14');
INSERT INTO `ap_log_action` VALUES (45, 'account', 'Update account: 2', 1, '2019-11-06 01:48:35');
INSERT INTO `ap_log_action` VALUES (46, 'account', 'Update account: 2', 1, '2019-11-06 01:48:41');
INSERT INTO `ap_log_action` VALUES (47, 'account', 'Update account: 2', 1, '2019-11-06 01:48:47');
INSERT INTO `ap_log_action` VALUES (48, 'account', 'Update account: 2', 1, '2019-11-06 01:48:51');
INSERT INTO `ap_log_action` VALUES (49, 'account', 'Update account: 2', 1, '2019-11-06 02:22:41');
INSERT INTO `ap_log_action` VALUES (50, 'account', 'Update account: 2', 1, '2019-11-06 02:22:46');
INSERT INTO `ap_log_action` VALUES (51, 'promotion', 'Update promotion: 2597', 1, '2019-11-06 04:52:44');
INSERT INTO `ap_log_action` VALUES (52, 'promotion', 'Update promotion: 2598', 1, '2019-11-06 04:52:44');
INSERT INTO `ap_log_action` VALUES (53, 'promotion', 'Update promotion: 2594', 1, '2019-11-06 04:52:44');
INSERT INTO `ap_log_action` VALUES (54, 'promotion', 'Update promotion: 2595', 1, '2019-11-06 04:52:44');
INSERT INTO `ap_log_action` VALUES (55, 'promotion', 'Insert promotion: 2599', 1, '2019-11-06 04:54:59');
INSERT INTO `ap_log_action` VALUES (56, 'promotion', 'ưpdate promotion: 2599', 1, '2019-11-06 04:58:29');
INSERT INTO `ap_log_action` VALUES (57, 'promotion', 'ưpdate promotion: 2599', 1, '2019-11-06 04:59:38');
INSERT INTO `ap_log_action` VALUES (58, 'promotion', 'ưpdate promotion: 2599', 1, '2019-11-06 05:03:59');
INSERT INTO `ap_log_action` VALUES (59, 'promotion', 'ưpdate promotion: 2599', 1, '2019-11-06 05:06:03');
INSERT INTO `ap_log_action` VALUES (60, 'promotion', 'ưpdate promotion: 2599', 1, '2019-11-06 05:06:11');
INSERT INTO `ap_log_action` VALUES (61, 'promotion', 'Insert promotion: 1', 1, '2019-11-07 09:41:58');
INSERT INTO `ap_log_action` VALUES (62, 'post', 'Insert post: 1', 1, '2019-11-07 11:01:57');
INSERT INTO `ap_log_action` VALUES (63, 'post', 'Update post: 1', 1, '2019-11-07 11:02:24');
INSERT INTO `ap_log_action` VALUES (64, 'product', 'Update product: 2', 1, '2019-11-07 01:55:01');
INSERT INTO `ap_log_action` VALUES (65, 'stock', 'Update stock: stock', 1, '2019-11-07 02:25:44');
INSERT INTO `ap_log_action` VALUES (66, 'stock', 'Update stock: stock', 1, '2019-11-07 02:25:47');
INSERT INTO `ap_log_action` VALUES (67, 'stock', 'Update stock: stock', 1, '2019-11-07 05:03:20');
INSERT INTO `ap_log_action` VALUES (68, 'stock', 'Update stock: stock', 1, '2019-11-07 05:03:33');
INSERT INTO `ap_log_action` VALUES (69, 'stock', 'Update stock: stock', 1, '2019-11-07 05:14:09');
INSERT INTO `ap_log_action` VALUES (70, 'stock', 'Update stock: stock', 1, '2019-11-07 05:14:41');
INSERT INTO `ap_log_action` VALUES (71, 'system_menu', 'Insert system_menu: 110', 1, '2019-11-08 01:36:19');
INSERT INTO `ap_log_action` VALUES (72, 'system_menu', 'Insert system_menu: 111', 1, '2019-11-08 01:37:38');
INSERT INTO `ap_log_action` VALUES (73, 'system_menu', 'Insert system_menu: 112', 1, '2019-11-08 01:38:17');
INSERT INTO `ap_log_action` VALUES (74, 'system_menu', 'Insert system_menu: 113', 1, '2019-11-08 01:38:43');
INSERT INTO `ap_log_action` VALUES (75, 'system_menu', 'Insert system_menu: 114', 1, '2019-11-08 01:42:56');
INSERT INTO `ap_log_action` VALUES (76, 'voucher', 'Insert voucher: 542', 1, '2019-11-08 02:06:32');
INSERT INTO `ap_log_action` VALUES (77, 'voucher', 'Update voucher: 542', 1, '2019-11-08 02:35:37');
INSERT INTO `ap_log_action` VALUES (78, 'voucher', 'Update voucher: 542', 1, '2019-11-08 03:00:29');
INSERT INTO `ap_log_action` VALUES (79, 'voucher', 'Update voucher: 542', 1, '2019-11-08 03:00:34');
INSERT INTO `ap_log_action` VALUES (80, 'voucher', 'Update voucher: 542', 1, '2019-11-08 03:00:38');
INSERT INTO `ap_log_action` VALUES (81, 'system_menu', 'Insert system_menu: 115', 1, '2019-11-08 04:45:01');
INSERT INTO `ap_log_action` VALUES (82, 'system_menu', 'Insert system_menu: 116', 1, '2019-11-12 02:00:59');
INSERT INTO `ap_log_action` VALUES (83, 'system_menu', 'Insert system_menu: 117', 1, '2019-11-12 02:05:29');
INSERT INTO `ap_log_action` VALUES (84, 'question', 'Insert question: 1', 1, '2019-11-12 02:06:10');
INSERT INTO `ap_log_action` VALUES (85, 'stock', 'Update stock: stock', 1, '2019-11-12 05:07:44');
INSERT INTO `ap_log_action` VALUES (86, 'system_menu', 'Update system_menu: 112', 1, '2019-11-13 10:05:04');
INSERT INTO `ap_log_action` VALUES (87, 'category', 'Update category: 2', 1, '2019-11-14 10:18:15');
INSERT INTO `ap_log_action` VALUES (88, 'category', 'Update category: 2', 1, '2019-11-14 10:21:07');
INSERT INTO `ap_log_action` VALUES (89, 'category', 'Update category: 3', 1, '2019-11-14 10:21:29');
INSERT INTO `ap_log_action` VALUES (90, 'category', 'Update category: 3', 1, '2019-11-14 10:21:37');
INSERT INTO `ap_log_action` VALUES (91, 'category', 'Update category: 2', 1, '2019-11-14 10:26:33');
INSERT INTO `ap_log_action` VALUES (92, 'groups', 'Update groups: 2', 1, '2019-11-16 11:01:33');
INSERT INTO `ap_log_action` VALUES (93, 'groups', 'Update groups: 2', 1, '2019-11-16 11:04:29');
INSERT INTO `ap_log_action` VALUES (94, 'groups', 'Update groups: 2', 1, '2019-11-16 11:06:02');
INSERT INTO `ap_log_action` VALUES (95, 'groups', 'Update groups: 2', 1, '2019-11-16 11:08:11');
INSERT INTO `ap_log_action` VALUES (96, 'groups', 'Update groups: 2', 1, '2019-11-16 11:09:39');
INSERT INTO `ap_log_action` VALUES (97, 'groups', 'Update groups: 2', 1, '2019-11-16 11:11:02');
INSERT INTO `ap_log_action` VALUES (98, 'groups', 'Update groups: 2', 1, '2019-11-16 11:12:02');
INSERT INTO `ap_log_action` VALUES (99, 'groups', 'Update groups: 2', 1, '2019-11-16 11:14:44');
INSERT INTO `ap_log_action` VALUES (100, 'groups', 'Update groups: 2', 1, '2019-11-16 11:14:48');
INSERT INTO `ap_log_action` VALUES (101, 'groups', 'Update groups: 2', 1, '2019-11-16 11:14:54');
INSERT INTO `ap_log_action` VALUES (102, 'groups', 'Update groups: 2', 1, '2019-11-16 11:21:55');
INSERT INTO `ap_log_action` VALUES (103, 'groups', 'Update groups: 2', 1, '2019-11-16 11:24:56');
INSERT INTO `ap_log_action` VALUES (104, 'groups', 'Update groups: 2', 1, '2019-11-16 11:25:00');
INSERT INTO `ap_log_action` VALUES (105, 'groups', 'Update groups: 2', 1, '2019-11-16 02:54:54');
INSERT INTO `ap_log_action` VALUES (106, 'groups', 'Update groups: 2', 1, '2019-11-16 02:54:59');
INSERT INTO `ap_log_action` VALUES (107, 'groups', 'Update groups: 2', 1, '2019-11-16 03:56:13');
INSERT INTO `ap_log_action` VALUES (108, 'category', 'Insert category: 6', 2, '2019-11-16 04:39:20');
INSERT INTO `ap_log_action` VALUES (109, 'category', 'Update category: 6', 2, '2019-11-16 05:00:59');
INSERT INTO `ap_log_action` VALUES (110, 'category', 'Insert category: 7', 2, '2019-11-16 05:07:40');
INSERT INTO `ap_log_action` VALUES (111, 'category', 'Update category: 7', 2, '2019-11-16 05:07:48');
INSERT INTO `ap_log_action` VALUES (112, 'stock', 'Update stock: stock', 1, '2019-11-16 05:08:33');
INSERT INTO `ap_log_action` VALUES (113, 'stock', 'Update stock: stock', 1, '2019-11-16 05:08:45');
INSERT INTO `ap_log_action` VALUES (114, 'category', 'Update category: 1', 2, '2019-11-16 05:09:47');
INSERT INTO `ap_log_action` VALUES (115, 'category', 'Insert category: 8', 2, '2019-11-16 05:16:27');
INSERT INTO `ap_log_action` VALUES (116, 'category', 'Update category: 8', 2, '2019-11-16 05:16:30');
INSERT INTO `ap_log_action` VALUES (117, 'category', 'Update category: 1', 2, '2019-11-16 05:16:40');
INSERT INTO `ap_log_action` VALUES (118, 'groups', 'Update groups: 2', 1, '2019-11-16 05:34:07');
INSERT INTO `ap_log_action` VALUES (119, 'category', 'Update category: 1', 2, '2019-11-16 05:45:21');
INSERT INTO `ap_log_action` VALUES (120, 'groups', 'Update groups: 2', 1, '2019-11-18 10:35:10');
INSERT INTO `ap_log_action` VALUES (121, 'system_menu', 'Update system_menu: 100', 1, '2019-11-18 10:57:17');
INSERT INTO `ap_log_action` VALUES (122, 'post', 'Update post: 1', 1, '2019-11-18 11:02:23');
INSERT INTO `ap_log_action` VALUES (123, 'system_menu', 'Delete system_menu: 100', 1, '2019-11-18 11:06:28');
INSERT INTO `ap_log_action` VALUES (124, 'system_menu', 'Delete system_menu: 101', 1, '2019-11-18 11:09:04');
INSERT INTO `ap_log_action` VALUES (125, 'groups', 'Update groups: 2', 1, '2019-11-18 11:57:22');
INSERT INTO `ap_log_action` VALUES (126, 'groups', 'Update groups: 2', 1, '2019-11-18 12:00:20');
INSERT INTO `ap_log_action` VALUES (127, 'groups', 'Update groups: 2', 1, '2019-11-18 01:35:01');
INSERT INTO `ap_log_action` VALUES (128, 'groups', 'Update groups: 2', 1, '2019-11-18 01:39:12');
INSERT INTO `ap_log_action` VALUES (129, 'post', 'Insert post: 2', 2, '2019-11-18 02:14:29');
INSERT INTO `ap_log_action` VALUES (130, 'groups', 'Update groups: 2', 1, '2019-11-18 03:25:18');
INSERT INTO `ap_log_action` VALUES (131, 'product', 'Update product: 2', 2, '2019-11-18 03:36:12');
INSERT INTO `ap_log_action` VALUES (132, 'stock', 'Update stock: stock', 1, '2019-11-18 04:54:34');
INSERT INTO `ap_log_action` VALUES (133, 'promotion', 'ưpdate promotion: 1', 1, '2019-11-18 04:56:28');
INSERT INTO `ap_log_action` VALUES (134, 'promotion', 'ưpdate promotion: 1', 1, '2019-11-18 04:56:41');
INSERT INTO `ap_log_action` VALUES (135, 'promotion', 'ưpdate promotion: 1', 1, '2019-11-18 04:56:51');
INSERT INTO `ap_log_action` VALUES (136, 'promotion', 'ưpdate promotion: 1', 1, '2019-11-18 04:57:43');
INSERT INTO `ap_log_action` VALUES (137, 'promotion', 'ưpdate promotion: 1', 1, '2019-11-18 05:11:02');
INSERT INTO `ap_log_action` VALUES (138, 'promotion', 'Insert promotion: 2', 1, '2019-11-18 05:11:22');
INSERT INTO `ap_log_action` VALUES (139, 'promotion', 'ưpdate promotion: 2', 1, '2019-11-18 05:52:34');
INSERT INTO `ap_log_action` VALUES (140, 'promotion', 'ưpdate promotion: 2', 1, '2019-11-18 06:25:27');
INSERT INTO `ap_log_action` VALUES (141, 'product', 'Insert product: 5', 1, '2019-11-19 09:19:24');
INSERT INTO `ap_log_action` VALUES (142, 'product', 'Insert product: 6', 1, '2019-11-19 09:20:01');
INSERT INTO `ap_log_action` VALUES (143, 'product', 'Insert product: 7', 1, '2019-11-19 09:20:26');
INSERT INTO `ap_log_action` VALUES (144, 'property', 'Update property: 1', 1, '2019-11-19 09:20:44');
INSERT INTO `ap_log_action` VALUES (145, 'property', 'Insert property: 0', 1, '2019-11-19 09:20:53');
INSERT INTO `ap_log_action` VALUES (146, 'product', 'Insert product: 8', 1, '2019-11-19 09:21:36');
INSERT INTO `ap_log_action` VALUES (147, 'product', 'Insert product: 9', 1, '2019-11-19 09:22:16');
INSERT INTO `ap_log_action` VALUES (148, 'product', 'Insert product: 10', 1, '2019-11-19 09:22:46');
INSERT INTO `ap_log_action` VALUES (149, 'category', 'Update category: 2', 1, '2019-11-25 04:52:56');
INSERT INTO `ap_log_action` VALUES (150, 'category', 'Update category: 3', 1, '2019-11-25 04:54:11');
INSERT INTO `ap_log_action` VALUES (151, 'category', 'Update category: 4', 1, '2019-11-25 04:55:19');
INSERT INTO `ap_log_action` VALUES (152, 'category', 'Update category: 5', 1, '2019-11-25 04:55:46');
INSERT INTO `ap_log_action` VALUES (153, 'category', 'Update category: 3', 1, '2019-11-26 09:47:05');
INSERT INTO `ap_log_action` VALUES (154, 'product', 'Update product: 9', 1, '2019-11-26 09:48:37');
INSERT INTO `ap_log_action` VALUES (155, 'product', 'Update product: 8', 1, '2019-11-26 09:49:18');
INSERT INTO `ap_log_action` VALUES (156, 'product', 'Update product: 9', 1, '2019-11-26 09:49:27');
INSERT INTO `ap_log_action` VALUES (157, 'product', 'Update product: 7', 1, '2019-11-26 09:49:51');
INSERT INTO `ap_log_action` VALUES (158, 'product', 'Update product: 6', 1, '2019-11-26 09:50:33');
INSERT INTO `ap_log_action` VALUES (159, 'product', 'Update product: 5', 1, '2019-11-26 09:51:05');
INSERT INTO `ap_log_action` VALUES (160, 'product', 'Update product: 2', 1, '2019-11-26 09:51:41');
INSERT INTO `ap_log_action` VALUES (161, 'product', 'Update product: 10', 1, '2019-11-26 09:52:27');
INSERT INTO `ap_log_action` VALUES (162, 'product', 'Update product: 1', 1, '2019-11-26 09:53:09');
INSERT INTO `ap_log_action` VALUES (163, 'product', 'Update product: 1', 1, '2019-11-26 09:53:30');
INSERT INTO `ap_log_action` VALUES (164, 'product', 'Update product: 10', 1, '2019-11-26 09:53:52');
INSERT INTO `ap_log_action` VALUES (165, 'product', 'Update product: 2', 1, '2019-11-26 09:54:05');
INSERT INTO `ap_log_action` VALUES (166, 'product', 'Update product: 5', 1, '2019-11-26 09:54:40');
INSERT INTO `ap_log_action` VALUES (167, 'product', 'Update product: 2', 1, '2019-11-26 09:55:08');
INSERT INTO `ap_log_action` VALUES (168, 'product', 'Update product: 10', 1, '2019-11-26 09:55:37');
INSERT INTO `ap_log_action` VALUES (169, 'product', 'Update product: 1', 1, '2019-11-26 09:55:58');
INSERT INTO `ap_log_action` VALUES (170, 'product', 'Update product: 6', 1, '2019-11-26 09:56:17');
INSERT INTO `ap_log_action` VALUES (171, 'product', 'Insert product: 11', 1, '2019-11-26 09:57:05');
INSERT INTO `ap_log_action` VALUES (172, 'product', 'Insert product: 12', 1, '2019-11-26 09:57:47');
INSERT INTO `ap_log_action` VALUES (173, 'property', 'Insert property: 0', 1, '2019-11-26 09:58:03');
INSERT INTO `ap_log_action` VALUES (174, 'product', 'Insert product: 13', 1, '2019-11-26 09:58:39');
INSERT INTO `ap_log_action` VALUES (175, 'product', 'Insert product: 14', 1, '2019-11-26 09:59:19');
INSERT INTO `ap_log_action` VALUES (176, 'product', 'Update product: 7', 1, '2019-11-26 10:02:36');
INSERT INTO `ap_log_action` VALUES (177, 'post', 'Update post: 2', 1, '2019-11-26 10:30:12');
INSERT INTO `ap_log_action` VALUES (178, 'post', 'Update post: 2', 1, '2019-11-26 10:30:34');
INSERT INTO `ap_log_action` VALUES (179, 'post', 'Insert post: 5', 1, '2019-11-26 10:32:45');
INSERT INTO `ap_log_action` VALUES (180, 'category', 'Update category: 1', 1, '2019-11-26 10:35:50');
INSERT INTO `ap_log_action` VALUES (181, 'system_menu', 'Insert system_menu: 118', 1, '2019-11-28 02:48:34');
INSERT INTO `ap_log_action` VALUES (182, 'transport', 'Insert transport: 31', 1, '2019-11-30 09:53:49');
INSERT INTO `ap_log_action` VALUES (183, 'category', 'Update category: 4', 1, '2019-12-05 09:45:24');
INSERT INTO `ap_log_action` VALUES (184, 'promotion', 'ưpdate promotion: 2', 1, '2019-12-05 11:32:11');
INSERT INTO `ap_log_action` VALUES (185, 'post', 'Update post: 5', 1, '2019-12-05 11:32:31');
INSERT INTO `ap_log_action` VALUES (186, 'system_menu', 'Update system_menu: 69', 1, '2019-12-05 02:27:52');
INSERT INTO `ap_log_action` VALUES (187, 'system_menu', 'Update system_menu: 90', 1, '2019-12-05 02:28:22');
INSERT INTO `ap_log_action` VALUES (188, 'system_menu', 'Update system_menu: 91', 1, '2019-12-05 02:28:35');
INSERT INTO `ap_log_action` VALUES (189, 'system_menu', 'Update system_menu: 109', 1, '2019-12-05 02:29:04');
INSERT INTO `ap_log_action` VALUES (190, 'system_menu', 'Update system_menu: 115', 1, '2019-12-05 02:29:28');
INSERT INTO `ap_log_action` VALUES (191, 'system_menu', 'Update system_menu: 114', 1, '2019-12-05 02:30:15');
INSERT INTO `ap_log_action` VALUES (192, 'system_menu', 'Update system_menu: 87', 1, '2019-12-05 02:30:29');
INSERT INTO `ap_log_action` VALUES (193, 'system_menu', 'Insert system_menu: 119', 1, '2019-12-05 02:30:57');
INSERT INTO `ap_log_action` VALUES (194, 'system_menu', 'Insert system_menu: 120', 1, '2019-12-05 02:32:32');
INSERT INTO `ap_log_action` VALUES (195, 'system_menu', 'Update system_menu: 119', 1, '2019-12-05 02:32:46');
INSERT INTO `ap_log_action` VALUES (196, 'system_menu', 'Insert system_menu: 121', 1, '2019-12-05 02:33:25');
INSERT INTO `ap_log_action` VALUES (197, 'groups', 'Insert groups: 3', 1, '2019-12-05 03:22:46');
INSERT INTO `ap_log_action` VALUES (198, 'groups', 'Update groups: 3', 1, '2019-12-05 03:24:42');
INSERT INTO `ap_log_action` VALUES (199, 'groups', 'Update groups: 3', 1, '2019-12-05 03:25:00');
INSERT INTO `ap_log_action` VALUES (200, 'groups', 'Update groups: 3', 1, '2019-12-05 03:25:50');
INSERT INTO `ap_log_action` VALUES (201, 'groups', 'Update groups: 3', 1, '2019-12-05 03:26:44');
INSERT INTO `ap_log_action` VALUES (202, 'groups', 'Insert groups: 4', 1, '2019-12-05 03:26:54');
INSERT INTO `ap_log_action` VALUES (203, 'groups', 'Insert groups: 5', 1, '2019-12-05 03:27:01');
INSERT INTO `ap_log_action` VALUES (204, 'groups', 'Update groups: 5', 1, '2019-12-05 03:27:11');
INSERT INTO `ap_log_action` VALUES (205, 'groups', 'Update groups: 4', 1, '2019-12-05 03:27:12');
INSERT INTO `ap_log_action` VALUES (206, 'users', 'Insert users: 0', 1, '2019-12-05 05:26:17');
INSERT INTO `ap_log_action` VALUES (207, 'account', 'Update account: 6', 1, '2019-12-06 09:52:41');
INSERT INTO `ap_log_action` VALUES (208, 'account', 'Insert account: 7', 1, '2019-12-06 10:08:26');
INSERT INTO `ap_log_action` VALUES (209, 'account', 'Update account: 7', 1, '2019-12-06 10:08:42');
INSERT INTO `ap_log_action` VALUES (210, 'account', 'Update account: 7', 1, '2019-12-06 10:08:54');
INSERT INTO `ap_log_action` VALUES (211, 'users', 'Update users: 2', 1, '2019-12-06 02:38:58');
INSERT INTO `ap_log_action` VALUES (212, 'groups', 'Update groups: 1', 1, '2019-12-06 02:49:50');
INSERT INTO `ap_log_action` VALUES (213, 'system_menu', 'Update system_menu: 119', 1, '2019-12-06 02:51:39');
INSERT INTO `ap_log_action` VALUES (214, 'banner', 'Sửa Banner có id là 1', 1, '2019-12-06 02:59:37');
INSERT INTO `ap_log_action` VALUES (215, 'recruit', 'Thêm cửa hàng có id là 7', 1, '2019-12-06 03:00:23');
INSERT INTO `ap_log_action` VALUES (216, 'recruit', 'Thêm cửa hàng có id là 9', 1, '2019-12-06 03:03:45');
INSERT INTO `ap_log_action` VALUES (217, 'banner', 'Sửa Banner có id là 9', 1, '2019-12-06 03:04:32');
INSERT INTO `ap_log_action` VALUES (218, 'banner', 'Sửa Banner có id là 9', 1, '2019-12-06 03:04:37');
INSERT INTO `ap_log_action` VALUES (219, 'banner', 'Sửa Banner có id là 7', 1, '2019-12-06 03:04:43');
INSERT INTO `ap_log_action` VALUES (220, 'banner', 'Sửa Banner có id là 1', 1, '2019-12-06 03:54:50');
INSERT INTO `ap_log_action` VALUES (221, 'banner', 'Sửa Banner có id là 1', 1, '2019-12-06 04:12:07');
INSERT INTO `ap_log_action` VALUES (222, 'banner', 'Sửa Banner có id là 9', 1, '2019-12-06 04:44:16');
INSERT INTO `ap_log_action` VALUES (223, 'banner', 'Sửa Banner có id là 7', 1, '2019-12-06 04:44:26');
INSERT INTO `ap_log_action` VALUES (224, 'banner', 'Sửa Banner có id là 1', 1, '2019-12-06 04:44:35');
INSERT INTO `ap_log_action` VALUES (225, 'category', 'Update category: 8', 1, '2019-12-06 05:40:18');
INSERT INTO `ap_log_action` VALUES (226, 'category', 'Update category: 7', 1, '2019-12-06 05:40:20');
INSERT INTO `ap_log_action` VALUES (227, 'category', 'Update category: 6', 1, '2019-12-06 05:40:22');
INSERT INTO `ap_log_action` VALUES (228, 'category', 'Insert category: 10', 1, '2019-12-06 05:41:27');
INSERT INTO `ap_log_action` VALUES (229, 'question', 'Update question: 1', 1, '2019-12-06 05:46:50');
INSERT INTO `ap_log_action` VALUES (230, 'post', 'Update post: 5', 1, '2019-12-09 09:32:54');
INSERT INTO `ap_log_action` VALUES (231, 'post', 'Update post: 5', 1, '2019-12-09 09:36:48');
INSERT INTO `ap_log_action` VALUES (232, 'post', 'Update post: 4', 1, '2019-12-09 09:38:20');
INSERT INTO `ap_log_action` VALUES (233, 'category', 'Update category: 10', 1, '2019-12-09 10:18:36');
INSERT INTO `ap_log_action` VALUES (234, 'category', 'Insert category: 11', 1, '2019-12-09 10:18:53');
INSERT INTO `ap_log_action` VALUES (235, 'question', 'Update question: 1', 1, '2019-12-09 10:19:12');
INSERT INTO `ap_log_action` VALUES (236, 'question', 'Insert question: 2', 1, '2019-12-09 10:19:19');
INSERT INTO `ap_log_action` VALUES (237, 'question', 'Insert question: 3', 1, '2019-12-09 10:19:28');
INSERT INTO `ap_log_action` VALUES (238, 'question', 'Update question: 2', 1, '2019-12-09 10:19:34');
INSERT INTO `ap_log_action` VALUES (239, 'question', 'Insert question: 4', 1, '2019-12-09 10:20:40');
INSERT INTO `ap_log_action` VALUES (240, 'question', 'Insert question: 5', 1, '2019-12-09 10:20:47');
INSERT INTO `ap_log_action` VALUES (241, 'category', 'Insert category: 12', 1, '2019-12-09 11:45:49');
INSERT INTO `ap_log_action` VALUES (242, 'category', 'Update category: 12', 1, '2019-12-09 11:47:59');
INSERT INTO `ap_log_action` VALUES (243, 'category', 'Insert category: 13', 1, '2019-12-09 11:48:31');
INSERT INTO `ap_log_action` VALUES (244, 'category', 'Update category: 13', 1, '2019-12-09 11:49:50');
INSERT INTO `ap_log_action` VALUES (245, 'post', 'Update post: 5', 1, '2019-12-09 03:28:55');
INSERT INTO `ap_log_action` VALUES (246, 'post', 'Update post: 2', 1, '2019-12-09 03:31:40');
INSERT INTO `ap_log_action` VALUES (247, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (248, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (249, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (250, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (251, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (252, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (253, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (254, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (255, 'system_menu', 'Delete system_menu: 73', 1, '2020-02-13 03:13:54');
INSERT INTO `ap_log_action` VALUES (256, 'system_menu', 'Delete system_menu: 95', 1, '2020-02-13 03:13:59');
INSERT INTO `ap_log_action` VALUES (257, 'system_menu', 'Delete system_menu: 95', 1, '2020-02-13 03:13:59');
INSERT INTO `ap_log_action` VALUES (258, 'system_menu', 'Delete system_menu: 119', 1, '2020-02-13 03:14:03');
INSERT INTO `ap_log_action` VALUES (259, 'system_menu', 'Delete system_menu: 119', 1, '2020-02-13 03:14:03');
INSERT INTO `ap_log_action` VALUES (260, 'system_menu', 'Delete system_menu: 119', 1, '2020-02-13 03:14:03');
INSERT INTO `ap_log_action` VALUES (261, 'system_menu', 'Delete system_menu: 88', 1, '2020-02-13 03:14:06');
INSERT INTO `ap_log_action` VALUES (262, 'system_menu', 'Delete system_menu: 92', 1, '2020-02-13 03:14:19');
INSERT INTO `ap_log_action` VALUES (263, 'system_menu', 'Delete system_menu: 92', 1, '2020-02-13 03:14:19');
INSERT INTO `ap_log_action` VALUES (264, 'system_menu', 'Delete system_menu: 92', 1, '2020-02-13 03:14:19');
INSERT INTO `ap_log_action` VALUES (265, 'system_menu', 'Delete system_menu: 92', 1, '2020-02-13 03:14:19');
INSERT INTO `ap_log_action` VALUES (266, 'system_menu', 'Update system_menu: 128', 1, '2020-02-13 03:43:21');
INSERT INTO `ap_log_action` VALUES (267, 'system_menu', 'Update system_menu: 130', 1, '2020-02-13 03:43:51');
INSERT INTO `ap_log_action` VALUES (268, 'category', 'Update category: 5', 1, '2020-02-13 03:53:41');
INSERT INTO `ap_log_action` VALUES (269, 'category', 'Update category: 5', 1, '2020-02-13 03:53:59');
INSERT INTO `ap_log_action` VALUES (270, 'category', 'Update category: 5', 1, '2020-02-13 03:54:07');
INSERT INTO `ap_log_action` VALUES (271, 'post', 'Update post: 4', 1, '2020-02-13 03:59:40');
INSERT INTO `ap_log_action` VALUES (272, 'post', 'Update post: 3', 1, '2020-02-13 03:59:44');
INSERT INTO `ap_log_action` VALUES (273, 'category', 'Insert category: 14', 1, '2020-02-13 04:17:06');
INSERT INTO `ap_log_action` VALUES (274, 'category', 'Update category: 12', 1, '2020-02-13 04:17:12');
INSERT INTO `ap_log_action` VALUES (275, 'category', 'Update category: 13', 1, '2020-02-13 04:17:16');
INSERT INTO `ap_log_action` VALUES (276, 'product', 'Insert product: 1', 1, '2020-02-13 05:12:30');
INSERT INTO `ap_log_action` VALUES (277, 'product', 'Update product: 1', 1, '2020-02-13 05:12:49');
INSERT INTO `ap_log_action` VALUES (278, 'category', 'Insert category: 15', 1, '2020-02-13 05:18:29');
INSERT INTO `ap_log_action` VALUES (279, 'pro_service', 'Update pro_service: 1', 1, '2020-02-13 05:51:04');
INSERT INTO `ap_log_action` VALUES (280, 'pro_service', 'Insert pro_service: 2', 1, '2020-02-13 05:51:22');
INSERT INTO `ap_log_action` VALUES (281, 'pro_service', 'Update pro_service: 1', 1, '2020-02-13 05:51:34');
INSERT INTO `ap_log_action` VALUES (282, 'category', 'Insert category: 16', 1, '2020-02-14 11:50:39');
INSERT INTO `ap_log_action` VALUES (283, 'category', 'Insert category: 17', 1, '2020-02-14 11:50:50');
INSERT INTO `ap_log_action` VALUES (284, 'project', 'Insert project: 0', 1, '2020-02-14 12:03:08');
INSERT INTO `ap_log_action` VALUES (285, 'project', 'Update project: 1', 1, '2020-02-14 12:03:24');
INSERT INTO `ap_log_action` VALUES (286, 'project', 'Update project: 1', 1, '2020-02-14 01:34:20');
INSERT INTO `ap_log_action` VALUES (287, 'project', 'Insert project: 0', 1, '2020-02-14 01:34:51');
INSERT INTO `ap_log_action` VALUES (288, 'category', 'Update category: 5', 1, '2020-02-14 02:01:25');
INSERT INTO `ap_log_action` VALUES (289, 'category', 'Update category: 5', 1, '2020-02-14 02:02:32');
INSERT INTO `ap_log_action` VALUES (290, 'category', 'Update category: 5', 1, '2020-02-14 02:07:49');
INSERT INTO `ap_log_action` VALUES (291, 'pro_service', 'Update pro_service: 1', 1, '2020-02-14 02:12:30');
INSERT INTO `ap_log_action` VALUES (292, 'pro_service', 'Update pro_service: 1', 1, '2020-02-14 02:12:57');
INSERT INTO `ap_log_action` VALUES (293, 'pro_service', 'Update pro_service: 1', 1, '2020-02-14 02:17:16');
INSERT INTO `ap_log_action` VALUES (294, 'pro_service', 'Update pro_service: 1', 1, '2020-02-14 02:17:24');
INSERT INTO `ap_log_action` VALUES (295, 'page', 'Update page: 14', 1, '2020-02-14 02:22:56');
INSERT INTO `ap_log_action` VALUES (296, 'pro_service', 'Update pro_service: 1', 1, '2020-02-14 02:28:44');
INSERT INTO `ap_log_action` VALUES (297, 'project', 'Update project: 1', 1, '2020-02-14 02:32:27');
INSERT INTO `ap_log_action` VALUES (298, 'project', 'Update project: 1', 1, '2020-02-14 02:34:42');
INSERT INTO `ap_log_action` VALUES (299, 'project', 'Update project: 1', 1, '2020-02-14 02:37:52');
INSERT INTO `ap_log_action` VALUES (300, 'property', 'Insert property: 0', 1, '2020-02-14 02:40:13');
INSERT INTO `ap_log_action` VALUES (301, 'career', 'Insert career: 2', 1, '2020-02-14 02:48:37');
INSERT INTO `ap_log_action` VALUES (302, 'career', 'Update career: 2', 1, '2020-02-14 02:49:54');
INSERT INTO `ap_log_action` VALUES (303, 'category', 'Insert category: 18', 1, '2020-02-14 02:52:06');
INSERT INTO `ap_log_action` VALUES (304, 'property', 'Insert property: 0', 1, '2020-02-14 02:54:29');
INSERT INTO `ap_log_action` VALUES (305, 'property', 'Update property: 9', 1, '2020-02-14 02:55:32');
INSERT INTO `ap_log_action` VALUES (306, 'property', 'Update property: 9', 1, '2020-02-14 02:57:47');
INSERT INTO `ap_log_action` VALUES (307, 'post', 'Update post: 3', 1, '2020-02-14 03:04:28');
INSERT INTO `ap_log_action` VALUES (308, 'post', 'Update post: 4', 1, '2020-02-14 03:04:34');
INSERT INTO `ap_log_action` VALUES (309, 'page', 'Insert page: 0', 1, '2020-02-14 03:14:21');
INSERT INTO `ap_log_action` VALUES (310, 'post', 'Thêm Banner có id là 1', 1, '2020-02-14 04:45:35');
INSERT INTO `ap_log_action` VALUES (311, 'banner', 'Sửa Banner có id là 1', 1, '2020-02-14 05:24:55');
INSERT INTO `ap_log_action` VALUES (312, 'groups', 'Insert groups: 3', 1, '2020-02-17 11:07:28');
INSERT INTO `ap_log_action` VALUES (313, 'groups', 'Update groups: 3', 1, '2020-02-17 11:07:42');
INSERT INTO `ap_log_action` VALUES (314, 'groups', 'Update groups: 3', 1, '2020-02-17 11:07:46');
INSERT INTO `ap_log_action` VALUES (315, 'groups', 'Insert groups: 4', 1, '2020-02-17 02:02:02');
INSERT INTO `ap_log_action` VALUES (316, 'property', 'Update property: 9', 1, '2020-02-17 02:03:09');
INSERT INTO `ap_log_action` VALUES (317, 'property', 'Update property: 10', 1, '2020-02-17 02:03:09');
INSERT INTO `ap_log_action` VALUES (318, 'groups', 'Insert groups: 5', 1, '2020-02-17 02:07:58');
INSERT INTO `ap_log_action` VALUES (319, 'property', 'Insert property: 0', 1, '2020-02-17 02:08:20');
INSERT INTO `ap_log_action` VALUES (320, 'groups', 'Insert groups: 6', 1, '2020-02-17 02:08:20');
INSERT INTO `ap_log_action` VALUES (321, 'groups', 'Insert groups: 7', 1, '2020-02-17 02:08:58');
INSERT INTO `ap_log_action` VALUES (322, 'groups', 'Insert groups: 8', 1, '2020-02-17 02:12:05');
INSERT INTO `ap_log_action` VALUES (323, 'groups', 'Update groups: 8', 1, '2020-02-17 02:12:39');
INSERT INTO `ap_log_action` VALUES (324, 'groups', 'Update groups: 4', 1, '2020-02-17 02:16:08');
INSERT INTO `ap_log_action` VALUES (325, 'groups', 'Update groups: 4', 1, '2020-02-17 02:16:25');
INSERT INTO `ap_log_action` VALUES (326, 'groups', 'Update groups: 4', 1, '2020-02-17 02:16:40');
INSERT INTO `ap_log_action` VALUES (327, 'groups', 'Update groups: 4', 1, '2020-02-17 02:17:36');
INSERT INTO `ap_log_action` VALUES (328, 'groups', 'Update groups: 4', 1, '2020-02-17 02:17:47');
INSERT INTO `ap_log_action` VALUES (329, 'groups', 'Update groups: 4', 1, '2020-02-17 02:18:01');
INSERT INTO `ap_log_action` VALUES (330, 'groups', 'Insert groups: 9', 1, '2020-02-17 02:19:46');
INSERT INTO `ap_log_action` VALUES (331, 'groups', 'Update groups: 6', 1, '2020-02-17 02:19:53');
INSERT INTO `ap_log_action` VALUES (332, 'groups', 'Insert groups: 10', 1, '2020-02-17 02:20:02');
INSERT INTO `ap_log_action` VALUES (333, 'groups', 'Insert groups: 11', 1, '2020-02-17 02:20:17');
INSERT INTO `ap_log_action` VALUES (334, 'groups', 'Insert groups: 12', 1, '2020-02-17 02:20:27');
INSERT INTO `ap_log_action` VALUES (335, 'groups', 'Update groups: 6', 1, '2020-02-17 02:21:06');
INSERT INTO `ap_log_action` VALUES (336, 'groups', 'Update groups: 12', 1, '2020-02-17 02:21:19');
INSERT INTO `ap_log_action` VALUES (337, 'groups', 'Insert groups: 13', 1, '2020-02-17 02:25:58');
INSERT INTO `ap_log_action` VALUES (338, 'groups', 'Update groups: 13', 1, '2020-02-17 02:26:28');
INSERT INTO `ap_log_action` VALUES (339, 'groups', 'Update groups: 13', 1, '2020-02-17 02:26:45');
INSERT INTO `ap_log_action` VALUES (340, 'groups', 'Update groups: 13', 1, '2020-02-17 02:27:00');
INSERT INTO `ap_log_action` VALUES (341, 'groups', 'Update groups: 13', 1, '2020-02-17 02:27:10');
INSERT INTO `ap_log_action` VALUES (342, 'groups', 'Update groups: 13', 1, '2020-02-17 02:27:26');
INSERT INTO `ap_log_action` VALUES (343, 'groups', 'Update groups: 13', 1, '2020-02-17 02:27:39');
INSERT INTO `ap_log_action` VALUES (344, 'groups', 'Update groups: 13', 1, '2020-02-17 02:27:48');
INSERT INTO `ap_log_action` VALUES (345, 'groups', 'Update groups: 13', 1, '2020-02-17 02:28:22');
INSERT INTO `ap_log_action` VALUES (346, 'groups', 'Update groups: 13', 1, '2020-02-17 02:30:17');
INSERT INTO `ap_log_action` VALUES (347, 'groups', 'Update groups: 8', 1, '2020-02-17 02:31:20');
INSERT INTO `ap_log_action` VALUES (348, 'groups', 'Update groups: 7', 1, '2020-02-17 02:31:20');
INSERT INTO `ap_log_action` VALUES (349, 'groups', 'Insert groups: 14', 1, '2020-02-17 02:39:51');
INSERT INTO `ap_log_action` VALUES (350, 'property', 'Update property: 11', 1, '2020-02-17 02:40:21');
INSERT INTO `ap_log_action` VALUES (351, 'groups', 'Update groups: 14', 1, '2020-02-17 02:43:13');
INSERT INTO `ap_log_action` VALUES (352, 'groups', 'Insert groups: 15', 1, '2020-02-17 02:45:14');
INSERT INTO `ap_log_action` VALUES (353, 'groups', 'Insert groups: 16', 1, '2020-02-17 02:45:31');
INSERT INTO `ap_log_action` VALUES (354, 'groups', 'Insert groups: 17', 1, '2020-02-17 02:45:52');
INSERT INTO `ap_log_action` VALUES (355, 'groups', 'Insert groups: 18', 1, '2020-02-17 02:46:13');
INSERT INTO `ap_log_action` VALUES (356, 'groups', 'Update groups: 16', 1, '2020-02-17 02:48:13');
INSERT INTO `ap_log_action` VALUES (357, 'property', 'Update property: 11', 1, '2020-02-17 02:48:40');
INSERT INTO `ap_log_action` VALUES (358, 'property', 'Insert property: 0', 1, '2020-02-17 02:49:09');
INSERT INTO `ap_log_action` VALUES (359, 'property', 'Update property: 12', 1, '2020-02-17 03:03:50');
INSERT INTO `ap_log_action` VALUES (360, 'property', 'Update property: 12', 1, '2020-02-17 03:04:15');
INSERT INTO `ap_log_action` VALUES (361, 'property', 'Update property: 12', 1, '2020-02-17 03:05:01');
INSERT INTO `ap_log_action` VALUES (362, 'property', 'Update property: 12', 1, '2020-02-17 03:05:34');
INSERT INTO `ap_log_action` VALUES (363, 'property', 'Update property: 12', 1, '2020-02-17 03:05:45');
INSERT INTO `ap_log_action` VALUES (364, 'groups', 'Update groups: 18', 1, '2020-02-17 03:18:30');
INSERT INTO `ap_log_action` VALUES (365, 'groups', 'Update groups: 17', 1, '2020-02-17 03:18:30');
INSERT INTO `ap_log_action` VALUES (366, 'groups', 'Update groups: 16', 1, '2020-02-17 03:18:30');
INSERT INTO `ap_log_action` VALUES (367, 'groups', 'Update groups: 15', 1, '2020-02-17 03:18:40');
INSERT INTO `ap_log_action` VALUES (368, 'groups', 'Update groups: 14', 1, '2020-02-17 03:18:40');
INSERT INTO `ap_log_action` VALUES (369, 'groups', 'Update groups: 11', 1, '2020-02-17 03:18:41');
INSERT INTO `ap_log_action` VALUES (370, 'groups', 'Update groups: 10', 1, '2020-02-17 03:18:41');
INSERT INTO `ap_log_action` VALUES (371, 'groups', 'Update groups: 9', 1, '2020-02-17 03:18:41');
INSERT INTO `ap_log_action` VALUES (372, 'groups', 'Update groups: 6', 1, '2020-02-17 03:18:41');
INSERT INTO `ap_log_action` VALUES (373, 'groups', 'Update groups: 5', 1, '2020-02-17 03:18:53');
INSERT INTO `ap_log_action` VALUES (374, 'groups', 'Update groups: 5', 1, '2020-02-17 03:22:45');
INSERT INTO `ap_log_action` VALUES (375, 'groups', 'Update groups: 4', 1, '2020-02-17 03:23:54');
INSERT INTO `ap_log_action` VALUES (376, 'users', 'Update users: 3', 1, '2020-02-17 03:45:42');
INSERT INTO `ap_log_action` VALUES (377, 'users', 'Update users: 1', 1, '2020-02-17 03:52:14');
INSERT INTO `ap_log_action` VALUES (378, 'users', 'Update users: 1', 1, '2020-02-17 03:52:44');
INSERT INTO `ap_log_action` VALUES (379, 'users', 'Update users: 1', 1, '2020-02-17 03:52:57');
INSERT INTO `ap_log_action` VALUES (380, 'users', 'Insert users: 0', 1, '2020-02-17 03:54:24');
INSERT INTO `ap_log_action` VALUES (381, 'users', 'Insert users: 0', 1, '2020-02-17 03:55:41');
INSERT INTO `ap_log_action` VALUES (382, 'users', 'delete users: 5', 1, '2020-02-17 03:56:02');
INSERT INTO `ap_log_action` VALUES (383, 'category', 'Insert category: 19', 1, '2020-02-17 03:59:40');
INSERT INTO `ap_log_action` VALUES (384, 'users', 'Insert users: 0', 1, '2020-02-17 04:00:43');
INSERT INTO `ap_log_action` VALUES (385, 'users', 'Update users: 6', 1, '2020-02-17 04:01:07');
INSERT INTO `ap_log_action` VALUES (386, 'category', 'Update category: 19', 1, '2020-02-17 04:02:25');
INSERT INTO `ap_log_action` VALUES (387, 'category', 'Update category: 18', 1, '2020-02-17 04:03:32');
INSERT INTO `ap_log_action` VALUES (388, 'users', 'Insert users: 0', 1, '2020-02-17 04:07:04');
INSERT INTO `ap_log_action` VALUES (389, 'users', 'Insert users: 0', 1, '2020-02-17 04:07:58');
INSERT INTO `ap_log_action` VALUES (390, 'users', 'Insert users: 0', 1, '2020-02-17 04:09:34');
INSERT INTO `ap_log_action` VALUES (391, 'users', 'Insert users: 0', 1, '2020-02-17 04:10:13');
INSERT INTO `ap_log_action` VALUES (392, 'users', 'Insert users: 0', 1, '2020-02-17 04:11:21');
INSERT INTO `ap_log_action` VALUES (393, 'users', 'Insert users: 0', 1, '2020-02-17 04:11:56');
INSERT INTO `ap_log_action` VALUES (394, 'users', 'delete users: 12', 1, '2020-02-17 04:12:36');
INSERT INTO `ap_log_action` VALUES (395, 'users', 'delete users: 10', 1, '2020-02-17 04:12:46');
INSERT INTO `ap_log_action` VALUES (396, 'users', 'delete users: 9', 1, '2020-02-17 04:12:46');
INSERT INTO `ap_log_action` VALUES (397, 'users', 'Update users: 6', 1, '2020-02-17 04:25:34');
INSERT INTO `ap_log_action` VALUES (398, 'users', 'Update users: 6', 1, '2020-02-17 04:25:42');
INSERT INTO `ap_log_action` VALUES (399, 'users', 'Update users: 6', 1, '2020-02-17 04:26:09');
INSERT INTO `ap_log_action` VALUES (400, 'users', 'Update users: 6', 1, '2020-02-17 04:26:15');
INSERT INTO `ap_log_action` VALUES (401, 'users', 'Update users: 6', 1, '2020-02-17 04:26:22');
INSERT INTO `ap_log_action` VALUES (402, 'users', 'Update users: 6', 1, '2020-02-17 04:27:54');
INSERT INTO `ap_log_action` VALUES (403, 'users', 'Update users: 11', 1, '2020-02-17 04:30:07');
INSERT INTO `ap_log_action` VALUES (404, 'users', 'Update users: 11', 1, '2020-02-17 04:30:20');
INSERT INTO `ap_log_action` VALUES (405, 'users', 'Update users: 11', 1, '2020-02-17 04:30:32');
INSERT INTO `ap_log_action` VALUES (406, 'users', 'Update users: 11', 1, '2020-02-17 04:30:50');
INSERT INTO `ap_log_action` VALUES (407, 'users', 'Update users: 8', 1, '2020-02-17 04:31:06');
INSERT INTO `ap_log_action` VALUES (408, 'users', 'Update users: 8', 1, '2020-02-17 04:31:31');
INSERT INTO `ap_log_action` VALUES (409, 'users', 'delete users: 8', 1, '2020-02-17 04:31:46');
INSERT INTO `ap_log_action` VALUES (410, 'users', 'delete users: 11', 1, '2020-02-17 04:31:48');
INSERT INTO `ap_log_action` VALUES (411, 'users', 'Update users: 7', 1, '2020-02-17 04:36:57');
INSERT INTO `ap_log_action` VALUES (412, 'users', 'delete users: 7', 1, '2020-02-17 04:46:32');
INSERT INTO `ap_log_action` VALUES (413, 'users', 'delete users: 6', 1, '2020-02-17 04:46:32');
INSERT INTO `ap_log_action` VALUES (414, 'users', 'delete users: 4', 1, '2020-02-17 04:46:32');
INSERT INTO `ap_log_action` VALUES (415, 'career', 'Insert career: 5', 1, '2020-02-18 09:19:09');
INSERT INTO `ap_log_action` VALUES (416, 'career', 'Update career: 4', 1, '2020-02-18 09:20:48');
INSERT INTO `ap_log_action` VALUES (417, 'career', 'Update career: 3', 1, '2020-02-18 09:20:51');
INSERT INTO `ap_log_action` VALUES (418, 'property', 'Insert property: 0', 1, '2020-02-18 09:23:24');
INSERT INTO `ap_log_action` VALUES (419, 'property', 'Insert property: 0', 1, '2020-02-18 09:23:50');
INSERT INTO `ap_log_action` VALUES (420, 'career', 'Update career: 5', 1, '2020-02-18 09:24:21');
INSERT INTO `ap_log_action` VALUES (421, 'category', 'Insert category: 20', 1, '2020-02-18 09:28:40');
INSERT INTO `ap_log_action` VALUES (422, 'category', 'Insert category: 21', 1, '2020-02-18 09:28:53');
INSERT INTO `ap_log_action` VALUES (423, 'category', 'Update category: 6', 1, '2020-02-18 09:29:31');
INSERT INTO `ap_log_action` VALUES (424, 'category', 'Update category: 9', 1, '2020-02-18 09:29:57');
INSERT INTO `ap_log_action` VALUES (425, 'category', 'Update category: 9', 1, '2020-02-18 09:30:11');
INSERT INTO `ap_log_action` VALUES (426, 'category', 'Update category: 9', 1, '2020-02-18 09:30:21');
INSERT INTO `ap_log_action` VALUES (427, 'category', 'Insert category: 22', 1, '2020-02-18 09:33:00');
INSERT INTO `ap_log_action` VALUES (428, 'category', 'Insert category: 23', 1, '2020-02-18 09:34:03');
INSERT INTO `ap_log_action` VALUES (429, 'category', 'Insert category: 24', 1, '2020-02-18 09:36:29');
INSERT INTO `ap_log_action` VALUES (430, 'category', 'Insert category: 25', 1, '2020-02-18 09:38:47');
INSERT INTO `ap_log_action` VALUES (431, 'category', 'Update category: 25', 1, '2020-02-18 09:39:33');
INSERT INTO `ap_log_action` VALUES (432, 'career', 'Update career: 2', 1, '2020-02-18 09:45:03');
INSERT INTO `ap_log_action` VALUES (433, 'category', 'Insert category: 26', 1, '2020-02-18 09:48:37');
INSERT INTO `ap_log_action` VALUES (434, 'category', 'Insert category: 27', 1, '2020-02-18 09:48:42');
INSERT INTO `ap_log_action` VALUES (435, 'category', 'Insert category: 28', 1, '2020-02-18 09:49:10');
INSERT INTO `ap_log_action` VALUES (436, 'category', 'Update category: 28', 1, '2020-02-18 09:56:57');
INSERT INTO `ap_log_action` VALUES (437, 'post', 'Update post: 4', 1, '2020-02-18 10:01:46');
INSERT INTO `ap_log_action` VALUES (438, 'category', 'Update category: 28', 1, '2020-02-18 10:02:35');
INSERT INTO `ap_log_action` VALUES (439, 'category', 'Update category: 25', 1, '2020-02-18 10:02:41');
INSERT INTO `ap_log_action` VALUES (440, 'category', 'Update category: 24', 1, '2020-02-18 10:02:41');
INSERT INTO `ap_log_action` VALUES (441, 'category', 'Update category: 26', 1, '2020-02-18 10:03:10');
INSERT INTO `ap_log_action` VALUES (442, 'category', 'Insert category: 29', 1, '2020-02-18 10:04:47');
INSERT INTO `ap_log_action` VALUES (443, 'category', 'Update category: 29', 1, '2020-02-18 10:06:16');
INSERT INTO `ap_log_action` VALUES (444, 'category', 'Insert category: 30', 1, '2020-02-18 10:17:21');
INSERT INTO `ap_log_action` VALUES (445, 'category', 'Update category: 30', 1, '2020-02-18 10:21:12');
INSERT INTO `ap_log_action` VALUES (446, 'category', 'Update category: 30', 1, '2020-02-18 10:22:45');
INSERT INTO `ap_log_action` VALUES (447, 'category', 'Update category: 30', 1, '2020-02-18 10:26:58');
INSERT INTO `ap_log_action` VALUES (448, 'post', 'Insert post: 5', 1, '2020-02-18 10:39:23');
INSERT INTO `ap_log_action` VALUES (449, 'post', 'Update post: 5', 1, '2020-02-18 10:40:13');
INSERT INTO `ap_log_action` VALUES (450, 'post', 'Insert post: 6', 1, '2020-02-18 10:41:11');
INSERT INTO `ap_log_action` VALUES (451, 'post', 'Update post: 4', 1, '2020-02-18 10:50:45');
INSERT INTO `ap_log_action` VALUES (452, 'post', 'Update post: 4', 1, '2020-02-18 10:50:59');
INSERT INTO `ap_log_action` VALUES (453, 'post', 'Update post: 6', 1, '2020-02-18 10:59:34');
INSERT INTO `ap_log_action` VALUES (454, 'post', 'Update post: 4', 1, '2020-02-18 10:59:34');
INSERT INTO `ap_log_action` VALUES (455, 'post', 'Insert post: 7', 1, '2020-02-18 10:59:56');
INSERT INTO `ap_log_action` VALUES (456, 'post', 'Insert post: 8', 1, '2020-02-18 11:00:23');
INSERT INTO `ap_log_action` VALUES (457, 'post', 'Update post: 5', 1, '2020-02-18 11:19:59');
INSERT INTO `ap_log_action` VALUES (458, 'post', 'Insert post: 9', 1, '2020-02-18 11:22:13');
INSERT INTO `ap_log_action` VALUES (459, 'post', 'Update post: 9', 1, '2020-02-18 11:22:31');
INSERT INTO `ap_log_action` VALUES (460, 'post', 'Update post: 9', 1, '2020-02-18 11:22:42');
INSERT INTO `ap_log_action` VALUES (461, 'post', 'Update post: 9', 1, '2020-02-18 11:22:57');
INSERT INTO `ap_log_action` VALUES (462, 'post', 'Update post: 9', 1, '2020-02-18 11:23:07');
INSERT INTO `ap_log_action` VALUES (463, 'post', 'Update post: 9', 1, '2020-02-18 11:23:15');
INSERT INTO `ap_log_action` VALUES (464, 'post', 'Update post: 9', 1, '2020-02-18 11:23:36');
INSERT INTO `ap_log_action` VALUES (465, 'post', 'Update post: 9', 1, '2020-02-18 11:23:45');
INSERT INTO `ap_log_action` VALUES (466, 'post', 'Update post: 9', 1, '2020-02-18 11:24:05');
INSERT INTO `ap_log_action` VALUES (467, 'post', 'Update post: 9', 1, '2020-02-18 11:24:16');
INSERT INTO `ap_log_action` VALUES (468, 'post', 'Insert post: 10', 1, '2020-02-18 11:24:51');
INSERT INTO `ap_log_action` VALUES (469, 'post', 'Update post: 10', 1, '2020-02-18 11:26:17');
INSERT INTO `ap_log_action` VALUES (470, 'post', 'Update post: 10', 1, '2020-02-18 11:26:37');
INSERT INTO `ap_log_action` VALUES (471, 'post', 'Insert post: 11', 1, '2020-02-18 11:39:31');
INSERT INTO `ap_log_action` VALUES (472, 'post', 'Update post: 11', 1, '2020-02-18 11:40:00');
INSERT INTO `ap_log_action` VALUES (473, 'post', 'Update post: 11', 1, '2020-02-18 11:44:17');
INSERT INTO `ap_log_action` VALUES (474, 'career', 'Insert career: 6', 1, '2020-02-18 11:50:51');
INSERT INTO `ap_log_action` VALUES (475, 'post', 'Update post: 11', 1, '2020-02-18 01:44:04');
INSERT INTO `ap_log_action` VALUES (476, 'post', 'Update post: 10', 1, '2020-02-18 01:44:16');
INSERT INTO `ap_log_action` VALUES (477, 'post', 'Update post: 9', 1, '2020-02-18 01:44:17');
INSERT INTO `ap_log_action` VALUES (478, 'post', 'Update post: 8', 1, '2020-02-18 01:44:17');
INSERT INTO `ap_log_action` VALUES (479, 'post', 'Update post: 5', 1, '2020-02-18 01:44:17');
INSERT INTO `ap_log_action` VALUES (480, 'page', 'Update page: 13', 1, '2020-02-18 01:45:12');
INSERT INTO `ap_log_action` VALUES (481, 'page', 'Update page: 13', 1, '2020-02-18 01:45:29');
INSERT INTO `ap_log_action` VALUES (482, 'page', 'Insert page: 0', 1, '2020-02-18 01:46:10');
INSERT INTO `ap_log_action` VALUES (483, 'page', 'Update page: 9', 1, '2020-02-18 01:46:55');
INSERT INTO `ap_log_action` VALUES (484, 'page', 'Update page: 9', 1, '2020-02-18 01:47:07');
INSERT INTO `ap_log_action` VALUES (485, 'page', 'Update page: 16', 1, '2020-02-18 02:03:40');
INSERT INTO `ap_log_action` VALUES (486, 'page', 'Insert page: 0', 1, '2020-02-18 02:17:56');
INSERT INTO `ap_log_action` VALUES (487, 'page', 'Insert page: 0', 1, '2020-02-18 02:18:52');
INSERT INTO `ap_log_action` VALUES (488, 'page', 'Update page: 17', 1, '2020-02-18 02:21:42');
INSERT INTO `ap_log_action` VALUES (489, 'page', 'Update page: 16', 1, '2020-02-18 02:23:38');
INSERT INTO `ap_log_action` VALUES (490, 'page', 'Update page: 18', 1, '2020-02-18 02:23:50');
INSERT INTO `ap_log_action` VALUES (491, 'page', 'Insert page: 0', 1, '2020-02-18 02:24:34');
INSERT INTO `ap_log_action` VALUES (492, 'page', 'Insert page: 0', 1, '2020-02-18 02:28:31');
INSERT INTO `ap_log_action` VALUES (493, 'page', 'Update page: 20', 1, '2020-02-18 02:31:09');
INSERT INTO `ap_log_action` VALUES (494, 'page', 'Update page: 20', 1, '2020-02-18 02:33:51');
INSERT INTO `ap_log_action` VALUES (495, 'page', 'Update page: 19', 1, '2020-02-18 02:37:11');
INSERT INTO `ap_log_action` VALUES (496, 'page', 'Update page: 19', 1, '2020-02-18 02:37:22');
INSERT INTO `ap_log_action` VALUES (497, 'page', 'Update page: 19', 1, '2020-02-18 02:37:32');
INSERT INTO `ap_log_action` VALUES (498, 'page', 'Update page: 19', 1, '2020-02-18 02:37:38');
INSERT INTO `ap_log_action` VALUES (499, 'page', 'Update page: 19', 1, '2020-02-18 02:37:42');
INSERT INTO `ap_log_action` VALUES (500, 'page', 'Update page: 17', 1, '2020-02-18 02:37:44');
INSERT INTO `ap_log_action` VALUES (501, 'contact', 'Update contact: 3', 1, '2020-02-18 03:07:15');
INSERT INTO `ap_log_action` VALUES (502, 'contact', 'Update contact: 5', 1, '2020-02-18 03:07:19');
INSERT INTO `ap_log_action` VALUES (503, 'contact', 'Update contact: 6', 1, '2020-02-18 03:22:10');
INSERT INTO `ap_log_action` VALUES (504, 'category', 'Update category: 29', 1, '2020-02-18 03:32:12');
INSERT INTO `ap_log_action` VALUES (505, 'category', 'Update category: 6', 1, '2020-02-18 03:52:10');
INSERT INTO `ap_log_action` VALUES (506, 'post', 'Thêm Banner có id là 2', 1, '2020-02-18 03:56:18');
INSERT INTO `ap_log_action` VALUES (507, 'category', 'Insert category: 31', 1, '2020-02-18 04:13:04');
INSERT INTO `ap_log_action` VALUES (508, 'category', 'Update category: 31', 1, '2020-02-18 04:15:39');
INSERT INTO `ap_log_action` VALUES (509, 'category', 'Insert category: 32', 1, '2020-02-18 04:16:02');
INSERT INTO `ap_log_action` VALUES (510, 'category', 'Update category: 32', 1, '2020-02-18 04:19:54');
INSERT INTO `ap_log_action` VALUES (511, 'category', 'Insert category: 33', 1, '2020-02-18 04:20:09');
INSERT INTO `ap_log_action` VALUES (512, 'category', 'Update category: 33', 1, '2020-02-18 04:21:04');
INSERT INTO `ap_log_action` VALUES (513, 'category', 'Update category: 27', 1, '2020-02-18 04:40:42');
INSERT INTO `ap_log_action` VALUES (514, 'question', 'Insert question: 6', 1, '2020-02-18 05:23:39');
INSERT INTO `ap_log_action` VALUES (515, 'newsletter', 'Update newsletter: 19', 1, '2020-02-18 05:47:00');
INSERT INTO `ap_log_action` VALUES (516, 'newsletter', 'Update newsletter: 18', 1, '2020-02-18 05:47:00');
INSERT INTO `ap_log_action` VALUES (517, 'newsletter', 'Update newsletter: 17', 1, '2020-02-18 05:47:03');
INSERT INTO `ap_log_action` VALUES (518, 'category', 'Update category: 3', 1, '2020-02-19 09:35:11');
INSERT INTO `ap_log_action` VALUES (519, 'category', 'Insert category: 34', 1, '2020-02-19 09:35:50');
INSERT INTO `ap_log_action` VALUES (520, 'category', 'Insert category: 35', 1, '2020-02-19 09:35:59');
INSERT INTO `ap_log_action` VALUES (521, 'category', 'Insert category: 36', 1, '2020-02-19 09:36:10');
INSERT INTO `ap_log_action` VALUES (522, 'category', 'Insert category: 37', 1, '2020-02-19 09:36:29');
INSERT INTO `ap_log_action` VALUES (523, 'category', 'Insert category: 38', 1, '2020-02-19 09:40:40');
INSERT INTO `ap_log_action` VALUES (524, 'category', 'Update category: 37', 1, '2020-02-19 09:42:15');
INSERT INTO `ap_log_action` VALUES (525, 'category', 'Update category: 37', 1, '2020-02-19 09:42:41');
INSERT INTO `ap_log_action` VALUES (526, 'category', 'Update category: 36', 1, '2020-02-19 09:50:53');
INSERT INTO `ap_log_action` VALUES (527, 'category', 'Insert category: 39', 1, '2020-02-19 09:54:48');
INSERT INTO `ap_log_action` VALUES (528, 'category', 'Insert category: 40', 1, '2020-02-19 09:54:56');
INSERT INTO `ap_log_action` VALUES (529, 'category', 'Insert category: 41', 1, '2020-02-19 09:55:14');
INSERT INTO `ap_log_action` VALUES (530, 'category', 'Update category: 38', 1, '2020-02-19 09:56:49');
INSERT INTO `ap_log_action` VALUES (531, 'category', 'Update category: 39', 1, '2020-02-19 09:57:45');
INSERT INTO `ap_log_action` VALUES (532, 'category', 'Update category: 38', 1, '2020-02-19 09:57:51');
INSERT INTO `ap_log_action` VALUES (533, 'category', 'Insert category: 42', 1, '2020-02-19 09:58:07');
INSERT INTO `ap_log_action` VALUES (534, 'category', 'Update category: 42', 1, '2020-02-19 09:58:17');
INSERT INTO `ap_log_action` VALUES (535, 'pro_service', 'Insert pro_service: 3', 1, '2020-02-19 09:58:49');
INSERT INTO `ap_log_action` VALUES (536, 'category', 'Update category: 41', 1, '2020-02-19 09:58:55');
INSERT INTO `ap_log_action` VALUES (537, 'category', 'Update category: 40', 1, '2020-02-19 09:59:29');
INSERT INTO `ap_log_action` VALUES (538, 'pro_service', 'Update pro_service: 3', 1, '2020-02-19 10:17:12');
INSERT INTO `ap_log_action` VALUES (539, 'category', 'Update category: 34', 1, '2020-02-19 10:17:22');
INSERT INTO `ap_log_action` VALUES (540, 'pro_service', 'Update pro_service: 3', 1, '2020-02-19 10:17:34');
INSERT INTO `ap_log_action` VALUES (541, 'category', 'Update category: 35', 1, '2020-02-19 10:17:43');
INSERT INTO `ap_log_action` VALUES (542, 'category', 'Insert category: 43', 1, '2020-02-19 10:20:57');
INSERT INTO `ap_log_action` VALUES (543, 'category', 'Update category: 43', 1, '2020-02-19 10:21:12');
INSERT INTO `ap_log_action` VALUES (544, 'category', 'Insert category: 44', 1, '2020-02-19 10:35:54');
INSERT INTO `ap_log_action` VALUES (545, 'category', 'Insert category: 45', 1, '2020-02-19 10:39:00');
INSERT INTO `ap_log_action` VALUES (546, 'category', 'Insert category: 46', 1, '2020-02-19 10:43:05');
INSERT INTO `ap_log_action` VALUES (547, 'category', 'Update category: 46', 1, '2020-02-19 10:47:26');
INSERT INTO `ap_log_action` VALUES (548, 'category', 'Update category: 46', 1, '2020-02-19 10:53:38');
INSERT INTO `ap_log_action` VALUES (549, 'category', 'Update category: 46', 1, '2020-02-19 10:54:25');
INSERT INTO `ap_log_action` VALUES (550, 'category', 'Update category: 45', 1, '2020-02-19 10:54:48');
INSERT INTO `ap_log_action` VALUES (551, 'category', 'Update category: 40', 1, '2020-02-19 10:54:53');
INSERT INTO `ap_log_action` VALUES (552, 'pro_service', 'Update pro_service: 2', 1, '2020-02-19 10:56:11');
INSERT INTO `ap_log_action` VALUES (553, 'system_menu', 'Insert system_menu: 136', 1, '2020-02-19 10:56:18');
INSERT INTO `ap_log_action` VALUES (554, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 10:57:08');
INSERT INTO `ap_log_action` VALUES (555, 'pro_service', 'Update pro_service: 1', 1, '2020-02-19 11:00:26');
INSERT INTO `ap_log_action` VALUES (556, 'pro_service', 'Update pro_service: 3', 1, '2020-02-19 11:00:35');
INSERT INTO `ap_log_action` VALUES (557, 'category', 'Update category: 36', 1, '2020-02-19 11:00:56');
INSERT INTO `ap_log_action` VALUES (558, 'pro_service', 'Insert pro_service: 4', 1, '2020-02-19 11:09:28');
INSERT INTO `ap_log_action` VALUES (559, 'pro_service', 'Update pro_service: 4', 1, '2020-02-19 11:10:26');
INSERT INTO `ap_log_action` VALUES (560, 'pro_service', 'Update pro_service: 4', 1, '2020-02-19 11:10:59');
INSERT INTO `ap_log_action` VALUES (561, 'pro_service', 'Update pro_service: 4', 1, '2020-02-19 11:11:27');
INSERT INTO `ap_log_action` VALUES (562, 'pro_service', 'Insert pro_service: 5', 1, '2020-02-19 11:20:47');
INSERT INTO `ap_log_action` VALUES (563, 'pro_service', 'Update pro_service: 2', 1, '2020-02-19 11:21:34');
INSERT INTO `ap_log_action` VALUES (564, 'pro_service', 'Insert pro_service: 6', 1, '2020-02-19 11:22:14');
INSERT INTO `ap_log_action` VALUES (565, 'pro_service', 'Update pro_service: 6', 1, '2020-02-19 11:25:02');
INSERT INTO `ap_log_action` VALUES (566, 'post', 'Thêm Banner có id là 3', 1, '2020-02-19 11:36:24');
INSERT INTO `ap_log_action` VALUES (567, 'pro_service', 'Insert pro_service: 7', 1, '2020-02-19 11:36:32');
INSERT INTO `ap_log_action` VALUES (568, 'pro_service', 'Update pro_service: 4', 1, '2020-02-19 11:37:00');
INSERT INTO `ap_log_action` VALUES (569, 'pro_service', 'Update pro_service: 1', 1, '2020-02-19 11:37:16');
INSERT INTO `ap_log_action` VALUES (570, 'pro_service', 'Update pro_service: 1', 1, '2020-02-19 11:37:36');
INSERT INTO `ap_log_action` VALUES (571, 'pro_service', 'Update pro_service: 5', 1, '2020-02-19 11:38:36');
INSERT INTO `ap_log_action` VALUES (572, 'pro_service', 'Insert pro_service: 8', 1, '2020-02-19 11:46:17');
INSERT INTO `ap_log_action` VALUES (573, 'pro_service', 'Update pro_service: 2', 1, '2020-02-19 01:41:01');
INSERT INTO `ap_log_action` VALUES (574, 'pro_service', 'Update pro_service: 8', 1, '2020-02-19 01:41:08');
INSERT INTO `ap_log_action` VALUES (575, 'pro_service', 'Insert pro_service: 9', 1, '2020-02-19 01:41:30');
INSERT INTO `ap_log_action` VALUES (576, 'pro_service', 'Insert pro_service: 10', 1, '2020-02-19 01:44:02');
INSERT INTO `ap_log_action` VALUES (577, 'pro_service', 'Update pro_service: 9', 1, '2020-02-19 01:44:14');
INSERT INTO `ap_log_action` VALUES (578, 'pro_service', 'Update pro_service: 10', 1, '2020-02-19 01:45:52');
INSERT INTO `ap_log_action` VALUES (579, 'pro_service', 'Insert pro_service: 11', 1, '2020-02-19 01:46:37');
INSERT INTO `ap_log_action` VALUES (580, 'recruit', 'Thêm cửa hàng có id là 10', 1, '2020-02-19 01:46:37');
INSERT INTO `ap_log_action` VALUES (581, 'banner', 'Sửa Banner có id là 10', 1, '2020-02-19 01:46:52');
INSERT INTO `ap_log_action` VALUES (582, 'recruit', 'Thêm cửa hàng có id là 11', 1, '2020-02-19 01:47:28');
INSERT INTO `ap_log_action` VALUES (583, 'pro_service', 'Insert pro_service: 12', 1, '2020-02-19 01:48:11');
INSERT INTO `ap_log_action` VALUES (584, 'pro_service', 'Update pro_service: 12', 1, '2020-02-19 01:48:42');
INSERT INTO `ap_log_action` VALUES (585, 'pro_service', 'Update pro_service: 12', 1, '2020-02-19 01:49:05');
INSERT INTO `ap_log_action` VALUES (586, 'pro_service', 'Update pro_service: 12', 1, '2020-02-19 01:49:36');
INSERT INTO `ap_log_action` VALUES (587, 'pro_service', 'Update pro_service: 12', 1, '2020-02-19 01:50:58');
INSERT INTO `ap_log_action` VALUES (588, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 01:57:00');
INSERT INTO `ap_log_action` VALUES (589, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:04:04');
INSERT INTO `ap_log_action` VALUES (590, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:06:07');
INSERT INTO `ap_log_action` VALUES (591, 'historydv', 'Update historydv: 4', 1, '2020-02-19 02:06:16');
INSERT INTO `ap_log_action` VALUES (592, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:09:51');
INSERT INTO `ap_log_action` VALUES (593, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:10:11');
INSERT INTO `ap_log_action` VALUES (594, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:10:33');
INSERT INTO `ap_log_action` VALUES (595, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:10:49');
INSERT INTO `ap_log_action` VALUES (596, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:11:05');
INSERT INTO `ap_log_action` VALUES (597, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:11:16');
INSERT INTO `ap_log_action` VALUES (598, 'historydv', 'Update historydv: 5', 1, '2020-02-19 02:11:32');
INSERT INTO `ap_log_action` VALUES (599, 'historydv', 'Update historydv: 2', 1, '2020-02-19 02:11:37');
INSERT INTO `ap_log_action` VALUES (600, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:12:58');
INSERT INTO `ap_log_action` VALUES (601, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:13:14');
INSERT INTO `ap_log_action` VALUES (602, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:13:36');
INSERT INTO `ap_log_action` VALUES (603, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:15:21');
INSERT INTO `ap_log_action` VALUES (604, 'historydv', 'Update historydv: 7', 1, '2020-02-19 02:17:15');
INSERT INTO `ap_log_action` VALUES (605, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:18:05');
INSERT INTO `ap_log_action` VALUES (606, 'historydv', 'Update historydv: 1', 1, '2020-02-19 02:18:19');
INSERT INTO `ap_log_action` VALUES (607, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:18:51');
INSERT INTO `ap_log_action` VALUES (608, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:19:04');
INSERT INTO `ap_log_action` VALUES (609, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:20:32');
INSERT INTO `ap_log_action` VALUES (610, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:20:41');
INSERT INTO `ap_log_action` VALUES (611, 'historydv', 'Update historydv: 4', 1, '2020-02-19 02:21:08');
INSERT INTO `ap_log_action` VALUES (612, 'historydv', 'Update historydv: 13', 1, '2020-02-19 02:26:32');
INSERT INTO `ap_log_action` VALUES (613, 'historydv', 'Update historydv: 9', 1, '2020-02-19 02:28:28');
INSERT INTO `ap_log_action` VALUES (614, 'historydv', 'Update historydv: 13', 1, '2020-02-19 02:28:37');
INSERT INTO `ap_log_action` VALUES (615, 'contact', 'Update contact: 10', 1, '2020-02-19 02:29:05');
INSERT INTO `ap_log_action` VALUES (616, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:37:48');
INSERT INTO `ap_log_action` VALUES (617, 'historydv', 'Update historydv: 14', 1, '2020-02-19 02:37:58');
INSERT INTO `ap_log_action` VALUES (618, 'historydv', 'Update historydv: 14', 1, '2020-02-19 02:38:28');
INSERT INTO `ap_log_action` VALUES (619, 'historydv', 'Update historydv: 14', 1, '2020-02-19 02:39:53');
INSERT INTO `ap_log_action` VALUES (620, 'historydv', 'Update historydv: 8', 1, '2020-02-19 02:39:56');
INSERT INTO `ap_log_action` VALUES (621, 'historydv', 'Update historydv: 7', 1, '2020-02-19 02:39:59');
INSERT INTO `ap_log_action` VALUES (622, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:42:51');
INSERT INTO `ap_log_action` VALUES (623, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:43:24');
INSERT INTO `ap_log_action` VALUES (624, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:43:55');
INSERT INTO `ap_log_action` VALUES (625, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:44:15');
INSERT INTO `ap_log_action` VALUES (626, 'historydv', 'Insert historydv: 0', 1, '2020-02-19 02:45:32');
INSERT INTO `ap_log_action` VALUES (627, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:48:27');
INSERT INTO `ap_log_action` VALUES (628, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:49:02');
INSERT INTO `ap_log_action` VALUES (629, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:49:24');
INSERT INTO `ap_log_action` VALUES (630, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:49:51');
INSERT INTO `ap_log_action` VALUES (631, 'historydv', 'Update historydv: 15', 1, '2020-02-19 02:49:59');
INSERT INTO `ap_log_action` VALUES (632, 'category', 'Insert category: 47', 1, '2020-02-19 03:19:56');
INSERT INTO `ap_log_action` VALUES (633, 'category', 'Insert category: 48', 1, '2020-02-19 03:24:09');
INSERT INTO `ap_log_action` VALUES (634, 'system_menu', 'Insert system_menu: 137', 1, '2020-02-19 03:36:46');
INSERT INTO `ap_log_action` VALUES (635, 'category', 'Insert category: 49', 1, '2020-02-19 03:45:37');
INSERT INTO `ap_log_action` VALUES (636, 'category', 'Insert category: 50', 1, '2020-02-19 03:50:12');
INSERT INTO `ap_log_action` VALUES (637, 'category', 'Insert category: 51', 1, '2020-02-19 03:50:27');
INSERT INTO `ap_log_action` VALUES (638, 'category', 'Insert category: 52', 1, '2020-02-19 03:50:34');
INSERT INTO `ap_log_action` VALUES (639, 'category', 'Insert category: 53', 1, '2020-02-19 03:50:42');
INSERT INTO `ap_log_action` VALUES (640, 'category', 'Insert category: 54', 1, '2020-02-19 03:50:49');
INSERT INTO `ap_log_action` VALUES (641, 'category', 'Insert category: 55', 1, '2020-02-19 03:51:06');
INSERT INTO `ap_log_action` VALUES (642, 'category', 'Insert category: 56', 1, '2020-02-19 04:12:50');
INSERT INTO `ap_log_action` VALUES (643, 'category', 'Update category: 56', 1, '2020-02-19 04:17:06');
INSERT INTO `ap_log_action` VALUES (644, 'category', 'Insert category: 57', 1, '2020-02-19 04:27:22');
INSERT INTO `ap_log_action` VALUES (645, 'category', 'Update category: 57', 1, '2020-02-19 04:28:18');
INSERT INTO `ap_log_action` VALUES (646, 'category', 'Update category: 56', 1, '2020-02-19 04:29:54');
INSERT INTO `ap_log_action` VALUES (647, 'system_menu', 'Insert system_menu: 138', 1, '2020-02-19 04:55:53');
INSERT INTO `ap_log_action` VALUES (648, 'category', 'Insert category: 58', 1, '2020-02-19 05:04:09');
INSERT INTO `ap_log_action` VALUES (649, 'category', 'Update category: 58', 1, '2020-02-19 05:28:45');
INSERT INTO `ap_log_action` VALUES (650, 'working_field', 'Insert working_field: 0', 1, '2020-02-19 05:36:45');
INSERT INTO `ap_log_action` VALUES (651, 'working_field', 'Insert working_field: 0', 1, '2020-02-19 05:37:28');
INSERT INTO `ap_log_action` VALUES (652, 'working_field', 'Insert working_field: 0', 1, '2020-02-19 05:37:41');
INSERT INTO `ap_log_action` VALUES (653, 'project', 'Insert project: 13', 1, '2020-02-20 08:54:48');
INSERT INTO `ap_log_action` VALUES (654, 'project', 'Update project: 13', 1, '2020-02-20 08:54:59');
INSERT INTO `ap_log_action` VALUES (655, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 08:55:29');
INSERT INTO `ap_log_action` VALUES (656, 'project', 'Update project: 13', 1, '2020-02-20 09:02:02');
INSERT INTO `ap_log_action` VALUES (657, 'project', 'Update project: 13', 1, '2020-02-20 09:02:15');
INSERT INTO `ap_log_action` VALUES (658, 'category', 'Insert category: 59', 1, '2020-02-20 09:04:44');
INSERT INTO `ap_log_action` VALUES (659, 'category', 'Insert category: 60', 1, '2020-02-20 09:05:58');
INSERT INTO `ap_log_action` VALUES (660, 'document', 'Insert document: 10', 1, '2020-02-20 09:08:34');
INSERT INTO `ap_log_action` VALUES (661, 'document', 'Insert document: 11', 1, '2020-02-20 09:09:38');
INSERT INTO `ap_log_action` VALUES (662, 'document', 'Insert document: 12', 1, '2020-02-20 09:10:51');
INSERT INTO `ap_log_action` VALUES (663, 'document', 'Update document: 12', 1, '2020-02-20 09:11:19');
INSERT INTO `ap_log_action` VALUES (664, 'document', 'Update document: 11', 1, '2020-02-20 09:11:19');
INSERT INTO `ap_log_action` VALUES (665, 'document', 'Update document: 10', 1, '2020-02-20 09:11:32');
INSERT INTO `ap_log_action` VALUES (666, 'document', 'Insert document: 13', 1, '2020-02-20 09:12:15');
INSERT INTO `ap_log_action` VALUES (667, 'system_menu', 'Update system_menu: 129', 1, '2020-02-20 09:17:07');
INSERT INTO `ap_log_action` VALUES (668, 'pro_service', 'Update pro_service: 12', 1, '2020-02-20 09:17:36');
INSERT INTO `ap_log_action` VALUES (669, 'category', 'Insert category: 61', 1, '2020-02-20 09:21:32');
INSERT INTO `ap_log_action` VALUES (670, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:21:54');
INSERT INTO `ap_log_action` VALUES (671, 'pro_service', 'Insert pro_service: 1', 1, '2020-02-20 09:21:56');
INSERT INTO `ap_log_action` VALUES (672, 'working_field', 'Update working_field: 4', 1, '2020-02-20 09:22:31');
INSERT INTO `ap_log_action` VALUES (673, 'working_field', 'Update working_field: 4', 1, '2020-02-20 09:22:48');
INSERT INTO `ap_log_action` VALUES (674, 'working_field', 'Update working_field: 4', 1, '2020-02-20 09:28:10');
INSERT INTO `ap_log_action` VALUES (675, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:28:18');
INSERT INTO `ap_log_action` VALUES (676, 'working_field', 'Update working_field: 5', 1, '2020-02-20 09:28:22');
INSERT INTO `ap_log_action` VALUES (677, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:28:41');
INSERT INTO `ap_log_action` VALUES (678, 'working_field', 'Update working_field: 6', 1, '2020-02-20 09:28:44');
INSERT INTO `ap_log_action` VALUES (679, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:31:14');
INSERT INTO `ap_log_action` VALUES (680, 'working_field', 'Update working_field: 7', 1, '2020-02-20 09:33:01');
INSERT INTO `ap_log_action` VALUES (681, 'working_field', 'Update working_field: 7', 1, '2020-02-20 09:33:55');
INSERT INTO `ap_log_action` VALUES (682, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:34:57');
INSERT INTO `ap_log_action` VALUES (683, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:38:49');
INSERT INTO `ap_log_action` VALUES (684, 'working_field', 'Update working_field: 9', 1, '2020-02-20 09:39:00');
INSERT INTO `ap_log_action` VALUES (685, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:43:17');
INSERT INTO `ap_log_action` VALUES (686, 'working_field', 'Update working_field: 10', 1, '2020-02-20 09:43:48');
INSERT INTO `ap_log_action` VALUES (687, 'working_field', 'Update working_field: 10', 1, '2020-02-20 09:44:15');
INSERT INTO `ap_log_action` VALUES (688, 'working_field', 'Update working_field: 10', 1, '2020-02-20 09:44:38');
INSERT INTO `ap_log_action` VALUES (689, 'working_field', 'Update working_field: 10', 1, '2020-02-20 09:53:10');
INSERT INTO `ap_log_action` VALUES (690, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:53:37');
INSERT INTO `ap_log_action` VALUES (691, 'category', 'Update category: 59', 1, '2020-02-20 09:53:44');
INSERT INTO `ap_log_action` VALUES (692, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:53:45');
INSERT INTO `ap_log_action` VALUES (693, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:54:02');
INSERT INTO `ap_log_action` VALUES (694, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:54:08');
INSERT INTO `ap_log_action` VALUES (695, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 09:54:16');
INSERT INTO `ap_log_action` VALUES (696, 'category', 'Insert category: 62', 1, '2020-02-20 09:54:59');
INSERT INTO `ap_log_action` VALUES (697, 'working_field', 'Update working_field: 7', 1, '2020-02-20 09:55:26');
INSERT INTO `ap_log_action` VALUES (698, 'working_field', 'Update working_field: 8', 1, '2020-02-20 09:55:27');
INSERT INTO `ap_log_action` VALUES (699, 'category', 'Insert category: 63', 1, '2020-02-20 09:55:40');
INSERT INTO `ap_log_action` VALUES (700, 'working_field', 'Update working_field: 9', 1, '2020-02-20 09:55:52');
INSERT INTO `ap_log_action` VALUES (701, 'working_field', 'Update working_field: 15', 1, '2020-02-20 09:55:57');
INSERT INTO `ap_log_action` VALUES (702, 'category', 'Update category: 63', 1, '2020-02-20 09:56:15');
INSERT INTO `ap_log_action` VALUES (703, 'working_field', 'Update working_field: 1', 1, '2020-02-20 09:57:11');
INSERT INTO `ap_log_action` VALUES (704, 'project', 'Insert project: 14', 1, '2020-02-20 09:58:01');
INSERT INTO `ap_log_action` VALUES (705, 'category', 'Insert category: 64', 1, '2020-02-20 10:02:06');
INSERT INTO `ap_log_action` VALUES (706, 'pro_service', 'Insert pro_service: 2', 1, '2020-02-20 10:02:29');
INSERT INTO `ap_log_action` VALUES (707, 'category', 'Update category: 58', 1, '2020-02-20 10:09:26');
INSERT INTO `ap_log_action` VALUES (708, 'category', 'Update category: 56', 1, '2020-02-20 10:09:26');
INSERT INTO `ap_log_action` VALUES (709, 'category', 'Update category: 57', 1, '2020-02-20 10:09:26');
INSERT INTO `ap_log_action` VALUES (710, 'category', 'Update category: 54', 1, '2020-02-20 10:09:27');
INSERT INTO `ap_log_action` VALUES (711, 'category', 'Update category: 53', 1, '2020-02-20 10:09:27');
INSERT INTO `ap_log_action` VALUES (712, 'category', 'Update category: 51', 1, '2020-02-20 10:09:27');
INSERT INTO `ap_log_action` VALUES (713, 'category', 'Update category: 49', 1, '2020-02-20 10:09:27');
INSERT INTO `ap_log_action` VALUES (714, 'category', 'Update category: 50', 1, '2020-02-20 10:09:51');
INSERT INTO `ap_log_action` VALUES (715, 'project', 'Update project: 13', 1, '2020-02-20 10:10:24');
INSERT INTO `ap_log_action` VALUES (716, 'category', 'Update category: 55', 1, '2020-02-20 10:10:29');
INSERT INTO `ap_log_action` VALUES (717, 'project', 'Insert project: 15', 1, '2020-02-20 10:11:42');
INSERT INTO `ap_log_action` VALUES (718, 'project', 'Insert project: 16', 1, '2020-02-20 10:12:14');
INSERT INTO `ap_log_action` VALUES (719, 'document', 'Update document: 13', 1, '2020-02-20 10:14:02');
INSERT INTO `ap_log_action` VALUES (720, 'project', 'Insert project: 17', 1, '2020-02-20 10:19:59');
INSERT INTO `ap_log_action` VALUES (721, 'project', 'Insert project: 18', 1, '2020-02-20 10:31:47');
INSERT INTO `ap_log_action` VALUES (722, 'project', 'Insert project: 19', 1, '2020-02-20 10:41:11');
INSERT INTO `ap_log_action` VALUES (723, 'project', 'Insert project: 20', 1, '2020-02-20 10:41:40');
INSERT INTO `ap_log_action` VALUES (724, 'project', 'Insert project: 21', 1, '2020-02-20 10:41:59');
INSERT INTO `ap_log_action` VALUES (725, 'project', 'Insert project: 22', 1, '2020-02-20 10:42:09');
INSERT INTO `ap_log_action` VALUES (726, 'project', 'Insert project: 23', 1, '2020-02-20 10:42:28');
INSERT INTO `ap_log_action` VALUES (727, 'project', 'Update project: 18', 1, '2020-02-20 11:01:38');
INSERT INTO `ap_log_action` VALUES (728, 'project', 'Update project: 17', 1, '2020-02-20 11:02:05');
INSERT INTO `ap_log_action` VALUES (729, 'project', 'Insert project: 24', 1, '2020-02-20 11:07:57');
INSERT INTO `ap_log_action` VALUES (730, 'project', 'Insert project: 25', 1, '2020-02-20 11:09:30');
INSERT INTO `ap_log_action` VALUES (731, 'project', 'Update project: 24', 1, '2020-02-20 11:12:13');
INSERT INTO `ap_log_action` VALUES (732, 'project', 'Update project: 24', 1, '2020-02-20 11:12:31');
INSERT INTO `ap_log_action` VALUES (733, 'project', 'Insert project: 26', 1, '2020-02-20 11:14:26');
INSERT INTO `ap_log_action` VALUES (734, 'project', 'Insert project: 27', 1, '2020-02-20 11:16:34');
INSERT INTO `ap_log_action` VALUES (735, 'project', 'Insert project: 28', 1, '2020-02-20 11:17:33');
INSERT INTO `ap_log_action` VALUES (736, 'project', 'Update project: 28', 1, '2020-02-20 11:17:46');
INSERT INTO `ap_log_action` VALUES (737, 'project', 'Insert project: 29', 1, '2020-02-20 11:21:49');
INSERT INTO `ap_log_action` VALUES (738, 'project', 'Insert project: 30', 1, '2020-02-20 11:22:47');
INSERT INTO `ap_log_action` VALUES (739, 'project', 'Update project: 30', 1, '2020-02-20 11:23:20');
INSERT INTO `ap_log_action` VALUES (740, 'project', 'Update project: 30', 1, '2020-02-20 11:24:19');
INSERT INTO `ap_log_action` VALUES (741, 'project', 'Insert project: 31', 1, '2020-02-20 11:36:38');
INSERT INTO `ap_log_action` VALUES (742, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 11:57:22');
INSERT INTO `ap_log_action` VALUES (743, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 01:51:15');
INSERT INTO `ap_log_action` VALUES (744, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 01:59:26');
INSERT INTO `ap_log_action` VALUES (745, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 01:59:35');
INSERT INTO `ap_log_action` VALUES (746, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 01:59:45');
INSERT INTO `ap_log_action` VALUES (747, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 01:59:54');
INSERT INTO `ap_log_action` VALUES (748, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:00:12');
INSERT INTO `ap_log_action` VALUES (749, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:00:26');
INSERT INTO `ap_log_action` VALUES (750, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:00:34');
INSERT INTO `ap_log_action` VALUES (751, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:00:49');
INSERT INTO `ap_log_action` VALUES (752, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:04:49');
INSERT INTO `ap_log_action` VALUES (753, 'gallery', 'Update gallery: 24', 1, '2020-02-20 02:05:09');
INSERT INTO `ap_log_action` VALUES (754, 'gallery', 'Update gallery: 24', 1, '2020-02-20 02:05:41');
INSERT INTO `ap_log_action` VALUES (755, 'gallery', 'Update gallery: 24', 1, '2020-02-20 02:06:22');
INSERT INTO `ap_log_action` VALUES (756, 'gallery', 'Update gallery: 24', 1, '2020-02-20 02:07:30');
INSERT INTO `ap_log_action` VALUES (757, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:09:13');
INSERT INTO `ap_log_action` VALUES (758, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:12:07');
INSERT INTO `ap_log_action` VALUES (759, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:12:33');
INSERT INTO `ap_log_action` VALUES (760, 'gallery', 'Update gallery: 27', 1, '2020-02-20 02:13:03');
INSERT INTO `ap_log_action` VALUES (761, 'gallery', 'Update gallery: 27', 1, '2020-02-20 02:13:11');
INSERT INTO `ap_log_action` VALUES (762, 'gallery', 'Update gallery: 9', 1, '2020-02-20 02:14:31');
INSERT INTO `ap_log_action` VALUES (763, 'gallery', 'Update gallery: 21', 1, '2020-02-20 02:14:40');
INSERT INTO `ap_log_action` VALUES (764, 'gallery', 'Update gallery: 26', 1, '2020-02-20 02:14:40');
INSERT INTO `ap_log_action` VALUES (765, 'gallery', 'Update gallery: 14', 1, '2020-02-20 02:14:44');
INSERT INTO `ap_log_action` VALUES (766, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:15:44');
INSERT INTO `ap_log_action` VALUES (767, 'gallery', 'Update gallery: 28', 1, '2020-02-20 02:20:20');
INSERT INTO `ap_log_action` VALUES (768, 'gallery', 'Update gallery: 27', 1, '2020-02-20 02:22:06');
INSERT INTO `ap_log_action` VALUES (769, 'gallery', 'Update gallery: 25', 1, '2020-02-20 02:22:06');
INSERT INTO `ap_log_action` VALUES (770, 'gallery', 'Update gallery: 28', 1, '2020-02-20 02:22:23');
INSERT INTO `ap_log_action` VALUES (771, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:25:53');
INSERT INTO `ap_log_action` VALUES (772, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:29:58');
INSERT INTO `ap_log_action` VALUES (773, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:31:20');
INSERT INTO `ap_log_action` VALUES (774, 'gallery', 'Update gallery: 31', 1, '2020-02-20 02:31:49');
INSERT INTO `ap_log_action` VALUES (775, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:33:06');
INSERT INTO `ap_log_action` VALUES (776, 'gallery', 'Update gallery: 18', 1, '2020-02-20 02:41:30');
INSERT INTO `ap_log_action` VALUES (777, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:44:16');
INSERT INTO `ap_log_action` VALUES (778, 'gallery', 'Update gallery: 31', 1, '2020-02-20 02:44:29');
INSERT INTO `ap_log_action` VALUES (779, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:45:06');
INSERT INTO `ap_log_action` VALUES (780, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:45:35');
INSERT INTO `ap_log_action` VALUES (781, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:45:55');
INSERT INTO `ap_log_action` VALUES (782, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:47:49');
INSERT INTO `ap_log_action` VALUES (783, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 02:47:59');
INSERT INTO `ap_log_action` VALUES (784, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:48:15');
INSERT INTO `ap_log_action` VALUES (785, 'gallery', 'Update gallery: 33', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (786, 'gallery', 'Update gallery: 32', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (787, 'gallery', 'Update gallery: 31', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (788, 'gallery', 'Update gallery: 30', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (789, 'gallery', 'Update gallery: 29', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (790, 'gallery', 'Update gallery: 23', 1, '2020-02-20 02:55:13');
INSERT INTO `ap_log_action` VALUES (791, 'project', 'Insert project: 32', 1, '2020-02-20 02:56:28');
INSERT INTO `ap_log_action` VALUES (792, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 03:02:19');
INSERT INTO `ap_log_action` VALUES (793, 'category', 'Insert category: 65', 1, '2020-02-20 03:43:09');
INSERT INTO `ap_log_action` VALUES (794, 'category', 'Insert category: 66', 1, '2020-02-20 03:44:25');
INSERT INTO `ap_log_action` VALUES (795, 'system_menu', 'Insert system_menu: 139', 1, '2020-02-20 03:44:37');
INSERT INTO `ap_log_action` VALUES (796, 'system_menu', 'Insert system_menu: 140', 1, '2020-02-20 03:44:58');
INSERT INTO `ap_log_action` VALUES (797, 'system_menu', 'Update system_menu: 140', 1, '2020-02-20 03:45:29');
INSERT INTO `ap_log_action` VALUES (798, 'system_menu', 'Insert system_menu: 141', 1, '2020-02-20 03:46:15');
INSERT INTO `ap_log_action` VALUES (799, 'pro_service', 'Insert pro_service: 3', 1, '2020-02-20 03:47:33');
INSERT INTO `ap_log_action` VALUES (800, 'pro_service', 'Update pro_service: 3', 1, '2020-02-20 03:47:44');
INSERT INTO `ap_log_action` VALUES (801, 'project', 'Insert project: 33', 1, '2020-02-20 03:48:55');
INSERT INTO `ap_log_action` VALUES (802, 'historydv', 'Insert historydv: 0', 1, '2020-02-20 03:49:13');
INSERT INTO `ap_log_action` VALUES (803, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 03:49:35');
INSERT INTO `ap_log_action` VALUES (804, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 03:49:57');
INSERT INTO `ap_log_action` VALUES (805, 'recruit', 'Thêm cửa hàng có id là 12', 1, '2020-02-20 03:53:39');
INSERT INTO `ap_log_action` VALUES (806, 'category', 'Update category: 52', 1, '2020-02-20 03:57:12');
INSERT INTO `ap_log_action` VALUES (807, 'category', 'Update category: 52', 1, '2020-02-20 03:57:30');
INSERT INTO `ap_log_action` VALUES (808, 'category', 'Update category: 52', 1, '2020-02-20 03:57:48');
INSERT INTO `ap_log_action` VALUES (809, 'category', 'Insert category: 67', 1, '2020-02-20 04:09:44');
INSERT INTO `ap_log_action` VALUES (810, 'category', 'Insert category: 68', 1, '2020-02-20 04:09:55');
INSERT INTO `ap_log_action` VALUES (811, 'category', 'Insert category: 69', 1, '2020-02-20 04:10:14');
INSERT INTO `ap_log_action` VALUES (812, 'pro_service', 'Insert pro_service: 4', 1, '2020-02-20 04:10:32');
INSERT INTO `ap_log_action` VALUES (813, 'category', 'Insert category: 70', 1, '2020-02-20 04:11:06');
INSERT INTO `ap_log_action` VALUES (814, 'project', 'Insert project: 34', 1, '2020-02-20 04:11:19');
INSERT INTO `ap_log_action` VALUES (815, 'historydv', 'Insert historydv: 0', 1, '2020-02-20 04:11:28');
INSERT INTO `ap_log_action` VALUES (816, 'category', 'Insert category: 71', 1, '2020-02-20 04:12:17');
INSERT INTO `ap_log_action` VALUES (817, 'document', 'Insert document: 36', 1, '2020-02-20 04:13:03');
INSERT INTO `ap_log_action` VALUES (818, 'video', 'Insert video: 0', 1, '2020-02-20 04:15:22');
INSERT INTO `ap_log_action` VALUES (819, 'video', 'Update video: 37', 1, '2020-02-20 04:15:39');
INSERT INTO `ap_log_action` VALUES (820, 'career', 'Insert career: 7', 1, '2020-02-20 04:18:40');
INSERT INTO `ap_log_action` VALUES (821, 'career', 'Update career: 7', 1, '2020-02-20 04:18:42');
INSERT INTO `ap_log_action` VALUES (822, 'post', 'Update post: 7', 1, '2020-02-20 04:19:20');
INSERT INTO `ap_log_action` VALUES (823, 'post', 'Update post: 3', 1, '2020-02-20 04:19:20');
INSERT INTO `ap_log_action` VALUES (824, 'post', 'Insert post: 12', 1, '2020-02-20 04:19:42');
INSERT INTO `ap_log_action` VALUES (825, 'property', 'Insert property: 0', 1, '2020-02-20 04:20:04');
INSERT INTO `ap_log_action` VALUES (826, 'property', 'Update property: 15', 1, '2020-02-20 04:20:07');
INSERT INTO `ap_log_action` VALUES (827, 'post', 'Update post: 12', 1, '2020-02-20 04:22:23');
INSERT INTO `ap_log_action` VALUES (828, 'category', 'Update category: 27', 1, '2020-02-20 04:22:44');
INSERT INTO `ap_log_action` VALUES (829, 'category', 'Update category: 23', 1, '2020-02-20 04:22:45');
INSERT INTO `ap_log_action` VALUES (830, 'category', 'Update category: 21', 1, '2020-02-20 04:22:45');
INSERT INTO `ap_log_action` VALUES (831, 'category', 'Update category: 20', 1, '2020-02-20 04:22:45');
INSERT INTO `ap_log_action` VALUES (832, 'category', 'Update category: 9', 1, '2020-02-20 04:22:45');
INSERT INTO `ap_log_action` VALUES (833, 'category', 'Update category: 22', 1, '2020-02-20 04:23:00');
INSERT INTO `ap_log_action` VALUES (834, 'category', 'Insert category: 72', 1, '2020-02-20 04:23:10');
INSERT INTO `ap_log_action` VALUES (835, 'category', 'Insert category: 73', 1, '2020-02-20 04:23:18');
INSERT INTO `ap_log_action` VALUES (836, 'category', 'Insert category: 74', 1, '2020-02-20 04:23:28');
INSERT INTO `ap_log_action` VALUES (837, 'category', 'Insert category: 75', 1, '2020-02-20 04:23:42');
INSERT INTO `ap_log_action` VALUES (838, 'category', 'Insert category: 76', 1, '2020-02-20 04:23:48');
INSERT INTO `ap_log_action` VALUES (839, 'post', 'Insert post: 13', 1, '2020-02-20 04:24:03');
INSERT INTO `ap_log_action` VALUES (840, 'post', 'Insert post: 14', 1, '2020-02-20 04:24:26');
INSERT INTO `ap_log_action` VALUES (841, 'video', 'Update video: 37', 1, '2020-02-20 04:24:42');
INSERT INTO `ap_log_action` VALUES (842, 'video', 'Insert video: 0', 1, '2020-02-20 04:27:29');
INSERT INTO `ap_log_action` VALUES (843, 'category', 'Insert category: 77', 1, '2020-02-20 04:36:26');
INSERT INTO `ap_log_action` VALUES (844, 'post', 'Insert post: 15', 1, '2020-02-20 04:39:20');
INSERT INTO `ap_log_action` VALUES (845, 'post', 'Thêm Banner có id là 4', 1, '2020-02-20 04:39:49');
INSERT INTO `ap_log_action` VALUES (846, 'page', 'Insert page: 0', 1, '2020-02-20 04:40:35');
INSERT INTO `ap_log_action` VALUES (847, 'page', 'Update page: 21', 1, '2020-02-20 04:40:39');
INSERT INTO `ap_log_action` VALUES (848, 'question', 'Insert question: 7', 1, '2020-02-20 04:40:58');
INSERT INTO `ap_log_action` VALUES (849, 'question', 'Update question: 7', 1, '2020-02-20 04:41:04');
INSERT INTO `ap_log_action` VALUES (850, 'category', 'Insert category: 78', 1, '2020-02-20 04:41:28');
INSERT INTO `ap_log_action` VALUES (851, 'question', 'Insert question: 8', 1, '2020-02-20 04:42:23');
INSERT INTO `ap_log_action` VALUES (852, 'question', 'Update question: 8', 1, '2020-02-20 04:42:26');
INSERT INTO `ap_log_action` VALUES (853, 'category', 'Insert category: 79', 1, '2020-02-20 04:42:30');
INSERT INTO `ap_log_action` VALUES (854, 'category', 'Insert category: 80', 1, '2020-02-20 04:43:04');
INSERT INTO `ap_log_action` VALUES (855, 'category', 'Insert category: 81', 1, '2020-02-20 04:43:11');
INSERT INTO `ap_log_action` VALUES (856, 'category', 'Update category: 81', 1, '2020-02-20 04:43:17');
INSERT INTO `ap_log_action` VALUES (857, 'pro_service', 'Insert pro_service: 5', 1, '2020-02-20 04:43:36');
INSERT INTO `ap_log_action` VALUES (858, 'pro_service', 'Update pro_service: 5', 1, '2020-02-20 04:43:39');
INSERT INTO `ap_log_action` VALUES (859, 'category', 'Insert category: 82', 1, '2020-02-20 04:44:10');
INSERT INTO `ap_log_action` VALUES (860, 'category', 'Update category: 82', 1, '2020-02-20 04:44:12');
INSERT INTO `ap_log_action` VALUES (861, 'project', 'Insert project: 35', 1, '2020-02-20 04:44:34');
INSERT INTO `ap_log_action` VALUES (862, 'project', 'Update project: 35', 1, '2020-02-20 04:44:37');
INSERT INTO `ap_log_action` VALUES (863, 'historydv', 'Insert historydv: 0', 1, '2020-02-20 04:45:09');
INSERT INTO `ap_log_action` VALUES (864, 'historydv', 'Update historydv: 19', 1, '2020-02-20 04:45:13');
INSERT INTO `ap_log_action` VALUES (865, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 04:45:26');
INSERT INTO `ap_log_action` VALUES (866, 'working_field', 'Update working_field: 17', 1, '2020-02-20 04:45:28');
INSERT INTO `ap_log_action` VALUES (867, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 04:45:59');
INSERT INTO `ap_log_action` VALUES (868, 'gallery', 'Update gallery: 39', 1, '2020-02-20 04:46:01');
INSERT INTO `ap_log_action` VALUES (869, 'video', 'Update video: 38', 1, '2020-02-20 04:46:16');
INSERT INTO `ap_log_action` VALUES (870, 'video', 'Update video: 38', 1, '2020-02-20 04:46:23');
INSERT INTO `ap_log_action` VALUES (871, 'recruit', 'Thêm cửa hàng có id là 13', 1, '2020-02-20 04:46:30');
INSERT INTO `ap_log_action` VALUES (872, 'video', 'Insert video: 0', 1, '2020-02-20 04:47:24');
INSERT INTO `ap_log_action` VALUES (873, 'video', 'Update video: 40', 1, '2020-02-20 04:47:26');
INSERT INTO `ap_log_action` VALUES (874, 'category', 'Insert category: 83', 1, '2020-02-20 04:47:45');
INSERT INTO `ap_log_action` VALUES (875, 'category', 'Update category: 83', 1, '2020-02-20 04:47:48');
INSERT INTO `ap_log_action` VALUES (876, 'category', 'Insert category: 84', 1, '2020-02-20 04:48:46');
INSERT INTO `ap_log_action` VALUES (877, 'category', 'Update category: 84', 1, '2020-02-20 04:48:49');
INSERT INTO `ap_log_action` VALUES (878, 'video', 'Update video: 37', 1, '2020-02-20 04:48:55');
INSERT INTO `ap_log_action` VALUES (879, 'property', 'Insert property: 0', 1, '2020-02-20 04:48:58');
INSERT INTO `ap_log_action` VALUES (880, 'property', 'Update property: 16', 1, '2020-02-20 04:49:00');
INSERT INTO `ap_log_action` VALUES (881, 'career', 'Insert career: 8', 1, '2020-02-20 04:49:24');
INSERT INTO `ap_log_action` VALUES (882, 'career', 'Update career: 8', 1, '2020-02-20 04:49:30');
INSERT INTO `ap_log_action` VALUES (883, 'video', 'Update video: 38', 1, '2020-02-20 04:49:38');
INSERT INTO `ap_log_action` VALUES (884, 'career', 'Insert career: 9', 1, '2020-02-20 04:50:46');
INSERT INTO `ap_log_action` VALUES (885, 'category', 'Update category: 77', 1, '2020-02-20 05:01:12');
INSERT INTO `ap_log_action` VALUES (886, 'post', 'Update post: 15', 1, '2020-02-20 05:01:41');
INSERT INTO `ap_log_action` VALUES (887, 'category', 'Update category: 78', 1, '2020-02-20 05:02:47');
INSERT INTO `ap_log_action` VALUES (888, 'pro_service', 'Insert pro_service: 6', 1, '2020-02-20 05:04:36');
INSERT INTO `ap_log_action` VALUES (889, 'project', 'Insert project: 36', 1, '2020-02-20 05:06:38');
INSERT INTO `ap_log_action` VALUES (890, 'historydv', 'Insert historydv: 0', 1, '2020-02-20 05:07:54');
INSERT INTO `ap_log_action` VALUES (891, 'historydv', 'Update historydv: 20', 1, '2020-02-20 05:08:19');
INSERT INTO `ap_log_action` VALUES (892, 'working_field', 'Insert working_field: 0', 1, '2020-02-20 05:08:32');
INSERT INTO `ap_log_action` VALUES (893, 'gallery', 'Insert gallery: 0', 1, '2020-02-20 05:09:25');
INSERT INTO `ap_log_action` VALUES (894, 'gallery', 'Update gallery: 41', 1, '2020-02-20 05:09:30');
INSERT INTO `ap_log_action` VALUES (895, 'video', 'Insert video: 0', 1, '2020-02-20 05:09:59');
INSERT INTO `ap_log_action` VALUES (896, 'recruit', 'Thêm cửa hàng có id là 14', 1, '2020-02-20 05:10:38');
INSERT INTO `ap_log_action` VALUES (897, 'career', 'Update career: 9', 1, '2020-02-20 05:13:05');
INSERT INTO `ap_log_action` VALUES (898, 'system_menu', 'Insert system_menu: 142', 1, '2020-02-20 05:33:44');
INSERT INTO `ap_log_action` VALUES (899, 'document', 'Update document: 36', 1, '2020-02-20 05:34:35');
INSERT INTO `ap_log_action` VALUES (900, 'video', 'Update video: 42', 1, '2020-02-21 09:07:18');
INSERT INTO `ap_log_action` VALUES (901, 'video', 'Insert video: 0', 1, '2020-02-21 09:13:22');
INSERT INTO `ap_log_action` VALUES (902, 'video', 'Insert video: 0', 1, '2020-02-21 09:13:57');
INSERT INTO `ap_log_action` VALUES (903, 'video', 'Update video: 38', 1, '2020-02-21 09:14:20');
INSERT INTO `ap_log_action` VALUES (904, 'video', 'Update video: 44', 1, '2020-02-21 09:14:26');
INSERT INTO `ap_log_action` VALUES (905, 'video', 'Update video: 44', 1, '2020-02-21 09:17:57');
INSERT INTO `ap_log_action` VALUES (906, 'video', 'Insert video: 0', 1, '2020-02-21 09:18:18');
INSERT INTO `ap_log_action` VALUES (907, 'video', 'Update video: 45', 1, '2020-02-21 09:18:21');
INSERT INTO `ap_log_action` VALUES (908, 'video', 'Insert video: 0', 1, '2020-02-21 09:31:53');
INSERT INTO `ap_log_action` VALUES (909, 'video', 'Update video: 46', 1, '2020-02-21 09:34:43');
INSERT INTO `ap_log_action` VALUES (910, 'video', 'Insert video: 0', 1, '2020-02-21 09:51:41');
INSERT INTO `ap_log_action` VALUES (911, 'video', 'Insert video: 0', 1, '2020-02-21 09:52:45');
INSERT INTO `ap_log_action` VALUES (912, 'video', 'Update video: 43', 1, '2020-02-21 09:53:14');
INSERT INTO `ap_log_action` VALUES (913, 'video', 'Insert video: 0', 1, '2020-02-21 09:54:45');
INSERT INTO `ap_log_action` VALUES (914, 'video', 'Insert video: 0', 1, '2020-02-21 09:55:11');
INSERT INTO `ap_log_action` VALUES (915, 'video', 'Insert video: 0', 1, '2020-02-21 09:55:44');
INSERT INTO `ap_log_action` VALUES (916, 'video', 'Update video: 51', 1, '2020-02-21 09:56:29');
INSERT INTO `ap_log_action` VALUES (917, 'video', 'Insert video: 0', 1, '2020-02-21 09:57:04');
INSERT INTO `ap_log_action` VALUES (918, 'video', 'Insert video: 0', 1, '2020-02-21 09:57:24');
INSERT INTO `ap_log_action` VALUES (919, 'video', 'Insert video: 0', 1, '2020-02-21 09:57:57');
INSERT INTO `ap_log_action` VALUES (920, 'video', 'Update video: 37', 1, '2020-02-21 09:58:04');
INSERT INTO `ap_log_action` VALUES (921, 'video', 'Insert video: 0', 1, '2020-02-21 09:58:33');
INSERT INTO `ap_log_action` VALUES (922, 'video', 'Update video: 38', 1, '2020-02-21 09:58:42');
INSERT INTO `ap_log_action` VALUES (923, 'video', 'Update video: 52', 1, '2020-02-21 10:05:45');
INSERT INTO `ap_log_action` VALUES (924, 'video', 'Update video: 51', 1, '2020-02-21 10:05:48');
INSERT INTO `ap_log_action` VALUES (925, 'video', 'Update video: 55', 1, '2020-02-21 10:06:10');
INSERT INTO `ap_log_action` VALUES (926, 'video', 'Update video: 48', 1, '2020-02-21 10:06:10');
INSERT INTO `ap_log_action` VALUES (927, 'video', 'Update video: 54', 1, '2020-02-21 10:06:10');
INSERT INTO `ap_log_action` VALUES (928, 'video', 'Update video: 53', 1, '2020-02-21 10:06:11');
INSERT INTO `ap_log_action` VALUES (929, 'video', 'Update video: 50', 1, '2020-02-21 10:06:11');
INSERT INTO `ap_log_action` VALUES (930, 'video', 'Update video: 47', 1, '2020-02-21 10:06:11');
INSERT INTO `ap_log_action` VALUES (931, 'category', 'Insert category: 85', 1, '2020-02-21 10:36:03');
INSERT INTO `ap_log_action` VALUES (932, 'category', 'Insert category: 86', 1, '2020-02-21 10:36:27');
INSERT INTO `ap_log_action` VALUES (933, 'users', 'Insert users: 0', 1, '2020-02-21 10:42:43');
INSERT INTO `ap_log_action` VALUES (934, 'groups', 'Update groups: 4', 1, '2020-02-21 10:43:25');
INSERT INTO `ap_log_action` VALUES (935, 'users', 'Insert users: 0', 1, '2020-02-21 10:45:33');
INSERT INTO `ap_log_action` VALUES (936, 'category', 'Update category: 76', 13, '2020-02-21 10:57:36');
INSERT INTO `ap_log_action` VALUES (937, 'pro_service', 'Update pro_service: 6', 1, '2020-02-21 11:20:48');
INSERT INTO `ap_log_action` VALUES (938, 'working_field', 'Update working_field: 18', 1, '2020-02-21 11:21:43');
INSERT INTO `ap_log_action` VALUES (939, 'working_field', 'Update working_field: 16', 1, '2020-02-21 11:21:57');
INSERT INTO `ap_log_action` VALUES (940, 'working_field', 'Update working_field: 14', 1, '2020-02-21 11:21:57');
INSERT INTO `ap_log_action` VALUES (941, 'working_field', 'Update working_field: 13', 1, '2020-02-21 11:21:57');
INSERT INTO `ap_log_action` VALUES (942, 'working_field', 'Update working_field: 12', 1, '2020-02-21 11:21:58');
INSERT INTO `ap_log_action` VALUES (943, 'working_field', 'Update working_field: 11', 1, '2020-02-21 11:21:58');
INSERT INTO `ap_log_action` VALUES (944, 'working_field', 'Update working_field: 9', 1, '2020-02-21 11:21:58');
INSERT INTO `ap_log_action` VALUES (945, 'gallery', 'Update gallery: 35', 1, '2020-02-21 11:22:28');
INSERT INTO `ap_log_action` VALUES (946, 'gallery', 'Update gallery: 34', 1, '2020-02-21 11:22:28');
INSERT INTO `ap_log_action` VALUES (947, 'gallery', 'Update gallery: 22', 1, '2020-02-21 11:22:28');
INSERT INTO `ap_log_action` VALUES (948, 'category', 'Insert category: 87', 1, '2020-02-21 01:40:52');
INSERT INTO `ap_log_action` VALUES (949, 'category', 'Update category: 86', 1, '2020-02-21 01:41:17');
INSERT INTO `ap_log_action` VALUES (950, 'document', 'Insert document: 56', 1, '2020-02-21 01:42:11');
INSERT INTO `ap_log_action` VALUES (951, 'category', 'Insert category: 88', 1, '2020-02-21 01:43:41');
INSERT INTO `ap_log_action` VALUES (952, 'category', 'Update category: 87', 1, '2020-02-21 01:44:23');
INSERT INTO `ap_log_action` VALUES (953, 'category', 'Update category: 87', 1, '2020-02-21 01:46:27');
INSERT INTO `ap_log_action` VALUES (954, 'category', 'Update category: 87', 1, '2020-02-21 01:47:10');
INSERT INTO `ap_log_action` VALUES (955, 'category', 'Update category: 67', 1, '2020-02-21 01:47:48');
INSERT INTO `ap_log_action` VALUES (956, 'category', 'Update category: 67', 1, '2020-02-21 01:48:14');
INSERT INTO `ap_log_action` VALUES (957, 'document', 'Update document: 36', 1, '2020-02-21 02:01:16');
INSERT INTO `ap_log_action` VALUES (958, 'document', 'Insert document: 57', 1, '2020-02-21 02:05:10');
INSERT INTO `ap_log_action` VALUES (959, 'document', 'Update document: 56', 1, '2020-02-21 02:08:03');
INSERT INTO `ap_log_action` VALUES (960, 'document', 'Insert document: 58', 1, '2020-02-21 02:11:02');
INSERT INTO `ap_log_action` VALUES (961, 'document', 'Insert document: 59', 1, '2020-02-21 02:11:57');
INSERT INTO `ap_log_action` VALUES (962, 'document', 'Update document: 59', 1, '2020-02-21 02:13:02');
INSERT INTO `ap_log_action` VALUES (963, 'document', 'Update document: 59', 1, '2020-02-21 02:14:39');
INSERT INTO `ap_log_action` VALUES (964, 'document', 'Update document: 58', 1, '2020-02-21 02:14:47');
INSERT INTO `ap_log_action` VALUES (965, 'category', 'Update category: 85', 1, '2020-02-21 02:15:06');
INSERT INTO `ap_log_action` VALUES (966, 'users', 'delete users: 14', 1, '2020-02-21 02:15:20');
INSERT INTO `ap_log_action` VALUES (967, 'historydv', 'Update historydv: 17', 1, '2020-02-21 02:15:32');
INSERT INTO `ap_log_action` VALUES (968, 'document', 'Update document: 56', 1, '2020-02-21 02:18:27');
INSERT INTO `ap_log_action` VALUES (969, 'document', 'Update document: 36', 1, '2020-02-21 02:18:48');
INSERT INTO `ap_log_action` VALUES (970, 'working_field', 'Update working_field: 3', 1, '2020-02-21 03:01:36');
INSERT INTO `ap_log_action` VALUES (971, 'document', 'Insert document: 60', 1, '2020-02-21 03:13:43');
INSERT INTO `ap_log_action` VALUES (972, 'career', 'Update career: 5', 1, '2020-02-21 03:14:40');
INSERT INTO `ap_log_action` VALUES (973, 'users', 'Insert users: 0', 1, '2020-02-21 03:27:24');
INSERT INTO `ap_log_action` VALUES (974, 'post', 'Update post: 14', 1, '2020-02-21 03:33:30');
INSERT INTO `ap_log_action` VALUES (975, 'post', 'Update post: 14', 1, '2020-02-21 03:33:42');
INSERT INTO `ap_log_action` VALUES (976, 'post', 'Update post: 13', 1, '2020-02-21 03:34:44');
INSERT INTO `ap_log_action` VALUES (977, 'post', 'Update post: 13', 1, '2020-02-21 03:34:52');
INSERT INTO `ap_log_action` VALUES (978, 'category', 'Update category: 76', 1, '2020-02-21 03:35:56');
INSERT INTO `ap_log_action` VALUES (979, 'category', 'Update category: 76', 1, '2020-02-21 03:36:13');
INSERT INTO `ap_log_action` VALUES (980, 'category', 'Insert category: 89', 1, '2020-02-21 03:37:59');
INSERT INTO `ap_log_action` VALUES (981, 'post', 'Thêm Banner có id là 5', 1, '2020-02-21 03:38:10');
INSERT INTO `ap_log_action` VALUES (982, 'banner', 'Sửa Banner có id là 5', 1, '2020-02-21 03:38:28');
INSERT INTO `ap_log_action` VALUES (983, 'page', 'Insert page: 0', 1, '2020-02-21 03:44:04');
INSERT INTO `ap_log_action` VALUES (984, 'question', 'Insert question: 9', 1, '2020-02-21 03:44:34');
INSERT INTO `ap_log_action` VALUES (985, 'category', 'Insert category: 90', 1, '2020-02-21 03:44:50');
INSERT INTO `ap_log_action` VALUES (986, 'category', 'Insert category: 91', 1, '2020-02-21 03:45:16');
INSERT INTO `ap_log_action` VALUES (987, 'document', 'Update document: 60', 1, '2020-02-21 03:45:20');
INSERT INTO `ap_log_action` VALUES (988, 'category', 'Update category: 80', 1, '2020-02-21 03:45:33');
INSERT INTO `ap_log_action` VALUES (989, 'category', 'Insert category: 92', 1, '2020-02-21 03:45:57');
INSERT INTO `ap_log_action` VALUES (990, 'pro_service', 'Insert pro_service: 7', 1, '2020-02-21 03:46:16');
INSERT INTO `ap_log_action` VALUES (991, 'category', 'Insert category: 93', 1, '2020-02-21 03:46:30');
INSERT INTO `ap_log_action` VALUES (992, 'project', 'Update project: 31', 1, '2020-02-21 03:46:44');
INSERT INTO `ap_log_action` VALUES (993, 'historydv', 'Update historydv: 18', 1, '2020-02-21 03:46:58');
INSERT INTO `ap_log_action` VALUES (994, 'working_field', 'Insert working_field: 0', 1, '2020-02-21 03:47:15');
INSERT INTO `ap_log_action` VALUES (995, 'gallery', 'Insert gallery: 0', 1, '2020-02-21 03:48:15');
INSERT INTO `ap_log_action` VALUES (996, 'video', 'Insert video: 0', 1, '2020-02-21 03:48:34');
INSERT INTO `ap_log_action` VALUES (997, 'recruit', 'Thêm cửa hàng có id là 15', 1, '2020-02-21 03:49:09');
INSERT INTO `ap_log_action` VALUES (998, 'category', 'Insert category: 94', 1, '2020-02-21 03:49:31');
INSERT INTO `ap_log_action` VALUES (999, 'property', 'Insert property: 0', 1, '2020-02-21 03:49:47');
INSERT INTO `ap_log_action` VALUES (1000, 'career', 'Insert career: 10', 1, '2020-02-21 03:50:16');
INSERT INTO `ap_log_action` VALUES (1001, 'post', 'Insert post: 16', 1, '2020-02-21 03:51:07');
INSERT INTO `ap_log_action` VALUES (1002, 'post', 'Update post: 16', 1, '2020-02-21 03:51:16');
INSERT INTO `ap_log_action` VALUES (1003, 'post', 'Update post: 13', 1, '2020-02-21 03:51:27');
INSERT INTO `ap_log_action` VALUES (1004, 'post', 'Insert post: 17', 1, '2020-02-21 03:51:45');
INSERT INTO `ap_log_action` VALUES (1005, 'document', 'Insert document: 63', 1, '2020-02-21 04:08:13');
INSERT INTO `ap_log_action` VALUES (1006, 'users', 'Update users: 15', 1, '2020-02-21 04:08:59');
INSERT INTO `ap_log_action` VALUES (1007, 'users', 'Update users: 2', 1, '2020-02-21 04:09:25');
INSERT INTO `ap_log_action` VALUES (1008, 'users', 'Update users: 15', 1, '2020-02-21 04:14:42');
INSERT INTO `ap_log_action` VALUES (1009, 'users', 'Update users: 2', 1, '2020-02-21 04:14:51');
INSERT INTO `ap_log_action` VALUES (1010, 'post', 'Insert post: 18', 1, '2020-02-21 04:33:53');
INSERT INTO `ap_log_action` VALUES (1011, 'page', 'Insert page: 0', 1, '2020-02-21 04:44:57');
INSERT INTO `ap_log_action` VALUES (1012, 'page', 'Update page: 23', 1, '2020-02-21 04:45:41');
INSERT INTO `ap_log_action` VALUES (1013, 'category', 'Update category: 71', 1, '2020-02-21 04:46:52');
INSERT INTO `ap_log_action` VALUES (1014, 'category', 'Insert category: 95', 1, '2020-02-21 04:46:58');
INSERT INTO `ap_log_action` VALUES (1015, 'career', 'Insert career: 11', 1, '2020-02-21 04:47:38');
INSERT INTO `ap_log_action` VALUES (1016, 'career', 'Update career: 10', 1, '2020-02-21 04:50:36');
INSERT INTO `ap_log_action` VALUES (1017, 'category', 'Insert category: 96', 1, '2020-02-21 04:59:38');
INSERT INTO `ap_log_action` VALUES (1018, 'category', 'Update category: 89', 1, '2020-02-21 05:06:33');
INSERT INTO `ap_log_action` VALUES (1019, 'category', 'Update category: 76', 1, '2020-02-21 05:06:36');
INSERT INTO `ap_log_action` VALUES (1020, 'category', 'Insert category: 97', 1, '2020-02-21 05:10:03');
INSERT INTO `ap_log_action` VALUES (1021, 'category', 'Update category: 97', 1, '2020-02-21 05:10:43');
INSERT INTO `ap_log_action` VALUES (1022, 'post', 'Insert post: 19', 1, '2020-02-21 05:11:18');
INSERT INTO `ap_log_action` VALUES (1023, 'category', 'Update category: 97', 13, '2020-02-21 05:13:53');
INSERT INTO `ap_log_action` VALUES (1024, 'category', 'Insert category: 98', 13, '2020-02-21 05:14:04');
INSERT INTO `ap_log_action` VALUES (1025, 'category', 'Update category: 98', 13, '2020-02-21 05:14:37');
INSERT INTO `ap_log_action` VALUES (1026, 'category', 'Update category: 98', 13, '2020-02-21 05:14:49');
INSERT INTO `ap_log_action` VALUES (1027, 'category', 'Update category: 98', 13, '2020-02-21 05:15:03');
INSERT INTO `ap_log_action` VALUES (1028, 'post', 'Insert post: 20', 1, '2020-02-21 05:15:16');
INSERT INTO `ap_log_action` VALUES (1029, 'gallery', 'Update gallery: 20', 1, '2020-02-21 05:15:42');
INSERT INTO `ap_log_action` VALUES (1030, 'gallery', 'Update gallery: 19', 1, '2020-02-21 05:15:44');
INSERT INTO `ap_log_action` VALUES (1031, 'gallery', 'Update gallery: 18', 1, '2020-02-21 05:15:47');
INSERT INTO `ap_log_action` VALUES (1032, 'gallery', 'Update gallery: 17', 1, '2020-02-21 05:15:49');
INSERT INTO `ap_log_action` VALUES (1033, 'gallery', 'Update gallery: 16', 1, '2020-02-21 05:15:51');
INSERT INTO `ap_log_action` VALUES (1034, 'gallery', 'Update gallery: 15', 1, '2020-02-21 05:15:53');
INSERT INTO `ap_log_action` VALUES (1035, 'post', 'Update post: 19', 1, '2020-02-21 05:16:03');
INSERT INTO `ap_log_action` VALUES (1036, 'gallery', 'Insert gallery: 0', 1, '2020-02-21 05:16:32');
INSERT INTO `ap_log_action` VALUES (1037, 'post', 'Update post: 19', 1, '2020-02-21 05:16:55');
INSERT INTO `ap_log_action` VALUES (1038, 'post', 'Insert post: 21', 1, '2020-02-21 05:19:14');
INSERT INTO `ap_log_action` VALUES (1039, 'post', 'Insert post: 22', 1, '2020-02-21 05:22:57');
INSERT INTO `ap_log_action` VALUES (1040, 'post', 'Update post: 19', 1, '2020-02-21 05:25:12');
INSERT INTO `ap_log_action` VALUES (1041, 'post', 'Update post: 19', 1, '2020-02-21 05:25:18');
INSERT INTO `ap_log_action` VALUES (1042, 'post', 'Update post: 21', 1, '2020-02-21 05:28:48');
INSERT INTO `ap_log_action` VALUES (1043, 'post', 'Update post: 20', 1, '2020-02-21 05:28:48');
INSERT INTO `ap_log_action` VALUES (1044, 'post', 'Update post: 22', 1, '2020-02-21 05:28:48');
INSERT INTO `ap_log_action` VALUES (1045, 'post', 'Update post: 18', 1, '2020-02-21 05:28:48');
INSERT INTO `ap_log_action` VALUES (1046, 'post', 'Insert post: 23', 1, '2020-02-21 05:30:30');
INSERT INTO `ap_log_action` VALUES (1047, 'category', 'Update category: 98', 1, '2020-02-21 05:32:30');
INSERT INTO `ap_log_action` VALUES (1048, 'post', 'Update post: 23', 1, '2020-02-21 05:32:59');
INSERT INTO `ap_log_action` VALUES (1049, 'category', 'Update category: 98', 1, '2020-02-21 05:33:18');
INSERT INTO `ap_log_action` VALUES (1050, 'page', 'Update page: 23', 1, '2020-02-21 05:35:48');
INSERT INTO `ap_log_action` VALUES (1051, 'category', 'Insert category: 99', 1, '2020-02-22 09:10:28');
INSERT INTO `ap_log_action` VALUES (1052, 'category', 'Update category: 66', 1, '2020-02-22 09:10:45');
INSERT INTO `ap_log_action` VALUES (1053, 'category', 'Update category: 65', 1, '2020-02-22 09:10:49');
INSERT INTO `ap_log_action` VALUES (1054, 'category', 'Update category: 99', 1, '2020-02-22 09:10:56');
INSERT INTO `ap_log_action` VALUES (1055, 'category', 'Update category: 80', 1, '2020-02-22 09:19:21');
INSERT INTO `ap_log_action` VALUES (1056, 'historydv', 'Update historydv: 16', 1, '2020-02-22 09:29:43');
INSERT INTO `ap_log_action` VALUES (1057, 'historydv', 'Insert historydv: 0', 1, '2020-02-22 09:33:14');
INSERT INTO `ap_log_action` VALUES (1058, 'category', 'Insert category: 100', 1, '2020-02-22 09:50:15');
INSERT INTO `ap_log_action` VALUES (1059, 'pro_service', 'Insert pro_service: 8', 1, '2020-02-22 09:50:57');
INSERT INTO `ap_log_action` VALUES (1060, 'category', 'Update category: 96', 1, '2020-02-22 10:28:20');
INSERT INTO `ap_log_action` VALUES (1061, 'project', 'Update project: 36', 1, '2020-02-22 10:31:17');
INSERT INTO `ap_log_action` VALUES (1062, 'working_field', 'Update working_field: 3', 1, '2020-02-22 10:45:44');
INSERT INTO `ap_log_action` VALUES (1063, 'working_field', 'Insert working_field: 0', 1, '2020-02-22 10:45:52');
INSERT INTO `ap_log_action` VALUES (1064, 'working_field', 'Update working_field: 3', 1, '2020-02-22 10:46:09');
INSERT INTO `ap_log_action` VALUES (1065, 'working_field', 'Update working_field: 3', 1, '2020-02-22 10:47:55');
INSERT INTO `ap_log_action` VALUES (1066, 'working_field', 'Insert working_field: 0', 1, '2020-02-22 10:51:17');
INSERT INTO `ap_log_action` VALUES (1067, 'working_field', 'Insert working_field: 0', 1, '2020-02-22 10:51:40');
INSERT INTO `ap_log_action` VALUES (1068, 'users', 'Update users: 1', 1, '2020-02-22 10:56:47');
INSERT INTO `ap_log_action` VALUES (1069, 'users', 'Update users: 1', 1, '2020-02-22 10:57:28');
INSERT INTO `ap_log_action` VALUES (1070, 'users', 'Update users: 13', 1, '2020-02-22 10:58:21');
INSERT INTO `ap_log_action` VALUES (1071, 'users', 'Update users: 13', 13, '2020-02-22 10:59:48');
INSERT INTO `ap_log_action` VALUES (1072, 'users', 'Update users: 13', 13, '2020-02-22 11:02:19');
INSERT INTO `ap_log_action` VALUES (1073, 'project', 'Update project: 36', 1, '2020-02-22 11:03:21');
INSERT INTO `ap_log_action` VALUES (1074, 'category', 'Update category: 93', 1, '2020-02-22 11:09:01');
INSERT INTO `ap_log_action` VALUES (1075, 'category', 'Update category: 93', 1, '2020-02-22 11:09:17');
INSERT INTO `ap_log_action` VALUES (1076, 'category', 'Update category: 93', 1, '2020-02-22 11:09:37');
INSERT INTO `ap_log_action` VALUES (1077, 'category', 'Update category: 93', 1, '2020-02-22 11:10:03');
INSERT INTO `ap_log_action` VALUES (1078, 'category', 'Update category: 93', 1, '2020-02-22 11:10:37');
INSERT INTO `ap_log_action` VALUES (1079, 'project', 'Insert project: 37', 1, '2020-02-22 11:11:37');
INSERT INTO `ap_log_action` VALUES (1080, 'gallery', 'Insert gallery: 0', 1, '2020-02-22 11:12:43');
INSERT INTO `ap_log_action` VALUES (1081, 'gallery', 'Insert gallery: 0', 1, '2020-02-22 11:13:20');
INSERT INTO `ap_log_action` VALUES (1082, 'video', 'Insert video: 0', 1, '2020-02-22 11:23:21');
INSERT INTO `ap_log_action` VALUES (1083, 'video', 'Insert video: 0', 1, '2020-02-22 11:25:14');
INSERT INTO `ap_log_action` VALUES (1084, 'video', 'Update video: 67', 1, '2020-02-22 11:26:34');
INSERT INTO `ap_log_action` VALUES (1085, 'video', 'Insert video: 0', 1, '2020-02-22 11:26:42');
INSERT INTO `ap_log_action` VALUES (1086, 'document', 'Update document: 36', 1, '2020-02-22 11:33:18');
INSERT INTO `ap_log_action` VALUES (1087, 'working_field', 'Update working_field: 22', 1, '2020-02-22 03:44:05');
INSERT INTO `ap_log_action` VALUES (1088, 'video', 'Update video: 68', 1, '2020-02-22 04:29:15');
INSERT INTO `ap_log_action` VALUES (1089, 'video', 'Update video: 68', 1, '2020-02-22 04:29:51');
INSERT INTO `ap_log_action` VALUES (1090, 'video', 'Update video: 68', 1, '2020-02-22 04:29:55');
INSERT INTO `ap_log_action` VALUES (1091, 'video', 'Update video: 68', 1, '2020-02-22 04:30:30');
INSERT INTO `ap_log_action` VALUES (1092, 'groups', 'Update groups: 4', 1, '2020-02-22 06:45:47');
INSERT INTO `ap_log_action` VALUES (1093, 'users', 'Update users: 13', 1, '2020-02-22 06:46:03');
INSERT INTO `ap_log_action` VALUES (1094, 'groups', 'Update groups: 4', 1, '2020-02-22 11:10:50');
INSERT INTO `ap_log_action` VALUES (1095, 'post', 'Update post: 17', 1, '2020-02-22 11:16:36');
INSERT INTO `ap_log_action` VALUES (1096, 'page', 'Update page: 22', 1, '2020-02-22 11:18:28');
INSERT INTO `ap_log_action` VALUES (1097, 'working_field', 'Insert working_field: 0', 1, '2020-02-22 11:27:31');
INSERT INTO `ap_log_action` VALUES (1098, 'gallery', 'Insert gallery: 0', 1, '2020-02-22 11:31:22');
INSERT INTO `ap_log_action` VALUES (1099, 'gallery', 'Update gallery: 70', 1, '2020-02-22 11:31:25');
INSERT INTO `ap_log_action` VALUES (1100, 'gallery', 'Update gallery: 66', 1, '2020-02-22 11:33:57');
INSERT INTO `ap_log_action` VALUES (1101, 'gallery', 'Update gallery: 66', 1, '2020-02-22 11:34:07');
INSERT INTO `ap_log_action` VALUES (1102, 'gallery', 'Update gallery: 65', 1, '2020-02-22 11:34:17');
INSERT INTO `ap_log_action` VALUES (1103, 'gallery', 'Update gallery: 65', 1, '2020-02-22 11:34:18');
INSERT INTO `ap_log_action` VALUES (1104, 'gallery', 'Update gallery: 65', 1, '2020-02-22 11:34:19');
INSERT INTO `ap_log_action` VALUES (1105, 'gallery', 'Update gallery: 66', 1, '2020-02-22 11:34:26');
INSERT INTO `ap_log_action` VALUES (1106, 'gallery', 'Update gallery: 66', 1, '2020-02-22 11:34:34');
INSERT INTO `ap_log_action` VALUES (1107, 'video', 'Insert video: 0', 1, '2020-02-22 11:36:26');
INSERT INTO `ap_log_action` VALUES (1108, 'video', 'Update video: 71', 1, '2020-02-22 11:38:21');
INSERT INTO `ap_log_action` VALUES (1109, 'video', 'Update video: 71', 1, '2020-02-22 11:38:23');
INSERT INTO `ap_log_action` VALUES (1110, 'video', 'Update video: 71', 1, '2020-02-22 11:38:24');
INSERT INTO `ap_log_action` VALUES (1111, 'video', 'Update video: 69', 1, '2020-02-22 11:38:37');
INSERT INTO `ap_log_action` VALUES (1112, 'video', 'Update video: 69', 1, '2020-02-22 11:38:38');
INSERT INTO `ap_log_action` VALUES (1113, 'video', 'Insert video: 0', 1, '2020-02-22 11:38:50');
INSERT INTO `ap_log_action` VALUES (1114, 'video', 'Update video: 72', 1, '2020-02-22 11:39:01');
INSERT INTO `ap_log_action` VALUES (1115, 'video', 'Insert video: 0', 1, '2020-02-22 11:39:09');
INSERT INTO `ap_log_action` VALUES (1116, 'video', 'Update video: 73', 1, '2020-02-22 11:39:21');
INSERT INTO `ap_log_action` VALUES (1117, 'video', 'Update video: 73', 1, '2020-02-22 11:39:21');
INSERT INTO `ap_log_action` VALUES (1118, 'video', 'Update video: 73', 1, '2020-02-22 11:39:22');
INSERT INTO `ap_log_action` VALUES (1119, 'video', 'Update video: 73', 1, '2020-02-22 11:39:22');
INSERT INTO `ap_log_action` VALUES (1120, 'video', 'Update video: 73', 1, '2020-02-22 11:39:23');
INSERT INTO `ap_log_action` VALUES (1121, 'video', 'Update video: 73', 1, '2020-02-22 11:39:24');
INSERT INTO `ap_log_action` VALUES (1122, 'video', 'Update video: 73', 1, '2020-02-22 11:42:14');
INSERT INTO `ap_log_action` VALUES (1123, 'video', 'Update video: 72', 1, '2020-02-22 11:42:25');
INSERT INTO `ap_log_action` VALUES (1124, 'video', 'Update video: 72', 1, '2020-02-22 11:42:34');
INSERT INTO `ap_log_action` VALUES (1125, 'video', 'Update video: 71', 1, '2020-02-22 11:42:52');
INSERT INTO `ap_log_action` VALUES (1126, 'video', 'Update video: 69', 1, '2020-02-22 11:42:54');
INSERT INTO `ap_log_action` VALUES (1127, 'video', 'Update video: 49', 1, '2020-02-22 11:43:12');
INSERT INTO `ap_log_action` VALUES (1128, 'video', 'Update video: 49', 1, '2020-02-22 11:43:14');
INSERT INTO `ap_log_action` VALUES (1129, 'category', 'Insert category: 101', 1, '2020-02-23 09:11:37');
INSERT INTO `ap_log_action` VALUES (1130, 'system_menu', 'Delete system_menu: 71', 1, '2020-02-24 09:32:14');
INSERT INTO `ap_log_action` VALUES (1131, 'post', 'Update post: 23', 1, '2020-02-24 10:13:01');
INSERT INTO `ap_log_action` VALUES (1132, 'pro_service', 'Update pro_service: 8', 1, '2020-02-24 10:23:46');
INSERT INTO `ap_log_action` VALUES (1133, 'pro_service', 'Update pro_service: 8', 1, '2020-02-24 10:51:11');
INSERT INTO `ap_log_action` VALUES (1134, 'pro_service', 'Update pro_service: 8', 1, '2020-02-24 10:58:05');
INSERT INTO `ap_log_action` VALUES (1135, 'pro_service', 'Update pro_service: 8', 1, '2020-02-24 11:00:43');
INSERT INTO `ap_log_action` VALUES (1136, 'working_field', 'Update working_field: 23', 1, '2020-02-24 11:35:33');
INSERT INTO `ap_log_action` VALUES (1137, 'gallery', 'Update gallery: 66', 1, '2020-02-24 11:49:56');
INSERT INTO `ap_log_action` VALUES (1138, 'gallery', 'Update gallery: 65', 1, '2020-02-24 11:52:04');
INSERT INTO `ap_log_action` VALUES (1139, 'gallery', 'Update gallery: 65', 1, '2020-02-24 11:52:13');
INSERT INTO `ap_log_action` VALUES (1140, 'video', 'Update video: 72', 1, '2020-02-24 11:52:51');
INSERT INTO `ap_log_action` VALUES (1141, 'video', 'Update video: 62', 1, '2020-02-24 11:53:05');
INSERT INTO `ap_log_action` VALUES (1142, 'video', 'Update video: 67', 1, '2020-02-24 11:53:13');
INSERT INTO `ap_log_action` VALUES (1143, 'video', 'Update video: 68', 1, '2020-02-24 11:53:37');
INSERT INTO `ap_log_action` VALUES (1144, 'question', 'Update question: 3', 1, '2020-02-24 03:36:57');
INSERT INTO `ap_log_action` VALUES (1145, 'project', 'Update project: 37', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1146, 'project', 'Update project: 36', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1147, 'project', 'Update project: 34', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1148, 'project', 'Update project: 33', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1149, 'project', 'Update project: 32', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1150, 'project', 'Update project: 30', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1151, 'project', 'Update project: 29', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1152, 'project', 'Update project: 28', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1153, 'project', 'Update project: 27', 1, '2020-02-26 01:58:54');
INSERT INTO `ap_log_action` VALUES (1154, 'project', 'Update project: 26', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1155, 'project', 'Update project: 25', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1156, 'project', 'Update project: 24', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1157, 'project', 'Update project: 23', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1158, 'project', 'Update project: 22', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1159, 'project', 'Update project: 21', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1160, 'project', 'Update project: 20', 1, '2020-02-26 01:59:07');
INSERT INTO `ap_log_action` VALUES (1161, 'project', 'Update project: 19', 1, '2020-02-26 01:59:08');
INSERT INTO `ap_log_action` VALUES (1162, 'project', 'Update project: 13', 1, '2020-02-26 02:01:31');
INSERT INTO `ap_log_action` VALUES (1163, 'working_field', 'Update working_field: 23', 1, '2020-02-26 02:01:58');
INSERT INTO `ap_log_action` VALUES (1164, 'working_field', 'Update working_field: 22', 1, '2020-02-26 02:01:59');
INSERT INTO `ap_log_action` VALUES (1165, 'working_field', 'Update working_field: 21', 1, '2020-02-26 02:01:59');
INSERT INTO `ap_log_action` VALUES (1166, 'working_field', 'Update working_field: 20', 1, '2020-02-26 02:01:59');
INSERT INTO `ap_log_action` VALUES (1167, 'post', 'Insert post: 24', 1, '2020-02-26 02:19:34');
INSERT INTO `ap_log_action` VALUES (1168, 'pro_service', 'Insert pro_service: 9', 1, '2020-02-26 02:20:59');
INSERT INTO `ap_log_action` VALUES (1169, 'pro_service', 'Update pro_service: 9', 1, '2020-02-26 02:21:10');
INSERT INTO `ap_log_action` VALUES (1170, 'project', 'Insert project: 38', 1, '2020-02-26 02:21:32');
INSERT INTO `ap_log_action` VALUES (1171, 'project', 'Update project: 38', 1, '2020-02-26 02:21:40');
INSERT INTO `ap_log_action` VALUES (1172, 'gallery', 'Insert gallery: 0', 1, '2020-02-26 02:22:22');
INSERT INTO `ap_log_action` VALUES (1173, 'gallery', 'Update gallery: 74', 1, '2020-02-26 02:22:30');
INSERT INTO `ap_log_action` VALUES (1174, 'video', 'Insert video: 0', 1, '2020-02-26 02:22:57');
INSERT INTO `ap_log_action` VALUES (1175, 'video', 'Update video: 75', 1, '2020-02-26 02:23:06');
INSERT INTO `ap_log_action` VALUES (1176, 'career', 'Insert career: 12', 1, '2020-02-26 02:25:25');
INSERT INTO `ap_log_action` VALUES (1177, 'career', 'Update career: 12', 1, '2020-02-26 02:25:34');
INSERT INTO `ap_log_action` VALUES (1178, 'category', 'Insert category: 102', 1, '2020-02-26 02:29:43');
INSERT INTO `ap_log_action` VALUES (1179, 'page', 'Update page: 22', 1, '2020-02-26 02:55:00');
INSERT INTO `ap_log_action` VALUES (1180, 'page', 'Update page: 22', 1, '2020-02-26 02:55:13');
INSERT INTO `ap_log_action` VALUES (1181, 'users', 'Update users: 1', 1, '2020-02-26 03:50:08');
INSERT INTO `ap_log_action` VALUES (1182, 'users', 'Update users: 1', 1, '2020-02-26 03:50:46');
INSERT INTO `ap_log_action` VALUES (1183, 'users', 'Update users: 1', 1, '2020-02-26 03:51:13');
INSERT INTO `ap_log_action` VALUES (1184, 'gallery', 'Insert gallery: 0', 1, '2020-02-26 03:56:34');
INSERT INTO `ap_log_action` VALUES (1185, 'gallery', 'Update gallery: 76', 1, '2020-02-26 03:56:41');
INSERT INTO `ap_log_action` VALUES (1186, 'video', 'Insert video: 0', 1, '2020-02-26 04:01:51');
INSERT INTO `ap_log_action` VALUES (1187, 'video', 'Update video: 77', 1, '2020-02-26 04:02:08');
INSERT INTO `ap_log_action` VALUES (1188, 'video', 'Update video: 73', 1, '2020-02-26 04:02:08');
INSERT INTO `ap_log_action` VALUES (1189, 'video', 'Update video: 72', 1, '2020-02-26 04:02:08');
INSERT INTO `ap_log_action` VALUES (1190, 'video', 'Update video: 68', 1, '2020-02-26 04:02:09');
INSERT INTO `ap_log_action` VALUES (1191, 'video', 'Update video: 67', 1, '2020-02-26 04:02:09');
INSERT INTO `ap_log_action` VALUES (1192, 'video', 'Update video: 43', 1, '2020-02-26 04:02:55');
INSERT INTO `ap_log_action` VALUES (1193, 'video', 'Update video: 62', 1, '2020-02-26 04:03:11');
INSERT INTO `ap_log_action` VALUES (1194, 'video', 'Update video: 62', 1, '2020-02-26 04:03:22');
INSERT INTO `ap_log_action` VALUES (1195, 'video', 'Update video: 62', 1, '2020-02-26 04:04:00');
INSERT INTO `ap_log_action` VALUES (1196, 'post', 'Update post: 23', 1, '2020-02-26 04:06:14');
INSERT INTO `ap_log_action` VALUES (1197, 'post', 'Update post: 23', 1, '2020-02-26 04:06:33');
INSERT INTO `ap_log_action` VALUES (1198, 'post', 'Insert post: 25', 1, '2020-02-26 04:09:22');
INSERT INTO `ap_log_action` VALUES (1199, 'post', 'Update post: 25', 1, '2020-02-26 04:09:37');
INSERT INTO `ap_log_action` VALUES (1200, 'post', 'Insert post: 26', 1, '2020-02-26 04:10:05');
INSERT INTO `ap_log_action` VALUES (1201, 'post', 'Update post: 26', 1, '2020-02-26 04:10:11');
INSERT INTO `ap_log_action` VALUES (1202, 'post', 'Update post: 26', 1, '2020-02-26 04:10:21');
INSERT INTO `ap_log_action` VALUES (1203, 'post', 'Update post: 26', 1, '2020-02-26 04:50:12');
INSERT INTO `ap_log_action` VALUES (1204, 'post', 'Update post: 25', 1, '2020-02-26 04:50:15');
INSERT INTO `ap_log_action` VALUES (1205, 'users', 'Update users: 15', 1, '2020-02-27 10:01:51');
INSERT INTO `ap_log_action` VALUES (1206, 'career', 'Insert career: 13', 1, '2020-02-27 11:39:28');
INSERT INTO `ap_log_action` VALUES (1207, 'career', 'Insert career: 14', 1, '2020-02-27 11:40:16');
INSERT INTO `ap_log_action` VALUES (1208, 'post', 'Update post: 24', 1, '2020-02-27 03:43:14');
INSERT INTO `ap_log_action` VALUES (1209, 'post', 'Update post: 23', 1, '2020-02-27 03:44:22');
INSERT INTO `ap_log_action` VALUES (1210, 'post', 'Update post: 23', 1, '2020-02-27 03:44:42');
INSERT INTO `ap_log_action` VALUES (1211, 'post', 'Insert post: 27', 1, '2020-02-27 03:45:19');
INSERT INTO `ap_log_action` VALUES (1212, 'post', 'Update post: 27', 1, '2020-02-27 03:45:29');
INSERT INTO `ap_log_action` VALUES (1213, 'post', 'Update post: 27', 1, '2020-02-27 03:45:41');
INSERT INTO `ap_log_action` VALUES (1214, 'post', 'Update post: 27', 1, '2020-02-27 03:45:52');
INSERT INTO `ap_log_action` VALUES (1215, 'post', 'Update post: 27', 1, '2020-02-27 03:46:08');
INSERT INTO `ap_log_action` VALUES (1216, 'post', 'Update post: 27', 1, '2020-02-27 03:46:18');
INSERT INTO `ap_log_action` VALUES (1217, 'post', 'Update post: 27', 1, '2020-02-27 03:46:39');
INSERT INTO `ap_log_action` VALUES (1218, 'post', 'Update post: 23', 1, '2020-02-27 03:46:49');
INSERT INTO `ap_log_action` VALUES (1219, 'post', 'Update post: 27', 1, '2020-02-27 04:16:22');
INSERT INTO `ap_log_action` VALUES (1220, 'post', 'Update post: 27', 1, '2020-02-27 04:16:31');
INSERT INTO `ap_log_action` VALUES (1221, 'video', 'Insert video: 0', 1, '2020-02-28 05:00:34');
INSERT INTO `ap_log_action` VALUES (1222, 'video', 'Update video: 78', 1, '2020-02-28 05:01:10');
INSERT INTO `ap_log_action` VALUES (1223, 'video', 'Update video: 78', 1, '2020-02-28 05:02:31');
INSERT INTO `ap_log_action` VALUES (1224, 'video', 'Update video: 78', 1, '2020-02-28 05:02:48');
INSERT INTO `ap_log_action` VALUES (1225, 'document', 'Update document: 63', 1, '2020-03-02 09:07:00');
INSERT INTO `ap_log_action` VALUES (1226, 'career', 'Update career: 14', 1, '2020-03-02 09:07:43');
INSERT INTO `ap_log_action` VALUES (1227, 'career', 'Update career: 13', 1, '2020-03-02 09:07:44');
INSERT INTO `ap_log_action` VALUES (1228, 'users', 'Update users: 15', 1, '2020-03-02 09:23:57');
INSERT INTO `ap_log_action` VALUES (1229, 'users', 'Update users: 13', 1, '2020-03-02 09:24:07');
INSERT INTO `ap_log_action` VALUES (1230, 'users', 'Update users: 13', 1, '2020-03-02 09:24:12');
INSERT INTO `ap_log_action` VALUES (1231, 'users', 'Update users: 3', 1, '2020-03-02 09:24:26');
INSERT INTO `ap_log_action` VALUES (1232, 'users', 'Insert users: 0', 1, '2020-03-02 09:29:34');
INSERT INTO `ap_log_action` VALUES (1233, 'page', 'Update page: 23', 1, '2020-03-02 09:32:44');
INSERT INTO `ap_log_action` VALUES (1234, 'page', 'Update page: 22', 1, '2020-03-02 09:32:51');
INSERT INTO `ap_log_action` VALUES (1235, 'post', 'Insert post: 28', 1, '2020-03-02 09:47:22');
INSERT INTO `ap_log_action` VALUES (1236, 'post', 'Update post: 28', 1, '2020-03-02 09:47:34');
INSERT INTO `ap_log_action` VALUES (1237, 'post', 'Update post: 28', 1, '2020-03-02 09:48:12');
INSERT INTO `ap_log_action` VALUES (1238, 'post', 'Update post: 27', 1, '2020-03-02 09:51:05');
INSERT INTO `ap_log_action` VALUES (1239, 'post', 'Update post: 27', 1, '2020-03-02 09:51:11');
INSERT INTO `ap_log_action` VALUES (1240, 'post', 'Update post: 27', 1, '2020-03-02 09:51:19');
INSERT INTO `ap_log_action` VALUES (1241, 'post', 'Update post: 27', 1, '2020-03-02 09:51:27');
INSERT INTO `ap_log_action` VALUES (1242, 'users', 'delete users: 16', 1, '2020-03-02 10:05:51');
INSERT INTO `ap_log_action` VALUES (1243, 'users', 'delete users: 15', 1, '2020-03-02 10:05:51');
INSERT INTO `ap_log_action` VALUES (1244, 'users', 'delete users: 13', 1, '2020-03-02 10:05:52');
INSERT INTO `ap_log_action` VALUES (1245, 'post', 'Update post: 17', 1, '2020-03-02 10:06:11');
INSERT INTO `ap_log_action` VALUES (1246, 'post', 'Update post: 27', 1, '2020-03-02 10:06:16');
INSERT INTO `ap_log_action` VALUES (1247, 'post', 'Update post: 24', 1, '2020-03-02 10:06:37');
INSERT INTO `ap_log_action` VALUES (1248, 'category', 'Update category: 101', 1, '2020-03-02 10:06:50');
INSERT INTO `ap_log_action` VALUES (1249, 'system_menu', 'Delete system_menu: 117', 1, '2020-03-02 10:07:48');
INSERT INTO `ap_log_action` VALUES (1250, 'question', 'Update question: 9', 1, '2020-03-02 10:08:49');
INSERT INTO `ap_log_action` VALUES (1251, 'category', 'Update category: 80', 1, '2020-03-02 10:08:54');
INSERT INTO `ap_log_action` VALUES (1252, 'pro_service', 'Update pro_service: 8', 1, '2020-03-02 10:09:21');
INSERT INTO `ap_log_action` VALUES (1253, 'pro_service', 'Update pro_service: 7', 1, '2020-03-02 10:09:24');
INSERT INTO `ap_log_action` VALUES (1254, 'pro_service', 'Update pro_service: 4', 1, '2020-03-02 10:09:45');
INSERT INTO `ap_log_action` VALUES (1255, 'pro_service', 'Update pro_service: 3', 1, '2020-03-02 10:09:46');
INSERT INTO `ap_log_action` VALUES (1256, 'pro_service', 'Update pro_service: 2', 1, '2020-03-02 10:09:46');
INSERT INTO `ap_log_action` VALUES (1257, 'category', 'Update category: 92', 1, '2020-03-02 10:09:54');
INSERT INTO `ap_log_action` VALUES (1258, 'category', 'Update category: 69', 1, '2020-03-02 10:10:04');
INSERT INTO `ap_log_action` VALUES (1259, 'category', 'Update category: 102', 1, '2020-03-02 10:10:21');
INSERT INTO `ap_log_action` VALUES (1260, 'category', 'Update category: 70', 1, '2020-03-02 10:10:21');
INSERT INTO `ap_log_action` VALUES (1261, 'project', 'Update project: 31', 1, '2020-03-02 10:10:36');
INSERT INTO `ap_log_action` VALUES (1262, 'project', 'Update project: 14', 1, '2020-03-02 10:10:46');
INSERT INTO `ap_log_action` VALUES (1263, 'project', 'Update project: 14', 1, '2020-03-02 10:10:56');
INSERT INTO `ap_log_action` VALUES (1264, 'historydv', 'Update historydv: 18', 1, '2020-03-02 10:11:06');
INSERT INTO `ap_log_action` VALUES (1265, 'historydv', 'Update historydv: 6', 1, '2020-03-02 10:11:11');
INSERT INTO `ap_log_action` VALUES (1266, 'historydv', 'Update historydv: 3', 1, '2020-03-02 10:11:20');
INSERT INTO `ap_log_action` VALUES (1267, 'historydv', 'Update historydv: 21', 1, '2020-03-02 10:11:25');
INSERT INTO `ap_log_action` VALUES (1268, 'working_field', 'Update working_field: 19', 1, '2020-03-02 10:11:34');
INSERT INTO `ap_log_action` VALUES (1269, 'gallery', 'Update gallery: 61', 1, '2020-03-02 10:11:43');
INSERT INTO `ap_log_action` VALUES (1270, 'video', 'Update video: 62', 1, '2020-03-02 10:11:52');
INSERT INTO `ap_log_action` VALUES (1271, 'video', 'Update video: 78', 1, '2020-03-02 10:11:57');
INSERT INTO `ap_log_action` VALUES (1272, 'category', 'Update category: 94', 1, '2020-03-02 10:12:24');
INSERT INTO `ap_log_action` VALUES (1273, 'property', 'Update property: 17', 1, '2020-03-02 10:13:01');
INSERT INTO `ap_log_action` VALUES (1274, 'property', 'Update property: 17', 1, '2020-03-02 10:13:04');
INSERT INTO `ap_log_action` VALUES (1275, 'career', 'Update career: 11', 1, '2020-03-02 10:13:17');
INSERT INTO `ap_log_action` VALUES (1276, 'career', 'Update career: 5', 1, '2020-03-02 10:37:13');
INSERT INTO `ap_log_action` VALUES (1277, 'career', 'Insert career: 15', 1, '2020-03-02 11:03:56');
INSERT INTO `ap_log_action` VALUES (1278, 'groups', 'Update groups: 4', 1, '2020-03-02 11:36:49');
INSERT INTO `ap_log_action` VALUES (1279, 'project', 'Insert project: 39', 1, '2020-06-15 05:21:35');
INSERT INTO `ap_log_action` VALUES (1280, 'page', 'Update page: 15', 1, '2020-06-18 09:32:27');
INSERT INTO `ap_log_action` VALUES (1281, 'page', 'Update page: 15', 1, '2020-06-18 09:33:12');
INSERT INTO `ap_log_action` VALUES (1282, 'page', 'Update page: 15', 1, '2020-06-18 09:34:58');
INSERT INTO `ap_log_action` VALUES (1283, 'page', 'Update page: 15', 1, '2020-06-18 09:38:52');
INSERT INTO `ap_log_action` VALUES (1284, 'page', 'Update page: 15', 1, '2020-06-18 09:47:35');
INSERT INTO `ap_log_action` VALUES (1285, 'page', 'Update page: 7', 1, '2020-06-18 09:49:34');
INSERT INTO `ap_log_action` VALUES (1286, 'page', 'Update page: 7', 1, '2020-06-18 09:50:50');
INSERT INTO `ap_log_action` VALUES (1287, 'page', 'Insert page: 0', 1, '2020-06-18 09:56:33');
INSERT INTO `ap_log_action` VALUES (1288, 'page', 'Update page: 24', 1, '2020-06-18 09:56:59');
INSERT INTO `ap_log_action` VALUES (1289, 'page', 'Update page: 24', 1, '2020-06-18 09:57:53');
INSERT INTO `ap_log_action` VALUES (1290, 'page', 'Update page: 24', 1, '2020-06-18 09:58:45');
INSERT INTO `ap_log_action` VALUES (1291, 'page', 'Update page: 24', 1, '2020-06-18 09:59:18');
INSERT INTO `ap_log_action` VALUES (1292, 'document', 'Insert document: 79', 1, '2020-06-18 10:02:56');
INSERT INTO `ap_log_action` VALUES (1293, 'document', 'Update document: 79', 1, '2020-06-18 10:03:52');
INSERT INTO `ap_log_action` VALUES (1294, 'groups', 'Update groups: 4', 1, '2020-06-18 10:38:15');
INSERT INTO `ap_log_action` VALUES (1295, 'groups', 'Insert groups: 19', 1, '2020-06-18 10:38:53');
INSERT INTO `ap_log_action` VALUES (1296, 'groups', 'Insert groups: 20', 1, '2020-06-18 10:39:08');
INSERT INTO `ap_log_action` VALUES (1297, 'groups', 'Insert groups: 21', 1, '2020-06-18 10:45:23');
INSERT INTO `ap_log_action` VALUES (1298, 'users', 'Insert users: 0', 1, '2020-06-18 10:47:51');
INSERT INTO `ap_log_action` VALUES (1299, 'users', 'Insert users: 0', 1, '2020-06-18 10:55:10');
INSERT INTO `ap_log_action` VALUES (1300, 'groups', 'Insert groups: 22', 1, '2020-06-18 10:57:30');
INSERT INTO `ap_log_action` VALUES (1301, 'groups', 'Update groups: 22', 1, '2020-06-18 10:57:50');
INSERT INTO `ap_log_action` VALUES (1302, 'category', 'Insert category: 103', 1, '2020-06-18 10:58:39');
INSERT INTO `ap_log_action` VALUES (1303, 'groups', 'Insert groups: 23', 1, '2020-06-18 10:58:47');
INSERT INTO `ap_log_action` VALUES (1304, 'category', 'Insert category: 104', 1, '2020-06-18 10:58:59');
INSERT INTO `ap_log_action` VALUES (1305, 'category', 'Insert category: 105', 1, '2020-06-18 10:59:15');
INSERT INTO `ap_log_action` VALUES (1306, 'category', 'Update category: 104', 1, '2020-06-18 10:59:31');
INSERT INTO `ap_log_action` VALUES (1307, 'category', 'Update category: 105', 1, '2020-06-18 10:59:38');
INSERT INTO `ap_log_action` VALUES (1308, 'category', 'Insert category: 106', 1, '2020-06-18 11:00:00');
INSERT INTO `ap_log_action` VALUES (1309, 'users', 'Insert users: 0', 1, '2020-06-18 11:00:03');
INSERT INTO `ap_log_action` VALUES (1310, 'groups', 'Update groups: 23', 1, '2020-06-18 11:01:30');
INSERT INTO `ap_log_action` VALUES (1311, 'category', 'Insert category: 107', 1, '2020-06-18 11:01:37');
INSERT INTO `ap_log_action` VALUES (1312, 'groups', 'Update groups: 23', 1, '2020-06-18 11:02:00');
INSERT INTO `ap_log_action` VALUES (1313, 'category', 'Insert category: 108', 1, '2020-06-18 11:02:07');
INSERT INTO `ap_log_action` VALUES (1314, 'groups', 'Update groups: 23', 1, '2020-06-18 11:02:27');
INSERT INTO `ap_log_action` VALUES (1315, 'category', 'Update category: 108', 1, '2020-06-18 11:02:50');
INSERT INTO `ap_log_action` VALUES (1316, 'groups', 'Update groups: 21', 1, '2020-06-18 11:03:09');
INSERT INTO `ap_log_action` VALUES (1317, 'category', 'Update category: 108', 1, '2020-06-18 11:03:20');
INSERT INTO `ap_log_action` VALUES (1318, 'category', 'Insert category: 109', 1, '2020-06-18 11:03:53');
INSERT INTO `ap_log_action` VALUES (1319, 'category', 'Insert category: 110', 1, '2020-06-18 11:04:33');
INSERT INTO `ap_log_action` VALUES (1320, 'groups', 'Insert groups: 24', 1, '2020-06-18 11:05:40');
INSERT INTO `ap_log_action` VALUES (1321, 'users', 'Insert users: 0', 1, '2020-06-18 11:06:10');
INSERT INTO `ap_log_action` VALUES (1322, 'users', 'Update users: 20', 1, '2020-06-18 11:07:56');
INSERT INTO `ap_log_action` VALUES (1323, 'category', 'Update category: 110', 1, '2020-06-18 11:11:06');
INSERT INTO `ap_log_action` VALUES (1324, 'category', 'Update category: 104', 1, '2020-06-18 11:13:02');
INSERT INTO `ap_log_action` VALUES (1325, 'category', 'Update category: 108', 1, '2020-06-18 11:13:02');
INSERT INTO `ap_log_action` VALUES (1326, 'users', 'Insert users: 0', 1, '2020-06-18 11:13:05');
INSERT INTO `ap_log_action` VALUES (1327, 'users', 'Insert users: 0', 1, '2020-06-18 11:13:53');
INSERT INTO `ap_log_action` VALUES (1328, 'users', 'Insert users: 0', 1, '2020-06-18 11:14:41');
INSERT INTO `ap_log_action` VALUES (1329, 'users', 'Insert users: 0', 1, '2020-06-18 11:15:50');
INSERT INTO `ap_log_action` VALUES (1330, 'users', 'delete users: 24', 1, '2020-06-18 11:16:24');
INSERT INTO `ap_log_action` VALUES (1331, 'users', 'delete users: 20', 1, '2020-06-18 11:16:41');
INSERT INTO `ap_log_action` VALUES (1332, 'users', 'delete users: 19', 1, '2020-06-18 11:16:41');
INSERT INTO `ap_log_action` VALUES (1333, 'users', 'Update users: 23', 1, '2020-06-18 11:17:17');
INSERT INTO `ap_log_action` VALUES (1334, 'post', 'Insert post: 29', 1, '2020-06-18 11:22:52');
INSERT INTO `ap_log_action` VALUES (1335, 'post', 'Insert post: 30', 1, '2020-06-18 11:46:25');
INSERT INTO `ap_log_action` VALUES (1336, 'post', 'Insert post: 31', 1, '2020-06-18 11:47:33');
INSERT INTO `ap_log_action` VALUES (1337, 'post', 'Insert post: 32', 1, '2020-06-18 11:48:22');
INSERT INTO `ap_log_action` VALUES (1338, 'post', 'Insert post: 33', 1, '2020-06-18 11:49:44');
INSERT INTO `ap_log_action` VALUES (1339, 'post', 'Insert post: 34', 1, '2020-06-18 11:50:07');
INSERT INTO `ap_log_action` VALUES (1340, 'post', 'Insert post: 35', 1, '2020-06-18 11:50:25');
INSERT INTO `ap_log_action` VALUES (1341, 'post', 'Insert post: 36', 1, '2020-06-18 11:50:38');
INSERT INTO `ap_log_action` VALUES (1342, 'post', 'Insert post: 37', 1, '2020-06-18 11:50:53');
INSERT INTO `ap_log_action` VALUES (1343, 'post', 'Insert post: 38', 1, '2020-06-18 11:51:10');
INSERT INTO `ap_log_action` VALUES (1344, 'post', 'Insert post: 39', 1, '2020-06-18 11:51:31');
INSERT INTO `ap_log_action` VALUES (1345, 'post', 'Insert post: 40', 1, '2020-06-18 11:51:47');
INSERT INTO `ap_log_action` VALUES (1346, 'post', 'Insert post: 41', 1, '2020-06-18 11:52:01');
INSERT INTO `ap_log_action` VALUES (1347, 'banner', 'Sửa Banner có id là 3', 1, '2020-06-18 12:03:11');
INSERT INTO `ap_log_action` VALUES (1348, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 01:38:14');
INSERT INTO `ap_log_action` VALUES (1349, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 01:39:03');
INSERT INTO `ap_log_action` VALUES (1350, 'document', 'Insert document: 80', 1, '2020-06-18 01:55:10');
INSERT INTO `ap_log_action` VALUES (1351, 'category', 'Insert category: 111', 1, '2020-06-18 02:11:27');
INSERT INTO `ap_log_action` VALUES (1352, 'category', 'Insert category: 112', 1, '2020-06-18 02:12:39');
INSERT INTO `ap_log_action` VALUES (1353, 'category', 'Insert category: 113', 1, '2020-06-18 02:14:26');
INSERT INTO `ap_log_action` VALUES (1354, 'category', 'Update category: 91', 1, '2020-06-18 02:15:01');
INSERT INTO `ap_log_action` VALUES (1355, 'category', 'Insert category: 114', 1, '2020-06-18 02:15:34');
INSERT INTO `ap_log_action` VALUES (1356, 'category', 'Insert category: 115', 1, '2020-06-18 02:16:12');
INSERT INTO `ap_log_action` VALUES (1357, 'category', 'Update category: 113', 1, '2020-06-18 02:17:45');
INSERT INTO `ap_log_action` VALUES (1358, 'category', 'Update category: 115', 1, '2020-06-18 02:18:13');
INSERT INTO `ap_log_action` VALUES (1359, 'document', 'Insert document: 81', 1, '2020-06-18 02:22:47');
INSERT INTO `ap_log_action` VALUES (1360, 'document', 'Insert document: 82', 1, '2020-06-18 02:23:50');
INSERT INTO `ap_log_action` VALUES (1361, 'document', 'Insert document: 83', 1, '2020-06-18 02:24:30');
INSERT INTO `ap_log_action` VALUES (1362, 'document', 'Insert document: 84', 1, '2020-06-18 02:24:53');
INSERT INTO `ap_log_action` VALUES (1363, 'document', 'Update document: 80', 1, '2020-06-18 02:25:12');
INSERT INTO `ap_log_action` VALUES (1364, 'document', 'Update document: 36', 1, '2020-06-18 02:25:26');
INSERT INTO `ap_log_action` VALUES (1365, 'category', 'Insert category: 116', 1, '2020-06-18 02:30:57');
INSERT INTO `ap_log_action` VALUES (1366, 'category', 'Insert category: 117', 1, '2020-06-18 02:32:30');
INSERT INTO `ap_log_action` VALUES (1367, 'category', 'Insert category: 118', 1, '2020-06-18 02:34:32');
INSERT INTO `ap_log_action` VALUES (1368, 'category', 'Insert category: 119', 1, '2020-06-18 02:36:17');
INSERT INTO `ap_log_action` VALUES (1369, 'category', 'Insert category: 120', 1, '2020-06-18 02:36:50');
INSERT INTO `ap_log_action` VALUES (1370, 'category', 'Insert category: 121', 1, '2020-06-18 02:37:16');
INSERT INTO `ap_log_action` VALUES (1371, 'category', 'Update category: 79', 1, '2020-06-18 02:39:22');
INSERT INTO `ap_log_action` VALUES (1372, 'category', 'Update category: 68', 1, '2020-06-18 02:39:40');
INSERT INTO `ap_log_action` VALUES (1373, 'category', 'Insert category: 122', 1, '2020-06-18 02:45:35');
INSERT INTO `ap_log_action` VALUES (1374, 'category', 'Insert category: 123', 1, '2020-06-18 02:46:03');
INSERT INTO `ap_log_action` VALUES (1375, 'document', 'Insert document: 85', 1, '2020-06-18 02:47:37');
INSERT INTO `ap_log_action` VALUES (1376, 'document', 'Insert document: 86', 1, '2020-06-18 02:48:02');
INSERT INTO `ap_log_action` VALUES (1377, 'document', 'Insert document: 87', 1, '2020-06-18 02:48:23');
INSERT INTO `ap_log_action` VALUES (1378, 'document', 'Update document: 87', 1, '2020-06-18 02:49:35');
INSERT INTO `ap_log_action` VALUES (1379, 'document', 'Update document: 84', 1, '2020-06-18 02:49:42');
INSERT INTO `ap_log_action` VALUES (1380, 'document', 'Update document: 83', 1, '2020-06-18 02:49:42');
INSERT INTO `ap_log_action` VALUES (1381, 'document', 'Insert document: 88', 1, '2020-06-18 02:50:11');
INSERT INTO `ap_log_action` VALUES (1382, 'document', 'Insert document: 89', 1, '2020-06-18 02:50:23');
INSERT INTO `ap_log_action` VALUES (1383, 'category', 'Insert category: 124', 1, '2020-06-18 02:53:12');
INSERT INTO `ap_log_action` VALUES (1384, 'category', 'Insert category: 125', 1, '2020-06-18 02:53:50');
INSERT INTO `ap_log_action` VALUES (1385, 'category', 'Insert category: 126', 1, '2020-06-18 02:54:06');
INSERT INTO `ap_log_action` VALUES (1386, 'category', 'Insert category: 127', 1, '2020-06-18 02:54:35');
INSERT INTO `ap_log_action` VALUES (1387, 'category', 'Update category: 127', 1, '2020-06-18 02:54:38');
INSERT INTO `ap_log_action` VALUES (1388, 'category', 'Update category: 126', 1, '2020-06-18 02:54:45');
INSERT INTO `ap_log_action` VALUES (1389, 'category', 'Update category: 125', 1, '2020-06-18 02:54:45');
INSERT INTO `ap_log_action` VALUES (1390, 'question', 'Insert question: 10', 1, '2020-06-18 02:57:20');
INSERT INTO `ap_log_action` VALUES (1391, 'question', 'Insert question: 11', 1, '2020-06-18 02:58:08');
INSERT INTO `ap_log_action` VALUES (1392, 'question', 'Insert question: 12', 1, '2020-06-18 02:58:26');
INSERT INTO `ap_log_action` VALUES (1393, 'question', 'Insert question: 13', 1, '2020-06-18 02:58:58');
INSERT INTO `ap_log_action` VALUES (1394, 'question', 'Update question: 13', 1, '2020-06-18 02:59:06');
INSERT INTO `ap_log_action` VALUES (1395, 'question', 'Insert question: 14', 1, '2020-06-18 02:59:22');
INSERT INTO `ap_log_action` VALUES (1396, 'question', 'Insert question: 15', 1, '2020-06-18 03:00:15');
INSERT INTO `ap_log_action` VALUES (1397, 'question', 'Insert question: 16', 1, '2020-06-18 03:01:17');
INSERT INTO `ap_log_action` VALUES (1398, 'question', 'Update question: 16', 1, '2020-06-18 03:04:35');
INSERT INTO `ap_log_action` VALUES (1399, 'question', 'Update question: 5', 1, '2020-06-18 03:04:47');
INSERT INTO `ap_log_action` VALUES (1400, 'question', 'Update question: 4', 1, '2020-06-18 03:04:47');
INSERT INTO `ap_log_action` VALUES (1401, 'newsletter', 'Update newsletter: 21', 1, '2020-06-18 03:08:38');
INSERT INTO `ap_log_action` VALUES (1402, 'newsletter', 'Update newsletter: 20', 1, '2020-06-18 03:08:48');
INSERT INTO `ap_log_action` VALUES (1403, 'newsletter', 'Update newsletter: 16', 1, '2020-06-18 03:08:49');
INSERT INTO `ap_log_action` VALUES (1404, 'category', 'Insert category: 128', 1, '2020-06-18 03:23:53');
INSERT INTO `ap_log_action` VALUES (1405, 'category', 'Insert category: 129', 1, '2020-06-18 03:24:24');
INSERT INTO `ap_log_action` VALUES (1406, 'category', 'Insert category: 130', 1, '2020-06-18 03:27:09');
INSERT INTO `ap_log_action` VALUES (1407, 'contact', 'Update contact: 13', 1, '2020-06-18 03:34:20');
INSERT INTO `ap_log_action` VALUES (1408, 'contact', 'Update contact: 12', 1, '2020-06-18 03:44:07');
INSERT INTO `ap_log_action` VALUES (1409, 'contact', 'Update contact: 17', 1, '2020-06-18 03:44:15');
INSERT INTO `ap_log_action` VALUES (1410, 'contact', 'Update contact: 16', 1, '2020-06-18 03:44:15');
INSERT INTO `ap_log_action` VALUES (1411, 'contact', 'Update contact: 15', 1, '2020-06-18 03:44:15');
INSERT INTO `ap_log_action` VALUES (1412, 'pro_service', 'Insert pro_service: 10', 1, '2020-06-18 03:46:23');
INSERT INTO `ap_log_action` VALUES (1413, 'category', 'Insert category: 131', 1, '2020-06-18 04:03:21');
INSERT INTO `ap_log_action` VALUES (1414, 'category', 'Insert category: 132', 1, '2020-06-18 04:03:44');
INSERT INTO `ap_log_action` VALUES (1415, 'category', 'Insert category: 133', 1, '2020-06-18 04:04:24');
INSERT INTO `ap_log_action` VALUES (1416, 'pro_service', 'Insert pro_service: 11', 1, '2020-06-18 04:04:53');
INSERT INTO `ap_log_action` VALUES (1417, 'category', 'Insert category: 134', 1, '2020-06-18 04:05:10');
INSERT INTO `ap_log_action` VALUES (1418, 'pro_service', 'Update pro_service: 11', 1, '2020-06-18 04:05:11');
INSERT INTO `ap_log_action` VALUES (1419, 'category', 'Insert category: 135', 1, '2020-06-18 04:05:51');
INSERT INTO `ap_log_action` VALUES (1420, 'pro_service', 'Insert pro_service: 12', 1, '2020-06-18 04:06:04');
INSERT INTO `ap_log_action` VALUES (1421, 'category', 'Insert category: 136', 1, '2020-06-18 04:06:29');
INSERT INTO `ap_log_action` VALUES (1422, 'pro_service', 'Insert pro_service: 13', 1, '2020-06-18 04:06:40');
INSERT INTO `ap_log_action` VALUES (1423, 'category', 'Update category: 64', 1, '2020-06-18 04:09:00');
INSERT INTO `ap_log_action` VALUES (1424, 'category', 'Update category: 129', 1, '2020-06-18 04:15:09');
INSERT INTO `ap_log_action` VALUES (1425, 'category', 'Insert category: 137', 1, '2020-06-18 04:16:44');
INSERT INTO `ap_log_action` VALUES (1426, 'category', 'Update category: 130', 1, '2020-06-18 04:17:47');
INSERT INTO `ap_log_action` VALUES (1427, 'pro_service', 'Insert pro_service: 14', 1, '2020-06-18 04:18:17');
INSERT INTO `ap_log_action` VALUES (1428, 'pro_service', 'Insert pro_service: 15', 1, '2020-06-18 04:18:59');
INSERT INTO `ap_log_action` VALUES (1429, 'category', 'Update category: 137', 1, '2020-06-18 04:19:34');
INSERT INTO `ap_log_action` VALUES (1430, 'pro_service', 'Insert pro_service: 16', 1, '2020-06-18 04:21:13');
INSERT INTO `ap_log_action` VALUES (1431, 'pro_service', 'Insert pro_service: 17', 1, '2020-06-18 04:21:49');
INSERT INTO `ap_log_action` VALUES (1432, 'pro_service', 'Insert pro_service: 18', 1, '2020-06-18 04:23:41');
INSERT INTO `ap_log_action` VALUES (1433, 'pro_service', 'Insert pro_service: 19', 1, '2020-06-18 04:25:31');
INSERT INTO `ap_log_action` VALUES (1434, 'pro_service', 'Insert pro_service: 20', 1, '2020-06-18 04:28:11');
INSERT INTO `ap_log_action` VALUES (1435, 'pro_service', 'Update pro_service: 10', 1, '2020-06-18 04:33:58');
INSERT INTO `ap_log_action` VALUES (1436, 'pro_service', 'Update pro_service: 1', 1, '2020-06-18 04:33:58');
INSERT INTO `ap_log_action` VALUES (1437, 'pro_service', 'Insert pro_service: 21', 1, '2020-06-18 04:37:00');
INSERT INTO `ap_log_action` VALUES (1438, 'pro_service', 'Insert pro_service: 22', 1, '2020-06-18 04:37:24');
INSERT INTO `ap_log_action` VALUES (1439, 'pro_service', 'Insert pro_service: 23', 1, '2020-06-18 04:37:52');
INSERT INTO `ap_log_action` VALUES (1440, 'pro_service', 'Update pro_service: 23', 1, '2020-06-18 04:39:03');
INSERT INTO `ap_log_action` VALUES (1441, 'pro_service', 'Update pro_service: 22', 1, '2020-06-18 04:39:31');
INSERT INTO `ap_log_action` VALUES (1442, 'pro_service', 'Update pro_service: 21', 1, '2020-06-18 04:39:31');
INSERT INTO `ap_log_action` VALUES (1443, 'pro_service', 'Update pro_service: 20', 1, '2020-06-18 04:40:29');
INSERT INTO `ap_log_action` VALUES (1444, 'category', 'Update category: 16', 1, '2020-06-18 04:45:44');
INSERT INTO `ap_log_action` VALUES (1445, 'category', 'Insert category: 138', 1, '2020-06-18 04:46:38');
INSERT INTO `ap_log_action` VALUES (1446, 'category', 'Insert category: 139', 1, '2020-06-18 04:47:21');
INSERT INTO `ap_log_action` VALUES (1447, 'category', 'Insert category: 140', 1, '2020-06-18 04:47:44');
INSERT INTO `ap_log_action` VALUES (1448, 'category', 'Insert category: 141', 1, '2020-06-18 04:49:06');
INSERT INTO `ap_log_action` VALUES (1449, 'category', 'Insert category: 142', 1, '2020-06-18 04:49:26');
INSERT INTO `ap_log_action` VALUES (1450, 'category', 'Insert category: 143', 1, '2020-06-18 04:49:42');
INSERT INTO `ap_log_action` VALUES (1451, 'category', 'Insert category: 144', 1, '2020-06-18 04:49:58');
INSERT INTO `ap_log_action` VALUES (1452, 'category', 'Insert category: 145', 1, '2020-06-18 04:50:58');
INSERT INTO `ap_log_action` VALUES (1453, 'category', 'Insert category: 146', 1, '2020-06-18 04:51:21');
INSERT INTO `ap_log_action` VALUES (1454, 'category', 'Update category: 52', 1, '2020-06-18 04:51:26');
INSERT INTO `ap_log_action` VALUES (1455, 'category', 'Update category: 144', 1, '2020-06-18 04:51:35');
INSERT INTO `ap_log_action` VALUES (1456, 'category', 'Update category: 143', 1, '2020-06-18 04:51:35');
INSERT INTO `ap_log_action` VALUES (1457, 'project', 'Insert project: 40', 1, '2020-06-18 04:51:36');
INSERT INTO `ap_log_action` VALUES (1458, 'project', 'Update project: 40', 1, '2020-06-18 04:51:54');
INSERT INTO `ap_log_action` VALUES (1459, 'project', 'Insert project: 41', 1, '2020-06-18 04:52:30');
INSERT INTO `ap_log_action` VALUES (1460, 'category', 'Update category: 140', 1, '2020-06-18 04:52:56');
INSERT INTO `ap_log_action` VALUES (1461, 'project', 'Insert project: 42', 1, '2020-06-18 04:52:57');
INSERT INTO `ap_log_action` VALUES (1462, 'category', 'Update category: 140', 1, '2020-06-18 04:53:22');
INSERT INTO `ap_log_action` VALUES (1463, 'project', 'Insert project: 43', 1, '2020-06-18 04:53:59');
INSERT INTO `ap_log_action` VALUES (1464, 'project', 'Insert project: 44', 1, '2020-06-18 04:56:10');
INSERT INTO `ap_log_action` VALUES (1465, 'project', 'Insert project: 45', 1, '2020-06-18 04:56:50');
INSERT INTO `ap_log_action` VALUES (1466, 'project', 'Insert project: 46', 1, '2020-06-18 04:57:21');
INSERT INTO `ap_log_action` VALUES (1467, 'project', 'Insert project: 47', 1, '2020-06-18 04:57:52');
INSERT INTO `ap_log_action` VALUES (1468, 'project', 'Update project: 39', 1, '2020-06-18 04:59:29');
INSERT INTO `ap_log_action` VALUES (1469, 'project', 'Update project: 15', 1, '2020-06-18 05:01:57');
INSERT INTO `ap_log_action` VALUES (1470, 'project', 'Update project: 14', 1, '2020-06-18 05:01:57');
INSERT INTO `ap_log_action` VALUES (1471, 'project', 'Update project: 42', 1, '2020-06-18 05:02:02');
INSERT INTO `ap_log_action` VALUES (1472, 'project', 'Update project: 39', 1, '2020-06-18 05:02:04');
INSERT INTO `ap_log_action` VALUES (1473, 'historydv', 'Update historydv: 22', 1, '2020-06-18 05:04:31');
INSERT INTO `ap_log_action` VALUES (1474, 'historydv', 'Update historydv: 23', 1, '2020-06-18 05:05:49');
INSERT INTO `ap_log_action` VALUES (1475, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 05:10:57');
INSERT INTO `ap_log_action` VALUES (1476, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 05:11:33');
INSERT INTO `ap_log_action` VALUES (1477, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 05:12:18');
INSERT INTO `ap_log_action` VALUES (1478, 'historydv', 'Update historydv: 22', 1, '2020-06-18 05:13:37');
INSERT INTO `ap_log_action` VALUES (1479, 'historydv', 'Insert historydv: 0', 1, '2020-06-18 05:14:05');
INSERT INTO `ap_log_action` VALUES (1480, 'historydv', 'Update historydv: 27', 1, '2020-06-18 05:14:09');
INSERT INTO `ap_log_action` VALUES (1481, 'historydv', 'Update historydv: 25', 1, '2020-06-18 05:14:15');
INSERT INTO `ap_log_action` VALUES (1482, 'historydv', 'Update historydv: 26', 1, '2020-06-18 05:14:15');
INSERT INTO `ap_log_action` VALUES (1483, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:15:32');
INSERT INTO `ap_log_action` VALUES (1484, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:16:44');
INSERT INTO `ap_log_action` VALUES (1485, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:19:56');
INSERT INTO `ap_log_action` VALUES (1486, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:20:20');
INSERT INTO `ap_log_action` VALUES (1487, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:20:35');
INSERT INTO `ap_log_action` VALUES (1488, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:20:46');
INSERT INTO `ap_log_action` VALUES (1489, 'working_field', 'Insert working_field: 0', 1, '2020-06-18 05:21:18');
INSERT INTO `ap_log_action` VALUES (1490, 'working_field', 'Insert working_field: 0', 1, '2020-06-19 09:00:51');
INSERT INTO `ap_log_action` VALUES (1491, 'working_field', 'Insert working_field: 0', 1, '2020-06-19 09:01:01');
INSERT INTO `ap_log_action` VALUES (1492, 'working_field', 'Insert working_field: 0', 1, '2020-06-19 09:01:22');
INSERT INTO `ap_log_action` VALUES (1493, 'working_field', 'Insert working_field: 0', 1, '2020-06-19 09:01:34');
INSERT INTO `ap_log_action` VALUES (1494, 'working_field', 'Update working_field: 34', 1, '2020-06-19 09:05:06');
INSERT INTO `ap_log_action` VALUES (1495, 'working_field', 'Update working_field: 25', 1, '2020-06-19 09:30:12');
INSERT INTO `ap_log_action` VALUES (1496, 'working_field', 'Update working_field: 33', 1, '2020-06-19 09:30:35');
INSERT INTO `ap_log_action` VALUES (1497, 'working_field', 'Update working_field: 32', 1, '2020-06-19 09:30:35');
INSERT INTO `ap_log_action` VALUES (1498, 'working_field', 'Update working_field: 34', 1, '2020-06-19 09:31:06');
INSERT INTO `ap_log_action` VALUES (1499, 'post', 'Update post: 41', 1, '2020-06-19 04:01:24');
INSERT INTO `ap_log_action` VALUES (1500, 'post', 'Update post: 41', 1, '2020-06-19 04:02:04');
INSERT INTO `ap_log_action` VALUES (1501, 'category', 'Insert category: 147', 1, '2020-06-22 09:15:14');
INSERT INTO `ap_log_action` VALUES (1502, 'category', 'Insert category: 148', 1, '2020-06-22 09:15:59');
INSERT INTO `ap_log_action` VALUES (1503, 'category', 'Insert category: 149', 1, '2020-06-22 09:16:13');
INSERT INTO `ap_log_action` VALUES (1504, 'category', 'Insert category: 150', 1, '2020-06-22 09:16:23');
INSERT INTO `ap_log_action` VALUES (1505, 'category', 'Insert category: 151', 1, '2020-06-22 09:16:36');
INSERT INTO `ap_log_action` VALUES (1506, 'category', 'Insert category: 152', 1, '2020-06-22 09:16:46');
INSERT INTO `ap_log_action` VALUES (1507, 'category', 'Insert category: 153', 1, '2020-06-22 09:16:56');
INSERT INTO `ap_log_action` VALUES (1508, 'category', 'Insert category: 154', 1, '2020-06-22 09:17:13');
INSERT INTO `ap_log_action` VALUES (1509, 'category', 'Insert category: 155', 1, '2020-06-22 09:17:25');
INSERT INTO `ap_log_action` VALUES (1510, 'category', 'Insert category: 156', 1, '2020-06-22 09:25:55');
INSERT INTO `ap_log_action` VALUES (1511, 'category', 'Update category: 156', 1, '2020-06-22 09:27:58');
INSERT INTO `ap_log_action` VALUES (1512, 'category', 'Update category: 155', 1, '2020-06-22 09:31:33');
INSERT INTO `ap_log_action` VALUES (1513, 'category', 'Update category: 155', 1, '2020-06-22 09:31:50');
INSERT INTO `ap_log_action` VALUES (1514, 'category', 'Update category: 154', 1, '2020-06-22 09:31:51');
INSERT INTO `ap_log_action` VALUES (1515, 'property', 'Insert property: 0', 1, '2020-06-22 09:34:04');
INSERT INTO `ap_log_action` VALUES (1516, 'property', 'Insert property: 0', 1, '2020-06-22 09:34:29');
INSERT INTO `ap_log_action` VALUES (1517, 'property', 'Insert property: 0', 1, '2020-06-22 09:34:43');
INSERT INTO `ap_log_action` VALUES (1518, 'property', 'Insert property: 0', 1, '2020-06-22 09:35:04');
INSERT INTO `ap_log_action` VALUES (1519, 'property', 'Insert property: 0', 1, '2020-06-22 09:35:13');
INSERT INTO `ap_log_action` VALUES (1520, 'property', 'Insert property: 0', 1, '2020-06-22 09:35:44');
INSERT INTO `ap_log_action` VALUES (1521, 'property', 'Insert property: 0', 1, '2020-06-22 09:35:53');
INSERT INTO `ap_log_action` VALUES (1522, 'property', 'Insert property: 0', 1, '2020-06-22 09:36:53');
INSERT INTO `ap_log_action` VALUES (1523, 'property', 'Insert property: 0', 1, '2020-06-22 09:37:02');
INSERT INTO `ap_log_action` VALUES (1524, 'property', 'Insert property: 0', 1, '2020-06-22 09:37:18');
INSERT INTO `ap_log_action` VALUES (1525, 'property', 'Insert property: 0', 1, '2020-06-22 09:37:27');
INSERT INTO `ap_log_action` VALUES (1526, 'property', 'Update property: 12', 1, '2020-06-22 09:41:21');
INSERT INTO `ap_log_action` VALUES (1527, 'property', 'Update property: 28', 1, '2020-06-22 09:41:41');
INSERT INTO `ap_log_action` VALUES (1528, 'property', 'Update property: 27', 1, '2020-06-22 09:41:41');
INSERT INTO `ap_log_action` VALUES (1529, 'career', 'Insert career: 16', 1, '2020-06-22 09:54:03');
INSERT INTO `ap_log_action` VALUES (1530, 'property', 'Insert property: 0', 1, '2020-06-22 09:56:46');
INSERT INTO `ap_log_action` VALUES (1531, 'career', 'Insert career: 17', 1, '2020-06-22 09:58:08');
INSERT INTO `ap_log_action` VALUES (1532, 'career', 'Insert career: 18', 1, '2020-06-22 10:08:50');
INSERT INTO `ap_log_action` VALUES (1533, 'career', 'Insert career: 19', 1, '2020-06-22 10:11:03');
INSERT INTO `ap_log_action` VALUES (1534, 'career', 'Insert career: 20', 1, '2020-06-22 10:15:31');
INSERT INTO `ap_log_action` VALUES (1535, 'career', 'Insert career: 21', 1, '2020-06-22 10:16:48');
INSERT INTO `ap_log_action` VALUES (1536, 'career', 'Update career: 21', 1, '2020-06-22 10:17:04');
INSERT INTO `ap_log_action` VALUES (1537, 'career', 'Insert career: 22', 1, '2020-06-22 10:18:02');
INSERT INTO `ap_log_action` VALUES (1538, 'career', 'Insert career: 23', 1, '2020-06-22 10:20:24');
INSERT INTO `ap_log_action` VALUES (1539, 'career', 'Insert career: 24', 1, '2020-06-22 10:22:32');
INSERT INTO `ap_log_action` VALUES (1540, 'career', 'Update career: 24', 1, '2020-06-22 10:31:05');
INSERT INTO `ap_log_action` VALUES (1541, 'career', 'Update career: 23', 1, '2020-06-22 10:31:05');
INSERT INTO `ap_log_action` VALUES (1542, 'post', 'Update post: 41', 1, '2020-06-22 01:28:52');
INSERT INTO `ap_log_action` VALUES (1543, 'post', 'Update post: 41', 1, '2020-06-22 01:34:27');
INSERT INTO `ap_log_action` VALUES (1544, 'post', 'Update post: 41', 1, '2020-06-22 01:34:51');
INSERT INTO `ap_log_action` VALUES (1545, 'post', 'Update post: 40', 1, '2020-06-22 01:48:31');
INSERT INTO `ap_log_action` VALUES (1546, 'document', 'Update document: 89', 1, '2020-06-22 01:49:51');
INSERT INTO `ap_log_action` VALUES (1547, 'document', 'Update document: 86', 1, '2020-06-22 02:55:17');
INSERT INTO `ap_log_action` VALUES (1548, 'category', 'Update category: 140', 1, '2020-06-22 02:58:35');
INSERT INTO `ap_log_action` VALUES (1549, 'category', 'Update category: 140', 1, '2020-06-22 02:58:49');
INSERT INTO `ap_log_action` VALUES (1550, 'post', 'Update post: 40', 1, '2020-06-23 04:43:54');
INSERT INTO `ap_log_action` VALUES (1551, 'category', 'Insert category: 157', 1, '2020-06-23 05:46:42');
INSERT INTO `ap_log_action` VALUES (1552, 'category', 'Update category: 157', 1, '2020-06-23 05:46:52');
INSERT INTO `ap_log_action` VALUES (1553, 'project', 'Update project: 40', 1, '2020-06-27 03:04:20');
INSERT INTO `ap_log_action` VALUES (1554, 'groups', 'Insert groups: 25', 1, '2020-07-01 12:58:15');
INSERT INTO `ap_log_action` VALUES (1555, 'groups', 'Update groups: 25', 1, '2020-07-01 12:58:30');
INSERT INTO `ap_log_action` VALUES (1556, 'groups', 'Update groups: 25', 1, '2020-07-02 03:45:09');
INSERT INTO `ap_log_action` VALUES (1557, 'users', 'Update users: 1', 1, '2020-07-04 10:40:12');
INSERT INTO `ap_log_action` VALUES (1558, 'groups', 'Update groups: 25', 1, '2020-07-05 02:00:34');
INSERT INTO `ap_log_action` VALUES (1559, 'groups', 'Update groups: 25', 1, '2020-07-09 08:35:46');
INSERT INTO `ap_log_action` VALUES (1560, 'store', 'Insert store: 16', 1, '2020-07-28 09:39:13');
INSERT INTO `ap_log_action` VALUES (1561, 'gallery', 'Update gallery: 66', 1, '2020-07-28 09:39:52');
INSERT INTO `ap_log_action` VALUES (1562, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 09:40:03');
INSERT INTO `ap_log_action` VALUES (1563, 'video', 'Insert video: 0', 1, '2020-07-28 09:40:50');
INSERT INTO `ap_log_action` VALUES (1564, 'store', 'Insert store: 17', 1, '2020-07-28 09:54:09');
INSERT INTO `ap_log_action` VALUES (1565, 'store', 'Insert store: 18', 1, '2020-07-28 09:54:49');
INSERT INTO `ap_log_action` VALUES (1566, 'store', 'Insert store: 19', 1, '2020-07-28 09:55:19');
INSERT INTO `ap_log_action` VALUES (1567, 'store', 'Insert store: 20', 1, '2020-07-28 09:55:49');
INSERT INTO `ap_log_action` VALUES (1568, 'store', 'Insert store: 21', 1, '2020-07-28 09:56:19');
INSERT INTO `ap_log_action` VALUES (1569, 'store', 'Insert store: 22', 1, '2020-07-28 09:57:04');
INSERT INTO `ap_log_action` VALUES (1570, 'store', 'Insert store: 23', 1, '2020-07-28 09:57:43');
INSERT INTO `ap_log_action` VALUES (1571, 'store', 'Insert store: 24', 1, '2020-07-28 09:58:13');
INSERT INTO `ap_log_action` VALUES (1572, 'store', 'Insert store: 25', 1, '2020-07-28 09:58:40');
INSERT INTO `ap_log_action` VALUES (1573, 'store', 'Insert store: 26', 1, '2020-07-28 10:13:00');
INSERT INTO `ap_log_action` VALUES (1574, 'store', 'Update store: 25', 1, '2020-07-28 10:18:18');
INSERT INTO `ap_log_action` VALUES (1575, 'video', 'Insert video: 0', 1, '2020-07-28 10:19:50');
INSERT INTO `ap_log_action` VALUES (1576, 'video', 'Insert video: 0', 1, '2020-07-28 10:20:07');
INSERT INTO `ap_log_action` VALUES (1577, 'video', 'Insert video: 0', 1, '2020-07-28 10:20:28');
INSERT INTO `ap_log_action` VALUES (1578, 'video', 'Insert video: 0', 1, '2020-07-28 10:21:58');
INSERT INTO `ap_log_action` VALUES (1579, 'video', 'Insert video: 0', 1, '2020-07-28 10:22:23');
INSERT INTO `ap_log_action` VALUES (1580, 'video', 'Insert video: 0', 1, '2020-07-28 10:22:41');
INSERT INTO `ap_log_action` VALUES (1581, 'video', 'Insert video: 0', 1, '2020-07-28 10:23:00');
INSERT INTO `ap_log_action` VALUES (1582, 'video', 'Insert video: 0', 1, '2020-07-28 10:23:27');
INSERT INTO `ap_log_action` VALUES (1583, 'video', 'Insert video: 0', 1, '2020-07-28 10:24:29');
INSERT INTO `ap_log_action` VALUES (1584, 'video', 'Insert video: 0', 1, '2020-07-28 10:25:24');
INSERT INTO `ap_log_action` VALUES (1585, 'video', 'Update video: 101', 1, '2020-07-28 10:27:54');
INSERT INTO `ap_log_action` VALUES (1586, 'video', 'Update video: 100', 1, '2020-07-28 10:28:01');
INSERT INTO `ap_log_action` VALUES (1587, 'video', 'Update video: 99', 1, '2020-07-28 10:28:01');
INSERT INTO `ap_log_action` VALUES (1588, 'video', 'Update video: 98', 1, '2020-07-28 10:28:01');
INSERT INTO `ap_log_action` VALUES (1589, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:28:37');
INSERT INTO `ap_log_action` VALUES (1590, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:28:47');
INSERT INTO `ap_log_action` VALUES (1591, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:28:59');
INSERT INTO `ap_log_action` VALUES (1592, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:29:12');
INSERT INTO `ap_log_action` VALUES (1593, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:29:28');
INSERT INTO `ap_log_action` VALUES (1594, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:29:43');
INSERT INTO `ap_log_action` VALUES (1595, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:29:56');
INSERT INTO `ap_log_action` VALUES (1596, 'gallery', 'Insert gallery: 0', 1, '2020-07-28 10:30:20');
INSERT INTO `ap_log_action` VALUES (1597, 'gallery', 'Update gallery: 109', 1, '2020-07-28 10:30:34');
INSERT INTO `ap_log_action` VALUES (1598, 'gallery', 'Update gallery: 109', 1, '2020-07-28 10:31:29');
INSERT INTO `ap_log_action` VALUES (1599, 'gallery', 'Update gallery: 108', 1, '2020-07-28 10:31:33');
INSERT INTO `ap_log_action` VALUES (1600, 'gallery', 'Update gallery: 107', 1, '2020-07-28 10:31:34');
INSERT INTO `ap_log_action` VALUES (1601, 'gallery', 'Update gallery: 106', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1602, 'gallery', 'Update gallery: 105', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1603, 'gallery', 'Update gallery: 104', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1604, 'gallery', 'Update gallery: 103', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1605, 'gallery', 'Update gallery: 102', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1606, 'gallery', 'Update gallery: 64', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1607, 'gallery', 'Update gallery: 90', 1, '2020-07-28 10:31:55');
INSERT INTO `ap_log_action` VALUES (1608, 'post', 'Update post: 35', 1, '2020-07-28 10:40:41');
INSERT INTO `ap_log_action` VALUES (1609, 'post', 'Update post: 34', 1, '2020-07-28 10:41:52');
INSERT INTO `ap_log_action` VALUES (1610, 'post', 'Update post: 33', 1, '2020-07-28 10:41:52');
INSERT INTO `ap_log_action` VALUES (1611, 'store', 'Insert store: 27', 1, '2020-07-28 11:04:09');
INSERT INTO `ap_log_action` VALUES (1612, 'store', 'Insert store: 28', 1, '2020-07-28 11:04:26');
INSERT INTO `ap_log_action` VALUES (1613, 'post', 'Insert post: 42', 1, '2020-07-28 11:19:13');
INSERT INTO `ap_log_action` VALUES (1614, 'post', 'Insert post: 43', 1, '2020-07-28 11:19:22');
INSERT INTO `ap_log_action` VALUES (1615, 'post', 'Insert post: 44', 1, '2020-07-28 11:19:35');
INSERT INTO `ap_log_action` VALUES (1616, 'post', 'Insert post: 45', 1, '2020-07-28 11:19:45');
INSERT INTO `ap_log_action` VALUES (1617, 'post', 'Insert post: 46', 1, '2020-07-28 11:19:53');
INSERT INTO `ap_log_action` VALUES (1618, 'post', 'Insert post: 47', 1, '2020-07-28 11:20:35');
INSERT INTO `ap_log_action` VALUES (1619, 'post', 'Insert post: 48', 1, '2020-07-28 11:20:47');
INSERT INTO `ap_log_action` VALUES (1620, 'post', 'Insert post: 49', 1, '2020-07-28 11:20:55');
INSERT INTO `ap_log_action` VALUES (1621, 'post', 'Insert post: 50', 1, '2020-07-28 11:21:05');
INSERT INTO `ap_log_action` VALUES (1622, 'post', 'Insert post: 51', 1, '2020-07-28 11:21:15');
INSERT INTO `ap_log_action` VALUES (1623, 'post', 'Insert post: 52', 1, '2020-07-28 11:21:23');
INSERT INTO `ap_log_action` VALUES (1624, 'post', 'Update post: 52', 1, '2020-07-28 11:21:36');
INSERT INTO `ap_log_action` VALUES (1625, 'post', 'Update post: 51', 1, '2020-07-28 11:21:47');
INSERT INTO `ap_log_action` VALUES (1626, 'post', 'Update post: 50', 1, '2020-07-28 11:21:47');
INSERT INTO `ap_log_action` VALUES (1627, 'post', 'Update post: 49', 1, '2020-07-28 11:21:47');
INSERT INTO `ap_log_action` VALUES (1628, 'post', 'Update post: 48', 1, '2020-07-28 11:21:47');
INSERT INTO `ap_log_action` VALUES (1629, 'post', 'Update post: 47', 1, '2020-07-28 11:21:48');
INSERT INTO `ap_log_action` VALUES (1630, 'post', 'Update post: 46', 1, '2020-07-28 11:21:48');
INSERT INTO `ap_log_action` VALUES (1631, 'post', 'Update post: 45', 1, '2020-07-28 11:21:48');
INSERT INTO `ap_log_action` VALUES (1632, 'store', 'Update store: 28', 1, '2020-07-28 11:24:49');
INSERT INTO `ap_log_action` VALUES (1633, 'store', 'Update store: 27', 1, '2020-07-28 11:24:54');
INSERT INTO `ap_log_action` VALUES (1634, 'store', 'Update store: 22', 1, '2020-07-28 11:24:54');
INSERT INTO `ap_log_action` VALUES (1635, 'category', 'Update category: 105', 1, '2020-07-30 11:43:00');
INSERT INTO `ap_log_action` VALUES (1636, 'groups', 'Insert groups: 26', 1, '2020-08-10 11:52:33');
INSERT INTO `ap_log_action` VALUES (1637, 'groups', 'Insert groups: 27', 1, '2020-08-10 11:52:49');
INSERT INTO `ap_log_action` VALUES (1638, 'groups', 'Insert groups: 28', 1, '2020-08-10 11:52:59');
INSERT INTO `ap_log_action` VALUES (1639, 'groups', 'Insert groups: 29', 1, '2020-08-10 11:53:09');
INSERT INTO `ap_log_action` VALUES (1640, 'groups', 'Insert groups: 30', 1, '2020-08-10 11:53:19');
INSERT INTO `ap_log_action` VALUES (1641, 'groups', 'Insert groups: 31', 1, '2020-08-25 08:53:20');
INSERT INTO `ap_log_action` VALUES (1642, 'groups', 'Update groups: 31', 1, '2020-08-25 08:53:31');
INSERT INTO `ap_log_action` VALUES (1643, 'groups', 'Update groups: 30', 1, '2020-08-25 09:08:45');
INSERT INTO `ap_log_action` VALUES (1644, 'groups', 'Update groups: 29', 1, '2020-08-25 09:09:06');
INSERT INTO `ap_log_action` VALUES (1645, 'groups', 'Update groups: 28', 1, '2020-08-25 09:09:06');
INSERT INTO `ap_log_action` VALUES (1646, 'groups', 'Insert groups: 32', 1, '2020-08-25 09:09:30');
INSERT INTO `ap_log_action` VALUES (1647, 'groups', 'Insert groups: 33', 1, '2020-08-25 09:09:40');
INSERT INTO `ap_log_action` VALUES (1648, 'groups', 'Insert groups: 34', 1, '2020-08-25 09:10:20');
INSERT INTO `ap_log_action` VALUES (1649, 'groups', 'Update groups: 33', 1, '2020-08-25 09:10:30');
INSERT INTO `ap_log_action` VALUES (1650, 'groups', 'Update groups: 34', 1, '2020-08-25 09:10:30');
INSERT INTO `ap_log_action` VALUES (1651, 'groups', 'Insert groups: 35', 1, '2020-08-25 09:11:13');
INSERT INTO `ap_log_action` VALUES (1652, 'groups', 'Insert groups: 36', 1, '2020-08-25 09:11:21');
INSERT INTO `ap_log_action` VALUES (1653, 'groups', 'Update groups: 35', 1, '2020-08-25 09:11:59');
INSERT INTO `ap_log_action` VALUES (1654, 'users', 'Insert users: 0', 1, '2020-08-31 04:05:42');
INSERT INTO `ap_log_action` VALUES (1655, 'users', 'Update users: 25', 1, '2020-08-31 04:06:48');
INSERT INTO `ap_log_action` VALUES (1656, 'users', 'delete users: 25', 1, '2020-08-31 04:06:57');
INSERT INTO `ap_log_action` VALUES (1657, 'groups', 'Insert groups: 37', 1, '2020-08-31 04:54:44');
INSERT INTO `ap_log_action` VALUES (1658, 'groups', 'Update groups: 36', 1, '2020-08-31 04:57:19');
INSERT INTO `ap_log_action` VALUES (1659, 'groups', 'Update groups: 36', 1, '2020-08-31 04:58:08');
INSERT INTO `ap_log_action` VALUES (1660, 'groups', 'Update groups: 36', 1, '2020-08-31 05:14:11');
INSERT INTO `ap_log_action` VALUES (1661, 'groups', 'Insert groups: 38', 1, '2020-08-31 05:14:48');
INSERT INTO `ap_log_action` VALUES (1662, 'category', 'Update category: 109', 1, '2020-09-01 08:45:47');
INSERT INTO `ap_log_action` VALUES (1663, 'category', 'Insert category: 158', 1, '2020-09-01 08:54:17');
INSERT INTO `ap_log_action` VALUES (1664, 'category', 'Update category: 106', 1, '2020-09-01 08:59:00');
INSERT INTO `ap_log_action` VALUES (1665, 'category', 'Update category: 105', 1, '2020-09-01 09:00:31');
INSERT INTO `ap_log_action` VALUES (1666, 'category', 'Update category: 103', 1, '2020-09-01 09:06:51');
INSERT INTO `ap_log_action` VALUES (1667, 'page', 'Update page: 15', 1, '2020-09-01 09:10:01');
INSERT INTO `ap_log_action` VALUES (1668, 'page', 'Update page: 15', 1, '2020-09-01 09:10:27');
INSERT INTO `ap_log_action` VALUES (1669, 'gallery', 'Update gallery: 66', 1, '2020-09-01 10:16:34');
INSERT INTO `ap_log_action` VALUES (1670, 'historydv', 'Insert historydv: 0', 1, '2020-09-01 10:53:24');
INSERT INTO `ap_log_action` VALUES (1671, 'category', 'Insert category: 159', 1, '2020-09-01 11:15:21');
INSERT INTO `ap_log_action` VALUES (1672, 'category', 'Update category: 159', 1, '2020-09-01 11:15:28');
INSERT INTO `ap_log_action` VALUES (1673, 'category', 'Insert category: 160', 1, '2020-09-01 11:15:40');
INSERT INTO `ap_log_action` VALUES (1674, 'category', 'Update category: 160', 1, '2020-09-01 11:15:48');
INSERT INTO `ap_log_action` VALUES (1675, 'category', 'Update category: 123', 1, '2020-09-01 11:16:02');
INSERT INTO `ap_log_action` VALUES (1676, 'category', 'Update category: 136', 1, '2020-09-01 11:20:48');
INSERT INTO `ap_log_action` VALUES (1677, 'category', 'Update category: 135', 1, '2020-09-01 11:21:34');
INSERT INTO `ap_log_action` VALUES (1678, 'category', 'Update category: 100', 1, '2020-09-01 11:21:46');
INSERT INTO `ap_log_action` VALUES (1679, 'video', 'Update video: 97', 1, '2020-09-01 11:37:24');
INSERT INTO `ap_log_action` VALUES (1680, 'store', 'Update store: 20', 1, '2020-09-01 11:41:04');
INSERT INTO `ap_log_action` VALUES (1681, 'category', 'Insert category: 161', 1, '2020-09-01 11:49:11');
INSERT INTO `ap_log_action` VALUES (1682, 'category', 'Update category: 161', 1, '2020-09-01 11:52:27');
INSERT INTO `ap_log_action` VALUES (1683, 'pro_service', 'Update pro_service: 20', 1, '2020-09-01 01:56:54');
INSERT INTO `ap_log_action` VALUES (1684, 'page', 'Insert page: 0', 1, '2020-09-01 02:09:44');
INSERT INTO `ap_log_action` VALUES (1685, 'page', 'Update page: 25', 1, '2020-09-01 02:09:53');
INSERT INTO `ap_log_action` VALUES (1686, 'category', 'Update category: 1', 1, '2020-09-01 02:44:02');
INSERT INTO `ap_log_action` VALUES (1687, 'category', 'Update category: 1', 1, '2020-09-01 02:44:55');
INSERT INTO `ap_log_action` VALUES (1688, 'category', 'Update category: 1', 1, '2020-09-01 02:45:18');
INSERT INTO `ap_log_action` VALUES (1689, 'category', 'Update category: 8', 1, '2020-09-01 02:45:19');
INSERT INTO `ap_log_action` VALUES (1690, 'gallery', 'Insert gallery: 0', 1, '2020-09-01 03:15:17');
INSERT INTO `ap_log_action` VALUES (1691, 'gallery', 'Update gallery: 110', 1, '2020-09-01 03:15:25');
INSERT INTO `ap_log_action` VALUES (1692, 'store', 'Update store: 16', 1, '2020-09-01 03:24:36');
INSERT INTO `ap_log_action` VALUES (1693, 'post', 'Update post: 44', 1, '2020-09-01 03:43:22');
INSERT INTO `ap_log_action` VALUES (1694, 'pro_service', 'Update pro_service: 20', 1, '2020-09-01 04:35:02');
INSERT INTO `ap_log_action` VALUES (1695, 'groups', 'Insert groups: 39', 1, '2020-09-03 08:51:04');
INSERT INTO `ap_log_action` VALUES (1696, 'groups', 'Insert groups: 40', 1, '2020-09-03 08:51:48');
INSERT INTO `ap_log_action` VALUES (1697, 'groups', 'Insert groups: 41', 1, '2020-09-03 08:52:30');
INSERT INTO `ap_log_action` VALUES (1698, 'groups', 'Update groups: 41', 1, '2020-09-03 08:52:45');
INSERT INTO `ap_log_action` VALUES (1699, 'groups', 'Update groups: 40', 1, '2020-09-03 08:52:47');
INSERT INTO `ap_log_action` VALUES (1700, 'groups', 'Update groups: 39', 1, '2020-09-03 08:52:49');
INSERT INTO `ap_log_action` VALUES (1701, 'groups', 'Insert groups: 42', 1, '2020-09-03 08:53:31');
INSERT INTO `ap_log_action` VALUES (1702, 'groups', 'Update groups: 42', 1, '2020-09-03 08:53:56');
INSERT INTO `ap_log_action` VALUES (1703, 'groups', 'Insert groups: 43', 1, '2020-09-03 08:55:42');
INSERT INTO `ap_log_action` VALUES (1704, 'groups', 'Update groups: 43', 1, '2020-09-03 08:55:45');
INSERT INTO `ap_log_action` VALUES (1705, 'groups', 'Insert groups: 44', 1, '2020-09-03 08:56:40');
INSERT INTO `ap_log_action` VALUES (1706, 'groups', 'Update groups: 44', 1, '2020-09-03 08:56:43');
INSERT INTO `ap_log_action` VALUES (1707, 'groups', 'Insert groups: 45', 1, '2020-09-03 08:58:33');
INSERT INTO `ap_log_action` VALUES (1708, 'groups', 'Update groups: 45', 1, '2020-09-03 08:58:40');
INSERT INTO `ap_log_action` VALUES (1709, 'groups', 'Insert groups: 46', 1, '2020-09-03 08:59:14');
INSERT INTO `ap_log_action` VALUES (1710, 'groups', 'Update groups: 46', 1, '2020-09-03 08:59:17');
INSERT INTO `ap_log_action` VALUES (1711, 'groups', 'Insert groups: 47', 1, '2020-09-03 08:59:31');
INSERT INTO `ap_log_action` VALUES (1712, 'groups', 'Insert groups: 48', 1, '2020-09-03 09:01:37');
INSERT INTO `ap_log_action` VALUES (1713, 'groups', 'Update groups: 48', 1, '2020-09-03 09:01:42');
INSERT INTO `ap_log_action` VALUES (1714, 'groups', 'Update groups: 47', 1, '2020-09-03 09:01:44');
INSERT INTO `ap_log_action` VALUES (1715, 'groups', 'Insert groups: 49', 1, '2020-09-03 09:01:52');
INSERT INTO `ap_log_action` VALUES (1716, 'groups', 'Update groups: 49', 1, '2020-09-03 09:01:55');
INSERT INTO `ap_log_action` VALUES (1717, 'groups', 'Insert groups: 50', 1, '2020-09-03 09:02:08');
INSERT INTO `ap_log_action` VALUES (1718, 'groups', 'Update groups: 50', 1, '2020-09-03 09:02:11');
INSERT INTO `ap_log_action` VALUES (1719, 'groups', 'Insert groups: 51', 1, '2020-09-03 09:03:00');
INSERT INTO `ap_log_action` VALUES (1720, 'groups', 'Update groups: 51', 1, '2020-09-03 09:03:03');
INSERT INTO `ap_log_action` VALUES (1721, 'groups', 'Insert groups: 52', 1, '2020-09-03 09:04:44');
INSERT INTO `ap_log_action` VALUES (1722, 'groups', 'Update groups: 52', 1, '2020-09-03 09:04:47');
INSERT INTO `ap_log_action` VALUES (1723, 'groups', 'Insert groups: 53', 1, '2020-09-03 09:09:33');
INSERT INTO `ap_log_action` VALUES (1724, 'groups', 'Update groups: 53', 1, '2020-09-03 09:10:11');
INSERT INTO `ap_log_action` VALUES (1725, 'groups', 'Update groups: 53', 1, '2020-09-03 09:10:40');
INSERT INTO `ap_log_action` VALUES (1726, 'groups', 'Update groups: 53', 1, '2020-09-03 09:10:48');
INSERT INTO `ap_log_action` VALUES (1727, 'groups', 'Update groups: 53', 1, '2020-09-03 09:12:50');
INSERT INTO `ap_log_action` VALUES (1728, 'groups', 'Update groups: 53', 1, '2020-09-03 09:12:59');
INSERT INTO `ap_log_action` VALUES (1729, 'groups', 'Update groups: 53', 1, '2020-09-03 09:13:06');
INSERT INTO `ap_log_action` VALUES (1730, 'groups', 'Update groups: 53', 1, '2020-09-03 09:14:07');
INSERT INTO `ap_log_action` VALUES (1731, 'groups', 'Update groups: 53', 1, '2020-09-03 09:14:17');
INSERT INTO `ap_log_action` VALUES (1732, 'groups', 'Insert groups: 54', 1, '2020-09-03 11:25:34');
INSERT INTO `ap_log_action` VALUES (1733, 'groups', 'Insert groups: 55', 1, '2020-09-03 11:30:48');
INSERT INTO `ap_log_action` VALUES (1734, 'groups', 'Update groups: 55', 1, '2020-09-03 11:31:42');
INSERT INTO `ap_log_action` VALUES (1735, 'groups', 'Update groups: 54', 1, '2020-09-03 11:31:44');
INSERT INTO `ap_log_action` VALUES (1736, 'groups', 'Update groups: 53', 1, '2020-09-03 11:32:55');
INSERT INTO `ap_log_action` VALUES (1737, 'users', 'Insert users: 0', 1, '2020-09-03 11:45:28');
INSERT INTO `ap_log_action` VALUES (1738, 'users', 'Insert users: 0', 1, '2020-09-03 11:47:49');
INSERT INTO `ap_log_action` VALUES (1739, 'users', 'Insert users: 0', 1, '2020-09-03 11:49:34');
INSERT INTO `ap_log_action` VALUES (1740, 'users', 'delete users: 28', 1, '2020-09-03 11:49:58');
INSERT INTO `ap_log_action` VALUES (1741, 'users', 'delete users: 27', 1, '2020-09-03 11:50:00');
INSERT INTO `ap_log_action` VALUES (1742, 'users', 'delete users: 26', 1, '2020-09-03 11:50:03');
INSERT INTO `ap_log_action` VALUES (1743, 'users', 'Insert users: 0', 1, '2020-09-03 11:51:01');
INSERT INTO `ap_log_action` VALUES (1744, 'users', 'Insert users: 0', 1, '2020-09-03 11:53:15');
INSERT INTO `ap_log_action` VALUES (1745, 'users', 'Insert users: 0', 1, '2020-09-03 11:57:47');
INSERT INTO `ap_log_action` VALUES (1746, 'users', 'delete users: 29', 1, '2020-09-03 01:29:45');
INSERT INTO `ap_log_action` VALUES (1747, 'users', 'delete users: 31', 1, '2020-09-03 01:40:23');
INSERT INTO `ap_log_action` VALUES (1748, 'users', 'Insert users: 0', 1, '2020-09-03 01:42:57');
INSERT INTO `ap_log_action` VALUES (1749, 'users', 'delete users: 32', 1, '2020-09-03 01:43:15');
INSERT INTO `ap_log_action` VALUES (1750, 'users', 'Insert users: 0', 1, '2020-09-03 01:44:16');
INSERT INTO `ap_log_action` VALUES (1751, 'users', 'delete users: 33', 1, '2020-09-03 01:48:31');
INSERT INTO `ap_log_action` VALUES (1752, 'users', 'Insert users: 0', 1, '2020-09-03 01:51:12');
INSERT INTO `ap_log_action` VALUES (1753, 'users', 'delete users: 34', 1, '2020-09-03 01:51:20');
INSERT INTO `ap_log_action` VALUES (1754, 'users', 'Insert users: 0', 1, '2020-09-03 01:52:05');
INSERT INTO `ap_log_action` VALUES (1755, 'users', 'Update users: 35', 1, '2020-09-03 01:52:55');
INSERT INTO `ap_log_action` VALUES (1756, 'users', 'delete users: 30', 1, '2020-09-03 01:53:15');
INSERT INTO `ap_log_action` VALUES (1757, 'users', 'delete users: 35', 1, '2020-09-03 01:53:30');
INSERT INTO `ap_log_action` VALUES (1758, 'users', 'Insert users: 0', 1, '2020-09-03 01:54:14');
INSERT INTO `ap_log_action` VALUES (1759, 'users', 'delete users: 36', 1, '2020-09-03 01:54:37');
INSERT INTO `ap_log_action` VALUES (1760, 'users', 'Insert users: 0', 1, '2020-09-03 01:55:34');
INSERT INTO `ap_log_action` VALUES (1761, 'users', 'Insert users: 0', 1, '2020-09-03 01:57:30');
INSERT INTO `ap_log_action` VALUES (1762, 'users', 'delete users: 38', 1, '2020-09-03 01:57:39');
INSERT INTO `ap_log_action` VALUES (1763, 'users', 'delete users: 37', 1, '2020-09-03 01:57:59');
INSERT INTO `ap_log_action` VALUES (1764, 'users', 'Insert users: 0', 1, '2020-09-03 01:59:43');
INSERT INTO `ap_log_action` VALUES (1765, 'users', 'delete users: 39', 1, '2020-09-03 01:59:51');
INSERT INTO `ap_log_action` VALUES (1766, 'users', 'Insert users: 0', 1, '2020-09-03 02:00:39');
INSERT INTO `ap_log_action` VALUES (1767, 'users', 'delete users: 40', 1, '2020-09-03 02:00:48');
INSERT INTO `ap_log_action` VALUES (1768, 'users', 'Insert users: 0', 1, '2020-09-03 02:02:55');
INSERT INTO `ap_log_action` VALUES (1769, 'users', 'delete users: 41', 1, '2020-09-03 02:02:59');
INSERT INTO `ap_log_action` VALUES (1770, 'users', 'Insert users: 0', 1, '2020-09-03 02:06:52');
INSERT INTO `ap_log_action` VALUES (1771, 'users', 'delete users: 42', 1, '2020-09-03 02:07:08');
INSERT INTO `ap_log_action` VALUES (1772, 'users', 'Insert users: 0', 1, '2020-09-03 02:08:19');
INSERT INTO `ap_log_action` VALUES (1773, 'users', 'delete users: 43', 1, '2020-09-03 02:08:24');
INSERT INTO `ap_log_action` VALUES (1774, 'users', 'Insert users: 0', 1, '2020-09-03 02:14:00');
INSERT INTO `ap_log_action` VALUES (1775, 'users', 'delete users: 44', 1, '2020-09-03 02:14:12');
INSERT INTO `ap_log_action` VALUES (1776, 'users', 'Insert users: 0', 1, '2020-09-03 02:14:42');
INSERT INTO `ap_log_action` VALUES (1777, 'users', 'Update users: 45', 1, '2020-09-03 02:15:13');
INSERT INTO `ap_log_action` VALUES (1778, 'users', 'Update users: 45', 1, '2020-09-03 02:15:38');
INSERT INTO `ap_log_action` VALUES (1779, 'users', 'Insert users: 0', 1, '2020-09-03 02:19:11');
INSERT INTO `ap_log_action` VALUES (1780, 'users', 'delete users: 46', 1, '2020-09-03 02:19:15');
INSERT INTO `ap_log_action` VALUES (1781, 'users', 'delete users: 45', 1, '2020-09-03 02:19:18');
INSERT INTO `ap_log_action` VALUES (1782, 'users', 'Update users: 22', 1, '2020-09-03 02:25:47');
INSERT INTO `ap_log_action` VALUES (1783, 'users', 'Update users: 22', 1, '2020-09-03 02:25:57');
INSERT INTO `ap_log_action` VALUES (1784, 'users', 'Insert users: 0', 1, '2020-09-03 02:28:11');
INSERT INTO `ap_log_action` VALUES (1785, 'users', 'Insert users: 0', 1, '2020-09-03 02:31:21');
INSERT INTO `ap_log_action` VALUES (1786, 'users', 'Insert users: 0', 1, '2020-09-03 02:32:12');
INSERT INTO `ap_log_action` VALUES (1787, 'category', 'Update category: 134', 1, '2020-09-04 09:39:54');
INSERT INTO `ap_log_action` VALUES (1788, 'category', 'Insert category: 162', 1, '2020-09-04 09:40:10');
INSERT INTO `ap_log_action` VALUES (1789, 'category', 'Update category: 162', 1, '2020-09-04 09:40:15');
INSERT INTO `ap_log_action` VALUES (1790, 'project', 'Update project: 47', 1, '2020-09-04 09:48:28');
INSERT INTO `ap_log_action` VALUES (1791, 'page', 'Update page: 24', 1, '2020-09-04 10:25:29');
INSERT INTO `ap_log_action` VALUES (1792, 'category', 'Update category: 123', 1, '2020-09-04 10:29:17');
INSERT INTO `ap_log_action` VALUES (1793, 'category', 'Update category: 141', 1, '2020-09-04 10:35:27');
INSERT INTO `ap_log_action` VALUES (1794, 'category', 'Update category: 136', 1, '2020-09-04 11:17:36');
INSERT INTO `ap_log_action` VALUES (1795, 'category', 'Update category: 136', 1, '2020-09-04 11:18:55');
INSERT INTO `ap_log_action` VALUES (1796, 'gallery', 'Insert gallery: 0', 1, '2020-09-04 11:23:50');
INSERT INTO `ap_log_action` VALUES (1797, 'gallery', 'Update gallery: 111', 1, '2020-09-04 11:25:03');
INSERT INTO `ap_log_action` VALUES (1798, 'document', 'Update document: 13', 1, '2020-09-04 11:43:23');
INSERT INTO `ap_log_action` VALUES (1799, 'post', 'Update post: 44', 1, '2020-09-04 02:21:33');
INSERT INTO `ap_log_action` VALUES (1800, 'groups', 'Update groups: 37', 1, '2020-09-08 03:24:20');
INSERT INTO `ap_log_action` VALUES (1801, 'groups', 'Update groups: 36', 1, '2020-09-08 03:24:48');
INSERT INTO `ap_log_action` VALUES (1802, 'groups', 'Update groups: 32', 1, '2020-09-08 03:24:48');
INSERT INTO `ap_log_action` VALUES (1803, 'groups', 'Update groups: 27', 1, '2020-09-08 03:24:48');
INSERT INTO `ap_log_action` VALUES (1804, 'groups', 'Update groups: 26', 1, '2020-09-08 03:26:14');
INSERT INTO `ap_log_action` VALUES (1805, 'groups', 'Insert groups: 56', 1, '2020-09-08 03:39:09');
INSERT INTO `ap_log_action` VALUES (1806, 'groups', 'Update groups: 56', 1, '2020-09-08 03:39:16');
INSERT INTO `ap_log_action` VALUES (1807, 'groups', 'Insert groups: 57', 1, '2020-09-08 03:43:57');
INSERT INTO `ap_log_action` VALUES (1808, 'groups', 'Update groups: 57', 1, '2020-09-08 03:44:00');
INSERT INTO `ap_log_action` VALUES (1809, 'groups', 'Insert groups: 58', 1, '2020-09-08 03:49:43');
INSERT INTO `ap_log_action` VALUES (1810, 'groups', 'Update groups: 58', 1, '2020-09-08 03:49:47');
INSERT INTO `ap_log_action` VALUES (1811, 'groups', 'Insert groups: 59', 1, '2020-09-08 03:50:06');
INSERT INTO `ap_log_action` VALUES (1812, 'groups', 'Insert groups: 60', 1, '2020-09-08 03:52:19');
INSERT INTO `ap_log_action` VALUES (1813, 'groups', 'Update groups: 60', 1, '2020-09-08 03:52:39');
INSERT INTO `ap_log_action` VALUES (1814, 'groups', 'Insert groups: 61', 1, '2020-09-08 03:59:31');
INSERT INTO `ap_log_action` VALUES (1815, 'groups', 'Update groups: 61', 1, '2020-09-08 04:00:23');
INSERT INTO `ap_log_action` VALUES (1816, 'groups', 'Insert groups: 62', 1, '2020-09-08 04:00:44');
INSERT INTO `ap_log_action` VALUES (1817, 'groups', 'Update groups: 62', 1, '2020-09-08 04:00:48');
INSERT INTO `ap_log_action` VALUES (1818, 'groups', 'Insert groups: 63', 1, '2020-09-08 04:00:57');
INSERT INTO `ap_log_action` VALUES (1819, 'groups', 'Update groups: 63', 1, '2020-09-08 04:01:00');
INSERT INTO `ap_log_action` VALUES (1820, 'groups', 'Insert groups: 64', 1, '2020-09-08 04:01:40');
INSERT INTO `ap_log_action` VALUES (1821, 'groups', 'Update groups: 64', 1, '2020-09-08 04:01:43');
INSERT INTO `ap_log_action` VALUES (1822, 'groups', 'Insert groups: 65', 1, '2020-09-08 04:02:50');
INSERT INTO `ap_log_action` VALUES (1823, 'groups', 'Update groups: 65', 1, '2020-09-08 04:02:58');
INSERT INTO `ap_log_action` VALUES (1824, 'groups', 'Insert groups: 66', 1, '2020-09-08 04:03:08');
INSERT INTO `ap_log_action` VALUES (1825, 'groups', 'Update groups: 66', 1, '2020-09-08 04:03:11');
INSERT INTO `ap_log_action` VALUES (1826, 'groups', 'Insert groups: 67', 1, '2020-09-08 04:03:34');
INSERT INTO `ap_log_action` VALUES (1827, 'groups', 'Update groups: 67', 1, '2020-09-08 04:03:41');
INSERT INTO `ap_log_action` VALUES (1828, 'groups', 'Insert groups: 68', 1, '2020-09-08 04:04:10');
INSERT INTO `ap_log_action` VALUES (1829, 'groups', 'Update groups: 68', 1, '2020-09-08 04:04:18');
INSERT INTO `ap_log_action` VALUES (1830, 'groups', 'Insert groups: 69', 1, '2020-09-08 04:05:24');
INSERT INTO `ap_log_action` VALUES (1831, 'groups', 'Update groups: 69', 1, '2020-09-08 04:05:58');
INSERT INTO `ap_log_action` VALUES (1832, 'groups', 'Update groups: 69', 1, '2020-09-08 04:06:19');
INSERT INTO `ap_log_action` VALUES (1833, 'groups', 'Update groups: 69', 1, '2020-09-08 04:06:31');
INSERT INTO `ap_log_action` VALUES (1834, 'groups', 'Insert groups: 70', 1, '2020-09-08 04:12:52');
INSERT INTO `ap_log_action` VALUES (1835, 'groups', 'Update groups: 70', 1, '2020-09-08 04:14:50');
INSERT INTO `ap_log_action` VALUES (1836, 'groups', 'Update groups: 70', 1, '2020-09-08 04:17:13');
INSERT INTO `ap_log_action` VALUES (1837, 'groups', 'Update groups: 70', 1, '2020-09-08 04:17:29');
INSERT INTO `ap_log_action` VALUES (1838, 'groups', 'Update groups: 70', 1, '2020-09-08 04:17:48');
INSERT INTO `ap_log_action` VALUES (1839, 'groups', 'Update groups: 70', 1, '2020-09-08 04:18:01');
INSERT INTO `ap_log_action` VALUES (1840, 'groups', 'Update groups: 70', 1, '2020-09-08 04:18:16');
INSERT INTO `ap_log_action` VALUES (1841, 'groups', 'Update groups: 70', 1, '2020-09-08 04:18:33');
INSERT INTO `ap_log_action` VALUES (1842, 'groups', 'Insert groups: 71', 1, '2020-09-08 04:20:55');
INSERT INTO `ap_log_action` VALUES (1843, 'groups', 'Update groups: 71', 1, '2020-09-08 04:21:12');
INSERT INTO `ap_log_action` VALUES (1844, 'groups', 'Update groups: 71', 1, '2020-09-08 04:22:34');
INSERT INTO `ap_log_action` VALUES (1845, 'groups', 'Update groups: 71', 1, '2020-09-08 04:24:11');
INSERT INTO `ap_log_action` VALUES (1846, 'groups', 'Update groups: 71', 1, '2020-09-08 04:24:58');
INSERT INTO `ap_log_action` VALUES (1847, 'groups', 'Update groups: 71', 1, '2020-09-08 04:25:16');
INSERT INTO `ap_log_action` VALUES (1848, 'groups', 'Update groups: 71', 1, '2020-09-08 04:25:25');
INSERT INTO `ap_log_action` VALUES (1849, 'groups', 'Update groups: 71', 1, '2020-09-08 04:25:51');
INSERT INTO `ap_log_action` VALUES (1850, 'groups', 'Update groups: 71', 1, '2020-09-08 04:26:13');
INSERT INTO `ap_log_action` VALUES (1851, 'groups', 'Update groups: 71', 1, '2020-09-08 04:26:19');
INSERT INTO `ap_log_action` VALUES (1852, 'groups', 'Update groups: 71', 1, '2020-09-08 04:26:47');
INSERT INTO `ap_log_action` VALUES (1853, 'groups', 'Update groups: 71', 1, '2020-09-08 04:26:54');
INSERT INTO `ap_log_action` VALUES (1854, 'groups', 'Update groups: 71', 1, '2020-09-08 04:27:06');
INSERT INTO `ap_log_action` VALUES (1855, 'groups', 'Update groups: 71', 1, '2020-09-08 04:27:12');
INSERT INTO `ap_log_action` VALUES (1856, 'groups', 'Update groups: 71', 1, '2020-09-08 04:27:52');
INSERT INTO `ap_log_action` VALUES (1857, 'groups', 'Update groups: 71', 1, '2020-09-08 04:28:00');
INSERT INTO `ap_log_action` VALUES (1858, 'groups', 'Update groups: 71', 1, '2020-09-08 04:28:34');
INSERT INTO `ap_log_action` VALUES (1859, 'groups', 'Update groups: 70', 1, '2020-09-08 04:29:26');
INSERT INTO `ap_log_action` VALUES (1860, 'groups', 'Update groups: ', 1, '2020-09-08 04:29:35');
INSERT INTO `ap_log_action` VALUES (1861, 'groups', 'Update groups: 69', 1, '2020-09-08 04:29:46');
INSERT INTO `ap_log_action` VALUES (1862, 'groups', 'Update groups: ', 1, '2020-09-08 04:29:57');
INSERT INTO `ap_log_action` VALUES (1863, 'groups', 'Insert groups: 72', 1, '2020-09-08 04:31:24');
INSERT INTO `ap_log_action` VALUES (1864, 'groups', 'Update groups: 72', 1, '2020-09-08 04:31:32');
INSERT INTO `ap_log_action` VALUES (1865, 'users', 'delete users: 49', 1, '2020-09-08 05:06:49');
INSERT INTO `ap_log_action` VALUES (1866, 'users', 'delete users: 48', 1, '2020-09-08 05:07:09');
INSERT INTO `ap_log_action` VALUES (1867, 'users', 'delete users: 47', 1, '2020-09-08 05:07:09');
INSERT INTO `ap_log_action` VALUES (1868, 'users', 'delete users: 23', 1, '2020-09-08 05:08:29');
INSERT INTO `ap_log_action` VALUES (1869, 'users', 'Insert users: 0', 1, '2020-09-08 05:11:38');
INSERT INTO `ap_log_action` VALUES (1870, 'users', 'Update users: 50', 1, '2020-09-08 05:11:50');
INSERT INTO `ap_log_action` VALUES (1871, 'users', 'delete users: 50', 1, '2020-09-08 05:12:12');
INSERT INTO `ap_log_action` VALUES (1872, 'users', 'Insert users: 0', 1, '2020-09-08 05:20:52');
INSERT INTO `ap_log_action` VALUES (1873, 'users', 'delete users: 51', 1, '2020-09-08 05:21:04');
INSERT INTO `ap_log_action` VALUES (1874, 'users', 'Insert users: 0', 1, '2020-09-08 05:24:15');
INSERT INTO `ap_log_action` VALUES (1875, 'users', 'delete users: 52', 1, '2020-09-08 05:24:26');
INSERT INTO `ap_log_action` VALUES (1876, 'users', 'Insert users: 0', 1, '2020-09-08 05:27:02');
INSERT INTO `ap_log_action` VALUES (1877, 'users', 'Update users: 53', 1, '2020-09-08 05:27:09');
INSERT INTO `ap_log_action` VALUES (1878, 'users', 'delete users: 53', 1, '2020-09-08 05:28:16');
INSERT INTO `ap_log_action` VALUES (1879, 'users', 'Insert users: 0', 1, '2020-09-08 05:31:30');
INSERT INTO `ap_log_action` VALUES (1880, 'users', 'delete users: 54', 1, '2020-09-08 05:34:03');
INSERT INTO `ap_log_action` VALUES (1881, 'users', 'Insert users: 0', 1, '2020-09-08 05:34:59');
INSERT INTO `ap_log_action` VALUES (1882, 'users', 'delete users: 55', 1, '2020-09-08 05:36:04');
INSERT INTO `ap_log_action` VALUES (1883, 'users', 'Insert users: 0', 1, '2020-09-08 05:41:28');
INSERT INTO `ap_log_action` VALUES (1884, 'users', 'Update users: 56', 1, '2020-09-08 05:41:37');
INSERT INTO `ap_log_action` VALUES (1885, 'users', 'Insert users: 0', 1, '2020-09-08 05:50:32');
INSERT INTO `ap_log_action` VALUES (1886, 'users', 'Insert users: 0', 1, '2020-09-08 05:51:26');
INSERT INTO `ap_log_action` VALUES (1887, 'users', 'Insert users: 0', 1, '2020-09-08 05:52:17');
INSERT INTO `ap_log_action` VALUES (1888, 'users', 'Insert users: 0', 1, '2020-09-08 05:52:58');
INSERT INTO `ap_log_action` VALUES (1889, 'users', 'Update users: 60', 1, '2020-09-08 05:53:06');
INSERT INTO `ap_log_action` VALUES (1890, 'users', 'Update users: 59', 1, '2020-09-08 05:53:13');
INSERT INTO `ap_log_action` VALUES (1891, 'users', 'Update users: 58', 1, '2020-09-08 05:53:18');
INSERT INTO `ap_log_action` VALUES (1892, 'users', 'Update users: 57', 1, '2020-09-08 05:53:22');
INSERT INTO `ap_log_action` VALUES (1893, 'users', 'Insert users: 0', 1, '2020-09-08 05:55:02');
INSERT INTO `ap_log_action` VALUES (1894, 'users', 'delete users: 61', 1, '2020-09-08 05:55:26');
INSERT INTO `ap_log_action` VALUES (1895, 'users', 'Insert users: 0', 1, '2020-09-08 05:56:41');
INSERT INTO `ap_log_action` VALUES (1896, 'users', 'Insert users: 0', 1, '2020-09-08 06:02:06');
INSERT INTO `ap_log_action` VALUES (1897, 'users', 'Insert users: 0', 1, '2020-09-08 06:05:06');
INSERT INTO `ap_log_action` VALUES (1898, 'users', 'delete users: 62', 1, '2020-09-09 08:32:20');
INSERT INTO `ap_log_action` VALUES (1899, 'users', 'delete users: 63', 1, '2020-09-09 08:32:28');
INSERT INTO `ap_log_action` VALUES (1900, 'users', 'delete users: 56', 1, '2020-09-09 08:32:39');
INSERT INTO `ap_log_action` VALUES (1901, 'users', 'delete users: 64', 1, '2020-09-09 02:11:23');
INSERT INTO `ap_log_action` VALUES (1902, 'users', 'delete users: 60', 1, '2020-09-09 02:11:23');
INSERT INTO `ap_log_action` VALUES (1903, 'users', 'delete users: 59', 1, '2020-09-09 02:11:23');
INSERT INTO `ap_log_action` VALUES (1904, 'users', 'delete users: 58', 1, '2020-09-09 02:11:23');
INSERT INTO `ap_log_action` VALUES (1905, 'users', 'delete users: 57', 1, '2020-09-09 02:11:24');
INSERT INTO `ap_log_action` VALUES (1906, 'users', 'Insert users: 0', 1, '2020-09-09 02:12:14');
INSERT INTO `ap_log_action` VALUES (1907, 'users', 'Insert users: 0', 1, '2020-09-09 02:12:58');
INSERT INTO `ap_log_action` VALUES (1908, 'users', 'Update users: 66', 1, '2020-09-09 02:13:58');
INSERT INTO `ap_log_action` VALUES (1909, 'users', 'delete users: 66', 1, '2020-09-09 02:14:00');
INSERT INTO `ap_log_action` VALUES (1910, 'users', 'Insert users: 0', 1, '2020-09-09 02:14:44');
INSERT INTO `ap_log_action` VALUES (1911, 'users', 'Insert users: 0', 1, '2020-09-09 02:16:26');
INSERT INTO `ap_log_action` VALUES (1912, 'users', 'Insert users: 0', 1, '2020-09-09 02:17:29');
INSERT INTO `ap_log_action` VALUES (1913, 'users', 'Insert users: 0', 1, '2020-09-09 02:22:20');
INSERT INTO `ap_log_action` VALUES (1914, 'users', 'Insert users: 0', 1, '2020-09-09 02:23:18');
INSERT INTO `ap_log_action` VALUES (1915, 'users', 'Insert users: 0', 1, '2020-09-09 02:25:00');
INSERT INTO `ap_log_action` VALUES (1916, 'users', 'Insert users: 0', 1, '2020-09-09 02:29:31');
INSERT INTO `ap_log_action` VALUES (1917, 'users', 'Insert users: 0', 1, '2020-09-09 02:48:24');
INSERT INTO `ap_log_action` VALUES (1918, 'users', 'Update users: 65', 1, '2020-09-09 02:51:08');
INSERT INTO `ap_log_action` VALUES (1919, 'users', 'Update users: 67', 1, '2020-09-09 02:51:14');
INSERT INTO `ap_log_action` VALUES (1920, 'users', 'Update users: 68', 1, '2020-09-09 02:51:19');
INSERT INTO `ap_log_action` VALUES (1921, 'users', 'Update users: 69', 1, '2020-09-09 02:51:25');
INSERT INTO `ap_log_action` VALUES (1922, 'users', 'Update users: 70', 1, '2020-09-09 02:51:30');
INSERT INTO `ap_log_action` VALUES (1923, 'users', 'Update users: 71', 1, '2020-09-09 02:51:35');
INSERT INTO `ap_log_action` VALUES (1924, 'users', 'Update users: 72', 1, '2020-09-09 02:51:40');
INSERT INTO `ap_log_action` VALUES (1925, 'users', 'Update users: 73', 1, '2020-09-09 02:51:46');
INSERT INTO `ap_log_action` VALUES (1926, 'users', 'Update users: 74', 1, '2020-09-09 02:51:50');
INSERT INTO `ap_log_action` VALUES (1927, 'users', 'Update users: 74', 1, '2020-09-09 02:53:21');
INSERT INTO `ap_log_action` VALUES (1928, 'users', 'delete users: 74', 1, '2020-09-09 02:54:26');
INSERT INTO `ap_log_action` VALUES (1929, 'users', 'Insert users: 0', 1, '2020-09-09 02:55:55');
INSERT INTO `ap_log_action` VALUES (1930, 'users', 'delete users: 75', 1, '2020-09-09 02:59:20');
INSERT INTO `ap_log_action` VALUES (1931, 'users', 'Update users: 73', 1, '2020-09-09 02:59:54');
INSERT INTO `ap_log_action` VALUES (1932, 'users', 'Update users: 73', 1, '2020-09-09 03:00:22');
INSERT INTO `ap_log_action` VALUES (1933, 'users', 'Update users: 73', 1, '2020-09-09 03:01:07');
INSERT INTO `ap_log_action` VALUES (1934, 'users', 'Update users: 73', 1, '2020-09-09 03:01:25');
INSERT INTO `ap_log_action` VALUES (1935, 'users', 'Update users: 73', 1, '2020-09-09 03:03:21');
INSERT INTO `ap_log_action` VALUES (1936, 'users', 'Update users: 73', 1, '2020-09-09 03:04:17');
INSERT INTO `ap_log_action` VALUES (1937, 'users', 'Update users: 73', 1, '2020-09-09 03:04:33');
INSERT INTO `ap_log_action` VALUES (1938, 'users', 'Update users: 73', 1, '2020-09-09 03:06:37');
INSERT INTO `ap_log_action` VALUES (1939, 'users', 'Update users: 73', 1, '2020-09-09 03:07:42');
INSERT INTO `ap_log_action` VALUES (1940, 'users', 'Update users: 73', 1, '2020-09-09 03:08:41');
INSERT INTO `ap_log_action` VALUES (1941, 'users', 'Update users: 73', 1, '2020-09-09 03:09:54');
INSERT INTO `ap_log_action` VALUES (1942, 'users', 'Update users: 73', 1, '2020-09-09 03:10:47');
INSERT INTO `ap_log_action` VALUES (1943, 'users', 'Update users: 73', 1, '2020-09-09 03:12:25');
INSERT INTO `ap_log_action` VALUES (1944, 'users', 'Update users: 73', 1, '2020-09-09 03:17:23');
INSERT INTO `ap_log_action` VALUES (1945, 'users', 'Update users: 73', 1, '2020-09-09 03:18:35');
INSERT INTO `ap_log_action` VALUES (1946, 'users', 'delete users: 73', 1, '2020-09-09 03:19:43');
INSERT INTO `ap_log_action` VALUES (1947, 'users', 'Update users: 72', 1, '2020-09-09 03:25:38');
INSERT INTO `ap_log_action` VALUES (1948, 'users', 'Update users: 72', 1, '2020-09-09 03:26:48');
INSERT INTO `ap_log_action` VALUES (1949, 'users', 'Update users: 71', 1, '2020-09-09 03:37:12');
INSERT INTO `ap_log_action` VALUES (1950, 'users', 'Update users: 71', 1, '2020-09-09 03:41:10');
INSERT INTO `ap_log_action` VALUES (1951, 'users', 'Update users: 71', 1, '2020-09-09 03:41:31');
INSERT INTO `ap_log_action` VALUES (1952, 'users', 'Update users: 71', 1, '2020-09-09 03:46:14');
INSERT INTO `ap_log_action` VALUES (1953, 'users', 'Update users: 71', 1, '2020-09-09 03:47:40');
INSERT INTO `ap_log_action` VALUES (1954, 'users', 'delete users: 72', 1, '2020-09-09 03:50:51');
INSERT INTO `ap_log_action` VALUES (1955, 'category', 'Update category: 74', 1, '2020-09-09 04:16:01');
INSERT INTO `ap_log_action` VALUES (1956, 'category', 'Update category: 72', 1, '2020-09-09 04:16:35');
INSERT INTO `ap_log_action` VALUES (1957, 'category', 'Update category: 73', 1, '2020-09-09 04:17:12');
INSERT INTO `ap_log_action` VALUES (1958, 'category', 'Insert category: 163', 1, '2020-09-09 04:23:33');
INSERT INTO `ap_log_action` VALUES (1959, 'category', 'Update category: 163', 1, '2020-09-09 04:23:48');
INSERT INTO `ap_log_action` VALUES (1960, 'category', 'Insert category: 164', 1, '2020-09-09 04:24:13');
INSERT INTO `ap_log_action` VALUES (1961, 'category', 'Insert category: 165', 1, '2020-09-09 04:26:17');
INSERT INTO `ap_log_action` VALUES (1962, 'category', 'Insert category: 166', 1, '2020-09-09 04:26:26');
INSERT INTO `ap_log_action` VALUES (1963, 'category', 'Insert category: 167', 1, '2020-09-09 04:27:57');
INSERT INTO `ap_log_action` VALUES (1964, 'category', 'Insert category: 168', 1, '2020-09-09 04:28:27');
INSERT INTO `ap_log_action` VALUES (1965, 'category', 'Insert category: 169', 1, '2020-09-09 04:29:00');
INSERT INTO `ap_log_action` VALUES (1966, 'category', 'Insert category: 170', 1, '2020-09-09 04:32:23');
INSERT INTO `ap_log_action` VALUES (1967, 'category', 'Insert category: 171', 1, '2020-09-09 04:34:40');
INSERT INTO `ap_log_action` VALUES (1968, 'category', 'Insert category: 172', 1, '2020-09-09 04:36:00');
INSERT INTO `ap_log_action` VALUES (1969, 'category', 'Insert category: 173', 1, '2020-09-09 04:36:49');
INSERT INTO `ap_log_action` VALUES (1970, 'category', 'Insert category: 174', 1, '2020-09-09 04:39:41');
INSERT INTO `ap_log_action` VALUES (1971, 'category', 'Update category: 170', 1, '2020-09-09 04:57:04');
INSERT INTO `ap_log_action` VALUES (1972, 'category', 'Insert category: 175', 1, '2020-09-09 05:02:43');
INSERT INTO `ap_log_action` VALUES (1973, 'category', 'Insert category: 176', 1, '2020-09-09 05:03:22');
INSERT INTO `ap_log_action` VALUES (1974, 'category', 'Insert category: 177', 1, '2020-09-09 05:03:41');
INSERT INTO `ap_log_action` VALUES (1975, 'category', 'Insert category: 178', 1, '2020-09-09 05:04:51');
INSERT INTO `ap_log_action` VALUES (1976, 'category', 'Insert category: 179', 1, '2020-09-09 05:05:11');
INSERT INTO `ap_log_action` VALUES (1977, 'category', 'Insert category: 180', 1, '2020-09-09 05:07:00');
INSERT INTO `ap_log_action` VALUES (1978, 'category', 'Insert category: 181', 1, '2020-09-09 05:07:35');
INSERT INTO `ap_log_action` VALUES (1979, 'category', 'Update category: 181', 1, '2020-09-09 05:20:07');
INSERT INTO `ap_log_action` VALUES (1980, 'category', 'Update category: 181', 1, '2020-09-09 05:20:33');
INSERT INTO `ap_log_action` VALUES (1981, 'category', 'Update category: 181', 1, '2020-09-09 05:20:52');
INSERT INTO `ap_log_action` VALUES (1982, 'category', 'Update category: 181', 1, '2020-09-09 05:21:21');
INSERT INTO `ap_log_action` VALUES (1983, 'category', 'Update category: 181', 1, '2020-09-09 05:21:50');
INSERT INTO `ap_log_action` VALUES (1984, 'category', 'Update category: 181', 1, '2020-09-09 05:22:00');
INSERT INTO `ap_log_action` VALUES (1985, 'category', 'Update category: 181', 1, '2020-09-09 05:24:00');
INSERT INTO `ap_log_action` VALUES (1986, 'category', 'Update category: 181', 1, '2020-09-09 05:24:16');
INSERT INTO `ap_log_action` VALUES (1987, 'category', 'Update category: 181', 1, '2020-09-09 05:24:34');
INSERT INTO `ap_log_action` VALUES (1988, 'category', 'Update category: 181', 1, '2020-09-09 05:25:05');
INSERT INTO `ap_log_action` VALUES (1989, 'category', 'Update category: 181', 1, '2020-09-09 05:25:25');
INSERT INTO `ap_log_action` VALUES (1990, 'category', 'Update category: 181', 1, '2020-09-09 05:25:52');
INSERT INTO `ap_log_action` VALUES (1991, 'category', 'Update category: 181', 1, '2020-09-09 05:28:14');
INSERT INTO `ap_log_action` VALUES (1992, 'category', 'Update category: 181', 1, '2020-09-09 05:28:37');
INSERT INTO `ap_log_action` VALUES (1993, 'category', 'Update category: 181', 1, '2020-09-09 05:29:07');
INSERT INTO `ap_log_action` VALUES (1994, 'category', 'Insert category: 182', 1, '2020-09-09 05:32:40');
INSERT INTO `ap_log_action` VALUES (1995, 'category', 'Update category: 182', 1, '2020-09-09 05:35:10');
INSERT INTO `ap_log_action` VALUES (1996, 'category', 'Update category: 181', 1, '2020-09-09 05:35:10');
INSERT INTO `ap_log_action` VALUES (1997, 'category', 'Update category: 180', 1, '2020-09-09 05:35:10');
INSERT INTO `ap_log_action` VALUES (1998, 'category', 'Update category: 179', 1, '2020-09-09 05:35:10');
INSERT INTO `ap_log_action` VALUES (1999, 'category', 'Update category: 178', 1, '2020-09-09 05:35:10');
INSERT INTO `ap_log_action` VALUES (2000, 'category', 'Update category: 177', 1, '2020-09-09 05:35:11');
INSERT INTO `ap_log_action` VALUES (2001, 'category', 'Update category: 176', 1, '2020-09-09 05:35:11');
INSERT INTO `ap_log_action` VALUES (2002, 'category', 'Update category: 175', 1, '2020-09-09 05:35:11');
INSERT INTO `ap_log_action` VALUES (2003, 'category', 'Update category: 174', 1, '2020-09-09 05:35:11');
INSERT INTO `ap_log_action` VALUES (2004, 'category', 'Update category: 173', 1, '2020-09-09 05:35:11');
INSERT INTO `ap_log_action` VALUES (2005, 'category', 'Update category: 169', 1, '2020-09-09 05:35:37');
INSERT INTO `ap_log_action` VALUES (2006, 'category', 'Update category: 168', 1, '2020-09-09 05:35:37');
INSERT INTO `ap_log_action` VALUES (2007, 'category', 'Update category: 167', 1, '2020-09-09 05:35:37');
INSERT INTO `ap_log_action` VALUES (2008, 'category', 'Update category: 165', 1, '2020-09-09 05:35:37');
INSERT INTO `ap_log_action` VALUES (2009, 'category', 'Update category: 164', 1, '2020-09-09 05:35:37');
INSERT INTO `ap_log_action` VALUES (2010, 'post', 'Update post: 44', 1, '2020-09-09 05:47:39');
INSERT INTO `ap_log_action` VALUES (2011, 'post', 'Update post: 30', 1, '2020-09-09 05:48:17');
INSERT INTO `ap_log_action` VALUES (2012, 'post', 'Update post: 31', 1, '2020-09-09 05:49:05');
INSERT INTO `ap_log_action` VALUES (2013, 'post', 'Insert post: 53', 1, '2020-09-09 05:55:07');
INSERT INTO `ap_log_action` VALUES (2014, 'post', 'Insert post: 54', 1, '2020-09-09 05:55:37');
INSERT INTO `ap_log_action` VALUES (2015, 'post', 'Insert post: 55', 1, '2020-09-09 05:56:25');
INSERT INTO `ap_log_action` VALUES (2016, 'post', 'Insert post: 56', 1, '2020-09-09 05:56:46');
INSERT INTO `ap_log_action` VALUES (2017, 'post', 'Insert post: 57', 1, '2020-09-09 05:57:13');
INSERT INTO `ap_log_action` VALUES (2018, 'post', 'Insert post: 58', 1, '2020-09-09 05:58:02');
INSERT INTO `ap_log_action` VALUES (2019, 'post', 'Insert post: 59', 1, '2020-09-09 05:58:45');
INSERT INTO `ap_log_action` VALUES (2020, 'post', 'Insert post: 60', 1, '2020-09-09 09:25:11');
INSERT INTO `ap_log_action` VALUES (2021, 'post', 'Insert post: 61', 1, '2020-09-09 09:25:41');
INSERT INTO `ap_log_action` VALUES (2022, 'post', 'Insert post: 62', 1, '2020-09-09 09:26:27');
INSERT INTO `ap_log_action` VALUES (2023, 'post', 'Insert post: 63', 1, '2020-09-09 09:27:20');
INSERT INTO `ap_log_action` VALUES (2024, 'post', 'Insert post: 64', 1, '2020-09-09 09:29:20');
INSERT INTO `ap_log_action` VALUES (2025, 'post', 'Insert post: 65', 1, '2020-09-09 10:01:56');
INSERT INTO `ap_log_action` VALUES (2026, 'post', 'Insert post: 66', 1, '2020-09-09 10:02:27');
INSERT INTO `ap_log_action` VALUES (2027, 'post', 'Insert post: 67', 1, '2020-09-09 10:06:30');
INSERT INTO `ap_log_action` VALUES (2028, 'post', 'Insert post: 68', 1, '2020-09-09 10:07:44');
INSERT INTO `ap_log_action` VALUES (2029, 'post', 'Insert post: 69', 1, '2020-09-10 09:08:35');
INSERT INTO `ap_log_action` VALUES (2030, 'post', 'Insert post: 70', 1, '2020-09-10 09:09:13');
INSERT INTO `ap_log_action` VALUES (2031, 'post', 'Insert post: 71', 1, '2020-09-10 09:09:39');
INSERT INTO `ap_log_action` VALUES (2032, 'post', 'Insert post: 72', 1, '2020-09-10 09:10:38');
INSERT INTO `ap_log_action` VALUES (2033, 'post', 'Insert post: 73', 1, '2020-09-10 09:18:45');
INSERT INTO `ap_log_action` VALUES (2034, 'post', 'Update post: 73', 1, '2020-09-10 09:20:03');
INSERT INTO `ap_log_action` VALUES (2035, 'post', 'Update post: 72', 1, '2020-09-10 09:21:40');
INSERT INTO `ap_log_action` VALUES (2036, 'post', 'Update post: 72', 1, '2020-09-10 09:22:00');
INSERT INTO `ap_log_action` VALUES (2037, 'post', 'Update post: 72', 1, '2020-09-10 09:22:28');
INSERT INTO `ap_log_action` VALUES (2038, 'post', 'Update post: 72', 1, '2020-09-10 09:22:38');
INSERT INTO `ap_log_action` VALUES (2039, 'post', 'Update post: 72', 1, '2020-09-10 09:22:46');
INSERT INTO `ap_log_action` VALUES (2040, 'post', 'Update post: 72', 1, '2020-09-10 09:25:44');
INSERT INTO `ap_log_action` VALUES (2041, 'post', 'Update post: 73', 1, '2020-09-10 09:28:24');
INSERT INTO `ap_log_action` VALUES (2042, 'post', 'Update post: 73', 1, '2020-09-10 09:29:37');
INSERT INTO `ap_log_action` VALUES (2043, 'post', 'Update post: 72', 1, '2020-09-10 09:30:12');
INSERT INTO `ap_log_action` VALUES (2044, 'post', 'Update post: 71', 1, '2020-09-10 09:32:30');
INSERT INTO `ap_log_action` VALUES (2045, 'post', 'Update post: 70', 1, '2020-09-10 01:32:05');
INSERT INTO `ap_log_action` VALUES (2046, 'post', 'Insert post: 74', 1, '2020-09-10 01:33:01');
INSERT INTO `ap_log_action` VALUES (2047, 'post', 'Update post: 74', 1, '2020-09-10 01:33:05');
INSERT INTO `ap_log_action` VALUES (2048, 'users', 'delete users: 71', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2049, 'users', 'delete users: 70', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2050, 'users', 'delete users: 69', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2051, 'users', 'delete users: 68', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2052, 'users', 'delete users: 67', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2053, 'users', 'delete users: 65', 1, '2020-09-10 02:07:00');
INSERT INTO `ap_log_action` VALUES (2054, 'post', 'Update post: 69', 1, '2020-09-10 02:07:23');
INSERT INTO `ap_log_action` VALUES (2055, 'post', 'Update post: 68', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2056, 'post', 'Update post: 67', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2057, 'post', 'Update post: 66', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2058, 'post', 'Update post: 65', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2059, 'post', 'Update post: 64', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2060, 'post', 'Update post: 63', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2061, 'post', 'Update post: 62', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2062, 'post', 'Update post: 61', 1, '2020-09-10 02:07:24');
INSERT INTO `ap_log_action` VALUES (2063, 'post', 'Update post: 60', 1, '2020-09-10 02:07:25');
INSERT INTO `ap_log_action` VALUES (2064, 'post', 'Update post: 59', 1, '2020-09-10 02:07:41');
INSERT INTO `ap_log_action` VALUES (2065, 'post', 'Update post: 58', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2066, 'post', 'Update post: 57', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2067, 'post', 'Update post: 56', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2068, 'post', 'Update post: 55', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2069, 'post', 'Update post: 54', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2070, 'post', 'Update post: 53', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2071, 'post', 'Update post: 43', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2072, 'post', 'Update post: 42', 1, '2020-09-10 02:07:42');
INSERT INTO `ap_log_action` VALUES (2073, 'page', 'Update page: 24', 1, '2020-09-10 02:26:53');
INSERT INTO `ap_log_action` VALUES (2074, 'page', 'Update page: 15', 1, '2020-09-10 02:26:53');
INSERT INTO `ap_log_action` VALUES (2075, 'page', 'Update page: 13', 1, '2020-09-10 02:26:57');
INSERT INTO `ap_log_action` VALUES (2076, 'page', 'Update page: 1', 1, '2020-09-10 02:27:20');
INSERT INTO `ap_log_action` VALUES (2077, 'page', 'Insert page: 0', 1, '2020-09-10 02:29:59');
INSERT INTO `ap_log_action` VALUES (2078, 'page', 'Insert page: 0', 1, '2020-09-10 02:31:52');
INSERT INTO `ap_log_action` VALUES (2079, 'page', 'Insert page: 0', 1, '2020-09-10 02:32:40');
INSERT INTO `ap_log_action` VALUES (2080, 'page', 'Insert page: 0', 1, '2020-09-10 02:34:28');
INSERT INTO `ap_log_action` VALUES (2081, 'page', 'Update page: 29', 1, '2020-09-10 02:34:35');
INSERT INTO `ap_log_action` VALUES (2082, 'page', 'Update page: 29', 1, '2020-09-10 02:48:39');
INSERT INTO `ap_log_action` VALUES (2083, 'page', 'Update page: 28', 1, '2020-09-10 02:48:39');
INSERT INTO `ap_log_action` VALUES (2084, 'page', 'Update page: 27', 1, '2020-09-10 02:48:39');
INSERT INTO `ap_log_action` VALUES (2085, 'page', 'Update page: 26', 1, '2020-09-10 02:48:39');
INSERT INTO `ap_log_action` VALUES (2086, 'page', 'Insert page: 0', 1, '2020-09-10 02:49:34');
INSERT INTO `ap_log_action` VALUES (2087, 'page', 'Update page: 30', 1, '2020-09-10 02:53:49');
INSERT INTO `ap_log_action` VALUES (2088, 'page', 'Update page: 30', 1, '2020-09-10 02:53:59');
INSERT INTO `ap_log_action` VALUES (2089, 'page', 'Update page: 30', 1, '2020-09-10 02:54:19');
INSERT INTO `ap_log_action` VALUES (2090, 'page', 'Update page: 30', 1, '2020-09-10 02:55:01');
INSERT INTO `ap_log_action` VALUES (2091, 'historydv', 'Update historydv: 28', 1, '2020-09-10 03:14:58');
INSERT INTO `ap_log_action` VALUES (2092, 'historydv', 'Update historydv: 24', 1, '2020-09-10 03:15:05');
INSERT INTO `ap_log_action` VALUES (2093, 'historydv', 'Update historydv: 23', 1, '2020-09-10 03:15:05');
INSERT INTO `ap_log_action` VALUES (2094, 'historydv', 'Update historydv: 22', 1, '2020-09-10 03:15:25');
INSERT INTO `ap_log_action` VALUES (2095, 'historydv', 'Update historydv: 1', 1, '2020-09-10 03:16:15');
INSERT INTO `ap_log_action` VALUES (2096, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:19:48');
INSERT INTO `ap_log_action` VALUES (2097, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:20:07');
INSERT INTO `ap_log_action` VALUES (2098, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:20:26');
INSERT INTO `ap_log_action` VALUES (2099, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:20:57');
INSERT INTO `ap_log_action` VALUES (2100, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:21:07');
INSERT INTO `ap_log_action` VALUES (2101, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:21:24');
INSERT INTO `ap_log_action` VALUES (2102, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:21:44');
INSERT INTO `ap_log_action` VALUES (2103, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:22:02');
INSERT INTO `ap_log_action` VALUES (2104, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:22:57');
INSERT INTO `ap_log_action` VALUES (2105, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:23:07');
INSERT INTO `ap_log_action` VALUES (2106, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:23:24');
INSERT INTO `ap_log_action` VALUES (2107, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:23:48');
INSERT INTO `ap_log_action` VALUES (2108, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:25:03');
INSERT INTO `ap_log_action` VALUES (2109, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:26:09');
INSERT INTO `ap_log_action` VALUES (2110, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:26:19');
INSERT INTO `ap_log_action` VALUES (2111, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:26:34');
INSERT INTO `ap_log_action` VALUES (2112, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:26:47');
INSERT INTO `ap_log_action` VALUES (2113, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:27:11');
INSERT INTO `ap_log_action` VALUES (2114, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:27:26');
INSERT INTO `ap_log_action` VALUES (2115, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:27:39');
INSERT INTO `ap_log_action` VALUES (2116, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:29:09');
INSERT INTO `ap_log_action` VALUES (2117, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:29:18');
INSERT INTO `ap_log_action` VALUES (2118, 'historydv', 'Update historydv: 41', 1, '2020-09-10 03:29:42');
INSERT INTO `ap_log_action` VALUES (2119, 'historydv', 'Insert historydv: 0', 1, '2020-09-10 03:30:27');
INSERT INTO `ap_log_action` VALUES (2120, 'historydv', 'Update historydv: 42', 1, '2020-09-10 03:30:46');
INSERT INTO `ap_log_action` VALUES (2121, 'historydv', 'Update historydv: 42', 1, '2020-09-10 03:31:17');
INSERT INTO `ap_log_action` VALUES (2122, 'contact', 'Update contact: 14', 1, '2020-09-10 04:01:59');
INSERT INTO `ap_log_action` VALUES (2123, 'contact', 'Update contact: 11', 1, '2020-09-10 04:02:03');
INSERT INTO `ap_log_action` VALUES (2124, 'contact', 'Update contact: 9', 1, '2020-09-10 04:02:03');
INSERT INTO `ap_log_action` VALUES (2125, 'contact', 'Update contact: 8', 1, '2020-09-10 04:02:39');
INSERT INTO `ap_log_action` VALUES (2126, 'contact', 'Update contact: 1', 1, '2020-09-10 04:03:06');
INSERT INTO `ap_log_action` VALUES (2127, 'category', 'Insert category: 183', 1, '2020-09-10 04:12:35');
INSERT INTO `ap_log_action` VALUES (2128, 'category', 'Insert category: 184', 1, '2020-09-10 04:14:48');
INSERT INTO `ap_log_action` VALUES (2129, 'category', 'Update category: 184', 1, '2020-09-10 04:29:06');
INSERT INTO `ap_log_action` VALUES (2130, 'category', 'Update category: 183', 1, '2020-09-10 04:29:11');
INSERT INTO `ap_log_action` VALUES (2131, 'category', 'Update category: 133', 1, '2020-09-10 04:30:04');
INSERT INTO `ap_log_action` VALUES (2132, 'category', 'Update category: 131', 1, '2020-09-10 04:32:17');
INSERT INTO `ap_log_action` VALUES (2133, 'pro_service', 'Insert pro_service: 24', 1, '2020-09-10 04:33:11');
INSERT INTO `ap_log_action` VALUES (2134, 'pro_service', 'Insert pro_service: 25', 1, '2020-09-10 04:33:34');
INSERT INTO `ap_log_action` VALUES (2135, 'category', 'Insert category: 185', 1, '2020-09-10 04:34:27');
INSERT INTO `ap_log_action` VALUES (2136, 'category', 'Update category: 185', 1, '2020-09-10 04:34:30');
INSERT INTO `ap_log_action` VALUES (2137, 'category', 'Insert category: 186', 1, '2020-09-10 04:35:51');
INSERT INTO `ap_log_action` VALUES (2138, 'category', 'Update category: 186', 1, '2020-09-10 04:36:03');
INSERT INTO `ap_log_action` VALUES (2139, 'category', 'Insert category: 187', 1, '2020-09-10 04:37:56');
INSERT INTO `ap_log_action` VALUES (2140, 'category', 'Insert category: 188', 1, '2020-09-10 04:38:11');
INSERT INTO `ap_log_action` VALUES (2141, 'category', 'Insert category: 189', 1, '2020-09-10 04:38:49');
INSERT INTO `ap_log_action` VALUES (2142, 'category', 'Insert category: 190', 1, '2020-09-10 04:39:28');
INSERT INTO `ap_log_action` VALUES (2143, 'category', 'Insert category: 191', 1, '2020-09-10 04:39:53');
INSERT INTO `ap_log_action` VALUES (2144, 'category', 'Insert category: 192', 1, '2020-09-10 04:40:55');
INSERT INTO `ap_log_action` VALUES (2145, 'category', 'Insert category: 193', 1, '2020-09-10 04:41:21');
INSERT INTO `ap_log_action` VALUES (2146, 'category', 'Insert category: 194', 1, '2020-09-10 04:41:46');
INSERT INTO `ap_log_action` VALUES (2147, 'category', 'Update category: 194', 1, '2020-09-10 04:42:19');
INSERT INTO `ap_log_action` VALUES (2148, 'category', 'Insert category: 195', 1, '2020-09-10 04:44:27');
INSERT INTO `ap_log_action` VALUES (2149, 'category', 'Update category: 61', 1, '2020-09-10 04:45:37');
INSERT INTO `ap_log_action` VALUES (2150, 'category', 'Update category: 195', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2151, 'category', 'Update category: 194', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2152, 'category', 'Update category: 193', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2153, 'category', 'Update category: 192', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2154, 'category', 'Update category: 191', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2155, 'category', 'Update category: 190', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2156, 'category', 'Update category: 189', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2157, 'category', 'Update category: 188', 1, '2020-09-10 04:45:58');
INSERT INTO `ap_log_action` VALUES (2158, 'category', 'Update category: 187', 1, '2020-09-10 04:46:45');
INSERT INTO `ap_log_action` VALUES (2159, 'category', 'Update category: 187', 1, '2020-09-10 04:49:06');
INSERT INTO `ap_log_action` VALUES (2160, 'category', 'Update category: 187', 1, '2020-09-10 04:49:56');
INSERT INTO `ap_log_action` VALUES (2161, 'category', 'Update category: 187', 1, '2020-09-10 04:50:19');
INSERT INTO `ap_log_action` VALUES (2162, 'newsletter', 'Update newsletter: 15', 1, '2020-09-10 05:08:19');
INSERT INTO `ap_log_action` VALUES (2163, 'newsletter', 'Update newsletter: 14', 1, '2020-09-10 05:08:33');
INSERT INTO `ap_log_action` VALUES (2164, 'newsletter', 'Update newsletter: 13', 1, '2020-09-10 05:09:07');
INSERT INTO `ap_log_action` VALUES (2165, 'pro_service', 'Update pro_service: 25', 1, '2020-09-10 05:40:36');
INSERT INTO `ap_log_action` VALUES (2166, 'pro_service', 'Update pro_service: 24', 1, '2020-09-10 05:40:42');
INSERT INTO `ap_log_action` VALUES (2167, 'pro_service', 'Update pro_service: 19', 1, '2020-09-10 05:40:43');
INSERT INTO `ap_log_action` VALUES (2168, 'pro_service', 'Update pro_service: 17', 1, '2020-09-10 05:41:04');
INSERT INTO `ap_log_action` VALUES (2169, 'pro_service', 'Update pro_service: 18', 1, '2020-09-10 05:41:10');
INSERT INTO `ap_log_action` VALUES (2170, 'pro_service', 'Update pro_service: 16', 1, '2020-09-10 05:41:45');
INSERT INTO `ap_log_action` VALUES (2171, 'pro_service', 'Insert pro_service: 26', 1, '2020-09-10 05:46:03');
INSERT INTO `ap_log_action` VALUES (2172, 'pro_service', 'Insert pro_service: 27', 1, '2020-09-10 05:47:07');
INSERT INTO `ap_log_action` VALUES (2173, 'pro_service', 'Insert pro_service: 28', 1, '2020-09-10 05:47:30');
INSERT INTO `ap_log_action` VALUES (2174, 'pro_service', 'Insert pro_service: 29', 1, '2020-09-10 05:48:32');
INSERT INTO `ap_log_action` VALUES (2175, 'pro_service', 'Update pro_service: 29', 1, '2020-09-10 05:56:52');
INSERT INTO `ap_log_action` VALUES (2176, 'pro_service', 'Update pro_service: 29', 1, '2020-09-10 05:57:48');
INSERT INTO `ap_log_action` VALUES (2177, 'pro_service', 'Update pro_service: 29', 1, '2020-09-10 07:57:26');
INSERT INTO `ap_log_action` VALUES (2178, 'category', 'Update category: 145', 1, '2020-09-11 01:51:37');
INSERT INTO `ap_log_action` VALUES (2179, 'category', 'Update category: 17', 1, '2020-09-11 01:52:24');
INSERT INTO `ap_log_action` VALUES (2180, 'category', 'Update category: 142', 1, '2020-09-11 01:53:24');
INSERT INTO `ap_log_action` VALUES (2181, 'category', 'Insert category: 196', 1, '2020-09-11 01:57:07');
INSERT INTO `ap_log_action` VALUES (2182, 'category', 'Insert category: 197', 1, '2020-09-11 01:57:37');
INSERT INTO `ap_log_action` VALUES (2183, 'category', 'Update category: 197', 1, '2020-09-11 01:58:54');
INSERT INTO `ap_log_action` VALUES (2184, 'category', 'Insert category: 198', 1, '2020-09-11 02:00:22');
INSERT INTO `ap_log_action` VALUES (2185, 'category', 'Update category: 198', 1, '2020-09-11 02:00:47');
INSERT INTO `ap_log_action` VALUES (2186, 'category', 'Insert category: 199', 1, '2020-09-11 02:06:31');
INSERT INTO `ap_log_action` VALUES (2187, 'category', 'Insert category: 200', 1, '2020-09-11 02:07:43');
INSERT INTO `ap_log_action` VALUES (2188, 'category', 'Insert category: 201', 1, '2020-09-11 02:18:01');
INSERT INTO `ap_log_action` VALUES (2189, 'category', 'Insert category: 202', 1, '2020-09-11 02:19:24');
INSERT INTO `ap_log_action` VALUES (2190, 'category', 'Insert category: 203', 1, '2020-09-11 02:21:11');
INSERT INTO `ap_log_action` VALUES (2191, 'category', 'Update category: 203', 1, '2020-09-11 02:23:19');
INSERT INTO `ap_log_action` VALUES (2192, 'category', 'Update category: 203', 1, '2020-09-11 02:23:39');
INSERT INTO `ap_log_action` VALUES (2193, 'category', 'Update category: 203', 1, '2020-09-11 02:23:58');
INSERT INTO `ap_log_action` VALUES (2194, 'category', 'Update category: 203', 1, '2020-09-11 02:24:23');
INSERT INTO `ap_log_action` VALUES (2195, 'category', 'Update category: 203', 1, '2020-09-11 02:24:34');
INSERT INTO `ap_log_action` VALUES (2196, 'category', 'Update category: 202', 1, '2020-09-11 02:24:35');
INSERT INTO `ap_log_action` VALUES (2197, 'category', 'Update category: 201', 1, '2020-09-11 02:24:35');
INSERT INTO `ap_log_action` VALUES (2198, 'category', 'Update category: 198', 1, '2020-09-11 02:24:35');
INSERT INTO `ap_log_action` VALUES (2199, 'category', 'Update category: 200', 1, '2020-09-11 02:25:34');
INSERT INTO `ap_log_action` VALUES (2200, 'category', 'Update category: 200', 1, '2020-09-11 02:25:41');
INSERT INTO `ap_log_action` VALUES (2201, 'project', 'Update project: 47', 1, '2020-09-11 02:37:31');
INSERT INTO `ap_log_action` VALUES (2202, 'project', 'Update project: 46', 1, '2020-09-11 02:37:35');
INSERT INTO `ap_log_action` VALUES (2203, 'project', 'Update project: 45', 1, '2020-09-11 02:37:36');
INSERT INTO `ap_log_action` VALUES (2204, 'project', 'Update project: 44', 1, '2020-09-11 02:37:43');
INSERT INTO `ap_log_action` VALUES (2205, 'project', 'Update project: 40', 1, '2020-09-11 02:37:52');
INSERT INTO `ap_log_action` VALUES (2206, 'project', 'Update project: 43', 1, '2020-09-11 02:38:16');
INSERT INTO `ap_log_action` VALUES (2207, 'project', 'Insert project: 48', 1, '2020-09-11 02:43:05');
INSERT INTO `ap_log_action` VALUES (2208, 'project', 'Insert project: 49', 1, '2020-09-11 02:43:48');
INSERT INTO `ap_log_action` VALUES (2209, 'project', 'Insert project: 50', 1, '2020-09-11 02:44:52');
INSERT INTO `ap_log_action` VALUES (2210, 'project', 'Insert project: 51', 1, '2020-09-11 02:47:04');
INSERT INTO `ap_log_action` VALUES (2211, 'project', 'Update project: 51', 1, '2020-09-11 02:48:00');
INSERT INTO `ap_log_action` VALUES (2212, 'project', 'Update project: 51', 1, '2020-09-11 02:48:39');
INSERT INTO `ap_log_action` VALUES (2213, 'project', 'Update project: 51', 1, '2020-09-11 02:50:25');
INSERT INTO `ap_log_action` VALUES (2214, 'project', 'Update project: 51', 1, '2020-09-11 02:55:03');
INSERT INTO `ap_log_action` VALUES (2215, 'project', 'Update project: 50', 1, '2020-09-11 02:55:03');
INSERT INTO `ap_log_action` VALUES (2216, 'project', 'Update project: 49', 1, '2020-09-11 02:55:03');
INSERT INTO `ap_log_action` VALUES (2217, 'project', 'Update project: 48', 1, '2020-09-11 02:55:03');
INSERT INTO `ap_log_action` VALUES (2218, 'property', 'Insert property: 0', 1, '2020-09-11 03:02:42');
INSERT INTO `ap_log_action` VALUES (2219, 'property', 'Update property: 30', 1, '2020-09-11 03:07:20');
INSERT INTO `ap_log_action` VALUES (2220, 'property', 'Update property: 29', 1, '2020-09-11 03:07:23');
INSERT INTO `ap_log_action` VALUES (2221, 'property', 'Update property: 26', 1, '2020-09-11 03:07:31');
INSERT INTO `ap_log_action` VALUES (2222, 'property', 'Update property: 25', 1, '2020-09-11 03:07:31');
INSERT INTO `ap_log_action` VALUES (2223, 'property', 'Update property: 24', 1, '2020-09-11 03:07:41');
INSERT INTO `ap_log_action` VALUES (2224, 'property', 'Update property: 19', 1, '2020-09-11 03:07:53');
INSERT INTO `ap_log_action` VALUES (2225, 'property', 'Update property: 23', 1, '2020-09-11 03:08:36');
INSERT INTO `ap_log_action` VALUES (2226, 'property', 'Insert property: 0', 1, '2020-09-11 03:15:26');
INSERT INTO `ap_log_action` VALUES (2227, 'property', 'Insert property: 0', 1, '2020-09-11 03:16:18');
INSERT INTO `ap_log_action` VALUES (2228, 'property', 'Insert property: 0', 1, '2020-09-11 03:17:14');
INSERT INTO `ap_log_action` VALUES (2229, 'property', 'Insert property: 0', 1, '2020-09-11 03:17:56');
INSERT INTO `ap_log_action` VALUES (2230, 'property', 'Update property: 34', 1, '2020-09-11 03:19:39');
INSERT INTO `ap_log_action` VALUES (2231, 'property', 'Update property: 34', 1, '2020-09-11 03:20:02');
INSERT INTO `ap_log_action` VALUES (2232, 'property', 'Update property: 34', 1, '2020-09-11 03:20:19');
INSERT INTO `ap_log_action` VALUES (2233, 'property', 'Update property: 34', 1, '2020-09-11 03:20:42');
INSERT INTO `ap_log_action` VALUES (2234, 'property', 'Update property: 34', 1, '2020-09-11 03:29:15');
INSERT INTO `ap_log_action` VALUES (2235, 'property', 'Update property: 33', 1, '2020-09-11 03:29:15');
INSERT INTO `ap_log_action` VALUES (2236, 'property', 'Update property: 32', 1, '2020-09-11 03:29:15');
INSERT INTO `ap_log_action` VALUES (2237, 'property', 'Update property: 31', 1, '2020-09-11 03:29:15');
INSERT INTO `ap_log_action` VALUES (2238, 'category', 'Update category: 153', 1, '2020-09-11 03:35:03');
INSERT INTO `ap_log_action` VALUES (2239, 'category', 'Update category: 151', 1, '2020-09-11 03:35:08');
INSERT INTO `ap_log_action` VALUES (2240, 'category', 'Insert category: 204', 1, '2020-09-11 03:37:47');
INSERT INTO `ap_log_action` VALUES (2241, 'category', 'Insert category: 205', 1, '2020-09-11 03:38:03');
INSERT INTO `ap_log_action` VALUES (2242, 'category', 'Update category: 205', 1, '2020-09-11 03:38:30');
INSERT INTO `ap_log_action` VALUES (2243, 'category', 'Update category: 204', 1, '2020-09-11 03:40:00');
INSERT INTO `ap_log_action` VALUES (2244, 'category', 'Insert category: 206', 1, '2020-09-11 03:41:41');
INSERT INTO `ap_log_action` VALUES (2245, 'category', 'Insert category: 207', 1, '2020-09-11 03:42:15');
INSERT INTO `ap_log_action` VALUES (2246, 'category', 'Insert category: 208', 1, '2020-09-11 03:42:57');
INSERT INTO `ap_log_action` VALUES (2247, 'category', 'Insert category: 209', 1, '2020-09-11 03:44:03');
INSERT INTO `ap_log_action` VALUES (2248, 'category', 'Update category: 209', 1, '2020-09-11 03:44:54');
INSERT INTO `ap_log_action` VALUES (2249, 'category', 'Update category: 209', 1, '2020-09-11 03:45:50');
INSERT INTO `ap_log_action` VALUES (2250, 'category', 'Update category: 209', 1, '2020-09-11 03:46:07');
INSERT INTO `ap_log_action` VALUES (2251, 'category', 'Update category: 209', 1, '2020-09-11 03:46:17');
INSERT INTO `ap_log_action` VALUES (2252, 'category', 'Update category: 208', 1, '2020-09-11 03:46:17');
INSERT INTO `ap_log_action` VALUES (2253, 'category', 'Update category: 207', 1, '2020-09-11 03:46:17');
INSERT INTO `ap_log_action` VALUES (2254, 'category', 'Update category: 206', 1, '2020-09-11 03:46:17');
INSERT INTO `ap_log_action` VALUES (2255, 'career', 'Update career: 22', 1, '2020-09-11 04:14:21');
INSERT INTO `ap_log_action` VALUES (2256, 'career', 'Update career: 21', 1, '2020-09-11 04:14:30');
INSERT INTO `ap_log_action` VALUES (2257, 'career', 'Update career: 20', 1, '2020-09-11 04:14:30');
INSERT INTO `ap_log_action` VALUES (2258, 'career', 'Update career: 19', 1, '2020-09-11 04:14:43');
INSERT INTO `ap_log_action` VALUES (2259, 'career', 'Update career: 18', 1, '2020-09-11 04:14:49');
INSERT INTO `ap_log_action` VALUES (2260, 'career', 'Update career: 17', 1, '2020-09-11 04:15:55');
INSERT INTO `ap_log_action` VALUES (2261, 'career', 'Insert career: 25', 1, '2020-09-11 04:18:53');
INSERT INTO `ap_log_action` VALUES (2262, 'career', 'Insert career: 26', 1, '2020-09-11 04:19:22');
INSERT INTO `ap_log_action` VALUES (2263, 'career', 'Insert career: 27', 1, '2020-09-11 04:20:14');
INSERT INTO `ap_log_action` VALUES (2264, 'career', 'Insert career: 28', 1, '2020-09-11 04:20:57');
INSERT INTO `ap_log_action` VALUES (2265, 'candidate', 'Update candidate: 5', 1, '2020-09-11 05:04:32');
INSERT INTO `ap_log_action` VALUES (2266, 'users', 'Update users: 22', 1, '2020-10-08 09:23:30');
INSERT INTO `ap_log_action` VALUES (2267, 'users', 'Update users: 22', 1, '2020-10-08 09:23:47');
INSERT INTO `ap_log_action` VALUES (2268, 'users', 'Update users: 22', 1, '2020-10-08 09:26:33');
INSERT INTO `ap_log_action` VALUES (2269, 'users', 'Update users: 22', 1, '2020-10-08 09:27:41');
INSERT INTO `ap_log_action` VALUES (2270, 'system_menu', 'Update system_menu: 130', 1, '2020-10-08 02:14:14');
INSERT INTO `ap_log_action` VALUES (2271, 'system_menu', 'Update system_menu: 130', 1, '2020-10-08 02:14:24');
INSERT INTO `ap_log_action` VALUES (2272, 'system_menu', 'Update system_menu: 128', 1, '2020-10-08 02:20:13');
INSERT INTO `ap_log_action` VALUES (2273, 'system_menu', 'Update system_menu: 129', 1, '2020-10-08 02:21:27');
INSERT INTO `ap_log_action` VALUES (2274, 'system_menu', 'Update system_menu: 130', 1, '2020-10-08 02:21:57');
INSERT INTO `ap_log_action` VALUES (2275, 'category', 'Insert category: 201', 1, '2020-10-08 03:24:19');
INSERT INTO `ap_log_action` VALUES (2276, 'category', 'Insert category: 202', 1, '2020-10-08 03:27:47');
INSERT INTO `ap_log_action` VALUES (2277, 'service', 'Insert service: 31', 1, '2020-10-08 03:31:45');
INSERT INTO `ap_log_action` VALUES (2278, 'category', 'Insert category: 203', 1, '2020-10-08 03:52:50');
INSERT INTO `ap_log_action` VALUES (2279, 'system_menu', 'Insert system_menu: 143', 1, '2020-10-09 09:15:53');
INSERT INTO `ap_log_action` VALUES (2280, 'system_menu', 'Insert system_menu: 144', 1, '2020-10-09 09:16:32');
INSERT INTO `ap_log_action` VALUES (2281, 'system_menu', 'Insert system_menu: 145', 1, '2020-10-09 09:17:10');
INSERT INTO `ap_log_action` VALUES (2282, 'system_menu', 'Delete system_menu: 122', 1, '2020-10-09 09:17:28');
INSERT INTO `ap_log_action` VALUES (2283, 'store', 'Insert store: 22', 1, '2020-10-09 10:27:29');
INSERT INTO `ap_log_action` VALUES (2284, 'store', 'Update store: 22', 1, '2020-10-09 10:39:24');
INSERT INTO `ap_log_action` VALUES (2285, 'service', 'Update service: 31', 1, '2020-10-09 11:48:12');
INSERT INTO `ap_log_action` VALUES (2286, 'employee', 'Insert employee: 1', 1, '2020-10-09 02:20:34');
INSERT INTO `ap_log_action` VALUES (2287, 'store', 'Insert store: 23', 1, '2020-10-09 03:33:19');
INSERT INTO `ap_log_action` VALUES (2288, 'service', 'Update service: 31', 1, '2020-10-09 03:48:36');
INSERT INTO `ap_log_action` VALUES (2289, 'system_menu', 'Delete system_menu: 80', 1, '2020-10-09 03:52:55');
INSERT INTO `ap_log_action` VALUES (2290, 'system_menu', 'Delete system_menu: 80', 1, '2020-10-09 03:52:55');
INSERT INTO `ap_log_action` VALUES (2291, 'system_menu', 'Delete system_menu: 80', 1, '2020-10-09 03:52:55');
INSERT INTO `ap_log_action` VALUES (2292, 'system_menu', 'Delete system_menu: 80', 1, '2020-10-09 03:52:55');
INSERT INTO `ap_log_action` VALUES (2293, 'system_menu', 'Delete system_menu: 139', 1, '2020-10-09 03:52:58');
INSERT INTO `ap_log_action` VALUES (2294, 'system_menu', 'Delete system_menu: 139', 1, '2020-10-09 03:52:58');
INSERT INTO `ap_log_action` VALUES (2295, 'system_menu', 'Delete system_menu: 139', 1, '2020-10-09 03:52:58');
INSERT INTO `ap_log_action` VALUES (2296, 'system_menu', 'Delete system_menu: 123', 1, '2020-10-09 03:53:01');
INSERT INTO `ap_log_action` VALUES (2297, 'system_menu', 'Delete system_menu: 123', 1, '2020-10-09 03:53:01');
INSERT INTO `ap_log_action` VALUES (2298, 'system_menu', 'Delete system_menu: 123', 1, '2020-10-09 03:53:01');
INSERT INTO `ap_log_action` VALUES (2299, 'system_menu', 'Delete system_menu: 138', 1, '2020-10-09 03:54:16');
INSERT INTO `ap_log_action` VALUES (2300, 'system_menu', 'Delete system_menu: 140', 1, '2020-10-09 03:54:19');
INSERT INTO `ap_log_action` VALUES (2301, 'system_menu', 'Delete system_menu: 110', 1, '2020-10-09 03:54:21');
INSERT INTO `ap_log_action` VALUES (2302, 'system_menu', 'Delete system_menu: 110', 1, '2020-10-09 03:54:21');
INSERT INTO `ap_log_action` VALUES (2303, 'system_menu', 'Delete system_menu: 110', 1, '2020-10-09 03:54:21');
INSERT INTO `ap_log_action` VALUES (2304, 'system_menu', 'Delete system_menu: 110', 1, '2020-10-09 03:54:21');
INSERT INTO `ap_log_action` VALUES (2305, 'system_menu', 'Delete system_menu: 110', 1, '2020-10-09 03:54:21');
INSERT INTO `ap_log_action` VALUES (2306, 'system_menu', 'Delete system_menu: 136', 1, '2020-10-09 03:54:25');
INSERT INTO `ap_log_action` VALUES (2307, 'system_menu', 'Delete system_menu: 132', 1, '2020-10-09 03:54:27');
INSERT INTO `ap_log_action` VALUES (2308, 'system_menu', 'Delete system_menu: 132', 1, '2020-10-09 03:54:27');
INSERT INTO `ap_log_action` VALUES (2309, 'system_menu', 'Delete system_menu: 132', 1, '2020-10-09 03:54:27');
INSERT INTO `ap_log_action` VALUES (2310, 'system_menu', 'Delete system_menu: 137', 1, '2020-10-09 03:54:29');
INSERT INTO `ap_log_action` VALUES (2311, 'system_menu', 'Update system_menu: 98', 1, '2020-10-09 03:58:24');
INSERT INTO `ap_log_action` VALUES (2312, 'system_menu', 'Update system_menu: 98', 1, '2020-10-09 03:58:37');
INSERT INTO `ap_log_action` VALUES (2313, 'system_menu', 'Delete system_menu: 126', 1, '2020-10-09 04:13:08');
INSERT INTO `ap_log_action` VALUES (2314, 'system_menu', 'Delete system_menu: 126', 1, '2020-10-09 04:13:08');
INSERT INTO `ap_log_action` VALUES (2315, 'system_menu', 'Delete system_menu: 126', 1, '2020-10-09 04:13:08');
INSERT INTO `ap_log_action` VALUES (2316, 'system_menu', 'Insert system_menu: 146', 1, '2020-10-09 04:45:11');
INSERT INTO `ap_log_action` VALUES (2317, 'category', 'Insert category: 204', 1, '2020-10-12 11:08:26');
INSERT INTO `ap_log_action` VALUES (2318, 'employee', 'Update employee: 0', 1, '2020-10-12 11:15:19');
INSERT INTO `ap_log_action` VALUES (2319, 'employee', 'Update employee: 0', 1, '2020-10-12 11:15:42');
INSERT INTO `ap_log_action` VALUES (2320, 'employee', 'Update employee: 22', 1, '2020-10-12 11:25:34');
INSERT INTO `ap_log_action` VALUES (2321, 'service', 'Insert service: 32', 1, '2020-10-12 11:34:01');
INSERT INTO `ap_log_action` VALUES (2322, 'employee', 'Insert employee: 1', 1, '2020-10-12 11:34:27');
INSERT INTO `ap_log_action` VALUES (2323, 'employee', 'Insert employee: 1', 1, '2020-10-12 05:09:07');
INSERT INTO `ap_log_action` VALUES (2324, 'employee', 'Insert employee: 1', 1, '2020-10-12 05:09:17');
INSERT INTO `ap_log_action` VALUES (2325, 'employee', 'Insert employee: 1', 1, '2020-10-12 05:09:36');
INSERT INTO `ap_log_action` VALUES (2326, 'employee', 'Insert employee: 1', 1, '2020-10-12 05:09:51');
INSERT INTO `ap_log_action` VALUES (2327, 'calendar', 'Insert calendar: 4', 1, '2020-10-13 09:04:22');
INSERT INTO `ap_log_action` VALUES (2328, 'service', 'Update service: 31', 1, '2020-10-13 09:10:52');
INSERT INTO `ap_log_action` VALUES (2329, 'employee', 'Update employee: 27', 1, '2020-10-13 09:28:08');
INSERT INTO `ap_log_action` VALUES (2330, 'calendar', 'Update calendar: 4', 1, '2020-10-13 10:41:16');
INSERT INTO `ap_log_action` VALUES (2331, 'calendar', 'Update calendar: 4', 1, '2020-10-13 10:42:51');
INSERT INTO `ap_log_action` VALUES (2332, 'calendar', 'Update calendar: 4', 1, '2020-10-13 10:47:11');
INSERT INTO `ap_log_action` VALUES (2333, 'calendar', 'Update calendar: 22', 1, '2020-10-13 04:07:03');
INSERT INTO `ap_log_action` VALUES (2334, 'calendar', 'Update calendar: 22', 1, '2020-10-13 04:17:35');
INSERT INTO `ap_log_action` VALUES (2335, 'calendar', 'Update calendar: 22', 1, '2020-10-13 04:18:17');
INSERT INTO `ap_log_action` VALUES (2336, 'calendar', 'Update calendar: 22', 1, '2020-10-13 04:18:30');
INSERT INTO `ap_log_action` VALUES (2337, 'calendar', 'Update calendar: 22', 1, '2020-10-13 04:19:00');
INSERT INTO `ap_log_action` VALUES (2338, 'calendar', 'Insert calendar: 5', 1, '2020-10-13 04:43:20');
INSERT INTO `ap_log_action` VALUES (2339, 'calendar', 'Update calendar: 5', 1, '2020-10-13 04:44:40');
INSERT INTO `ap_log_action` VALUES (2340, 'calendar', 'Update calendar: 5', 1, '2020-10-13 04:44:45');
INSERT INTO `ap_log_action` VALUES (2341, 'calendar', 'Update calendar: 5', 1, '2020-10-13 04:45:12');
INSERT INTO `ap_log_action` VALUES (2342, 'calendar', 'Update calendar: 27', 1, '2020-10-13 05:30:40');
INSERT INTO `ap_log_action` VALUES (2343, 'calendar', 'Update calendar: 27', 1, '2020-10-13 05:30:43');
INSERT INTO `ap_log_action` VALUES (2344, 'calendar', 'Update calendar: 27', 1, '2020-10-13 05:30:44');
INSERT INTO `ap_log_action` VALUES (2345, 'calendar', 'Update calendar: 27', 1, '2020-10-13 05:30:45');
INSERT INTO `ap_log_action` VALUES (2346, 'calendar', 'Update calendar: 26', 1, '2020-10-13 05:31:28');
INSERT INTO `ap_log_action` VALUES (2347, 'calendar', 'Insert calendar: 6', 1, '2020-10-13 05:38:09');
INSERT INTO `ap_log_action` VALUES (2348, 'employee', 'Update employee: 27', 1, '2020-10-13 05:38:36');
INSERT INTO `ap_log_action` VALUES (2349, 'calendar', 'Update calendar: 6', 1, '2020-10-13 05:38:46');
INSERT INTO `ap_log_action` VALUES (2350, 'calendar', 'Update calendar: 2', 1, '2020-10-14 09:46:23');
INSERT INTO `ap_log_action` VALUES (2351, 'calendar', 'Insert calendar: 7', 1, '2020-10-14 10:01:21');
INSERT INTO `ap_log_action` VALUES (2352, 'employee', 'Update employee: 25', 1, '2020-10-14 10:02:42');
INSERT INTO `ap_log_action` VALUES (2353, 'calendar', 'Update calendar: 7', 1, '2020-10-14 10:03:00');
INSERT INTO `ap_log_action` VALUES (2354, 'calendar', 'Update calendar: 23', 1, '2020-10-14 10:03:11');
INSERT INTO `ap_log_action` VALUES (2355, 'calendar', 'Insert calendar: 8', 1, '2020-10-14 10:09:40');
INSERT INTO `ap_log_action` VALUES (2356, 'calendar', 'Insert calendar: 9', 1, '2020-10-14 11:15:17');
INSERT INTO `ap_log_action` VALUES (2357, 'employee', 'Update employee: 24', 1, '2020-10-14 11:15:47');
INSERT INTO `ap_log_action` VALUES (2358, 'calendar', 'Update calendar: 9', 1, '2020-10-14 11:15:53');
INSERT INTO `ap_log_action` VALUES (2359, 'calendar', 'Insert calendar: 10', 1, '2020-10-14 11:24:51');
INSERT INTO `ap_log_action` VALUES (2360, 'calendar', 'Update calendar: 22', 1, '2020-10-14 11:42:58');
INSERT INTO `ap_log_action` VALUES (2361, 'day_off', 'Insert day_off: 1', 1, '2020-10-14 02:15:25');
INSERT INTO `ap_log_action` VALUES (2362, 'day_off', 'Update day_off: 1', 1, '2020-10-14 02:36:18');
INSERT INTO `ap_log_action` VALUES (2363, 'calendar', 'Update calendar: 24', 1, '2020-10-14 03:03:59');
INSERT INTO `ap_log_action` VALUES (2364, 'calendar', 'Insert calendar: 11', 1, '2020-10-14 03:14:50');
INSERT INTO `ap_log_action` VALUES (2365, 'system_menu', 'Insert system_menu: 147', 1, '2020-10-14 03:17:12');
INSERT INTO `ap_log_action` VALUES (2366, 'system_menu', 'Insert system_menu: 148', 1, '2020-10-14 04:14:58');
INSERT INTO `ap_log_action` VALUES (2367, 'system_menu', 'Insert system_menu: 149', 1, '2020-10-15 01:47:29');
INSERT INTO `ap_log_action` VALUES (2368, 'store', 'Update store: 23', 1, '2020-10-15 02:25:08');
INSERT INTO `ap_log_action` VALUES (2369, 'service', 'Update service: 32', 1, '2020-10-15 02:25:33');
INSERT INTO `ap_log_action` VALUES (2370, 'system_menu', 'Insert system_menu: 150', 1, '2020-10-15 02:27:11');
INSERT INTO `ap_log_action` VALUES (2371, 'account', 'Update account: 8', 1, '2020-10-15 02:27:48');
INSERT INTO `ap_log_action` VALUES (2372, 'account', 'Update account: 7', 1, '2020-10-15 02:54:58');
INSERT INTO `ap_log_action` VALUES (2373, 'account', 'Update account: 8', 1, '2020-10-15 03:07:35');
INSERT INTO `ap_log_action` VALUES (2374, 'account', 'Update account: 8', 1, '2020-10-15 03:08:44');
INSERT INTO `ap_log_action` VALUES (2375, 'account', 'Update account: 8', 1, '2020-10-15 03:10:28');
INSERT INTO `ap_log_action` VALUES (2376, 'system_menu', 'Update system_menu: 147', 1, '2020-10-15 03:14:55');
INSERT INTO `ap_log_action` VALUES (2377, 'post', 'Insert post: 1', 1, '2020-10-15 03:16:47');
INSERT INTO `ap_log_action` VALUES (2378, 'post', 'Update post: 1', 1, '2020-10-15 03:28:10');
INSERT INTO `ap_log_action` VALUES (2379, 'post', 'Update post: 1', 1, '2020-10-15 03:34:05');
INSERT INTO `ap_log_action` VALUES (2380, 'post', 'Update post: 1', 1, '2020-10-15 03:34:19');
INSERT INTO `ap_log_action` VALUES (2381, 'post', 'Update post: 1', 1, '2020-10-15 03:36:12');
INSERT INTO `ap_log_action` VALUES (2382, 'post', 'Update post: 1', 1, '2020-10-15 03:47:43');
INSERT INTO `ap_log_action` VALUES (2383, 'post', 'Update post: 1', 1, '2020-10-15 03:51:05');
INSERT INTO `ap_log_action` VALUES (2384, 'employee', 'Update employee: 27', 1, '2020-10-15 03:54:04');
INSERT INTO `ap_log_action` VALUES (2385, 'employee', 'Update employee: 26', 1, '2020-10-15 03:54:19');
INSERT INTO `ap_log_action` VALUES (2386, 'employee', 'Update employee: 27', 1, '2020-10-15 03:55:29');
INSERT INTO `ap_log_action` VALUES (2387, 'employee', 'Update employee: 26', 1, '2020-10-15 03:55:51');
INSERT INTO `ap_log_action` VALUES (2388, 'employee', 'Update employee: 27', 1, '2020-10-15 04:02:55');
INSERT INTO `ap_log_action` VALUES (2389, 'service', 'Update service: 32', 1, '2020-10-15 04:16:47');
INSERT INTO `ap_log_action` VALUES (2390, 'service', 'Update service: 32', 1, '2020-10-15 04:16:57');
INSERT INTO `ap_log_action` VALUES (2391, 'users', 'Update users: 22', 1, '2020-10-15 05:20:09');
INSERT INTO `ap_log_action` VALUES (2392, 'users', 'Update users: 22', 1, '2020-10-15 05:25:36');
INSERT INTO `ap_log_action` VALUES (2393, 'users', 'Update users: 18', 1, '2020-10-15 05:32:19');
INSERT INTO `ap_log_action` VALUES (2394, 'users', 'delete users: 21', 1, '2020-10-15 05:34:34');
INSERT INTO `ap_log_action` VALUES (2395, 'groups', 'Update groups: 1', 1, '2020-10-15 09:24:10');
INSERT INTO `ap_log_action` VALUES (2396, 'groups', 'Update groups: 1', 1, '2020-10-15 09:28:14');
INSERT INTO `ap_log_action` VALUES (2397, 'groups', 'Update groups: 1', 1, '2020-10-15 09:31:33');
INSERT INTO `ap_log_action` VALUES (2398, 'calendar', 'Update calendar: 4', 18, '2020-10-16 09:30:00');
INSERT INTO `ap_log_action` VALUES (2399, 'system_menu', 'Update system_menu: 147', 1, '2020-10-16 02:47:06');
INSERT INTO `ap_log_action` VALUES (2400, 'groups', 'Update groups: 59', 1, '2020-10-16 02:48:01');
INSERT INTO `ap_log_action` VALUES (2401, 'groups', 'Update groups: 53', 1, '2020-10-16 02:48:04');
INSERT INTO `ap_log_action` VALUES (2402, 'groups', 'Update groups: 38', 1, '2020-10-16 02:48:06');
INSERT INTO `ap_log_action` VALUES (2403, 'groups', 'Update groups: 24', 1, '2020-10-16 02:48:09');
INSERT INTO `ap_log_action` VALUES (2404, 'groups', 'Update groups: 23', 1, '2020-10-16 02:48:11');
INSERT INTO `ap_log_action` VALUES (2405, 'groups', 'Update groups: 21', 1, '2020-10-16 02:48:13');
INSERT INTO `ap_log_action` VALUES (2406, 'groups', 'Update groups: 20', 1, '2020-10-16 02:48:15');
INSERT INTO `ap_log_action` VALUES (2407, 'users', 'delete users: 17', 1, '2020-10-16 02:48:25');
INSERT INTO `ap_log_action` VALUES (2408, 'groups', 'Update groups: 2', 1, '2020-10-16 02:49:02');
INSERT INTO `ap_log_action` VALUES (2409, 'groups', 'Update groups: 19', 1, '2020-10-16 02:49:09');
INSERT INTO `ap_log_action` VALUES (2410, 'system_menu', 'Insert system_menu: 151', 1, '2020-10-16 03:04:06');
INSERT INTO `ap_log_action` VALUES (2411, 'system_menu', 'Update system_menu: 151', 1, '2020-10-16 03:04:12');
INSERT INTO `ap_log_action` VALUES (2412, 'system_menu', 'Insert system_menu: 152', 1, '2020-10-16 03:04:55');
INSERT INTO `ap_log_action` VALUES (2413, 'system_menu', 'Insert system_menu: 153', 1, '2020-10-16 03:05:18');
INSERT INTO `ap_log_action` VALUES (2414, 'category', 'Insert category: 205', 1, '2020-10-16 03:06:49');
INSERT INTO `ap_log_action` VALUES (2415, 'system_menu', 'Insert system_menu: 154', 1, '2020-10-16 03:14:15');
INSERT INTO `ap_log_action` VALUES (2416, 'gallery', 'Insert gallery: 0', 1, '2020-10-16 04:14:39');
INSERT INTO `ap_log_action` VALUES (2417, 'system_menu', 'Update system_menu: 146', 1, '2020-10-16 04:20:35');
INSERT INTO `ap_log_action` VALUES (2418, 'system_menu', 'Update system_menu: 147', 1, '2020-10-16 04:20:38');
INSERT INTO `ap_log_action` VALUES (2419, 'system_menu', 'Update system_menu: 148', 1, '2020-10-16 04:20:46');
INSERT INTO `ap_log_action` VALUES (2420, 'system_menu', 'Update system_menu: 143', 1, '2020-10-16 04:21:01');
INSERT INTO `ap_log_action` VALUES (2421, 'system_menu', 'Update system_menu: 151', 1, '2020-10-16 04:21:21');
INSERT INTO `ap_log_action` VALUES (2422, 'question', 'Insert question: 1', 1, '2020-10-16 04:21:49');
INSERT INTO `ap_log_action` VALUES (2423, 'calendar', 'Insert calendar: 12', 1, '2020-10-16 04:50:13');
INSERT INTO `ap_log_action` VALUES (2424, 'system_menu', 'Insert system_menu: 155', 1, '2020-10-16 04:54:52');
INSERT INTO `ap_log_action` VALUES (2425, 'calendar', 'Update calendar: 23', 1, '2020-10-17 09:56:54');
INSERT INTO `ap_log_action` VALUES (2426, 'service', 'Update service: 32', 1, '2020-10-17 10:07:52');
INSERT INTO `ap_log_action` VALUES (2427, 'store', 'Update store: 23', 1, '2020-10-17 11:18:54');
INSERT INTO `ap_log_action` VALUES (2428, 'category', 'Insert category: 206', 1, '2020-10-17 11:35:40');
INSERT INTO `ap_log_action` VALUES (2429, 'post', 'Thêm Banner có id là 3', 1, '2020-10-17 11:39:35');
INSERT INTO `ap_log_action` VALUES (2430, 'calendar', 'Update calendar: 10', 1, '2020-10-17 02:47:38');
INSERT INTO `ap_log_action` VALUES (2431, 'calendar', 'Update calendar: 10', 1, '2020-10-17 03:00:22');
INSERT INTO `ap_log_action` VALUES (2432, 'calendar', 'Update calendar: 10', 1, '2020-10-17 03:00:32');
INSERT INTO `ap_log_action` VALUES (2433, 'groups', 'Update groups: 2', 1, '2020-10-19 09:22:48');
INSERT INTO `ap_log_action` VALUES (2434, 'groups', 'Update groups: 2', 1, '2020-10-19 09:29:04');
INSERT INTO `ap_log_action` VALUES (2435, 'groups', 'Update groups: 2', 1, '2020-10-19 09:34:44');
INSERT INTO `ap_log_action` VALUES (2436, 'calendar', 'Update calendar: 24', 18, '2020-10-19 10:27:51');
INSERT INTO `ap_log_action` VALUES (2437, 'calendar', 'Update calendar: 23', 18, '2020-10-19 10:32:11');
INSERT INTO `ap_log_action` VALUES (2438, 'calendar', 'Update calendar: 25', 1, '2020-10-19 11:21:00');
INSERT INTO `ap_log_action` VALUES (2439, 'calendar', 'Update calendar: 27', 1, '2020-10-19 11:22:09');
INSERT INTO `ap_log_action` VALUES (2440, 'system_menu', 'Insert system_menu: 156', 1, '2020-10-19 03:34:50');
INSERT INTO `ap_log_action` VALUES (2441, 'notification', 'Create notification: 33', 1, '2020-10-19 03:37:09');
INSERT INTO `ap_log_action` VALUES (2442, 'notification', 'Create notification: 1', 1, '2020-10-19 03:40:39');
INSERT INTO `ap_log_action` VALUES (2443, 'page', 'Insert page: 0', 1, '2020-10-20 10:48:39');
INSERT INTO `ap_log_action` VALUES (2444, 'calendar', 'Insert calendar: 13', 1, '2020-10-20 05:33:02');
INSERT INTO `ap_log_action` VALUES (2445, 'calendar', 'Update calendar: 13', 1, '2020-10-20 05:33:14');
INSERT INTO `ap_log_action` VALUES (2446, 'category', 'Update category: 206', 1, '2020-10-20 05:47:36');
INSERT INTO `ap_log_action` VALUES (2447, 'page', 'Insert page: 0', 1, '2020-10-20 05:50:48');
INSERT INTO `ap_log_action` VALUES (2448, 'page', 'Insert page: 0', 1, '2020-10-20 05:51:15');
INSERT INTO `ap_log_action` VALUES (2449, 'page', 'Insert page: 0', 1, '2020-10-20 05:51:57');
INSERT INTO `ap_log_action` VALUES (2450, 'post', 'Insert post: 2', 1, '2020-10-20 05:58:38');
INSERT INTO `ap_log_action` VALUES (2451, 'post', 'Insert post: 3', 1, '2020-10-21 08:43:44');
INSERT INTO `ap_log_action` VALUES (2452, 'page', 'Insert page: 0', 1, '2020-10-21 08:44:16');
INSERT INTO `ap_log_action` VALUES (2453, 'category', 'Insert category: 206', 1, '2020-10-21 08:45:23');
INSERT INTO `ap_log_action` VALUES (2454, 'category', 'Update category: 206', 1, '2020-10-21 08:45:26');
INSERT INTO `ap_log_action` VALUES (2455, 'service', 'Update service: 32', 1, '2020-10-21 09:00:55');
INSERT INTO `ap_log_action` VALUES (2456, 'service', 'Update service: 31', 1, '2020-10-21 09:01:04');
INSERT INTO `ap_log_action` VALUES (2457, 'category', 'Update category: 203', 1, '2020-10-21 09:21:04');
INSERT INTO `ap_log_action` VALUES (2458, 'calendar', 'Update calendar: 13', 1, '2020-10-21 10:31:48');
INSERT INTO `ap_log_action` VALUES (2459, 'calendar', 'Update calendar: 23', 1, '2020-10-21 10:57:20');
INSERT INTO `ap_log_action` VALUES (2460, 'calendar', 'Update calendar: 9', 1, '2020-10-21 11:07:46');
INSERT INTO `ap_log_action` VALUES (2461, 'account', 'Insert account: 9', 1, '2020-10-21 01:56:24');
INSERT INTO `ap_log_action` VALUES (2462, 'account', 'Update account: 9', 1, '2020-10-21 02:14:09');
INSERT INTO `ap_log_action` VALUES (2463, 'account', 'Update account: 9', 1, '2020-10-21 02:19:53');
INSERT INTO `ap_log_action` VALUES (2464, 'account', 'Update account: 8', 1, '2020-10-21 02:20:04');
INSERT INTO `ap_log_action` VALUES (2465, 'account', 'Update account: 8', 1, '2020-10-21 02:20:47');
INSERT INTO `ap_log_action` VALUES (2466, 'account', 'Update account: 9', 1, '2020-10-21 03:03:00');
INSERT INTO `ap_log_action` VALUES (2467, 'account', 'Update account: 9', 1, '2020-10-21 03:03:28');
INSERT INTO `ap_log_action` VALUES (2468, 'groups', 'Update groups: 19', 1, '2020-10-21 03:27:40');
INSERT INTO `ap_log_action` VALUES (2469, 'groups', 'Update groups: 19', 1, '2020-10-21 03:30:19');
INSERT INTO `ap_log_action` VALUES (2470, 'post', 'Thêm Banner có id là 4', 1, '2020-10-21 05:09:50');
INSERT INTO `ap_log_action` VALUES (2471, 'post', 'Thêm Banner có id là 5', 1, '2020-10-21 05:11:36');
INSERT INTO `ap_log_action` VALUES (2472, 'notification', 'Create notification: 2', 1, '2020-10-22 10:33:53');
INSERT INTO `ap_log_action` VALUES (2473, 'notification', 'Update notification: 2', 1, '2020-10-22 10:45:44');
INSERT INTO `ap_log_action` VALUES (2474, 'notification', 'Update notification: 1', 1, '2020-10-22 10:57:11');
INSERT INTO `ap_log_action` VALUES (2475, 'notification', 'Create notification: 3', 1, '2020-10-22 10:58:26');
INSERT INTO `ap_log_action` VALUES (2476, 'day_off', 'Insert day_off: 2', 1, '2020-10-22 02:17:05');
INSERT INTO `ap_log_action` VALUES (2477, 'store', 'Update store: 23', 1, '2020-10-22 02:44:47');
INSERT INTO `ap_log_action` VALUES (2478, 'category', 'Insert category: 206', 1, '2020-10-22 04:04:59');
INSERT INTO `ap_log_action` VALUES (2479, 'account', 'Update account: 9', 1, '2020-10-22 04:07:54');
INSERT INTO `ap_log_action` VALUES (2480, 'service', 'Update service: 31', 1, '2020-10-22 04:28:17');
INSERT INTO `ap_log_action` VALUES (2481, 'service', 'Update service: 31', 1, '2020-10-22 04:30:09');
INSERT INTO `ap_log_action` VALUES (2482, 'service', 'Update service: 32', 1, '2020-10-22 04:31:04');
INSERT INTO `ap_log_action` VALUES (2483, 'users', 'Insert users: 0', 1, '2020-10-22 05:10:27');
INSERT INTO `ap_log_action` VALUES (2484, 'groups', 'Update groups: 1', 1, '2020-10-22 05:13:28');
INSERT INTO `ap_log_action` VALUES (2485, 'calendar', 'Update calendar: 10', 1, '2020-10-22 05:53:09');
INSERT INTO `ap_log_action` VALUES (2486, 'account', 'Insert account: 10', 1, '2020-10-23 09:34:29');
INSERT INTO `ap_log_action` VALUES (2487, 'account', 'Update account: 10', 1, '2020-10-23 09:44:01');
INSERT INTO `ap_log_action` VALUES (2488, 'service', 'Update service: 32', 1, '2020-10-23 09:44:50');
INSERT INTO `ap_log_action` VALUES (2489, 'account', 'Update account: 10', 1, '2020-10-23 09:47:20');
INSERT INTO `ap_log_action` VALUES (2490, 'account', 'Update account: 10', 1, '2020-10-23 09:50:00');
INSERT INTO `ap_log_action` VALUES (2491, 'store', 'Update store: 23', 1, '2020-10-23 09:55:17');
INSERT INTO `ap_log_action` VALUES (2492, 'store', 'Update store: 23', 1, '2020-10-23 09:56:29');
INSERT INTO `ap_log_action` VALUES (2493, 'calendar', 'Insert calendar: 14', 1, '2020-10-23 10:26:15');
INSERT INTO `ap_log_action` VALUES (2494, 'calendar', 'Update calendar: ', 1, '2020-10-23 10:29:33');
INSERT INTO `ap_log_action` VALUES (2495, 'calendar', 'Update calendar: 14', 1, '2020-10-23 10:33:19');
INSERT INTO `ap_log_action` VALUES (2496, 'calendar', 'Update calendar: 14', 1, '2020-10-23 10:33:26');
INSERT INTO `ap_log_action` VALUES (2497, 'category', 'Update category: 206', 1, '2020-10-23 05:34:23');
INSERT INTO `ap_log_action` VALUES (2498, 'gallery', 'Update gallery: 1', 1, '2020-10-26 02:41:20');
INSERT INTO `ap_log_action` VALUES (2499, 'gallery', 'Insert gallery: 0', 1, '2020-10-26 02:41:41');
INSERT INTO `ap_log_action` VALUES (2500, 'banner', 'Sửa Banner có id là 5', 1, '2020-10-29 09:30:56');
INSERT INTO `ap_log_action` VALUES (2501, 'banner', 'Sửa Banner có id là 3', 1, '2020-10-29 09:31:12');
INSERT INTO `ap_log_action` VALUES (2502, 'post', 'Thêm Banner có id là 6', 1, '2020-10-29 09:42:46');
INSERT INTO `ap_log_action` VALUES (2503, 'post', 'Thêm Banner có id là 7', 1, '2020-10-29 09:43:02');
INSERT INTO `ap_log_action` VALUES (2504, 'page', 'Update page: 35', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2505, 'page', 'Update page: 34', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2506, 'page', 'Update page: 33', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2507, 'page', 'Update page: 32', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2508, 'page', 'Update page: 31', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2509, 'page', 'Update page: 14', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2510, 'page', 'Update page: 10', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2511, 'page', 'Update page: 9', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2512, 'page', 'Update page: 8', 1, '2020-10-29 09:48:35');
INSERT INTO `ap_log_action` VALUES (2513, 'page', 'Update page: 7', 1, '2020-10-29 09:48:36');
INSERT INTO `ap_log_action` VALUES (2514, 'page', 'Update page: 6', 1, '2020-10-29 09:48:40');
INSERT INTO `ap_log_action` VALUES (2515, 'page', 'Update page: 5', 1, '2020-10-29 09:48:40');
INSERT INTO `ap_log_action` VALUES (2516, 'page', 'Update page: 4', 1, '2020-10-29 09:48:40');
INSERT INTO `ap_log_action` VALUES (2517, 'page', 'Update page: 3', 1, '2020-10-29 09:48:40');
INSERT INTO `ap_log_action` VALUES (2518, 'page', 'Update page: 2', 1, '2020-10-29 09:48:40');
INSERT INTO `ap_log_action` VALUES (2519, 'page', 'Insert page: 0', 1, '2020-10-29 09:51:07');
INSERT INTO `ap_log_action` VALUES (2520, 'page', 'Insert page: 0', 1, '2020-10-29 10:29:58');
INSERT INTO `ap_log_action` VALUES (2521, 'category', 'Update category: 203', 1, '2020-10-29 10:34:44');
INSERT INTO `ap_log_action` VALUES (2522, 'category', 'Update category: 202', 1, '2020-10-29 10:34:57');
INSERT INTO `ap_log_action` VALUES (2523, 'category', 'Update category: 203', 1, '2020-10-29 10:35:09');
INSERT INTO `ap_log_action` VALUES (2524, 'page', 'Insert page: 0', 1, '2020-10-29 10:42:51');
INSERT INTO `ap_log_action` VALUES (2525, 'service', 'Insert service: 33', 1, '2020-10-29 11:20:32');
INSERT INTO `ap_log_action` VALUES (2526, 'service', 'Insert service: 34', 1, '2020-10-29 11:20:48');
INSERT INTO `ap_log_action` VALUES (2527, 'service', 'Insert service: 35', 1, '2020-10-29 11:21:14');
INSERT INTO `ap_log_action` VALUES (2528, 'service', 'Insert service: 36', 1, '2020-10-29 11:21:34');
INSERT INTO `ap_log_action` VALUES (2529, 'page', 'Insert page: 0', 1, '2020-10-29 01:41:16');
INSERT INTO `ap_log_action` VALUES (2530, 'page', 'Update page: 38', 1, '2020-10-29 01:44:23');
INSERT INTO `ap_log_action` VALUES (2531, 'page', 'Insert page: 0', 1, '2020-10-29 01:46:00');
INSERT INTO `ap_log_action` VALUES (2532, 'page', 'Insert page: 0', 1, '2020-10-29 01:46:18');
INSERT INTO `ap_log_action` VALUES (2533, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:57:36');
INSERT INTO `ap_log_action` VALUES (2534, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:57:46');
INSERT INTO `ap_log_action` VALUES (2535, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:57:59');
INSERT INTO `ap_log_action` VALUES (2536, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:58:17');
INSERT INTO `ap_log_action` VALUES (2537, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:58:30');
INSERT INTO `ap_log_action` VALUES (2538, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:58:45');
INSERT INTO `ap_log_action` VALUES (2539, 'gallery', 'Insert gallery: 0', 1, '2020-10-29 02:59:01');
INSERT INTO `ap_log_action` VALUES (2540, 'gallery', 'Update gallery: 9', 1, '2020-10-29 03:21:01');
INSERT INTO `ap_log_action` VALUES (2541, 'gallery', 'Update gallery: 8', 1, '2020-10-29 03:21:12');
INSERT INTO `ap_log_action` VALUES (2542, 'gallery', 'Update gallery: 9', 1, '2020-10-29 03:30:53');
INSERT INTO `ap_log_action` VALUES (2543, 'service', 'Update service: 36', 1, '2020-10-30 09:05:18');
INSERT INTO `ap_log_action` VALUES (2544, 'service', 'Update service: 35', 1, '2020-10-30 09:05:29');
INSERT INTO `ap_log_action` VALUES (2545, 'employee', 'Update employee: 25', 1, '2020-10-30 09:05:48');
INSERT INTO `ap_log_action` VALUES (2546, 'employee', 'Update employee: 27', 1, '2020-10-30 09:05:56');
INSERT INTO `ap_log_action` VALUES (2547, 'employee', 'Update employee: 22', 1, '2020-10-30 09:06:12');
INSERT INTO `ap_log_action` VALUES (2548, 'employee', 'Update employee: 27', 1, '2020-10-30 09:22:29');
INSERT INTO `ap_log_action` VALUES (2549, 'employee', 'Update employee: 26', 1, '2020-10-30 09:22:38');
INSERT INTO `ap_log_action` VALUES (2550, 'employee', 'Update employee: 25', 1, '2020-10-30 09:22:43');
INSERT INTO `ap_log_action` VALUES (2551, 'employee', 'Update employee: 24', 1, '2020-10-30 09:22:49');
INSERT INTO `ap_log_action` VALUES (2552, 'employee', 'Update employee: 23', 1, '2020-10-30 09:22:58');
INSERT INTO `ap_log_action` VALUES (2553, 'employee', 'Update employee: 22', 1, '2020-10-30 09:23:03');
INSERT INTO `ap_log_action` VALUES (2554, 'calendar', 'Update calendar: 27', 1, '2020-10-30 10:39:38');
INSERT INTO `ap_log_action` VALUES (2555, 'calendar', 'Update calendar: 27', 1, '2020-10-30 10:42:40');
INSERT INTO `ap_log_action` VALUES (2556, 'account', 'Update account: 9', 1, '2020-10-30 01:59:55');
INSERT INTO `ap_log_action` VALUES (2557, 'account', 'Update account: 9', 1, '2020-10-30 02:00:12');
INSERT INTO `ap_log_action` VALUES (2558, 'account', 'Update account: 9', 1, '2020-10-30 02:00:29');
INSERT INTO `ap_log_action` VALUES (2559, 'post', 'Update post: 3', 1, '2020-11-05 11:45:20');
INSERT INTO `ap_log_action` VALUES (2560, 'post', 'Update post: 2', 1, '2020-11-05 11:45:27');
INSERT INTO `ap_log_action` VALUES (2561, 'post', 'Update post: 1', 1, '2020-11-05 11:45:34');
INSERT INTO `ap_log_action` VALUES (2562, 'store', 'Update store: 23', 1, '2020-11-05 02:20:56');
INSERT INTO `ap_log_action` VALUES (2563, 'store', 'Update store: 22', 1, '2020-11-05 02:21:08');
INSERT INTO `ap_log_action` VALUES (2564, 'store', 'Update store: 23', 1, '2020-11-05 02:24:14');
INSERT INTO `ap_log_action` VALUES (2565, 'store', 'Update store: 23', 1, '2020-11-05 02:51:54');
INSERT INTO `ap_log_action` VALUES (2566, 'store', 'Update store: 22', 1, '2020-11-05 02:52:12');
INSERT INTO `ap_log_action` VALUES (2567, 'page', 'Insert page: 0', 1, '2020-11-05 03:09:09');
INSERT INTO `ap_log_action` VALUES (2568, 'category', 'Update category: 206', 1, '2020-11-06 02:31:05');
INSERT INTO `ap_log_action` VALUES (2569, 'users', 'Update users: 23', 1, '2020-11-09 08:44:45');
INSERT INTO `ap_log_action` VALUES (2570, 'users', 'Update users: 23', 1, '2020-11-09 08:44:53');
INSERT INTO `ap_log_action` VALUES (2571, 'property', 'Insert property: 0', 1, '2020-11-09 09:15:04');
INSERT INTO `ap_log_action` VALUES (2572, 'property', 'Update property: 1', 1, '2020-11-09 09:16:29');
INSERT INTO `ap_log_action` VALUES (2573, 'system_menu', 'Update system_menu: 148', 1, '2020-11-09 09:23:28');
INSERT INTO `ap_log_action` VALUES (2574, 'system_menu', 'Update system_menu: 148', 1, '2020-11-09 09:23:37');
INSERT INTO `ap_log_action` VALUES (2575, 'system_menu', 'Update system_menu: 151', 1, '2020-11-09 09:54:12');
INSERT INTO `ap_log_action` VALUES (2576, 'system_menu', 'Update system_menu: 152', 1, '2020-11-09 09:54:37');
INSERT INTO `ap_log_action` VALUES (2577, 'system_menu', 'Update system_menu: 153', 1, '2020-11-09 09:55:09');
INSERT INTO `ap_log_action` VALUES (2578, 'system_menu', 'Delete system_menu: 146', 1, '2020-11-09 09:55:46');
INSERT INTO `ap_log_action` VALUES (2579, 'system_menu', 'Delete system_menu: 147', 1, '2020-11-09 09:55:48');
INSERT INTO `ap_log_action` VALUES (2580, 'system_menu', 'Delete system_menu: 155', 1, '2020-11-09 09:55:50');
INSERT INTO `ap_log_action` VALUES (2581, 'system_menu', 'Delete system_menu: 143', 1, '2020-11-09 09:55:56');
INSERT INTO `ap_log_action` VALUES (2582, 'system_menu', 'Delete system_menu: 143', 1, '2020-11-09 09:55:56');
INSERT INTO `ap_log_action` VALUES (2583, 'system_menu', 'Delete system_menu: 143', 1, '2020-11-09 09:55:56');
INSERT INTO `ap_log_action` VALUES (2584, 'system_menu', 'Delete system_menu: 128', 1, '2020-11-09 09:56:00');
INSERT INTO `ap_log_action` VALUES (2585, 'system_menu', 'Delete system_menu: 128', 1, '2020-11-09 09:56:00');
INSERT INTO `ap_log_action` VALUES (2586, 'system_menu', 'Delete system_menu: 128', 1, '2020-11-09 09:56:00');
INSERT INTO `ap_log_action` VALUES (2587, 'system_menu', 'Delete system_menu: 128', 1, '2020-11-09 09:56:00');
INSERT INTO `ap_log_action` VALUES (2588, 'system_menu', 'Delete system_menu: 156', 1, '2020-11-09 09:56:03');
INSERT INTO `ap_log_action` VALUES (2589, 'system_menu', 'Insert system_menu: 157', 1, '2020-11-09 09:56:58');
INSERT INTO `ap_log_action` VALUES (2590, 'system_menu', 'Delete system_menu: 157', 1, '2020-11-09 09:58:11');
INSERT INTO `ap_log_action` VALUES (2591, 'system_menu', 'Delete system_menu: 154', 1, '2020-11-09 09:58:16');
INSERT INTO `ap_log_action` VALUES (2592, 'system_menu', 'Update system_menu: 135', 1, '2020-11-09 09:58:25');
INSERT INTO `ap_log_action` VALUES (2593, 'page', 'Insert page: 0', 1, '2020-11-12 09:23:28');
INSERT INTO `ap_log_action` VALUES (2594, 'page', 'Insert page: 0', 1, '2020-11-12 09:26:36');
INSERT INTO `ap_log_action` VALUES (2595, 'page', 'Insert page: 0', 1, '2020-11-12 09:26:46');
INSERT INTO `ap_log_action` VALUES (2596, 'page', 'Insert page: 0', 1, '2020-11-12 09:26:55');
INSERT INTO `ap_log_action` VALUES (2597, 'page', 'Insert page: 0', 1, '2020-11-12 09:27:04');
INSERT INTO `ap_log_action` VALUES (2598, 'page', 'Insert page: 0', 1, '2020-11-12 09:27:14');
INSERT INTO `ap_log_action` VALUES (2599, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-12 09:37:09');
INSERT INTO `ap_log_action` VALUES (2600, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-12 09:38:30');
INSERT INTO `ap_log_action` VALUES (2601, 'banner', 'Sửa Banner có id là 4', 1, '2020-11-12 09:38:52');
INSERT INTO `ap_log_action` VALUES (2602, 'banner', 'Sửa Banner có id là 3', 1, '2020-11-12 09:38:58');
INSERT INTO `ap_log_action` VALUES (2603, 'banner', 'Sửa Banner có id là 1', 1, '2020-11-12 09:39:04');
INSERT INTO `ap_log_action` VALUES (2604, 'system_menu', 'Insert system_menu: 154', 1, '2020-11-12 10:08:39');
INSERT INTO `ap_log_action` VALUES (2605, 'property', 'Insert property: 0', 1, '2020-11-12 10:10:12');
INSERT INTO `ap_log_action` VALUES (2606, 'system_menu', 'Update system_menu: 148', 1, '2020-11-12 11:10:16');
INSERT INTO `ap_log_action` VALUES (2607, 'property', 'Insert property: 0', 1, '2020-11-12 11:11:18');
INSERT INTO `ap_log_action` VALUES (2608, 'category', 'Insert category: 1', 1, '2020-11-12 11:27:52');
INSERT INTO `ap_log_action` VALUES (2609, 'category', 'Insert category: 2', 1, '2020-11-12 11:28:03');
INSERT INTO `ap_log_action` VALUES (2610, 'post', 'Insert post: 1', 1, '2020-11-12 11:28:59');
INSERT INTO `ap_log_action` VALUES (2611, 'page', 'Insert page: 0', 1, '2020-11-13 08:24:45');
INSERT INTO `ap_log_action` VALUES (2612, 'page', 'Insert page: 0', 1, '2020-11-13 08:25:09');
INSERT INTO `ap_log_action` VALUES (2613, 'post', 'Insert post: 2', 1, '2020-11-13 09:13:41');
INSERT INTO `ap_log_action` VALUES (2614, 'post', 'Insert post: 3', 1, '2020-11-13 09:14:05');
INSERT INTO `ap_log_action` VALUES (2615, 'page', 'Update page: 8', 1, '2020-11-13 09:39:03');
INSERT INTO `ap_log_action` VALUES (2616, 'page', 'Update page: 7', 1, '2020-11-13 09:39:09');
INSERT INTO `ap_log_action` VALUES (2617, 'page', 'Update page: 6', 1, '2020-11-13 09:39:15');
INSERT INTO `ap_log_action` VALUES (2618, 'page', 'Update page: 5', 1, '2020-11-13 09:39:21');
INSERT INTO `ap_log_action` VALUES (2619, 'page', 'Update page: 4', 1, '2020-11-13 09:39:27');
INSERT INTO `ap_log_action` VALUES (2620, 'page', 'Update page: 3', 1, '2020-11-13 09:39:32');
INSERT INTO `ap_log_action` VALUES (2621, 'page', 'Update page: 2', 1, '2020-11-13 09:39:41');
INSERT INTO `ap_log_action` VALUES (2622, 'page', 'Update page: 1', 1, '2020-11-13 09:39:48');
INSERT INTO `ap_log_action` VALUES (2623, 'property', 'Insert property: 0', 1, '2020-11-14 10:46:32');
INSERT INTO `ap_log_action` VALUES (2624, 'page', 'Update page: 5', 1, '2020-11-15 11:52:28');
INSERT INTO `ap_log_action` VALUES (2625, 'page', 'Update page: 2', 1, '2020-11-15 11:52:31');
INSERT INTO `ap_log_action` VALUES (2626, 'users', 'delete users: 23', 1, '2020-11-15 04:22:38');
INSERT INTO `ap_log_action` VALUES (2627, 'users', 'delete users: 22', 1, '2020-11-15 04:22:40');
INSERT INTO `ap_log_action` VALUES (2628, 'system_menu', 'Delete system_menu: 150', 1, '2020-11-15 04:22:50');
INSERT INTO `ap_log_action` VALUES (2629, 'post', 'Insert post: 4', 1, '2020-11-15 04:33:47');
INSERT INTO `ap_log_action` VALUES (2630, 'property', 'Update property: 2', 1, '2020-11-16 10:39:30');
INSERT INTO `ap_log_action` VALUES (2631, 'property', 'Insert property: 0', 1, '2020-11-16 10:39:48');
INSERT INTO `ap_log_action` VALUES (2632, 'property', 'Update property: 5', 1, '2020-11-16 10:42:57');
INSERT INTO `ap_log_action` VALUES (2633, 'property', 'Insert property: 0', 1, '2020-11-16 10:43:26');
INSERT INTO `ap_log_action` VALUES (2634, 'property', 'Insert property: 0', 1, '2020-11-16 10:43:42');
INSERT INTO `ap_log_action` VALUES (2635, 'property', 'Insert property: 0', 1, '2020-11-16 10:44:11');
INSERT INTO `ap_log_action` VALUES (2636, 'property', 'Insert property: 0', 1, '2020-11-16 10:44:27');
INSERT INTO `ap_log_action` VALUES (2637, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 11:00:20');
INSERT INTO `ap_log_action` VALUES (2638, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 11:00:41');
INSERT INTO `ap_log_action` VALUES (2639, 'post', 'Update post: 4', 1, '2020-11-16 11:17:10');
INSERT INTO `ap_log_action` VALUES (2640, 'post', 'Update post: 3', 1, '2020-11-16 11:17:10');
INSERT INTO `ap_log_action` VALUES (2641, 'post', 'Update post: 2', 1, '2020-11-16 11:17:10');
INSERT INTO `ap_log_action` VALUES (2642, 'post', 'Update post: 1', 1, '2020-11-16 11:17:10');
INSERT INTO `ap_log_action` VALUES (2643, 'post', 'Insert post: 5', 1, '2020-11-16 11:19:08');
INSERT INTO `ap_log_action` VALUES (2644, 'post', 'Insert post: 6', 1, '2020-11-16 11:28:35');
INSERT INTO `ap_log_action` VALUES (2645, 'post', 'Insert post: 7', 1, '2020-11-16 11:31:59');
INSERT INTO `ap_log_action` VALUES (2646, 'post', 'Update post: 6', 1, '2020-11-16 11:32:59');
INSERT INTO `ap_log_action` VALUES (2647, 'post', 'Insert post: 8', 1, '2020-11-16 11:34:56');
INSERT INTO `ap_log_action` VALUES (2648, 'post', 'Update post: 5', 1, '2020-11-16 11:36:26');
INSERT INTO `ap_log_action` VALUES (2649, 'post', 'Update post: 6', 1, '2020-11-16 11:36:50');
INSERT INTO `ap_log_action` VALUES (2650, 'post', 'Update post: 6', 1, '2020-11-16 11:37:31');
INSERT INTO `ap_log_action` VALUES (2651, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 02:08:50');
INSERT INTO `ap_log_action` VALUES (2652, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 02:58:52');
INSERT INTO `ap_log_action` VALUES (2653, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 02:59:05');
INSERT INTO `ap_log_action` VALUES (2654, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 02:59:22');
INSERT INTO `ap_log_action` VALUES (2655, 'banner', 'Sửa Banner có id là 5', 1, '2020-11-16 02:59:33');
INSERT INTO `ap_log_action` VALUES (2656, 'property', 'Update property: 7', 1, '2020-11-16 04:55:09');
INSERT INTO `ap_log_action` VALUES (2657, 'property', 'Update property: 9', 1, '2020-11-16 04:55:20');
INSERT INTO `ap_log_action` VALUES (2658, 'system_menu', 'Insert system_menu: 155', 1, '2020-12-10 03:05:20');
INSERT INTO `ap_log_action` VALUES (2659, 'property', 'Insert property: 0', 1, '2020-12-10 03:07:56');
INSERT INTO `ap_log_action` VALUES (2660, 'system_menu', 'Insert system_menu: 156', 1, '2020-12-10 03:43:03');
INSERT INTO `ap_log_action` VALUES (2661, 'system_menu', 'Insert system_menu: 157', 1, '2020-12-10 03:43:41');
INSERT INTO `ap_log_action` VALUES (2662, 'system_menu', 'Insert system_menu: 158', 1, '2020-12-10 03:44:06');
INSERT INTO `ap_log_action` VALUES (2663, 'system_menu', 'Update system_menu: 156', 1, '2020-12-10 03:44:17');
INSERT INTO `ap_log_action` VALUES (2664, 'system_menu', 'Update system_menu: 157', 1, '2020-12-10 03:45:22');
INSERT INTO `ap_log_action` VALUES (2665, 'system_menu', 'Update system_menu: 148', 1, '2020-12-10 03:45:25');
INSERT INTO `ap_log_action` VALUES (2666, 'system_menu', 'Update system_menu: 148', 1, '2020-12-10 03:45:39');
INSERT INTO `ap_log_action` VALUES (2667, 'system_menu', 'Update system_menu: 158', 1, '2020-12-10 03:45:46');
INSERT INTO `ap_log_action` VALUES (2668, 'category', 'Insert category: 3', 1, '2020-12-10 04:01:41');
INSERT INTO `ap_log_action` VALUES (2669, 'category', 'Insert category: 4', 1, '2020-12-10 04:01:56');
INSERT INTO `ap_log_action` VALUES (2670, 'category', 'Insert category: 5', 1, '2020-12-10 04:02:08');
INSERT INTO `ap_log_action` VALUES (2671, 'tutorial', 'Insert tutorial: 3', 1, '2020-12-10 04:03:14');
INSERT INTO `ap_log_action` VALUES (2672, 'tutorial', 'Insert tutorial: 1', 1, '2020-12-10 04:04:03');
INSERT INTO `ap_log_action` VALUES (2673, 'tutorial', 'Insert tutorial: 2', 1, '2020-12-10 04:04:24');
INSERT INTO `ap_log_action` VALUES (2674, 'tutorial', 'Update tutorial: 2', 1, '2020-12-10 04:30:55');
INSERT INTO `ap_log_action` VALUES (2675, 'tutorial', 'Update tutorial: 1', 1, '2020-12-10 04:31:48');
INSERT INTO `ap_log_action` VALUES (2676, 'category', 'Update category: 1', 1, '2020-12-14 10:40:01');
INSERT INTO `ap_log_action` VALUES (2677, 'category', 'Insert category: 6', 1, '2020-12-14 11:16:42');
INSERT INTO `ap_log_action` VALUES (2678, 'category', 'Insert category: 7', 1, '2020-12-14 11:16:53');
INSERT INTO `ap_log_action` VALUES (2679, 'category', 'Update category: 7', 1, '2020-12-14 11:17:04');
INSERT INTO `ap_log_action` VALUES (2680, 'category', 'Insert category: 8', 1, '2020-12-14 11:23:04');
INSERT INTO `ap_log_action` VALUES (2681, 'category', 'Update category: 8', 1, '2020-12-14 11:23:11');
INSERT INTO `ap_log_action` VALUES (2682, 'category', 'Update category: 6', 1, '2020-12-14 11:23:11');
INSERT INTO `ap_log_action` VALUES (2683, 'category', 'Insert category: 9', 1, '2020-12-14 11:46:17');
INSERT INTO `ap_log_action` VALUES (2684, 'category', 'Update category: 9', 1, '2020-12-14 11:46:22');
INSERT INTO `ap_log_action` VALUES (2685, 'post', 'Update post: 8', 1, '2020-12-14 04:02:06');
INSERT INTO `ap_log_action` VALUES (2686, 'category', 'Update category: 9', 1, '2020-12-14 07:37:54');
INSERT INTO `ap_log_action` VALUES (2687, 'system_menu', 'Insert system_menu: 159', 1, '2020-12-15 02:09:18');
INSERT INTO `ap_log_action` VALUES (2688, 'system_menu', 'Insert system_menu: 160', 1, '2020-12-15 02:10:02');
INSERT INTO `ap_log_action` VALUES (2689, 'system_menu', 'Update system_menu: 160', 1, '2020-12-15 02:10:18');
INSERT INTO `ap_log_action` VALUES (2690, 'system_menu', 'Insert system_menu: 161', 1, '2020-12-15 02:10:40');
INSERT INTO `ap_log_action` VALUES (2691, 'system_menu', 'Update system_menu: 160', 1, '2020-12-15 02:11:07');
INSERT INTO `ap_log_action` VALUES (2692, 'system_menu', 'Update system_menu: 161', 1, '2020-12-15 02:11:12');
INSERT INTO `ap_log_action` VALUES (2693, 'category', 'Insert category: 6', 1, '2020-12-15 02:13:44');
INSERT INTO `ap_log_action` VALUES (2694, 'field', 'Insert field: 3', 1, '2020-12-15 02:26:56');
INSERT INTO `ap_log_action` VALUES (2695, 'field', 'Update field: 3', 1, '2020-12-15 02:27:10');
INSERT INTO `ap_log_action` VALUES (2696, 'field', 'Update field: 3', 1, '2020-12-15 02:29:09');
INSERT INTO `ap_log_action` VALUES (2697, 'field', 'Update field: 3', 1, '2020-12-15 02:41:52');
INSERT INTO `ap_log_action` VALUES (2698, 'system_menu', 'Insert system_menu: 162', 1, '2020-12-15 03:15:05');
INSERT INTO `ap_log_action` VALUES (2699, 'system_menu', 'Insert system_menu: 163', 1, '2020-12-15 03:15:47');
INSERT INTO `ap_log_action` VALUES (2700, 'system_menu', 'Update system_menu: 163', 1, '2020-12-15 03:16:02');
INSERT INTO `ap_log_action` VALUES (2701, 'system_menu', 'Insert system_menu: 164', 1, '2020-12-15 03:16:33');
INSERT INTO `ap_log_action` VALUES (2702, 'career', 'Update career: 10', 1, '2020-12-15 03:38:16');
INSERT INTO `ap_log_action` VALUES (2703, 'career', 'Update career: 10', 1, '2020-12-15 03:38:50');
INSERT INTO `ap_log_action` VALUES (2704, 'system_menu', 'Update system_menu: 152', 1, '2020-12-15 03:41:33');
INSERT INTO `ap_log_action` VALUES (2705, 'system_menu', 'Update system_menu: 153', 1, '2020-12-15 03:41:39');
INSERT INTO `ap_log_action` VALUES (2706, 'system_menu', 'Update system_menu: 83', 1, '2020-12-15 03:41:48');
INSERT INTO `ap_log_action` VALUES (2707, 'system_menu', 'Update system_menu: 84', 1, '2020-12-15 03:41:56');
INSERT INTO `ap_log_action` VALUES (2708, 'system_menu', 'Update system_menu: 90', 1, '2020-12-15 03:42:02');
INSERT INTO `ap_log_action` VALUES (2709, 'system_menu', 'Update system_menu: 91', 1, '2020-12-15 03:42:08');
INSERT INTO `ap_log_action` VALUES (2710, 'system_menu', 'Update system_menu: 154', 1, '2020-12-15 03:42:14');
INSERT INTO `ap_log_action` VALUES (2711, 'system_menu', 'Update system_menu: 69', 1, '2020-12-15 03:42:21');
INSERT INTO `ap_log_action` VALUES (2712, 'system_menu', 'Update system_menu: 70', 1, '2020-12-15 03:42:26');
INSERT INTO `ap_log_action` VALUES (2713, 'system_menu', 'Insert system_menu: 165', 1, '2020-12-15 03:43:37');
INSERT INTO `ap_log_action` VALUES (2714, 'system_menu', 'Delete system_menu: 155', 1, '2020-12-15 03:53:41');
INSERT INTO `ap_log_action` VALUES (2715, 'system_menu', 'Delete system_menu: 148', 1, '2020-12-15 03:53:43');
INSERT INTO `ap_log_action` VALUES (2716, 'system_menu', 'Insert system_menu: 166', 1, '2020-12-15 03:54:27');
INSERT INTO `ap_log_action` VALUES (2717, 'system_menu', 'Insert system_menu: 167', 1, '2020-12-15 03:54:54');
INSERT INTO `ap_log_action` VALUES (2718, 'system_menu', 'Insert system_menu: 168', 1, '2020-12-15 04:11:26');
INSERT INTO `ap_log_action` VALUES (2719, 'system_menu', 'Update system_menu: 168', 1, '2020-12-15 04:11:32');
INSERT INTO `ap_log_action` VALUES (2720, 'utils', 'Insert utils: 1', 1, '2020-12-15 05:16:02');
INSERT INTO `ap_log_action` VALUES (2721, 'room', 'Insert room: 1', 1, '2020-12-16 10:39:02');
INSERT INTO `ap_log_action` VALUES (2722, 'room', 'Update room: 1', 1, '2020-12-16 10:45:01');
INSERT INTO `ap_log_action` VALUES (2723, 'room', 'Update room: 1', 1, '2020-12-16 10:45:16');
INSERT INTO `ap_log_action` VALUES (2724, 'room', 'Update room: 1', 1, '2020-12-16 10:54:57');
INSERT INTO `ap_log_action` VALUES (2725, 'system_menu', 'Insert system_menu: 169', 1, '2020-12-16 11:05:46');
INSERT INTO `ap_log_action` VALUES (2726, 'system_menu', 'Delete system_menu: 156', 1, '2020-12-16 11:07:33');
INSERT INTO `ap_log_action` VALUES (2727, 'system_menu', 'Delete system_menu: 156', 1, '2020-12-16 11:07:33');
INSERT INTO `ap_log_action` VALUES (2728, 'system_menu', 'Delete system_menu: 156', 1, '2020-12-16 11:07:33');
INSERT INTO `ap_log_action` VALUES (2729, 'system_menu', 'Insert system_menu: 170', 1, '2020-12-16 11:40:37');
INSERT INTO `ap_log_action` VALUES (2730, 'system_menu', 'Insert system_menu: 171', 1, '2020-12-16 11:41:28');
INSERT INTO `ap_log_action` VALUES (2731, 'system_menu', 'Update system_menu: 171', 1, '2020-12-16 11:41:47');
INSERT INTO `ap_log_action` VALUES (2732, 'system_menu', 'Insert system_menu: 172', 1, '2020-12-16 11:41:59');
INSERT INTO `ap_log_action` VALUES (2733, 'category', 'Insert category: 7', 1, '2020-12-16 11:47:06');
INSERT INTO `ap_log_action` VALUES (2734, 'document', 'Insert document: 0', 1, '2020-12-16 12:00:46');
INSERT INTO `ap_log_action` VALUES (2735, 'system_menu', 'Insert system_menu: 173', 1, '2020-12-16 03:23:02');
INSERT INTO `ap_log_action` VALUES (2736, 'system_menu', 'Insert system_menu: 174', 1, '2020-12-16 04:02:08');
INSERT INTO `ap_log_action` VALUES (2737, 'users', 'Update users: 18', 1, '2020-12-16 04:11:38');
INSERT INTO `ap_log_action` VALUES (2738, 'users', 'Update users: 3', 1, '2020-12-16 04:11:44');
INSERT INTO `ap_log_action` VALUES (2739, 'users', 'Update users: 18', 1, '2020-12-16 04:12:16');
INSERT INTO `ap_log_action` VALUES (2740, 'users', 'Update users: 18', 1, '2020-12-16 04:15:14');
INSERT INTO `ap_log_action` VALUES (2741, 'users', 'Update users: 18', 1, '2020-12-16 04:15:22');
INSERT INTO `ap_log_action` VALUES (2742, 'users', 'Update users: 18', 1, '2020-12-16 04:15:56');
INSERT INTO `ap_log_action` VALUES (2743, 'users', 'Update users: 18', 1, '2020-12-16 04:16:31');
INSERT INTO `ap_log_action` VALUES (2744, 'users', 'Update users: 18', 1, '2020-12-16 04:18:54');
INSERT INTO `ap_log_action` VALUES (2745, 'system_menu', 'Update system_menu: 154', 1, '2020-12-16 04:31:41');
INSERT INTO `ap_log_action` VALUES (2746, 'system_menu', 'Delete system_menu: 153', 1, '2020-12-16 04:33:52');
INSERT INTO `ap_log_action` VALUES (2747, 'groups', 'Update groups: 2', 1, '2020-12-18 08:57:45');
INSERT INTO `ap_log_action` VALUES (2748, 'users', 'Insert users: 0', 1, '2020-12-18 09:00:48');
INSERT INTO `ap_log_action` VALUES (2749, 'post', 'Update post: 8', 1, '2020-12-21 11:13:27');
INSERT INTO `ap_log_action` VALUES (2750, 'post', 'Insert post: 9', 1, '2020-12-21 11:14:55');
INSERT INTO `ap_log_action` VALUES (2751, 'post', 'Insert post: 10', 1, '2020-12-21 11:15:00');
INSERT INTO `ap_log_action` VALUES (2752, 'post', 'Insert post: 11', 1, '2020-12-21 11:15:07');
INSERT INTO `ap_log_action` VALUES (2753, 'post', 'Update post: 11', 1, '2020-12-21 11:15:12');
INSERT INTO `ap_log_action` VALUES (2754, 'post', 'Update post: 10', 1, '2020-12-21 11:15:12');
INSERT INTO `ap_log_action` VALUES (2755, 'post', 'Update post: 9', 1, '2020-12-21 11:15:13');
INSERT INTO `ap_log_action` VALUES (2756, 'category', 'Update category: 2', 1, '2020-12-21 01:54:55');
INSERT INTO `ap_log_action` VALUES (2757, 'post', 'Update post: 7', 1, '2020-12-21 01:56:06');
INSERT INTO `ap_log_action` VALUES (2758, 'category', 'Update category: 2', 1, '2020-12-21 02:05:49');
INSERT INTO `ap_log_action` VALUES (2759, 'users', 'Insert users: 0', 1, '2020-12-21 02:09:20');
INSERT INTO `ap_log_action` VALUES (2760, 'users', 'Update users: 20', 1, '2020-12-21 02:09:28');
INSERT INTO `ap_log_action` VALUES (2761, 'users', 'Update users: 20', 1, '2020-12-21 02:09:33');
INSERT INTO `ap_log_action` VALUES (2762, 'users', 'Insert users: 0', 1, '2020-12-21 02:09:58');
INSERT INTO `ap_log_action` VALUES (2763, 'users', 'Insert users: 0', 1, '2020-12-21 02:11:40');
INSERT INTO `ap_log_action` VALUES (2764, 'users', 'Update users: 22', 1, '2020-12-21 02:13:50');
INSERT INTO `ap_log_action` VALUES (2765, 'users', 'Insert users: 0', 1, '2020-12-21 02:15:08');
INSERT INTO `ap_log_action` VALUES (2766, 'users', 'Insert users: 0', 1, '2020-12-21 02:17:24');
INSERT INTO `ap_log_action` VALUES (2767, 'room', 'Update room: 1', 1, '2020-12-22 11:56:13');
INSERT INTO `ap_log_action` VALUES (2768, 'room', 'Update room: 1', 1, '2020-12-22 02:04:38');
INSERT INTO `ap_log_action` VALUES (2769, 'utils', 'Insert utils: 2', 1, '2020-12-22 02:40:55');
INSERT INTO `ap_log_action` VALUES (2770, 'career', 'Insert career: 11', 1, '2020-12-22 02:47:15');
INSERT INTO `ap_log_action` VALUES (2771, 'career', 'Insert career: 12', 1, '2020-12-22 02:53:12');
INSERT INTO `ap_log_action` VALUES (2772, 'career', 'Insert career: 13', 1, '2020-12-22 02:54:01');
INSERT INTO `ap_log_action` VALUES (2773, 'post', 'Insert post: 8', 1, '2020-12-22 03:43:58');
INSERT INTO `ap_log_action` VALUES (2774, 'post', 'Insert post: 9', 1, '2020-12-22 03:44:09');
INSERT INTO `ap_log_action` VALUES (2775, 'post', 'Insert post: 10', 1, '2020-12-22 03:44:14');
INSERT INTO `ap_log_action` VALUES (2776, 'post', 'Insert post: 11', 1, '2020-12-22 03:44:18');
INSERT INTO `ap_log_action` VALUES (2777, 'post', 'Insert post: 12', 1, '2020-12-22 03:44:23');
INSERT INTO `ap_log_action` VALUES (2778, 'post', 'Insert post: 13', 1, '2020-12-22 03:44:35');
INSERT INTO `ap_log_action` VALUES (2779, 'post', 'Insert post: 14', 1, '2020-12-22 03:44:40');
INSERT INTO `ap_log_action` VALUES (2780, 'post', 'Insert post: 15', 1, '2020-12-22 03:44:46');
INSERT INTO `ap_log_action` VALUES (2781, 'post', 'Insert post: 16', 1, '2020-12-22 03:44:55');
INSERT INTO `ap_log_action` VALUES (2782, 'post', 'Insert post: 17', 1, '2020-12-22 03:45:12');
INSERT INTO `ap_log_action` VALUES (2783, 'post', 'Insert post: 18', 1, '2020-12-22 03:45:17');
INSERT INTO `ap_log_action` VALUES (2784, 'post', 'Insert post: 19', 1, '2020-12-22 03:45:22');
INSERT INTO `ap_log_action` VALUES (2785, 'users', 'Insert users: 0', 1, '2020-12-22 03:48:49');
INSERT INTO `ap_log_action` VALUES (2786, 'room', 'Insert room: 2', 1, '2020-12-22 04:07:34');
INSERT INTO `ap_log_action` VALUES (2787, 'room', 'Insert room: 3', 1, '2020-12-22 04:07:43');
INSERT INTO `ap_log_action` VALUES (2788, 'room', 'Insert room: 4', 1, '2020-12-22 04:07:53');
INSERT INTO `ap_log_action` VALUES (2789, 'room', 'Update room: 4', 1, '2020-12-22 04:09:19');
INSERT INTO `ap_log_action` VALUES (2790, 'room', 'Update room: 3', 1, '2020-12-22 04:09:19');
INSERT INTO `ap_log_action` VALUES (2791, 'room', 'Update room: 2', 1, '2020-12-22 04:09:19');
INSERT INTO `ap_log_action` VALUES (2792, 'category', 'Update category: 6', 1, '2020-12-23 09:54:34');
INSERT INTO `ap_log_action` VALUES (2793, 'system_menu', 'Insert system_menu: 175', 1, '2020-12-23 11:06:29');
INSERT INTO `ap_log_action` VALUES (2794, 'system_menu', 'Insert system_menu: 176', 1, '2020-12-23 11:06:56');
INSERT INTO `ap_log_action` VALUES (2795, 'video', 'Insert video: 0', 1, '2020-12-23 11:22:08');
INSERT INTO `ap_log_action` VALUES (2796, 'video', 'Update video: 11', 1, '2020-12-23 11:22:36');
INSERT INTO `ap_log_action` VALUES (2797, 'gallery', 'Insert gallery: 0', 1, '2020-12-23 11:27:57');
INSERT INTO `ap_log_action` VALUES (2798, 'video', 'Update video: 11', 1, '2020-12-23 11:35:55');
INSERT INTO `ap_log_action` VALUES (2799, 'video', 'Update video: 11', 1, '2020-12-23 11:49:40');
INSERT INTO `ap_log_action` VALUES (2800, 'system_menu', 'Insert system_menu: 177', 1, '2020-12-23 01:54:00');
INSERT INTO `ap_log_action` VALUES (2801, 'system_menu', 'Insert system_menu: 178', 1, '2020-12-23 02:06:06');
INSERT INTO `ap_log_action` VALUES (2802, 'event', 'Insert event: 1', 1, '2020-12-23 02:09:47');
INSERT INTO `ap_log_action` VALUES (2803, 'event', 'Insert event: 2', 1, '2020-12-23 02:10:02');
INSERT INTO `ap_log_action` VALUES (2804, 'property', 'Insert property: 0', 1, '2020-12-23 02:57:17');
INSERT INTO `ap_log_action` VALUES (2805, 'system_menu', 'Insert system_menu: 179', 1, '2020-12-23 04:09:58');
INSERT INTO `ap_log_action` VALUES (2806, 'system_menu', 'Update system_menu: 178', 1, '2020-12-23 04:10:33');
INSERT INTO `ap_log_action` VALUES (2807, 'system_menu', 'Insert system_menu: 180', 1, '2020-12-23 04:11:00');
INSERT INTO `ap_log_action` VALUES (2808, 'system_menu', 'Update system_menu: 178', 1, '2020-12-23 04:11:13');
INSERT INTO `ap_log_action` VALUES (2809, 'system_menu', 'Update system_menu: 180', 1, '2020-12-23 04:11:19');
INSERT INTO `ap_log_action` VALUES (2810, 'system_menu', 'Update system_menu: 180', 1, '2020-12-23 04:11:28');
INSERT INTO `ap_log_action` VALUES (2811, 'category', 'Insert category: 8', 1, '2020-12-23 04:12:46');
INSERT INTO `ap_log_action` VALUES (2812, 'event', 'Update event: 2', 1, '2020-12-23 04:15:33');
INSERT INTO `ap_log_action` VALUES (2813, 'event', 'Insert event: 3', 1, '2020-12-23 04:18:03');
INSERT INTO `ap_log_action` VALUES (2814, 'event', 'Insert event: 4', 1, '2020-12-23 04:23:08');
INSERT INTO `ap_log_action` VALUES (2815, 'event', 'Update event: 4', 1, '2020-12-23 04:23:35');
INSERT INTO `ap_log_action` VALUES (2816, 'event', 'Update event: 1', 1, '2020-12-23 04:27:06');
INSERT INTO `ap_log_action` VALUES (2817, 'gallery', 'Insert gallery: 0', 1, '2020-12-23 04:55:48');
INSERT INTO `ap_log_action` VALUES (2818, 'video', 'Insert video: 0', 1, '2020-12-23 04:56:03');
INSERT INTO `ap_log_action` VALUES (2819, 'banner', 'Sửa Banner có id là 5', 1, '2020-12-23 04:57:48');
INSERT INTO `ap_log_action` VALUES (2820, 'video', 'Update video: 14', 1, '2020-12-23 04:59:33');
INSERT INTO `ap_log_action` VALUES (2821, 'users', 'Insert users: 0', 1, '2020-12-28 04:39:30');
INSERT INTO `ap_log_action` VALUES (2822, 'users', 'Insert users: 0', 1, '2020-12-28 04:48:38');
INSERT INTO `ap_log_action` VALUES (2823, 'users', 'Update users: 27', 1, '2020-12-28 04:48:49');
INSERT INTO `ap_log_action` VALUES (2824, 'users', 'Update users: 27', 1, '2020-12-28 04:48:53');
INSERT INTO `ap_log_action` VALUES (2825, 'users', 'Update users: 27', 1, '2020-12-28 04:48:57');
INSERT INTO `ap_log_action` VALUES (2826, 'users', 'Insert users: 0', 1, '2020-12-28 04:49:47');
INSERT INTO `ap_log_action` VALUES (2827, 'users', 'Insert users: 0', 1, '2020-12-28 04:50:24');
INSERT INTO `ap_log_action` VALUES (2828, 'category', 'Update category: 2', 1, '2020-12-28 04:57:16');
INSERT INTO `ap_log_action` VALUES (2829, 'gallery', 'Update gallery: 13', 1, '2020-12-29 09:19:46');
INSERT INTO `ap_log_action` VALUES (2830, 'gallery', 'Insert gallery: 0', 1, '2020-12-29 09:21:02');
INSERT INTO `ap_log_action` VALUES (2831, 'gallery', 'Update gallery: 15', 1, '2020-12-29 09:26:56');
INSERT INTO `ap_log_action` VALUES (2832, 'gallery', 'Update gallery: 15', 1, '2020-12-29 09:27:01');
INSERT INTO `ap_log_action` VALUES (2833, 'gallery', 'Update gallery: 15', 1, '2020-12-29 09:40:06');
INSERT INTO `ap_log_action` VALUES (2834, 'video', 'Insert video: 0', 1, '2020-12-29 09:49:18');
INSERT INTO `ap_log_action` VALUES (2835, 'room', 'Update room: 1', 1, '2020-12-29 11:26:24');
INSERT INTO `ap_log_action` VALUES (2836, 'video', 'Insert video: 0', 1, '2020-12-29 03:43:32');
INSERT INTO `ap_log_action` VALUES (2837, 'video', 'Insert video: 0', 1, '2020-12-29 03:43:39');
INSERT INTO `ap_log_action` VALUES (2838, 'system_menu', 'Delete system_menu: 159', 1, '2021-07-22 09:02:48');
INSERT INTO `ap_log_action` VALUES (2839, 'system_menu', 'Delete system_menu: 159', 1, '2021-07-22 09:02:48');
INSERT INTO `ap_log_action` VALUES (2840, 'system_menu', 'Delete system_menu: 159', 1, '2021-07-22 09:02:48');
INSERT INTO `ap_log_action` VALUES (2841, 'system_menu', 'Delete system_menu: 162', 1, '2021-07-22 09:02:51');
INSERT INTO `ap_log_action` VALUES (2842, 'system_menu', 'Delete system_menu: 162', 1, '2021-07-22 09:02:51');
INSERT INTO `ap_log_action` VALUES (2843, 'system_menu', 'Delete system_menu: 162', 1, '2021-07-22 09:02:51');
INSERT INTO `ap_log_action` VALUES (2844, 'system_menu', 'Delete system_menu: 166', 1, '2021-07-22 09:02:55');
INSERT INTO `ap_log_action` VALUES (2845, 'system_menu', 'Delete system_menu: 166', 1, '2021-07-22 09:02:55');
INSERT INTO `ap_log_action` VALUES (2846, 'system_menu', 'Delete system_menu: 166', 1, '2021-07-22 09:02:55');
INSERT INTO `ap_log_action` VALUES (2847, 'system_menu', 'Delete system_menu: 166', 1, '2021-07-22 09:02:55');
INSERT INTO `ap_log_action` VALUES (2848, 'system_menu', 'Delete system_menu: 170', 1, '2021-07-22 09:02:59');
INSERT INTO `ap_log_action` VALUES (2849, 'system_menu', 'Delete system_menu: 170', 1, '2021-07-22 09:02:59');
INSERT INTO `ap_log_action` VALUES (2850, 'system_menu', 'Delete system_menu: 170', 1, '2021-07-22 09:02:59');
INSERT INTO `ap_log_action` VALUES (2851, 'system_menu', 'Delete system_menu: 170', 1, '2021-07-22 09:02:59');
INSERT INTO `ap_log_action` VALUES (2852, 'system_menu', 'Delete system_menu: 174', 1, '2021-07-22 09:03:01');
INSERT INTO `ap_log_action` VALUES (2853, 'system_menu', 'Delete system_menu: 177', 1, '2021-07-22 09:03:04');
INSERT INTO `ap_log_action` VALUES (2854, 'system_menu', 'Delete system_menu: 179', 1, '2021-07-22 09:03:08');
INSERT INTO `ap_log_action` VALUES (2855, 'system_menu', 'Delete system_menu: 179', 1, '2021-07-22 09:03:08');
INSERT INTO `ap_log_action` VALUES (2856, 'system_menu', 'Delete system_menu: 179', 1, '2021-07-22 09:03:08');
INSERT INTO `ap_log_action` VALUES (2857, 'system_menu', 'Insert system_menu: 181', 1, '2021-07-22 09:15:12');
INSERT INTO `ap_log_action` VALUES (2858, 'tag', 'Update tag: 10', 1, '2021-07-22 09:17:35');
INSERT INTO `ap_log_action` VALUES (2859, 'post', 'Update post: 19', 1, '2021-07-22 09:54:10');
INSERT INTO `ap_log_action` VALUES (2860, 'tag', 'Update tag: 1', 1, '2021-07-22 10:02:48');
INSERT INTO `ap_log_action` VALUES (2861, 'post', 'Update post: 19', 1, '2021-07-22 10:03:08');
INSERT INTO `ap_log_action` VALUES (2862, 'system_menu', 'Delete system_menu: 151', 1, '2021-07-22 10:06:32');
INSERT INTO `ap_log_action` VALUES (2863, 'system_menu', 'Delete system_menu: 151', 1, '2021-07-22 10:06:32');
INSERT INTO `ap_log_action` VALUES (2864, 'system_menu', 'Update system_menu: 91', 1, '2021-07-22 10:06:48');
INSERT INTO `ap_log_action` VALUES (2865, 'system_menu', 'Update system_menu: 91', 1, '2021-07-22 10:06:56');
INSERT INTO `ap_log_action` VALUES (2866, 'system_menu', 'Update system_menu: 91', 1, '2021-07-22 10:07:09');
INSERT INTO `ap_log_action` VALUES (2867, 'system_menu', 'Update system_menu: 90', 1, '2021-07-22 10:07:16');
INSERT INTO `ap_log_action` VALUES (2868, 'system_menu', 'Update system_menu: 90', 1, '2021-07-22 10:07:26');
INSERT INTO `ap_log_action` VALUES (2869, 'system_menu', 'Insert system_menu: 182', 1, '2021-07-23 09:21:20');
INSERT INTO `ap_log_action` VALUES (2870, 'system_menu', 'Insert system_menu: 183', 1, '2021-07-23 09:21:48');
INSERT INTO `ap_log_action` VALUES (2871, 'system_menu', 'Insert system_menu: 184', 1, '2021-07-23 09:22:04');
INSERT INTO `ap_log_action` VALUES (2872, 'category', 'Insert category: 9', 1, '2021-07-23 09:44:00');
INSERT INTO `ap_log_action` VALUES (2873, 'ecosystem', 'Insert ecosystem: 1', 1, '2021-07-23 09:48:36');
INSERT INTO `ap_log_action` VALUES (2874, 'system_menu', 'Update system_menu: 91', 1, '2021-07-24 02:20:40');
INSERT INTO `ap_log_action` VALUES (2875, 'system_menu', 'Insert system_menu: 185', 1, '2021-07-24 02:21:13');
INSERT INTO `ap_log_action` VALUES (2876, 'system_menu', 'Insert system_menu: 186', 1, '2021-07-24 02:21:37');
INSERT INTO `ap_log_action` VALUES (2877, 'system_menu', 'Insert system_menu: 187', 1, '2021-07-24 02:21:50');
INSERT INTO `ap_log_action` VALUES (2878, 'system_menu', 'Update system_menu: 72', 1, '2021-07-24 02:22:01');
INSERT INTO `ap_log_action` VALUES (2879, 'system_menu', 'Update system_menu: 83', 1, '2021-07-24 02:22:15');
INSERT INTO `ap_log_action` VALUES (2880, 'system_menu', 'Update system_menu: 84', 1, '2021-07-24 02:22:21');
INSERT INTO `ap_log_action` VALUES (2881, 'system_menu', 'Update system_menu: 38', 1, '2021-07-24 02:23:24');
INSERT INTO `ap_log_action` VALUES (2882, 'system_menu', 'Update system_menu: 154', 1, '2021-07-24 02:23:36');
INSERT INTO `ap_log_action` VALUES (2883, 'category', 'Insert category: 10', 1, '2021-07-24 03:06:01');
INSERT INTO `ap_log_action` VALUES (2884, 'calendar', 'Insert calendar: 2', 1, '2021-07-24 03:58:38');
INSERT INTO `ap_log_action` VALUES (2885, 'calendar', 'Insert calendar: 3', 1, '2021-07-24 03:59:31');
INSERT INTO `ap_log_action` VALUES (2886, 'calendar', 'Insert calendar: 4', 1, '2021-07-24 04:00:15');
INSERT INTO `ap_log_action` VALUES (2887, 'calendar', 'Update calendar: 4', 1, '2021-07-24 04:00:17');
INSERT INTO `ap_log_action` VALUES (2888, 'calendar', 'Insert calendar: 5', 1, '2021-07-24 04:00:44');
INSERT INTO `ap_log_action` VALUES (2889, 'calendar', 'Insert calendar: 1', 1, '2021-07-24 08:12:36');
INSERT INTO `ap_log_action` VALUES (2890, 'calendar', 'Update calendar: 1', 1, '2021-07-24 08:16:34');
INSERT INTO `ap_log_action` VALUES (2891, 'calendar', 'Insert calendar: 2', 1, '2021-07-24 08:16:58');

-- ----------------------------
-- Table structure for ap_logged_device
-- ----------------------------
DROP TABLE IF EXISTS `ap_logged_device`;
CREATE TABLE `ap_logged_device`  (
  `user_id` bigint(20) NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'IP client',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `device_code` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Mã md5 thiết bị + key secret',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Tên thiết bị',
  UNIQUE INDEX `ap_logged_device_user_id_ip_address_user_agent_pk`(`user_id`, `ip_address`, `user_agent`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_login_attempts
-- ----------------------------
DROP TABLE IF EXISTS `ap_login_attempts`;
CREATE TABLE `ap_login_attempts`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_menus
-- ----------------------------
DROP TABLE IF EXISTS `ap_menus`;
CREATE TABLE `ap_menus`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(75) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '#',
  `parent_id` int(2) NOT NULL DEFAULT 0,
  `order` tinyint(2) NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `location_id` smallint(4) NOT NULL,
  `language_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 328 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_menus
-- ----------------------------
INSERT INTO `ap_menus` VALUES (10, 'Sản phẩm', '', 'san-pham', 0, 1, '', 2, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (11, 'Khuyến mại', '', 'khuyen-mai', 0, 2, '', 2, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (12, 'Hệ thống cửa hàng', '', 'he-thong-cua-hang', 0, 3, '', 2, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (13, 'Tư vấn dinh dưỡng', '', 'tu-van-dinh-duong', 0, 4, '', 2, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (14, 'Câu hỏi thường gặp', '', 'cau-hoi-thuong-gap', 0, 5, '', 2, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (15, 'Hướng dẫn mua hàng', '', 'huong-dan-mua-hang', 0, 1, '', 3, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (16, 'Chính sách giao hàng', '', 'chinh-sach-giao-hang', 0, 2, '', 3, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (17, 'Chính sách đổi trả', '', 'chinh-sach-doi-tra', 0, 3, '', 3, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (18, 'Chính sách giá cả & thanh toán', '', 'chinh-sach-gia-ca-thanh-toan', 0, 4, '', 3, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (19, 'Hóa đơn điện tử', '', 'hoa-don-dien-tu', 0, 5, '', 3, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (21, 'Liên hệ', '', 'lien-he', 0, 1, '', 4, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (22, 'Kiểm tra đơn hàng', '', 'kiem-tra-don-hang', 0, 2, '', 4, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (36, 'Link khác', '', '#', 0, 1, '', 2, 'en', 'page');
INSERT INTO `ap_menus` VALUES (37, 'Promotion', '', 'promotion', 0, 2, '', 2, 'en', 'page');
INSERT INTO `ap_menus` VALUES (38, 'asdsad', '', 'asdsad-c204', 0, 3, '', 2, 'en', 'page');
INSERT INTO `ap_menus` VALUES (39, 'Link khác', '', '#', 0, 1, '', 4, 'en', 'page');
INSERT INTO `ap_menus` VALUES (40, 'Promotion', '', 'promotion', 0, 2, '', 4, 'en', 'page');
INSERT INTO `ap_menus` VALUES (41, 'asdsad', '', 'asdsad-c204', 0, 3, '', 4, 'en', 'page');
INSERT INTO `ap_menus` VALUES (51, 'San ham', '', '#', 0, 1, '', 3, 'en', 'page');
INSERT INTO `ap_menus` VALUES (52, 'Promotion', '', 'promotion', 0, 2, '', 3, 'en', 'page');
INSERT INTO `ap_menus` VALUES (53, 'asdsad', '', 'asdsad-c204', 0, 3, '', 3, 'en', 'page');
INSERT INTO `ap_menus` VALUES (76, 'Home', '', '/', 0, 1, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (77, 'About us', '', 'about-us', 0, 2, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (78, 'Service', '', 'service', 0, 3, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (79, 'Price List', '', 'price-list', 0, 4, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (80, 'News', '', 'news', 0, 5, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (81, 'Gallery', '', 'gallery', 0, 6, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (82, 'Contact', '', 'contact', 0, 7, '', 1, 'en', 'page');
INSERT INTO `ap_menus` VALUES (318, '.', '', '', 0, 1, 'icon', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (319, 'Giới thiệu', '', 'gioi-thieu', 0, 2, '', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (320, 'Tính năng', '', '#tab-feature', 0, 3, 'psy-btn', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (321, 'Bảng giá', '', 'bang-gia', 0, 4, '', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (322, 'Hỗ trợ', '', 'javacript:;', 0, 5, '', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (323, 'Liên hệ', NULL, 'lien-he', 322, 1, '', 1, 'vi', NULL);
INSERT INTO `ap_menus` VALUES (324, 'Hướng dẫn sử dụng', NULL, 'huong-dan-su-dung', 322, 2, '', 1, 'vi', NULL);
INSERT INTO `ap_menus` VALUES (325, 'Tin tức', '', 'tin-tuc', 0, 6, '', 1, 'vi', 'page');
INSERT INTO `ap_menus` VALUES (326, 'Về apeckids', NULL, 've-apeckids-c1', 325, 1, '', 1, 'vi', NULL);
INSERT INTO `ap_menus` VALUES (327, 'Cẩm nang', NULL, 'cam-nang-c2', 325, 2, '', 1, 'vi', NULL);

-- ----------------------------
-- Table structure for ap_newsletter
-- ----------------------------
DROP TABLE IF EXISTS `ap_newsletter`;
CREATE TABLE `ap_newsletter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ap_newsletter_email_uindex`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_newsletter
-- ----------------------------
INSERT INTO `ap_newsletter` VALUES (1, 'ngavt@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (2, 'hongha@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (3, 'toandoan@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (4, 'linhnguyen@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (5, 'quangvu@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (6, 'huongnguyen@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (7, 'huyenthanh@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (8, 'tranglinh@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (9, 'haiho@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (10, 'vanninh@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (11, 'phattai@gmailcom', '2020-02-18 16:31:14');
INSERT INTO `ap_newsletter` VALUES (12, 'uyenvu@gmailcom', '2020-02-18 16:31:14');

-- ----------------------------
-- Table structure for ap_page
-- ----------------------------
DROP TABLE IF EXISTS `ap_page`;
CREATE TABLE `ap_page`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `style` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'ngay tao',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'ngay sua',
  `album` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `block` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order` int(6) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_page_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_page_translations`;
CREATE TABLE `ap_page_translations`  (
  `id` int(11) NULL DEFAULT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file_timeline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_more` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `ap_page_translations_id_language_code_pk`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_post
-- ----------------------------
DROP TABLE IF EXISTS `ap_post`;
CREATE TABLE `ap_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url_video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_status` tinyint(2) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `displayed_time` date NOT NULL COMMENT 'ngay publish',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'ngay tao',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'ngay sua',
  `order` int(6) NULL DEFAULT 0,
  `views` int(11) NULL DEFAULT 0,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_post_category
-- ----------------------------
DROP TABLE IF EXISTS `ap_post_category`;
CREATE TABLE `ap_post_category`  (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`, `category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `ap_post_tag`;
CREATE TABLE `ap_post_tag`  (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`, `tag_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ap_post_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_post_translations`;
CREATE TABLE `ap_post_translations`  (
  `id` int(11) NULL DEFAULT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `ap_post_translations_id_language_code_pk`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_property
-- ----------------------------
DROP TABLE IF EXISTS `ap_property`;
CREATE TABLE `ap_property`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(6) NOT NULL DEFAULT 0,
  `is_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'trang thai',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT 'ngay tao',
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT 'ngay sua',
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_property
-- ----------------------------
INSERT INTO `ap_property` VALUES (1, 'partner', 'ds', NULL, 0, 1, '2020-11-09 21:15:04', '2020-11-09 21:21:22', 'avatar_1604479719.png');
INSERT INTO `ap_property` VALUES (2, 'feature', NULL, NULL, 10, 1, '2020-11-12 22:10:12', '2020-11-16 10:40:01', 'ic-feature1.png');
INSERT INTO `ap_property` VALUES (3, 'customer', 'https://dev.apecsoft.asia/thang_long_pack/', NULL, 0, 0, '2020-11-12 23:11:18', '2020-11-16 11:38:41', 'partner4.png');
INSERT INTO `ap_property` VALUES (4, 'customer', 'https://dev.apecsoft.asia/ladies-nails/', NULL, 0, 0, '2020-11-14 22:46:31', '2020-11-16 11:38:41', 'partner3.png');
INSERT INTO `ap_property` VALUES (5, 'feature', NULL, NULL, 9, 1, '2020-11-16 10:39:48', '2020-11-16 10:42:57', 'ic-feature2.png');
INSERT INTO `ap_property` VALUES (6, 'feature', NULL, NULL, 8, 1, '2020-11-16 10:43:26', '2020-11-16 10:43:26', 'ic-feature3.png');
INSERT INTO `ap_property` VALUES (7, 'feature', NULL, NULL, 7, 1, '2020-11-16 10:43:42', '2020-11-16 10:43:42', 'ic-feature4.png');
INSERT INTO `ap_property` VALUES (8, 'feature', NULL, NULL, 6, 1, '2020-11-16 10:44:11', '2020-11-16 10:44:11', 'ic-feature5.png');
INSERT INTO `ap_property` VALUES (9, 'feature', NULL, NULL, 5, 1, '2020-11-16 10:44:27', '2020-11-16 10:44:27', 'ic-feature6.png');
INSERT INTO `ap_property` VALUES (10, 'newspaper', 'https://dev.apecsoft.asia/flamingo/', NULL, 10, 1, '2020-12-10 15:07:56', '2020-12-10 15:07:56', 'banner-home1.jpg');
INSERT INTO `ap_property` VALUES (11, 'partner', 'https://dev.apecsoft.asia/ladies-nails/', NULL, 0, 1, '2020-12-23 14:57:17', '2020-12-23 14:57:17', 'action-home2.jpg');

-- ----------------------------
-- Table structure for ap_property_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_property_translations`;
CREATE TABLE `ap_property_translations`  (
  `id` int(11) NOT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  UNIQUE INDEX `ap_banner_translations_id_language_code_pk`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_property_translations
-- ----------------------------
INSERT INTO `ap_property_translations` VALUES (1, 'en', NULL, 'tesst', '1', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (2, 'vi', NULL, 'CHUYÊN NGHIỆP HOÁ CÔNG TÁC QUẢN LÝ TRƯỜNG MẦM NON', 'Là công cụ giúp nhà trường quản lý chặt chẽ thông tin lớp học, giáo viên, hỗ trợ nghiệp vụ tài chính, kế toán', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (3, 'vi', NULL, 'Trường mầm non quốc tế ABC', 'adssa asd adsa', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (4, 'vi', NULL, 'Trường mầm non thế giới XYZ', 'bla bla bla', NULL, NULL, NULL, NULL, 1);
INSERT INTO `ap_property_translations` VALUES (5, 'vi', NULL, 'Tương tác và trao đổi thông tin kịp thời', 'Phụ huynh có thể chat trực tiếp với giáo viên, báo nghỉ học, dặn thuốc, nhắn cô chỉ bằng vài thao tác đơn giản, nhanh chóng.', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (6, 'vi', NULL, 'Tạo khảo sát, thống kê kết quả chính xác, khoa học', 'Nhà trường dễ dàng tạo khảo sát để lấy ý kiến phụ huynh mà không mất nhiều thời gian, công sức và tiền bạc', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (7, 'vi', NULL, 'PHỤ HUYNH ĐỒNG HÀNH HỌC TẬP CÙNG CON', 'Bố mẹ có thể quan tâm và đồng hành cùng con học tập tại nhà thông qua \"Góc trải nghiệm\" với những nội dung vô cùng thú vị', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (8, 'vi', NULL, 'Thống kê học phí, gửi thông báo đến từng phụ huynh', 'Tính toán chính xác học phí và gửi thông báo nhanh chóng tới từng phụ huynh, tránh sai sót, nhầm lẫn', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (9, 'vi', NULL, 'DỄ DÀNG THEO DÕI CÁC HOẠT ĐỘNG Ở TRƯỜNG CỦA CON', 'Cập nhật tình hình hoạt động của con: thời khoá biểu, thực đơn, sức khoẻ... một cách chi tiết, chính xác theo từng ngày', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (10, 'vi', NULL, 'ádasdasd', '', NULL, NULL, NULL, NULL, 0);
INSERT INTO `ap_property_translations` VALUES (11, 'vi', NULL, 'Partner 1', '', NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for ap_redirect
-- ----------------------------
DROP TABLE IF EXISTS `ap_redirect`;
CREATE TABLE `ap_redirect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `redirect_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ap_review
-- ----------------------------
DROP TABLE IF EXISTS `ap_review`;
CREATE TABLE `ap_review`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NULL DEFAULT NULL,
  `product_id` int(11) NULL DEFAULT NULL,
  `star` tinyint(1) NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `created_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `is_status` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_review
-- ----------------------------
INSERT INTO `ap_review` VALUES (1, 2, 2, 2, 'Đẹp!', '2019-11-08 16:43:04', 1);

-- ----------------------------
-- Table structure for ap_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `ap_system_menu`;
CREATE TABLE `ap_system_menu`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '#',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(4) NOT NULL DEFAULT 0,
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order` int(4) NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 188 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_system_menu
-- ----------------------------
INSERT INTO `ap_system_menu` VALUES (1, 'Bảng điều khiển', 'fa fa-dashboard', '#', NULL, 0, '', 30, NULL);
INSERT INTO `ap_system_menu` VALUES (38, 'Đa phương tiện', 'fa fa-picture-o', '#', NULL, 0, 'treeview', 3, '_self');
INSERT INTO `ap_system_menu` VALUES (39, 'Quản lý voucher', 'fa fa-gift', 'voucher', 'voucher', 87, '', 0, '_self');
INSERT INTO `ap_system_menu` VALUES (68, 'Quản lý thành viên', 'fa fa-users', '#', NULL, 0, 'treeview', 29, '_self');
INSERT INTO `ap_system_menu` VALUES (69, 'Danh sách nhóm quyền', 'fa fa-superpowers', 'groups', 'groups', 68, '', 0, '_self');
INSERT INTO `ap_system_menu` VALUES (70, 'Danh sách thành viên', 'fa fa-superpowers', 'users', 'users', 68, '', 0, '_self');
INSERT INTO `ap_system_menu` VALUES (72, 'Bài viết', 'fa fa-newspaper-o', '#', NULL, 0, 'treeview', 28, '_self');
INSERT INTO `ap_system_menu` VALUES (83, 'Danh mục', 'fa fa-superpowers', 'category/post', 'category', 72, '', 6, '_self');
INSERT INTO `ap_system_menu` VALUES (84, 'Danh sách', 'fa fa-superpowers', 'post', 'post', 72, '', 5, '_self');
INSERT INTO `ap_system_menu` VALUES (85, 'Menu hệ thống', 'fa fa-align-justify', 'system_menu', 'system_menu', 0, '', 0, '_self');
INSERT INTO `ap_system_menu` VALUES (86, 'Quản lý media', 'fa fa-picture-o', 'media', 'media', 98, '', 22, '_self');
INSERT INTO `ap_system_menu` VALUES (87, 'Quản lý khuyến mãi', 'fa fa-cart-arrow-down', 'promotion', 'promotion', 87, '', 25, '_self');
INSERT INTO `ap_system_menu` VALUES (90, 'Quản lý menu', 'fa fa-superpowers', 'menus', NULL, 0, '', 4, '_self');
INSERT INTO `ap_system_menu` VALUES (91, 'Quản lý trang tĩnh', 'fa fa-clone', 'page', 'page', 0, '', 29, '_self');
INSERT INTO `ap_system_menu` VALUES (135, 'Danh sách banner', 'fa fa-list-alt', 'banner', 'banner', 98, '', 5, '_self');
INSERT INTO `ap_system_menu` VALUES (154, 'Banner', 'fa fa-superpowers', 'banner', 'property', 38, '', 2, '_self');
INSERT INTO `ap_system_menu` VALUES (165, 'Media', 'fa fa-superpowers', 'media', 'media', 38, '', 5, '_self');
INSERT INTO `ap_system_menu` VALUES (175, 'Thư viện video', 'fa fa-superpowers', 'video', 'video', 38, '', 2, '_self');
INSERT INTO `ap_system_menu` VALUES (176, 'Thư viện ảnh', 'fa fa-superpowers', 'gallery', 'gallery', 38, '', 2, '_self');
INSERT INTO `ap_system_menu` VALUES (181, 'Danh sách tag', 'fa fa-superpowers', 'tag', 'tag', 72, '', 5, '_self');
INSERT INTO `ap_system_menu` VALUES (182, 'Hệ sinh thái', 'fa fa-tree', '#', NULL, 0, 'treeview', 28, '_self');
INSERT INTO `ap_system_menu` VALUES (183, 'Danh mục', 'fa fa-superpowers', 'category/ecosystem', 'category', 182, '', 6, '_self');
INSERT INTO `ap_system_menu` VALUES (184, 'Danh sách', 'fa fa-superpowers', 'ecosystem', 'ecosystem', 182, '', 5, '_self');
INSERT INTO `ap_system_menu` VALUES (185, 'Lịch hoạt động', 'fa fa-calendar', '#', NULL, 0, 'treeview', 28, '_self');
INSERT INTO `ap_system_menu` VALUES (186, 'Danh mục', 'fa fa-superpowers', 'category/calendar', 'category', 185, '', 6, '_self');
INSERT INTO `ap_system_menu` VALUES (187, 'Danh sách', 'fa fa-superpowers', 'calendar', 'calendar', 185, '', 5, '_self');

-- ----------------------------
-- Table structure for ap_tag
-- ----------------------------
DROP TABLE IF EXISTS `ap_tag`;
CREATE TABLE `ap_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_status` tinyint(2) NOT NULL COMMENT 'Trạng thái',
  `displayed_time` date NULL DEFAULT NULL COMMENT 'Ngày publish',
  `created_time` datetime(0) NOT NULL COMMENT 'Ngày tạo',
  `updated_time` datetime(0) NOT NULL COMMENT 'Ngày sửa',
  `created_by` int(11) NULL DEFAULT NULL COMMENT 'Người tạo',
  `updated_by` int(11) NULL DEFAULT NULL COMMENT 'Người sửa',
  `weblink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'link website',
  `order` int(6) NULL DEFAULT 0 COMMENT 'Xắp xếp',
  `view` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_tag
-- ----------------------------
INSERT INTO `ap_tag` VALUES (1, '', NULL, 1, '2020-07-02', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (2, '', NULL, 1, '2020-07-02', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (3, '', NULL, 1, '2020-07-02', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (4, '', NULL, 1, '2020-07-02', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (5, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (6, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (7, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (8, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (9, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);
INSERT INTO `ap_tag` VALUES (10, '', NULL, 1, '2020-07-03', '2020-07-02 18:00:02', '2020-07-02 18:00:02', 1, 1, NULL, 0, 0);

-- ----------------------------
-- Table structure for ap_tag_translations
-- ----------------------------
DROP TABLE IF EXISTS `ap_tag_translations`;
CREATE TABLE `ap_tag_translations`  (
  `id` int(11) NULL DEFAULT NULL,
  `language_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `display_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `meta_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_description` varchar(170) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `id`(`id`, `language_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_tag_translations
-- ----------------------------
INSERT INTO `ap_tag_translations` VALUES (1, 'vi', 'demo', 'Demo ef sdf s', NULL, '', '', NULL, '', NULL, 'Demo', '', '');
INSERT INTO `ap_tag_translations` VALUES (2, 'vi', 'demo-2', 'Demo 2', NULL, '', '', NULL, '', NULL, 'Demo 2', '', '');
INSERT INTO `ap_tag_translations` VALUES (3, 'vi', 'anh-huong-no-min', 'Ảnh hưởng nổ mìn', NULL, '', '', NULL, '', NULL, 'Ảnh hưởng nổ mìn', '', '');
INSERT INTO `ap_tag_translations` VALUES (4, 'vi', 'tieu-chuan', 'Tiêu chuẩn', NULL, '', '', NULL, '', NULL, 'Tiêu chuẩn', '', '');
INSERT INTO `ap_tag_translations` VALUES (5, 'vi', 'cong-nghe', 'Công nghệ', NULL, '', '', NULL, '', NULL, 'Công nghệ', '', '');
INSERT INTO `ap_tag_translations` VALUES (6, 'vi', 'xay-dung', 'xây dựng', NULL, '', '', NULL, '', NULL, 'xây dựng', '', '');
INSERT INTO `ap_tag_translations` VALUES (7, 'vi', 'cong-trinh', 'công trình', NULL, '', '', NULL, '', NULL, 'công trình', '', '');
INSERT INTO `ap_tag_translations` VALUES (8, 'vi', 'thi-cong', 'thi công', NULL, '', '', NULL, '', NULL, 'thi công', '', '');
INSERT INTO `ap_tag_translations` VALUES (9, 'vi', 'nang-luong', 'năng lượng', NULL, '', '', NULL, '', NULL, 'năng lượng', '', '');
INSERT INTO `ap_tag_translations` VALUES (10, 'vi', 'do-thi', 'đô thị', NULL, '', '', NULL, '', NULL, 'đô thị', '', '');

-- ----------------------------
-- Table structure for ap_users
-- ----------------------------
DROP TABLE IF EXISTS `ap_users`;
CREATE TABLE `ap_users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail_small` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login` int(11) UNSIGNED NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_users
-- ----------------------------
INSERT INTO `ap_users` VALUES (1, '127.0.0.1', 'admin', 'Admin', 'SSC', 'ADMIN SSC', 'admin@gmail.com', '0987654321', '$2y$08$zt//uwYCr1.NL2dTvP7QI.3SL79HWnBfv8m3JZmjq2J9N7ruAxsCK', '', 'author.jpg', NULL, 'Apecsoft1', '', NULL, NULL, NULL, 1268889823, 1, NULL, 1665561675, '2019-01-31 17:30:53', '2017-12-17 00:49:09');

-- ----------------------------
-- Table structure for ap_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `ap_users_groups`;
CREATE TABLE `ap_users_groups`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uc_users_groups`(`user_id`, `group_id`) USING BTREE,
  INDEX `fk_users_groups_users1_idx`(`user_id`) USING BTREE,
  INDEX `fk_users_groups_groups1_idx`(`group_id`) USING BTREE,
  CONSTRAINT `ap_users_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `ap_groups` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ap_users_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ap_users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 383 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ap_users_groups
-- ----------------------------
INSERT INTO `ap_users_groups` VALUES (244, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
