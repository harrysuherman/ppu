/*
 Navicat Premium Data Transfer

 Source Server         : localhost mysql mac os
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : ppu

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 18/11/2024 13:48:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('1b6453892473a467d07372d45eb05abc2031647a', 'i:1;', 1731247600);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1731247600;', 1731247600);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1728199041);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1728199041;', 1728199041);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:1;', 1728350604);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1728350604;', 1728350604);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1731252772);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1731252772;', 1731252772);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:113:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:15:\"view_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:19:\"view_any_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:17:\"create_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:17:\"update_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:18:\"restore_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:22:\"restore_any_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:20:\"replicate_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:18:\"reorder_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:17:\"delete_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:21:\"delete_any_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:23:\"force_delete_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:27:\"force_delete_any_data::skpd\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"restore_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:20:\"restore_any_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"replicate_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"reorder_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"delete_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"delete_any_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:21:\"force_delete_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:25:\"force_delete_any_kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:12:\"view_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:16:\"view_any_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:14:\"create_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:14:\"update_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:15:\"restore_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:19:\"restore_any_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:17:\"replicate_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:15:\"reorder_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:14:\"delete_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:18:\"delete_any_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:20:\"force_delete_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:24:\"force_delete_any_program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:8:\"view_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:12:\"view_any_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:10:\"create_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:10:\"update_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"restore_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"restore_any_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:13:\"replicate_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:11:\"reorder_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:10:\"delete_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:14:\"delete_any_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:16:\"force_delete_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:20:\"force_delete_any_rka\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:18:\"view_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:22:\"view_any_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:20:\"create_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:20:\"update_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:21:\"restore_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:25:\"restore_any_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:23:\"replicate_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:21:\"reorder_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:20:\"delete_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:24:\"delete_any_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:26:\"force_delete_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:30:\"force_delete_any_sub::kegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:15:\"view_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:19:\"view_any_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:17:\"create_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:17:\"update_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:18:\"restore_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:22:\"restore_any_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:20:\"replicate_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:18:\"reorder_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:17:\"delete_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:21:\"delete_any_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:23:\"force_delete_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:27:\"force_delete_any_permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:20:\"page_EditProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:10:\"page_Renja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:17:\"page_RenjaProgram\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:18:\"view_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:22:\"view_any_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:20:\"create_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:20:\"update_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:21:\"restore_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:25:\"restore_any_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:23:\"replicate_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:21:\"reorder_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:20:\"delete_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:24:\"delete_any_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:26:\"force_delete_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:30:\"force_delete_any_satuan::kerja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:11:\"page_Themes\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:19:\"widget_ProgramRenja\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:20:\"widget_RenjaKegiatan\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:25:\"widget_RenjaProgramHeader\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:18:\"widget_RenjaWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:20:\"widget_StatsOverview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:13:\"widget_Chart1\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:13:\"widget_Chart2\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"satker\";s:1:\"c\";s:3:\"web\";}}}', 1731332270);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('theme', 's:7:\"default\";', 2042548214);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('theme_color', 's:4:\"blue\";', 2042541755);
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2024_09_24_120108_create_permission_tables', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2024_09_24_121024_add_custom_fields_to_users_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2024_09_24_121025_add_avatar_url_to_users_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2024_09_24_124013_add_themes_settings_to_users_table', 4);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (2, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (2, 'App\\Models\\User', 3);
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (2, 'App\\Models\\User', 4);
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1, 'view_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (2, 'view_any_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (3, 'create_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (4, 'update_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (5, 'restore_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (6, 'restore_any_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (7, 'replicate_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (8, 'reorder_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (9, 'delete_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (10, 'delete_any_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (11, 'force_delete_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (12, 'force_delete_any_data::skpd', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (13, 'view_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (14, 'view_any_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (15, 'create_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (16, 'update_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (17, 'restore_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (18, 'restore_any_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (19, 'replicate_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (20, 'reorder_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (21, 'delete_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (22, 'delete_any_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (23, 'force_delete_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (24, 'force_delete_any_kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (25, 'view_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (26, 'view_any_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (27, 'create_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (28, 'update_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (29, 'restore_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (30, 'restore_any_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (31, 'replicate_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (32, 'reorder_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (33, 'delete_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (34, 'delete_any_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (35, 'force_delete_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (36, 'force_delete_any_program', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (37, 'view_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (38, 'view_any_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (39, 'create_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (40, 'update_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (41, 'restore_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (42, 'restore_any_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (43, 'replicate_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (44, 'reorder_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (45, 'delete_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (46, 'delete_any_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (47, 'force_delete_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (48, 'force_delete_any_rka', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (49, 'view_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (50, 'view_any_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (51, 'create_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (52, 'update_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (53, 'delete_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (54, 'delete_any_role', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (55, 'view_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (56, 'view_any_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (57, 'create_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (58, 'update_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (59, 'restore_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (60, 'restore_any_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (61, 'replicate_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (62, 'reorder_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (63, 'delete_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (64, 'delete_any_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (65, 'force_delete_sub::kegiatan', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (66, 'force_delete_any_sub::kegiatan', 'web', '2024-09-24 12:01:12', '2024-09-24 12:01:12');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (67, 'view_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (68, 'view_any_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (69, 'create_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (70, 'update_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (71, 'restore_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (72, 'restore_any_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (73, 'replicate_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (74, 'reorder_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (75, 'delete_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (76, 'delete_any_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (77, 'force_delete_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (78, 'force_delete_any_permission', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (79, 'page_EditProfilePage', 'web', '2024-09-24 12:14:03', '2024-09-24 12:14:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (80, 'page_Renja', 'web', '2024-10-05 07:10:29', '2024-10-05 07:10:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (81, 'page_RenjaProgram', 'web', '2024-10-06 08:00:37', '2024-10-06 08:00:37');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (82, 'view_satuan::kerja', 'web', '2024-11-10 13:37:47', '2024-11-10 13:37:47');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (83, 'view_any_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (84, 'create_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (85, 'update_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (86, 'restore_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (87, 'restore_any_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (88, 'replicate_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (89, 'reorder_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (90, 'delete_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (91, 'delete_any_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (92, 'force_delete_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (93, 'force_delete_any_satuan::kerja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (94, 'view_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (95, 'view_any_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (96, 'create_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (97, 'update_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (98, 'restore_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (99, 'restore_any_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (100, 'replicate_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (101, 'reorder_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (102, 'delete_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (103, 'delete_any_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (104, 'force_delete_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (105, 'force_delete_any_user', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (106, 'page_Themes', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (107, 'widget_ProgramRenja', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (108, 'widget_RenjaKegiatan', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (109, 'widget_RenjaProgramHeader', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (110, 'widget_RenjaWidget', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (111, 'widget_StatsOverview', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (112, 'widget_Chart1', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (113, 'widget_Chart2', 'web', '2024-11-10 13:37:48', '2024-11-10 13:37:48');
COMMIT;

-- ----------------------------
-- Table structure for renja_bidang
-- ----------------------------
DROP TABLE IF EXISTS `renja_bidang`;
CREATE TABLE `renja_bidang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_urusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_bidang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd_id` int DEFAULT NULL,
  `tahun_anggaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `updated_by` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_bidang
-- ----------------------------
BEGIN;
INSERT INTO `renja_bidang` (`id`, `kode_urusan`, `kode_bidang`, `nama_bidang`, `skpd_id`, `tahun_anggaran`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES (1, '5', '5.01', 'PERENCANAAN', 6, '2024', '2024-11-10 14:05:43', '2024-11-10 14:05:43', 4, 0);
INSERT INTO `renja_bidang` (`id`, `kode_urusan`, `kode_bidang`, `nama_bidang`, `skpd_id`, `tahun_anggaran`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES (2, '5', '5.05', 'PENELITIAN DAN PENGEMBANGAN', 6, '2024', '2024-11-10 14:05:43', '2024-11-10 14:05:43', 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for renja_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `renja_kegiatan`;
CREATE TABLE `renja_kegiatan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kode_urusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_bidang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_program` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kegiatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagu_rkpd` double DEFAULT '0',
  `pagu_apbd` double DEFAULT '0',
  `pagu_rkpd_perubahan` double DEFAULT '0',
  `skpd_id` int DEFAULT NULL,
  `tahun_anggaran` year DEFAULT NULL,
  `target_sebelum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_sesudah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_nasional` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_daerah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelompok_sasaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_n1` double DEFAULT '0',
  `pagu_n1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penanggung_jawab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `updated_by` int DEFAULT '0',
  `delete_by` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_kegiatan
-- ----------------------------
BEGIN;
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (1, '5', '5.01', '5.01.01', '5.01.01.2.01', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 'Tersedianya dokumen perencanaan, penganggaran dan evaluasi perangkat daerah', 1000000, 29400000, 29400000, 6, 2024, '14 Dokumen', '14 Dokumen', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Bapelitbang', 0, '50000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (2, '5', '5.01', '5.01.01', '5.01.01.2.02', 'Administrasi Keuangan Perangkat Daerah', 'Terlaksananya kegiatan administrasi keuangan perangkat daerah', 6616677800, 7514424278, 7514424278, 6, 2024, '2 Kegiatan', '2 Kegiatan', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'ASN Bapelitbang', 0, '6680396600', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (3, '5', '5.01', '5.01.01', '5.01.01.2.06', 'Administrasi Umum Perangkat Daerah', 'Terlaksananya kegiatan perkantoran dan koordinasi keluar/dalam daerah', 877482000, 1658377025, 1658377025, 6, 2024, '5 Kegiatan', '5 Kegiatan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Bapelitbang', 0, '1164130000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (4, '5', '5.01', '5.01.01', '5.01.01.2.08', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 'Jumlah laporan pelaksanaan kegiatan administrasi perkantoran', 1004732915, 1555242257, 1555242257, 6, 2024, '3 Laporan', '3 Laporan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Bapelitbang', 0, '1105000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (5, '5', '5.01', '5.01.01', '5.01.01.2.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 'Terpeliharanya Barang Milik Daerah yang digunakan dalam kegiatan perkantoran', 197000000, 339374722, 339374722, 6, 2024, '23 Unit', '23 Unit', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Bapelitbang', 0, '216700000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (6, '5', '5.01', '5.01.01', '5.01.01.2.13', 'Penataan Organisasi', 'Tersusunnya Laporan Kinerja Pemerintah Daerah', 250000000, 0, 0, 6, 2024, '3 Dokumen', '3 Dokumen', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '260000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (7, '5', '5.01', '5.01.02', '5.01.02.2.01', 'Penyusunan Perencanaan dan Pendanaan', 'Tersusunnya dokumen perencanaan pembangunan daerah', 2023911297, 3102231163, 3102231163, 6, 2024, '7 Dokumen', '7 Dokumen', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '2565000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (8, '5', '5.01', '5.01.02', '5.01.02.2.02', 'Analisis Data dan Informasi Pemerintahan Daerah Bidang Perencanaan Pembangunan Daerah ', 'Tersusunnya dokumen usulan kegiatan pembangunan daerah', 533757350, 505469530, 505469530, 6, 2024, '3 Dokumen', '3 Dokumen', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '630799500', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (9, '5', '5.01', '5.01.02', '5.01.02.2.03', 'Pengendalian, Evaluasi dan Pelaporan Bidang Perencanaan Pembangunan Daerah', 'Terlaksananya evaluasi dokumen perencanaan pembangunan ddaerah', 85000000, 703496464, 703496464, 6, 2024, '2 Laporan', '2 Laporan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '95000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (10, '5', '5.01', '5.01.03', '5.01.03.2.01', 'Koordinasi Perencanaan Bidang Pemerintahan dan Pembangunan Manusia', 'Terselenggaranya Koordinasi Perencanaan Bidang Pemerintahan dan Pembangunan Manusia', 2740730000, 1016111026, 1016111026, 6, 2024, '5 Dokumen', '5 Dokumen', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '1533114800', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (11, '5', '5.01', '5.01.03', '5.01.03.2.02', 'Koordinasi Perencanaan Bidang Perekonomian dan SDA (Sumber Daya Alam)', '\nTerselenggaranya Koordinasi perencanaan Bidang Perekonomian dan SDA (Sumber Daya Alam)', 300000000, 156425000, 156425000, 6, 2024, ' \n4 Laporan', ' \n4 Laporan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '330000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (12, '5', '5.01', '5.01.03', '5.01.03.2.03', 'Koordinasi Perencanaan Bidang Infrastruktur dan Kewilayahan', 'Terselenggaranya Koordinasi perencanaan Bidang Infrastruktur dan Kewilayahan', 400000000, 235025000, 235025000, 6, 2024, '4 Kegiatan', '4 Kegiatan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '430000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (13, '5', '5.05', '5.05.02', '5.05.02.2.01', 'Penelitian dan Pengembangan Bidang Penyelenggaraan Pemerintahan dan Pengkajian Peraturan', 'Terlaksananya kegiatan Penelitian dan Pengembangan Bidang Penyelenggaraan Pemerintahan dan Pengkajian Peraturan', 150000000, 704693442, 704693442, 6, 2024, '1 Kegiatan', '1 Kegiatan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '160000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (14, '5', '5.05', '5.05.02', '5.05.02.2.03', 'Penelitian dan Pengembangan Bidang Ekonomi dan Pembangunan', 'Terlaksananya kegiatan Penelitian dan Pengembangan Bidang Ekonomi dan Pembangunan', 500000000, 0, 0, 6, 2024, '3 Dokumen', '3 Dokumen', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '3. Peningkatan pelayanan infrastruktur yang berwawasan lingkungan dan berkelanjutan', 'Kabupaten Penajam Paser Utara', 0, '550000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `nama_kegiatan`, `indikator_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (15, '5', '5.05', '5.05.02', '5.05.02.2.04', 'Pengembangan Inovasi dan Teknologi', 'Terlaksananya kegiatan Pengembangan Inovasi dan Teknologi', 2450000000, 1210021455, 1210021455, 6, 2024, '4 Kegiatan', '4 Kegiatan', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', 'Kabupaten Penajam Paser Utara', 0, '2700000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for renja_program
-- ----------------------------
DROP TABLE IF EXISTS `renja_program`;
CREATE TABLE `renja_program` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kode_urusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_bidang` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_program` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indikator_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagu_rkpd` double DEFAULT '0',
  `pagu_apbd` double DEFAULT '0',
  `pagu_rkpd_perubahan` double DEFAULT '0',
  `skpd_id` int DEFAULT NULL,
  `tahun_anggaran` year DEFAULT NULL,
  `target_n1` double DEFAULT '0',
  `pagu_n1` double DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `target_sebelum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_sesudah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `updated_by` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_program
-- ----------------------------
BEGIN;
INSERT INTO `renja_program` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `nama_program`, `indikator_program`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_n1`, `pagu_n1`, `created_at`, `updated_at`, `target_sebelum`, `target_sesudah`, `created_by`, `updated_by`) VALUES (1, '5', '5.01', '5.01.01', 'PROGRAM PENUNJANG URUSAN PEMERINTAHAN DAERAH KABUPATEN/KOTA', 'Persentase Layanan Penunjang Urusan Pemerintahan Daerah\nIndeks Kepuasan Masyarakat (IKM)', 8946892715, 11096818282, 11841959243, 6, 2024, 0, 9476226600, '2024-11-10 14:05:43', '2024-11-10 14:05:43', '80\n100 %\n%', '100\n80 %\n%', 4, 0);
INSERT INTO `renja_program` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `nama_program`, `indikator_program`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_n1`, `pagu_n1`, `created_at`, `updated_at`, `target_sebelum`, `target_sesudah`, `created_by`, `updated_by`) VALUES (2, '5', '5.01', '5.01.02', 'PROGRAM PERENCANAAN, PENGENDALIAN DAN EVALUASI PEMBANGUNAN DAERAH', 'Persentase Komponen Perencanaan, Pengendalian dan Evaluasi Perencanaan Pembangunan pada Indeks Kualitas Perencanaan Pembangunan Daerah\nRata-rata capaian indikator Program Prioritas Perangkat Daerah', 2642668647, 4311197157, 4727615623, 6, 2024, 0, 3290799500, '2024-11-10 14:05:43', '2024-11-10 14:05:43', '100\n85 %\n%', '100\n85 %\n%', 4, 0);
INSERT INTO `renja_program` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `nama_program`, `indikator_program`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_n1`, `pagu_n1`, `created_at`, `updated_at`, `target_sebelum`, `target_sesudah`, `created_by`, `updated_by`) VALUES (3, '5', '5.01', '5.01.03', 'PROGRAM KOORDINASI DAN SINKRONISASI PERENCANAAN PEMBANGUNAN DAERAH', '\nPersentase Kesesuaian Program Renja Perangkat Daerah terhadap Renstra Perangkat Daerah', 3440730000, 1407561026, 1961017295, 6, 2024, 0, 2293114800, '2024-11-10 14:05:43', '2024-11-10 14:05:43', '\n100 \n%', '\n100 \n%', 4, 0);
INSERT INTO `renja_program` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `nama_program`, `indikator_program`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_n1`, `pagu_n1`, `created_at`, `updated_at`, `target_sebelum`, `target_sesudah`, `created_by`, `updated_by`) VALUES (4, '5', '5.05', '5.05.02', 'PROGRAM PENELITIAN DAN PENGEMBANGAN DAERAH', 'Persentase terlaksananya kegiatan Penelitian dan pengembangan', 3100000000, 1914714897, 2199699201, 6, 2024, 0, 3410000000, '2024-11-10 14:05:43', '2024-11-10 14:05:43', '100 %', '100 %', 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for renja_program_indikator
-- ----------------------------
DROP TABLE IF EXISTS `renja_program_indikator`;
CREATE TABLE `renja_program_indikator` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `indikator_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renja_program_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_program_indikator
-- ----------------------------
BEGIN;
INSERT INTO `renja_program_indikator` (`id`, `indikator_program`, `target`, `satuan`, `renja_program_id`, `created_at`, `updated_at`) VALUES (1, 'Persentase Layanan Penunjang Urusan Pemerintahan Daerah', '80', '%', 1, '2024-11-10 15:28:24', '2024-11-10 15:30:55');
INSERT INTO `renja_program_indikator` (`id`, `indikator_program`, `target`, `satuan`, `renja_program_id`, `created_at`, `updated_at`) VALUES (2, 'Indeks Kepuasan Masyarakat (IKM)', '100', '%', 1, '2024-11-10 15:28:33', '2024-11-10 15:31:08');
COMMIT;

-- ----------------------------
-- Table structure for renja_sub_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `renja_sub_kegiatan`;
CREATE TABLE `renja_sub_kegiatan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kode_urusan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_bidang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_program` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_kegiatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_sub_kegiatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sub_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `indikator_sub_kegiatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagu_rkpd` double DEFAULT '0',
  `pagu_apbd` double DEFAULT '0',
  `pagu_rkpd_perubahan` double DEFAULT '0',
  `skpd_id` int DEFAULT NULL,
  `tahun_anggaran` year DEFAULT NULL,
  `target_sebelum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_sesudah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumber_dana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_nasional` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_daerah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelompok_sasaran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_n1` double DEFAULT '0',
  `pagu_n1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penanggung_jawab` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `updated_by` int DEFAULT '0',
  `delete_by` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_sub_kegiatan
-- ----------------------------
BEGIN;
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (1, '5', '5.01', '5.01.01', '5.01.01.2.01', '5.01.01.2.01.0001', 'Penyusunan Dokumen Perencanaan Perangkat Daerah', 'Jumlah Dokumen Perencanaan Perangkat Daerah ', 1000000, 29400000, 23330000, 6, 2024, '14 Dokumen', '14 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '50000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (2, '5', '5.01', '5.01.01', '5.01.01.2.02', '5.01.01.2.02.0001', 'Penyediaan Gaji dan Tunjangan ASN', 'Jumlah Orang yang Menerima Gaji dan Tunjangan ASN', 6361771800, 7271178278, 7271178278, 6, 2024, '43 Orang/bulan', '43 Orang/bulan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '6400000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (3, '5', '5.01', '5.01.01', '5.01.01.2.02', '5.01.01.2.02.0003', 'Pelaksanaan Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD', 'Jumlah Dokumen Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD', 0, 243246000, 243246000, 6, 2024, '12 Dokumen', '12 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '280396600', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (4, '5', '5.01', '5.01.01', '5.01.01.2.06', '5.01.01.2.06.0001', 'Penyediaan Komponen Instalasi Listrik/Penerangan Bangunan Kantor', 'Jumlah Paket Komponen Instalasi Listrik/Penerangan Bangunan Kantor yang Disediakan', 2000000, 1996078, 1996078, 6, 2024, '1 Paket', '1 Paket', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '2200000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (5, '5', '5.01', '5.01.01', '5.01.01.2.06', '5.01.01.2.06.0002', 'Penyediaan Peralatan dan Perlengkapan Kantor', 'Jumlah Paket Peralatan dan Perlengkapan Kantor yang Disediakan', 1000000, 103054289, 342624019, 6, 2024, '1 Paket', '1 Paket', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'PENDAPATAN ASLI DAERAH (PAD)', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '200000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (6, '5', '5.01', '5.01.01', '5.01.01.2.06', '5.01.01.2.06.0005', 'Penyediaan Barang Cetakan dan Penggandaan', 'Jumlah Paket Barang Cetakan dan Penggandaan yang Disediakan', 55000000, 54945000, 54945000, 6, 2024, '1 Paket', '1 Paket', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '60000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (7, '5', '5.01', '5.01.01', '5.01.01.2.06', '5.01.01.2.06.0006', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', 'Jumlah Dokumen Bahan Bacaan dan Peraturan Perundang-Undangan yang Disediakan', 5000000, 6960000, 6960000, 6, 2024, '12 Dokumen', '12 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '6000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (8, '5', '5.01', '5.01.01', '5.01.01.2.06', '5.01.01.2.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 'Jumlah Laporan Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 814482000, 1491421658, 2013586158, 6, 2024, '102 Laporan', '102 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '895930000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (9, '5', '5.01', '5.01.01', '5.01.01.2.08', '5.01.01.2.08.0001', 'Penyediaan Jasa Surat Menyurat', 'Jumlah Laporan Penyediaan Jasa Surat Menyurat', 5000000, 5000000, 5000000, 6, 2024, '12 Laporan', '12 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '5500000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (10, '5', '5.01', '5.01.01', '5.01.01.2.08', '5.01.01.2.08.0002', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', 'Jumlah Laporan Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik yang Disediakan', 75000000, 95960700, 90000000, 6, 2024, '12 Laporan', '12 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '82500000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (11, '5', '5.01', '5.01.01', '5.01.01.2.08', '5.01.01.2.08.0004', 'Penyediaan Jasa Pelayanan Umum Kantor', 'Jumlah Laporan Penyediaan Jasa Pelayanan Umum Kantor yang Disediakan', 924732915, 1454281557, 1431978166, 6, 2024, '12 Laporan', '12 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Alokasi Umum', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '1017000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (12, '5', '5.01', '5.01.01', '5.01.01.2.09', '5.01.01.2.09.0002', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, Pajak dan Perizinan Kendaraan Dinas Operasional atau Lapangan', 'Jumlah Kendaraan Dinas Operasional atau Lapangan yang Dipelihara dan dibayarkan Pajak dan Perizinannya', 152000000, 229014722, 261355544, 6, 2024, '15 Unit', '15 Unit', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '167200000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (13, '5', '5.01', '5.01.01', '5.01.01.2.09', '5.01.01.2.09.0010', 'Pemeliharaan/Rehabilitasi Sarana dan Prasarana Gedung Kantor atau Bangunan Lainnya', 'Jumlah Sarana dan Prasarana Gedung Kantor atau Bangunan Lainnya yang Dipelihara/Direhabilitasi', 0, 110360000, 95760000, 6, 2024, '31 Unit', '31 Unit', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '49500000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (14, '5', '5.01', '5.01.01', '5.01.01.2.13', '5.01.01.2.13.0005', 'Koordinasi dan Penyusunan Laporan Kinerja Pemerintah Daerah', 'Jumlah Dokumen Koordinasi dan Penyusunan Laporan Kinerja Pemerintah Daerah', 250000000, 0, 0, 6, 2024, '5 Dokumen', '5 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '260000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (15, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0001', 'Analisis Kondisi Daerah, Permasalahan, dan Isu Strategis Pembangunan Daerah', 'Jumlah Dokumen Rancangan Awal RPJMD/RKPD (Sesuai Kebutuhan Jika RPJMD Maka Rancangan Teknokratik)', 300000000, 883059714, 944109714, 6, 2024, '2 Dokumen', '2 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '330000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (16, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0003', 'Pelaksanaan Konsultasi Publik', 'Jumlah Berita Acara Konsultasi Publik', 100000000, 85640620, 85640620, 6, 2024, '1 Berita Acara', '1 Berita Acara', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '110000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (17, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0004', 'Koordinasi Pelaksanaan Forum Perangkat Daerah/Lintas Perangkat Daerah', 'Jumlah Berita Acara Forum Perangkat Daerah/Lintas Perangkat Daerah', 100000000, 79812501, 79812501, 6, 2024, '1 Berita Acara', '1 Berita Acara', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '110000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (18, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0005', 'Pelaksanaan Musrenbang Kabupaten/Kota', 'Jumlah Berita Acara Musrenbang Kabupaten/Kota', 200000000, 165144284, 165144284, 6, 2024, '1 Berita Acara', '1 Berita Acara', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '220000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (19, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0006', 'Penyiapan Bahan Koordinasi Musrenbang Kecamatan', 'Jumlah Usulan yang Terverifikasi oleh Kecamatan', 33000000, 16323306, 16323306, 6, 2024, '40 Usulan', '40 Usulan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '35000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (20, '5', '5.01', '5.01.02', '5.01.02.2.01', '5.01.02.2.01.0007', 'Koordinasi Penyusunan dan Penetapan Dokumen Perencanaan Pembangunan Daerah Kabupaten/Kota', 'Jumlah Dokumen Perencanaan Pembangunan Daerah Kabupaten/Kota yang Ditetapkan (RPJPD/RPJMD/RKPD)', 1290911297, 1872250738, 2367242588, 6, 2024, '4 Dokumen', '4 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '1760000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (21, '5', '5.01', '5.01.02', '5.01.02.2.02', '5.01.02.2.02.0001', 'Analisis Data dan Informasi Perencanaan Pembangunan Daerah', 'Jumlah Dokumen Hasil Analisis Data untuk Penyusunan Kebijakan Perencanaan Pembangunan Daerah (Semua Perencanaan Pembangunan Daerah)', 241212350, 285806922, 320591922, 6, 2024, '3 Dokumen', '3 Dokumen', 'Semua Kota/Kab, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', '-', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '309000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (22, '5', '5.01', '5.01.02', '5.01.02.2.02', '5.01.02.2.02.0002', 'Pembinaan dan Pemanfaatan Data dan Informasi Perencanaan Pembangunan Perangkat Daerah', 'Jumlah Orang yang Dibina dalam Pemanfaatan Data dan Informasi', 166855000, 117920108, 129879108, 6, 2024, '36 Orang', '36 Orang', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '183540500', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (23, '5', '5.01', '5.01.02', '5.01.02.2.02', '5.01.02.2.02.0003', 'Penyusunan Profil Pembangunan Daerah Kabupaten/Kota', 'Jumlah Buku Profil Pembangunan Daerah yang Diterbitkan', 125690000, 101742500, 101742500, 6, 2024, '1 Buku', '1 Buku', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '138259000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (24, '5', '5.01', '5.01.02', '5.01.02.2.03', '5.01.02.2.03.0001', 'Koordinasi Pengendalian Perencanaan dan Pelaksanaan Pembangunan Daerah di Kabupaten/Kota', 'Jumlah Laporan Hasil Pengendalian Perencanaan dan Pelaksanaan Pembangunan', 50000000, 45328732, 71142732, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '55000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (25, '5', '5.01', '5.01.02', '5.01.02.2.03', '5.01.02.2.03.0003', 'Monitoring, Evaluasi dan Penyusunan Laporan Berkala Pelaksanaan Pembangunan Daerah', 'Jumlah Laporan Hasil Evaluasi Kinerja Pembangunan Daerah', 35000000, 658167732, 445986348, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'PENDAPATAN ASLI DAERAH (PAD)', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '40000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (26, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0001', 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Pemerintahan (RPJPD, RPJMD dan RKPD)', 'Jumlah Dokumen Perencanaan Pembangunan Daerah Bidang Pemerintahan yang Dikoordinir Penyusunannya (RPJPD, RPJMD dan RKPD)', 198627000, 110239500, 362434676, 6, 2024, '3 Dokumen', '3 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '218500000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (27, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0003', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pemerintahan', 'Jumlah Laporan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pemerintahan', 188925300, 17225000, 17225000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '207820000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (28, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0004', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Pemerintahan', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang Pemerintahan', 786309700, 469913176, 435956269, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '424940000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (29, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0005', 'Koordinasi Penyusunan Dokumen Perencanaan Pembangunan Daerah Bidang Pembangunan Manusia (RPJPD, RPJMD dan RKPD)', 'Jumlah Dokumen Perencanaan Pembangunan Daerah Bidang Pembangunan Manusia yang Dikoordinir Penyusunannya (RPJPD. RPJMD dan RKPD)', 1313008000, 269520000, 304738000, 6, 2024, '1 Dokumen', '1 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '402608800', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (30, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0007', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pembangunan Manusia', 'Jumlah Laporan Hasil Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Pembangunan Manusia', 53100000, 41207450, 41207450, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '58410000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (31, '5', '5.01', '5.01.03', '5.01.03.2.01', '5.01.03.2.01.0008', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Pembangunan Manusia', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang Pembangunan Manusia', 200760000, 108005900, 208005900, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '220836000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (32, '5', '5.01', '5.01.03', '5.01.03.2.02', '5.01.03.2.02.0003', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Perekonomian', 'Jumlah Laporan Hasil Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Perekonomian', 50000000, 10000000, 10000000, 6, 2024, '5 Laporan', '5 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '55000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (33, '5', '5.01', '5.01.03', '5.01.03.2.02', '5.01.03.2.02.0004', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Perekonomian', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang Perekonomian', 100000000, 70000000, 130000000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '110000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (34, '5', '5.01', '5.01.03', '5.01.03.2.02', '5.01.03.2.02.0007', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang SDA', 'Jumlah Laporan Hasil Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang SDA', 50000000, 11983000, 11983000, 6, 2024, '4 Laporan', '4 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '55000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (35, '5', '5.01', '5.01.03', '5.01.03.2.02', '5.01.03.2.02.0008', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang SDA', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang SDA', 100000000, 64442000, 124442000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '110000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (36, '5', '5.01', '5.01.03', '5.01.03.2.03', '5.01.03.2.03.0003', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Infrastruktur', 'Jumlah Laporan Hasil Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Infrastruktur', 50000000, 10000000, 10000000, 6, 2024, '3 Laporan', '3 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '55000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (37, '5', '5.01', '5.01.03', '5.01.03.2.03', '5.01.03.2.03.0004', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Infrastruktur', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang Infrastruktur', 150000000, 82275000, 122275000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '160000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (38, '5', '5.01', '5.01.03', '5.01.03.2.03', '5.01.03.2.03.0007', 'Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Kewilayahan', 'Jumlah Laporan Hasil Pelaksanaan Monitoring dan Evaluasi Penyusunan Dokumen Perencanaan Pembangunan Perangkat Daerah Bidang Kewilayahan', 50000000, 10000000, 10000000, 6, 2024, '2 Laporan', '2 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '55000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (39, '5', '5.01', '5.01.03', '5.01.03.2.03', '5.01.03.2.03.0008', 'Koordinasi Pelaksanaan Sinergitas dan Harmonisasi Perencanaan Pembangunan Daerah Bidang Kewilayahan', 'Jumlah Laporan Hasil Sinkronisasi Renstra/Renja dengan RKPD/RPJMD pada Bidang Kewilayahan', 150000000, 132750000, 172750000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '160000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (40, '5', '5.05', '5.05.02', '5.05.02.2.01', '5.05.02.2.01.0013', 'Perumusan Rekomendasi atas Rencana Penetapan Peraturan Baru dan/atau Evaluasi Terhadap Pelaksanaan Peraturan', 'Jumlah Rekomendasi atas Rencana Penetapan Peraturan Baru dan/atau Evaluasi Terhadap Pelaksanaan Peraturan yang Diterbitkan', 150000000, 704693442, 655308742, 6, 2024, '3 Rekomendasi', '3 Rekomendasi', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '160000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (41, '5', '5.05', '5.05.02', '5.05.02.2.03', '5.05.02.2.03.0011', 'Penelitian dan Pengembangan Perumahan dan Kawasan Permukiman', 'Jumlah Dokumen Hasil Penelitian dan Pengembangan Perumahan dan Kawasan Permukiman', 500000000, 0, 0, 6, 2024, '3 Dokumen', '3 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '3. Peningkatan pelayanan infrastruktur yang berwawasan lingkungan dan berkelanjutan', '', 0, '550000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (42, '5', '5.05', '5.05.02', '5.05.02.2.04', '5.05.02.2.04.0001', 'Penelitian, Pengembangan, dan Perekayasaan di Bidang Teknologi dan Inovasi', 'Jumlah Dokumen Hasil Penelitian, Pengembangan, dan Perekayasaan di Bidang Teknologi dan Inovasi', 2100000000, 926309815, 953220810, 6, 2024, '1 Dokumen', '1 Dokumen', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '2310000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (43, '5', '5.05', '5.05.02', '5.05.02.2.04', '5.05.02.2.04.0003', 'Diseminasi Jenis, Prosedur dan Metode Penyelenggaraan Pemerintahan Daerah yang Bersifat Inovatif', 'Jumlah Laporan Hasil Pelaksanaan Diseminasi Jenis, Prosedur dan Metode Penyelenggaraan Pemerintahan Daerah yang Bersifat Inovatif', 150000000, 245343640, 475299569, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '160000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (44, '5', '5.05', '5.05.02', '5.05.02.2.04', '5.05.02.2.04.0004', 'Sosialisasi dan Diseminasi Hasil-Hasil Kelitbangan', 'Jumlah Laporan Hasil Penyelenggaraan Sosialisasi dan Diseminasi Hasil-Hasil Kelitbangan', 50000000, 19184000, 19184000, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '65000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
INSERT INTO `renja_sub_kegiatan` (`id`, `kode_urusan`, `kode_bidang`, `kode_program`, `kode_kegiatan`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `indikator_sub_kegiatan`, `pagu_rkpd`, `pagu_apbd`, `pagu_rkpd_perubahan`, `skpd_id`, `tahun_anggaran`, `target_sebelum`, `target_sesudah`, `lokasi`, `sumber_dana`, `prioritas_nasional`, `prioritas_daerah`, `kelompok_sasaran`, `target_n1`, `pagu_n1`, `penanggung_jawab`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `delete_by`) VALUES (45, '5', '5.05', '5.05.02', '5.05.02.2.04', '5.05.02.2.04.0005', 'Fasilitasi Hak Kekayaan Intelektual', 'Jumlah Laporan Pelaksanaan Fasilitasi Hak Kekayaan Intelektual', 150000000, 19184000, 96686080, 6, 2024, '1 Laporan', '1 Laporan', 'Kab. Penajam Paser Utara, Semua Kecamatan, Semua Kel/Desa', 'Dana Transfer Umum-Dana Bagi Hasil', 'Memperkuat Stabilitas Polhukhankam Dan Transformasi Pelayanan Publik', '4. Optimalisasi tata kelola pemerintahan berbasis teknologi informasi', '', 0, '165000000', 'BADAN PERENCANAAN, PENELITIAN DAN PENGEMBANGAN', '2024-11-10 14:05:43', '2024-11-10 14:05:43', NULL, 4, 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for renja_urusan
-- ----------------------------
DROP TABLE IF EXISTS `renja_urusan`;
CREATE TABLE `renja_urusan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kode_urusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_urusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skpd_id` int DEFAULT NULL,
  `tahun_anggaran` year DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT '0',
  `updated_by` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of renja_urusan
-- ----------------------------
BEGIN;
INSERT INTO `renja_urusan` (`id`, `kode_urusan`, `nama_urusan`, `skpd_id`, `tahun_anggaran`, `updated_at`, `created_at`, `created_by`, `updated_by`) VALUES (1, '5', 'UNSUR PENUNJANG URUSAN PEMERINTAHAN', 6, 2024, '2024-11-10 14:05:43', '2024-11-10 14:05:43', 4, 0);
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (1, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (2, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (3, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (4, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (5, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (6, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (7, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (8, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (9, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (10, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (11, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (12, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (13, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (14, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (15, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (16, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (17, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (18, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (19, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (20, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (21, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (22, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (23, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (24, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (25, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (26, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (27, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (28, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (29, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (30, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (31, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (32, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (33, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (34, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (35, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (36, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (37, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (38, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (39, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (40, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (41, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (42, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (43, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (44, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (45, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (46, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (47, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (48, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (49, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (50, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (51, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (52, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (53, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (54, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (55, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (56, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (57, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (58, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (59, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (60, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (61, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (62, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (63, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (64, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (65, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (66, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (67, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (68, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (69, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (70, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (71, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (72, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (73, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (74, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (75, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (76, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (77, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (78, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (79, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (80, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (81, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (82, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (83, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (84, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (85, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (86, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (87, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (88, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (89, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (90, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (91, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (92, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (93, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (94, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (95, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (96, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (97, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (98, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (99, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (100, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (101, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (102, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (103, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (104, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (105, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (106, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (107, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (108, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (109, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (110, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (111, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (112, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (113, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (1, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (2, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (3, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (4, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (5, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (6, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (7, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (8, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (9, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (10, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (11, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (12, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (13, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (14, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (15, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (16, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (17, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (18, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (19, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (20, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (21, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (22, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (23, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (24, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (25, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (26, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (27, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (28, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (29, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (30, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (31, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (32, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (33, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (34, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (35, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (36, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (37, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (38, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (39, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (40, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (41, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (42, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (43, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (44, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (45, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (46, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (47, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (48, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (55, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (56, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (57, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (58, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (59, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (60, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (61, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (62, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (63, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (64, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (65, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (66, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (79, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (80, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (81, 2);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1, 'super_admin', 'web', '2024-09-24 12:01:11', '2024-09-24 12:01:11');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (2, 'satker', 'web', '2024-09-24 12:25:33', '2024-10-06 07:40:54');
COMMIT;

-- ----------------------------
-- Table structure for rpjmd_program
-- ----------------------------
DROP TABLE IF EXISTS `rpjmd_program`;
CREATE TABLE `rpjmd_program` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rpjmd_program
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for satuan_kerja
-- ----------------------------
DROP TABLE IF EXISTS `satuan_kerja`;
CREATE TABLE `satuan_kerja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode_satker` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_satker` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of satuan_kerja
-- ----------------------------
BEGIN;
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (1, '01.02.03', 'UPTD Pemeliharaan Infrastruktur Pekerjaan Umum Wilayah I', '2024-10-06 04:03:04', '2024-10-06 10:40:00');
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (2, '01.02.04', 'UPTD Pemeliharaan Infrastruktur Pekerjaan Umum Wilayah II', '2024-10-06 04:03:17', '2024-10-06 10:39:54');
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (3, '11111', 'Dinas Pekerjaan Umum Penataan Ruang dan Perumahan Rakyat Prov. Kaltim', '2024-10-06 06:47:22', '2024-10-06 10:37:54');
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (4, '22222222', 'UPTD Lab Konstruksi Prov. Kaltim', '2024-10-06 06:48:21', '2024-10-06 06:48:21');
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (5, '01.02.01', 'UPTD Pemeliharaan Infrastruktur Pekerjaan Umum Wilayah III', '2024-10-06 10:38:18', '2024-10-06 10:38:18');
INSERT INTO `satuan_kerja` (`id`, `kode_satker`, `nama_satker`, `created_at`, `updated_at`) VALUES (6, '555555', 'Bappeda', '2024-11-10 13:36:37', '2024-11-10 13:36:37');
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('YPcaW8UMNiUoziyG5YVdx8pjtS3OHHff9agp0t9z', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidld3T0xNYWIxZHlXSXlWSEZhNGMxN2ROR0pYNVB2RDZRUmo4QUYzVCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kYXNoYm9hcmQiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJE91LmFPdHN0dTFQSVd3cjNQckN1Ly5TdFZ1dTIzVmxZVVhZUWtrNFQ5V0FnVXJ1R056d2VhIjt9', 1731253088);
COMMIT;

-- ----------------------------
-- Table structure for sipd_data_skpd
-- ----------------------------
DROP TABLE IF EXISTS `sipd_data_skpd`;
CREATE TABLE `sipd_data_skpd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bidang_urusan_1` int DEFAULT NULL,
  `id_bidang_urusan_2` int DEFAULT NULL,
  `id_bidang_urusan_3` int DEFAULT NULL,
  `kode_skpd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_skpd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_unit` int DEFAULT NULL,
  `id_daerah` int DEFAULT NULL,
  `id_kecamatan` int DEFAULT NULL,
  `id_skpd` int DEFAULT NULL,
  `nama_kepala` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_kepala` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sipd_data_skpd
-- ----------------------------
BEGIN;
INSERT INTO `sipd_data_skpd` (`id`, `id_bidang_urusan_1`, `id_bidang_urusan_2`, `id_bidang_urusan_3`, `kode_skpd`, `nama_skpd`, `id_unit`, `id_daerah`, `id_kecamatan`, `id_skpd`, `nama_kepala`, `nip_kepala`, `created_at`, `updated_at`) VALUES (2, 3, 4, 37, '1.03.1.04.5.05.01.0000', 'Dinas Pekerjaan Umum, Penataan Ruang dan Perumahan Rakyat', 286, 307, NULL, 286, 'Aji Muhammad Fitra Firnanda, S.T., M.M', '197404052000031004', '2024-09-11 11:20:13', '2024-09-11 11:20:13');
COMMIT;

-- ----------------------------
-- Table structure for sipd_kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `sipd_kegiatan`;
CREATE TABLE `sipd_kegiatan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_giat` int DEFAULT NULL,
  `id_program` int DEFAULT NULL,
  `kode_giat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_giat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_giat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_bidang_urusan` int DEFAULT NULL,
  `id_urusan` int DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `kode_skpd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sipd_kegiatan
-- ----------------------------
BEGIN;
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (1, 1860, 422, 'X.XX.01.2.01', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', '2.01', 104, 20, 2024, NULL, '2024-09-11 12:35:31', '2024-09-11 12:35:31');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (2, 2792, 442, '1.01.05.2.01', 'Penerbitan Izin Pendidikan Dasar yang Diselenggarakan oleh Masyarakat', '2.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (3, 2777, 435, '1.01.02.1.01', 'Pengelolaan Pendidikan Sekolah Menengah Atas', '1.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (4, 2779, 435, '1.01.02.1.03', 'Pengelolaan Pendidikan Khusus', '1.03', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (5, 2778, 435, '1.01.02.1.02', 'Pengelolaan Pendidikan Sekolah Menengah Kejuruan', '1.02', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (6, 2780, 436, '1.01.02.2.01', 'Pengelolaan Pendidikan Sekolah Dasar', '2.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (7, 2781, 436, '1.01.02.2.02', 'Pengelolaan Pendidikan Sekolah Menengah Pertama', '2.02', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (8, 2782, 436, '1.01.02.2.03', 'Pengelolaan Pendidikan Anak Usia Dini (PAUD)', '2.03', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (9, 2783, 436, '1.01.02.2.04', 'Pengelolaan Pendidikan Nonformal/Kesetaraan', '2.04', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (10, 2784, 437, '1.01.03.1.01', 'Penetapan Kurikulum Muatan Lokal Pendidikan Menengah', '1.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (11, 2785, 437, '1.01.03.1.02', 'Penetapan Kurikulum Muatan Lokal Pendidikan Khusus', '1.02', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (12, 2786, 438, '1.01.03.2.01', 'Penetapan Kurikulum Muatan Lokal Pendidikan Dasar', '2.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (13, 2787, 438, '1.01.03.2.02', 'Penetapan Kurikulum Muatan Lokal Pendidikan Anak Usia Dini dan Pendidikan Nonformal', '2.02', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (14, 2788, 439, '1.01.04.1.01', 'Pemindahan Pendidik dan Tenaga Kependidikan Lintas Kabupaten/Kota dalam 1 (Satu) Provinsi', '1.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (15, 2789, 440, '1.01.04.2.01', 'Pemerataan Kuantitas dan Kualitas Pendidik dan Tenaga Kependidikan bagi Satuan Pendidikan Dasar, PAUD, dan Pendidikan Nonformal/Kesetaraan', '2.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (16, 2790, 441, '1.01.05.1.01', 'Penerbitan Izin Pendidikan Menengah yang Diselenggarakan oleh Masyarakat', '1.01', 55, 11, 2024, NULL, '2024-09-11 12:35:32', '2024-09-11 12:35:32');
INSERT INTO `sipd_kegiatan` (`id`, `id_giat`, `id_program`, `kode_giat`, `nama_giat`, `no_giat`, `id_bidang_urusan`, `id_urusan`, `tahun`, `kode_skpd`, `created_at`, `updated_at`) VALUES (17, 2791, 441, '1.01.05.1.02', 'Penerbitan Izin Pendidikan Khusus yang Diselenggarakan oleh Masyarakat', '1.02', 55, 11, 2024, NULL, '2024-09-11 12:35:33', '2024-09-11 12:35:33');
COMMIT;

-- ----------------------------
-- Table structure for sipd_program
-- ----------------------------
DROP TABLE IF EXISTS `sipd_program`;
CREATE TABLE `sipd_program` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_program` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_urusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_program` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` year DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sipd_program
-- ----------------------------
BEGIN;
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (3, '435', 'PROGRAM PENGELOLAAN PENDIDIKAN', '11', '1.01.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (4, '437', 'PROGRAM PENGEMBANGAN KURIKULUM', '11', '1.01.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (5, '439', 'PROGRAM PENDIDIK DAN TENAGA KEPENDIDIKAN', '11', '1.01.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (6, '441', 'PROGRAM PENGENDALIAN PERIZINAN PENDIDIKAN', '11', '1.01.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (7, '443', 'PROGRAM PENGEMBANGAN BAHASA DAN SASTRA', '11', '1.01.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (8, '449', 'PROGRAM PEMENUHAN UPAYA KESEHATAN PERORANGAN DAN UPAYA KESEHATAN MASYARAKAT', '11', '1.02.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (9, '451', 'PROGRAM PENINGKATAN KAPASITAS SUMBER DAYA MANUSIA KESEHATAN', '11', '1.02.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (10, '453', 'PROGRAM SEDIAAN FARMASI, ALAT KESEHATAN DAN MAKANAN MINUMAN', '11', '1.02.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (11, '459', 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM PENYEDIAAN AIR MINUM', '11', '1.03.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (12, '457', 'PROGRAM PENGELOLAAN SUMBER DAYA AIR (SDA)', '11', '1.03.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (13, '455', 'PROGRAM PEMBERDAYAAN MASYARAKAT BIDANG KESEHATAN', '11', '1.02.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (14, '461', 'PROGRAM PENGEMBANGAN SISTEM DAN PENGELOLAAN PERSAMPAHAN REGIONAL', '11', '1.03.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (15, '463', 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM AIR LIMBAH', '11', '1.03.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (16, '465', 'PROGRAM PENGELOLAAN DAN PENGEMBANGAN SISTEM DRAINASE', '11', '1.03.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (17, '467', 'PROGRAM PENGEMBANGAN PERMUKIMAN', '11', '1.03.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (18, '469', 'PROGRAM PENATAAN BANGUNAN GEDUNG', '11', '1.03.08', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (19, '471', 'PROGRAM PENATAAN BANGUNAN DAN LINGKUNGANNYA', '11', '1.03.09', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (20, '473', 'PROGRAM PENYELENGGARAAN JALAN', '11', '1.03.10', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (21, '475', 'PROGRAM PENGEMBANGAN JASA KONSTRUKSI', '11', '1.03.11', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (22, '477', 'PROGRAM PENYELENGGARAAN PENATAAN RUANG', '11', '1.03.12', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (23, '481', 'PROGRAM PENGEMBANGAN PERUMAHAN', '11', '1.04.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (24, '483', 'PROGRAM KAWASAN PERMUKIMAN', '11', '1.04.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (25, '486', 'PROGRAM PENINGKATAN PRASARANA, SARANA DAN UTILITAS UMUM (PSU)', '11', '1.04.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (26, '488', 'PROGRAM PENINGKATAN PELAYANAN SERTIFIKASI, KUALIFIKASI, KLASIFIKASI, DAN REGISTRASI BIDANG PERUMAHAN DAN KAWASAN PERMUKIMAN', '11', '1.04.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (27, '490', 'PROGRAM PENINGKATAN KETENTERAMAN DAN KETERTIBAN UMUM', '11', '1.05.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (28, '492', 'PROGRAM PENANGGULANGAN BENCANA', '11', '1.05.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (29, '494', 'PROGRAM PENCEGAHAN, PENANGGULANGAN, PENYELAMATAN KEBAKARAN DAN PENYELAMATAN NON KEBAKARAN', '11', '1.05.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (30, '496', 'PROGRAM PEMBERDAYAAN SOSIAL', '11', '1.06.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (31, '498', 'PROGRAM PENANGANAN WARGA NEGARA MIGRAN KORBAN TINDAK KEKERASAN', '11', '1.06.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (32, '500', 'PROGRAM REHABILITASI SOSIAL', '11', '1.06.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (33, '502', 'PROGRAM PERLINDUNGAN DAN JAMINAN SOSIAL', '11', '1.06.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (34, '504', 'PROGRAM PENANGANAN BENCANA', '11', '1.06.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (35, '506', 'PROGRAM PENGELOLAAN TAMAN MAKAM PAHLAWAN', '11', '1.06.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (36, '508', 'PROGRAM PERENCANAAN TENAGA KERJA', '12', '2.07.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (37, '510', 'PROGRAM PELATIHAN KERJA DAN PRODUKTIVITAS TENAGA KERJA', '12', '2.07.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (38, '512', 'PROGRAM PENEMPATAN TENAGA KERJA', '12', '2.07.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (39, '514', 'PROGRAM HUBUNGAN INDUSTRIAL', '12', '2.07.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (40, '516', 'PROGRAM PENGAWASAN KETENAGAKERJAAN', '12', '2.07.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (41, '517', 'PROGRAM PENGARUSUTAMAAN GENDER DAN PEMBERDAYAAN PEREMPUAN', '12', '2.08.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (42, '519', 'PROGRAM PERLINDUNGAN PEREMPUAN', '12', '2.08.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (43, '521', 'PROGRAM PENINGKATAN KUALITAS KELUARGA', '12', '2.08.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (44, '523', 'PROGRAM PENGELOLAAN SISTEM DATA GENDER DAN ANAK', '12', '2.08.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (45, '525', 'PROGRAM PEMENUHAN HAK ANAK (PHA)', '12', '2.08.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (46, '527', 'PROGRAM PERLINDUNGAN KHUSUS ANAK', '12', '2.08.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (47, '529', 'PROGRAM PENGELOLAAN SUMBER DAYA EKONOMI UNTUK KEDAULATAN DAN KEMANDIRIAN PANGAN', '12', '2.09.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (48, '531', 'PROGRAM PENINGKATAN DIVERSIFIKASI DAN KETAHANAN PANGAN MASYARAKAT', '12', '2.09.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (49, '533', 'PROGRAM PENANGANAN KERAWANAN PANGAN', '12', '2.09.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (50, '535', 'PROGRAM PENGAWASAN KEAMANAN PANGAN', '12', '2.09.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (51, '537', 'PROGRAM PENGELOLAAN IZIN LOKASI', '12', '2.10.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (52, '539', 'PROGRAM PENGADAAN TANAH UNTUK KEPENTINGAN UMUM', '12', '2.10.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (53, '541', 'PROGRAM PENYELESAIAN SENGKETA TANAH GARAPAN', '12', '2.10.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (54, '543', 'PROGRAM PENYELESAIAN GANTI KERUGIAN DAN SANTUNAN TANAH UNTUK PEMBANGUNAN', '12', '2.10.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (55, '545', 'PROGRAM REDISTRIBUSI TANAH DAN GANTI KERUGIAN TANAH KELEBIHAN MAKSIMUM DAN TANAH ABSENTEE', '12', '2.10.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (56, '547', 'PROGRAM PENETAPAN TANAH ULAYAT', '12', '2.10.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (57, '549', 'PROGRAM PENGELOLAAN TANAH KOSONG', '12', '2.10.08', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (58, '552', 'PROGRAM PENATAGUNAAN TANAH', '12', '2.10.10', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (59, '558', 'PROGRAM SURVEI, PENGUKURAN DAN PEMETAAN', '12', '2.10.13', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (60, '562', 'PROGRAM PENGATURAN PERTANAHAN DI WILAYAH PESISIR, LAUT DAN PULAU', '12', '2.10.15', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (61, '566', 'PROGRAM PENANGANAN KONFLIK, SENGKETA DAN PERKARA PERTANAHAN', '12', '2.10.17', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (62, '568', 'PROGRAM Perencanaan LINGKUNGAN HIDUP', '12', '2.11.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (63, '570', 'PROGRAM PENGENDALIAN PENCEMARAN DAN/ATAU KERUSAKAN LINGKUNGAN HIDUP', '12', '2.11.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (64, '572', 'PROGRAM PENGELOLAAN KEANEKARAGAMAN HAYATI (KEHATI)', '12', '2.11.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (65, '574', 'PROGRAM PENGENDALIAN BAHAN BERBAHAYA DAN BERACUN (B3) DAN LIMBAH BAHAN BERBAHAYA DAN BERACUN (LIMBAH B3)', '12', '2.11.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (66, '576', 'PROGRAM PEMBINAAN DAN PENGAWASAN TERHADAP IZIN LINGKUNGAN DAN IZIN PERLINDUNGAN DAN PENGELOLAAN LINGKUNGAN HIDUP (PPLH)', '12', '2.11.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (67, '578', 'PROGRAM PENGAKUAN KEBERADAAN Masyarakat HUKUM ADAT (MHA), KEARIFAN LOKAL DAN HAK MHA YANG TERKAIT DENGAN PPLH', '12', '2.11.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (68, '580', 'PROGRAM PENINGKATAN PENDIDIKAN, PELATIHAN DAN PENYULUHAN LINGKUNGAN HIDUP UNTUK MASYARAKAT', '12', '2.11.08', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (69, '582', 'PROGRAM PENGHARGAAN LINGKUNGAN HIDUP UNTUK MASYARAKAT', '12', '2.11.09', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (70, '584', 'PROGRAM PENANGANAN PENGADUAN LINGKUNGAN HIDUP', '12', '2.11.10', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (71, '586', 'PROGRAM PENGELOLAAN PERSAMPAHAN', '12', '2.11.11', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (72, '588', 'PROGRAM PENDAFTARAN PENDUDUK', '12', '2.12.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (73, '590', 'PROGRAM PENCATATAN SIPIL', '12', '2.12.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (74, '592', 'PROGRAM PENGELOLAAN INFORMASI ADMINISTRASI KEPENDUDUKAN', '12', '2.12.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (75, '594', 'PROGRAM PENGELOLAAN PROFIL KEPENDUDUKAN', '12', '2.12.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (76, '596', 'PROGRAM PENATAAN DESA', '12', '2.13.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (77, '598', 'PROGRAM PENINGKATAN KERJA SAMA DESA', '12', '2.13.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (78, '600', 'PROGRAM ADMINISTRASI PEMERINTAHAN DESA', '12', '2.13.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (79, '602', 'PROGRAM PEMBERDAYAAN LEMBAGA KEMASYARAKATAN, LEMBAGA ADAT DAN MASYARAKAT HUKUM ADAT', '12', '2.13.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (80, '607', 'PROGRAM PENGENDALIAN PENDUDUK', '12', '2.14.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (81, '609', 'PROGRAM PEMBINAAN KELUARGA BERENCANA (KB)', '12', '2.14.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (82, '611', 'PROGRAM PEMBERDAYAAN DAN PENINGKATAN KELUARGA SEJAHTERA (KS)', '12', '2.14.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (83, '613', 'PROGRAM PENYELENGGARAAN LALU LINTAS DAN ANGKUTAN JALAN (LLAJ)', '12', '2.15.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (84, '615', 'PROGRAM PENGELOLAAN PELAYARAN', '12', '2.15.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (85, '617', 'PROGRAM PENGELOLAAN PENERBANGAN', '12', '2.15.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (86, '619', 'PROGRAM PENGELOLAAN PERKERETAAPIAN', '12', '2.15.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (87, '621', 'PROGRAM PENGELOLAAN INFORMASI DAN KOMUNIKASI PUBLIK', '12', '2.16.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (88, '623', 'PROGRAM PENGELOLAAN APLIKASI INFORMATIKA', '12', '2.16.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (89, '625', 'PROGRAM PELAYANAN IZIN USAHA SIMPAN PINJAM', '12', '2.17.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (90, '627', 'PROGRAM PENGAWASAN DAN PEMERIKSAAN KOPERASI', '12', '2.17.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (91, '629', 'PROGRAM PENILAIAN KESEHATAN KSP/USP KOPERASI', '12', '2.17.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (92, '631', 'PROGRAM PENDIDIKAN DAN LATIHAN PERKOPERASIAN', '12', '2.17.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (93, '633', 'PROGRAM PEMBERDAYAAN DAN PERLINDUNGAN KOPERASI', '12', '2.17.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (94, '635', 'PROGRAM Pemberdayaan USAHA MENENGAH, USAHA KECIL, DAN USAHA MIKRO (UMKM)', '12', '2.17.07', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (95, '637', 'PROGRAM PENGEMBANGAN UMKM', '12', '2.17.08', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (96, '639', 'PROGRAM PENGEMBANGAN IKLIM PENANAMAN MODAL', '12', '2.18.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (97, '641', 'PROGRAM PROMOSI PENANAMAN MODAL', '12', '2.18.03', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (98, '643', 'PROGRAM PELAYANAN PENANAMAN MODAL', '12', '2.18.04', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (99, '645', 'PROGRAM PENGENDALIAN PELAKSANAAN PENANAMAN MODAL', '12', '2.18.05', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (100, '647', 'PROGRAM PENGELOLAAN DATA DAN SISTEM INFORMASI PENANAMAN MODAL', '12', '2.18.06', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (101, '649', 'PROGRAM PENGEMBANGAN KAPASITAS DAYA SAING KEPEMUDAAN', '12', '2.19.02', 2024, NULL, NULL);
INSERT INTO `sipd_program` (`id`, `id_program`, `nama_program`, `id_urusan`, `kode_program`, `tahun`, `created_at`, `updated_at`) VALUES (102, '651', 'PROGRAM PENGEMBANGAN DAYA SAING KEOLAHRAGAAN', '12', '2.19.03', 2024, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sipd_sub_kegiatans
-- ----------------------------
DROP TABLE IF EXISTS `sipd_sub_kegiatans`;
CREATE TABLE `sipd_sub_kegiatans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kode_sub_kegiatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sub_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year DEFAULT NULL,
  `kode_skpd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sipd_sub_kegiatans
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_fields` json DEFAULT NULL,
  `avatar_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_kerja_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`, `active`, `theme`, `theme_color`, `satuan_kerja_id`) VALUES (1, 'Administrator', 'admin@admin.com', NULL, '$2y$12$Ou.aOtstu1PIWwr3PrCu/.StVuu23VlYUXYQkk4T9WAgUruGNzwea', NULL, '2024-09-11 09:32:55', '2024-10-06 06:46:23', NULL, NULL, 1, 'default', NULL, 1);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`, `active`, `theme`, `theme_color`, `satuan_kerja_id`) VALUES (2, 'UPTD 1', 'uptd1@app.com', NULL, '$2y$12$Qn6z4EZ4gisnTu9q1lSpEudqpLMr3d3znKeHgwtzNg0YDdsPTqM2a', NULL, '2024-10-06 06:49:15', '2024-10-06 10:40:41', NULL, NULL, NULL, 'default', NULL, 1);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`, `active`, `theme`, `theme_color`, `satuan_kerja_id`) VALUES (3, 'UPTD 2', 'uptd2@app.com', NULL, '$2y$12$u4eQz8Zkh9Sd0T5eSq5r6e9x7FcAJwkDSphx3IhP.4RK/9mgZBH3a', NULL, '2024-10-06 10:48:02', '2024-10-06 10:48:02', NULL, NULL, NULL, 'default', NULL, 2);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `custom_fields`, `avatar_url`, `active`, `theme`, `theme_color`, `satuan_kerja_id`) VALUES (4, 'Bappeda', 'bappeda@gmail.com', NULL, '$2y$12$fDrcel/J.0aWtIiODGBJLuoh0.hkp2TUoOkCu2g4yCrxlSHJTZj/C', NULL, '2024-11-10 13:37:05', '2024-11-10 13:37:05', NULL, NULL, 0, 'default', NULL, 6);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
