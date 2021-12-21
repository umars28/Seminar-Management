-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 21, 2021 at 10:34 AM
-- Server version: 5.7.32
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `seminar_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', 2, 1639967186),
('Super Admin', 1, 1639966585);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`, `group_code`) VALUES
('/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//ajaxcrud', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//controller', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//crud', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//extension', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//form', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//model', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('//module', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/asset/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/asset/compress', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/asset/template', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/cache/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/cache/flush', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/cache/flush-all', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/cache/flush-schema', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/cache/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/education/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/education/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/fixture/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/fixture/load', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/fixture/unload', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/action', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/diff', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/preview', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gii/default/view', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/gridview/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/gridview/export/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/gridview/export/download', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/hello/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/hello/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/help/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/help/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/help/list', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/help/list-action-options', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/help/usage', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/message/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/message/config', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/message/config-template', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/message/extract', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/create', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/down', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/fresh', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/history', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/mark', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/new', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/redo', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/to', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/migrate/up', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/occupation/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/occupation/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/participant/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/serve/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/serve/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/site/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/about', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/captcha', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/contact', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/error', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/login', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/site/logout', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/*', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/auth-item-group/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/bulk-activate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/bulk-deactivate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/grid-page-size', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/grid-sort', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/toggle-attribute', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth-item-group/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/captcha', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/change-own-password', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/auth/confirm-email', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/confirm-email-receive', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/confirm-registration-email', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/login', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/logout', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/password-recovery', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/password-recovery-receive', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/auth/registration', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/bulk-activate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/bulk-deactivate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/grid-page-size', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/grid-sort', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/refresh-routes', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/set-child-permissions', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/set-child-routes', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/toggle-attribute', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/permission/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/bulk-activate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/bulk-deactivate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/grid-page-size', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/grid-sort', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/set-child-permissions', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/set-child-roles', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/toggle-attribute', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/role/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-permission/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-permission/set', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user-permission/set-roles', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user-visit-log/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/bulk-activate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/bulk-deactivate', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/bulk-delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/create', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/delete', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/grid-page-size', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/grid-sort', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/index', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/toggle-attribute', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/update', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user-visit-log/view', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user/*', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user/bulk-activate', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/bulk-deactivate', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/bulk-delete', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/change-password', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/create', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/delete', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/grid-page-size', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/grid-sort', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user/index', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/toggle-attribute', 3, NULL, NULL, NULL, 1639986658, 1639986658, NULL),
('/user-management/user/update', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('/user-management/user/view', 3, NULL, NULL, NULL, 1639963731, 1639963731, NULL),
('Admin', 1, 'Admin', NULL, NULL, 1639963731, 1639963731, NULL),
('assignRolesToUsers', 2, 'Assign roles to users', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('bindUserToIp', 2, 'Bind user to IP', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('changeOwnPassword', 2, 'Change own password', NULL, NULL, 1639963731, 1639963731, 'userCommonPermissions'),
('changeUserPassword', 2, 'Change user password', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('commonPermission', 2, 'Common permission', NULL, NULL, 1639963730, 1639963730, NULL),
('createUsers', 2, 'Create users', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('deleteUsers', 2, 'Delete users', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('editUserEmail', 2, 'Edit user email', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('editUsers', 2, 'Edit users', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('ME', 2, 'Manage Education', NULL, NULL, 1639986836, 1639986836, 'userManagement'),
('MO', 2, 'Manage Occupation', NULL, NULL, 1639986895, 1639986895, 'userManagement'),
('MP', 2, 'Manage Participant', NULL, NULL, 1639986577, 1639986577, 'userManagement'),
('Super Admin', 1, 'Super Admin', NULL, NULL, 1639966533, 1639966533, NULL),
('viewRegistrationIp', 2, 'View registration IP', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('viewUserEmail', 2, 'View user email', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('viewUserRoles', 2, 'View user roles', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('viewUsers', 2, 'View users', NULL, NULL, 1639963731, 1639963731, 'userManagement'),
('viewVisitLog', 2, 'View visit log', NULL, NULL, 1639963731, 1639963731, 'userManagement');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('ME', '/education/*'),
('ME', '/education/bulk-delete'),
('ME', '/education/create'),
('ME', '/education/delete'),
('ME', '/education/index'),
('ME', '/education/update'),
('ME', '/education/view'),
('MO', '/occupation/*'),
('MO', '/occupation/bulk-delete'),
('MO', '/occupation/create'),
('MO', '/occupation/delete'),
('MO', '/occupation/index'),
('MO', '/occupation/update'),
('MO', '/occupation/view'),
('MP', '/participant/*'),
('MP', '/participant/bulk-delete'),
('MP', '/participant/create'),
('MP', '/participant/delete'),
('MP', '/participant/index'),
('MP', '/participant/update'),
('MP', '/participant/view'),
('changeOwnPassword', '/user-management/auth/change-own-password'),
('assignRolesToUsers', '/user-management/user-permission/set'),
('assignRolesToUsers', '/user-management/user-permission/set-roles'),
('editUsers', '/user-management/user/bulk-activate'),
('editUsers', '/user-management/user/bulk-deactivate'),
('deleteUsers', '/user-management/user/bulk-delete'),
('changeUserPassword', '/user-management/user/change-password'),
('createUsers', '/user-management/user/create'),
('deleteUsers', '/user-management/user/delete'),
('viewUsers', '/user-management/user/grid-page-size'),
('viewUsers', '/user-management/user/index'),
('editUsers', '/user-management/user/update'),
('viewUsers', '/user-management/user/view'),
('Super Admin', 'assignRolesToUsers'),
('Super Admin', 'bindUserToIp'),
('Admin', 'changeOwnPassword'),
('Super Admin', 'changeOwnPassword'),
('Super Admin', 'changeUserPassword'),
('Super Admin', 'createUsers'),
('Super Admin', 'deleteUsers'),
('Super Admin', 'editUserEmail'),
('Super Admin', 'editUsers'),
('Admin', 'ME'),
('Admin', 'MO'),
('Admin', 'MP'),
('Super Admin', 'viewRegistrationIp'),
('editUserEmail', 'viewUserEmail'),
('Super Admin', 'viewUserEmail'),
('assignRolesToUsers', 'viewUserRoles'),
('Super Admin', 'viewUserRoles'),
('assignRolesToUsers', 'viewUsers'),
('changeUserPassword', 'viewUsers'),
('createUsers', 'viewUsers'),
('deleteUsers', 'viewUsers'),
('editUsers', 'viewUsers'),
('Super Admin', 'viewUsers'),
('Super Admin', 'viewVisitLog');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_group`
--

CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_group`
--

INSERT INTO `auth_item_group` (`code`, `name`, `created_at`, `updated_at`) VALUES
('userCommonPermissions', 'User common permission', 1639963731, 1639963731),
('userManagement', 'User management', 1639963731, 1639963731);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`) VALUES
(6, 'SD'),
(7, 'SMP'),
(8, 'SMA'),
(9, 'D3'),
(10, 'D4'),
(11, 'S1'),
(12, 'S2'),
(14, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1639963723),
('m140608_173539_create_user_table', 1639963729),
('m140611_133903_init_rbac', 1639963729),
('m140808_073114_create_auth_item_group_table', 1639963729),
('m140809_072112_insert_superadmin_to_user', 1639963730),
('m140809_073114_insert_common_permisison_to_auth_item', 1639963730),
('m141023_141535_create_user_visit_log', 1639963730),
('m141116_115804_add_bind_to_ip_and_registration_ip_to_user', 1639963730),
('m141121_194858_split_browser_and_os_column', 1639963731),
('m141201_220516_add_email_and_email_confirmed_to_user', 1639963731),
('m141207_001649_create_basic_user_permissions', 1639963731);

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `name`) VALUES
(4, 'Programmer'),
(5, 'Guru'),
(6, 'Dosen'),
(7, 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `education_id` int(11) NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `address` text,
  `birth_date` date DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`id`, `name`, `email`, `phone`, `education_id`, `occupation_id`, `address`, `birth_date`, `sex`) VALUES
(5, 'Umar', 'umarsabirin@fairtech.com.sg', '08361232323', 7, 4, '', '2021-12-20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `superadmin` smallint(6) DEFAULT '0',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `registration_ip` varchar(15) DEFAULT NULL,
  `bind_to_ip` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `email_confirmed` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `confirmation_token`, `status`, `superadmin`, `created_at`, `updated_at`, `registration_ip`, `bind_to_ip`, `email`, `email_confirmed`) VALUES
(1, 'superadmin', 'KZEXnmNkKbqK_Mu9Ru5hM8OkidAtMs-h', '$2y$13$wse5O5CJRt6.21.5QoC.lOhFHqgTgTfe/SN5whKZWx6EJXI.fs47G', NULL, 1, 1, 1639963730, 1639963730, NULL, NULL, NULL, 0),
(2, 'umar', 'pGoSKaTscdmBxL2xNwlSGo80_7xk_GQK', '$2y$13$PexYaZ9ovE91P4iozg7NXu/jApLo1xTj0fzUx6N5RD66WYAZhoaRa', NULL, 1, 0, 1639967186, 1639967186, '::1', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_visit_log`
--

CREATE TABLE `user_visit_log` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `language` char(2) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visit_time` int(11) NOT NULL,
  `browser` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_visit_log`
--

INSERT INTO `user_visit_log` (`id`, `token`, `ip`, `language`, `user_agent`, `user_id`, `visit_time`, `browser`, `os`) VALUES
(1, '61bfe5c375404', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639966147, 'Chrome', 'mac'),
(2, '61bfe70749640', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639966471, 'Chrome', 'mac'),
(3, '61bfe9d25648e', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639967186, 'Chrome', 'mac'),
(4, '61bfe9f555bc8', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639967221, 'Chrome', 'mac'),
(5, '61bfeb4189f44', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639967553, 'Chrome', 'mac'),
(6, '61bfeca857130', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639967912, 'Chrome', 'mac'),
(7, '61bfece229aae', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639967970, 'Chrome', 'mac'),
(8, '61bfedd11a3e4', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639968209, 'Chrome', 'mac'),
(9, '61bfedde0e822', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639968222, 'Chrome', 'mac'),
(10, '61bfedf8ab66e', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, 1639968248, 'Chrome', 'mac'),
(11, '61bfee1470e87', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, 1639968276, 'Chrome', 'mac'),
(12, '61bfee2f8b98c', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639968303, 'Chrome', 'mac'),
(13, '61bff032aa3ae', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639968818, 'Chrome', 'mac'),
(14, '61bff048d5977', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, 1639968840, 'Chrome', 'mac'),
(15, '61bff0593c4e9', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639968857, 'Chrome', 'mac'),
(16, '61c012d3b4230', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639977683, 'Chrome', 'mac'),
(17, '61c013ada7a2f', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639977901, 'Chrome', 'mac'),
(18, '61c0140aad60c', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639977994, 'Chrome', 'mac'),
(19, '61c0356de4464', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639986541, 'Chrome', 'mac'),
(20, '61c035d1c56da', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639986641, 'Chrome', 'mac'),
(21, '61c03664f3a13', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639986788, 'Chrome', 'mac'),
(22, '61c036843ed53', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639986820, 'Chrome', 'mac'),
(23, '61c038685511f', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, 1639987304, 'Chrome', 'mac'),
(24, '61c0388ba85d0', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', NULL, 1639987339, 'Chrome', 'mac'),
(25, '61c038b32b279', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639987379, 'Chrome', 'mac'),
(26, '61c0396ec92f1', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639987566, 'Chrome', 'mac'),
(27, '61c03d8a19bb1', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639988618, 'Chrome', 'mac'),
(28, '61c03dabd5b82', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639988651, 'Chrome', 'mac'),
(29, '61c03de67f4e9', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1639988710, 'Chrome', 'mac'),
(30, '61c03e88e320f', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1639988872, 'Chrome', 'mac'),
(31, '61c1314fbcadc', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1640051023, 'Chrome', 'mac'),
(32, '61c1317604d0e', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640051062, 'Chrome', 'mac'),
(33, '61c131c815473', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1640051144, 'Chrome', 'mac'),
(34, '61c14aaa6bf61', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640057514, 'Chrome', 'mac'),
(35, '61c15003303d8', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1640058883, 'Chrome', 'mac'),
(36, '61c15ecb30e5f', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640062667, 'Chrome', 'mac'),
(37, '61c162a93de02', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640063657, 'Chrome', 'mac'),
(38, '61c16323b2c1d', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640063779, 'Chrome', 'mac'),
(39, '61c19d408134d', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 1, 1640078656, 'Chrome', 'mac'),
(40, '61c19eec5d1cc', '::1', 'en', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 2, 1640079084, 'Chrome', 'mac');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`),
  ADD KEY `fk_auth_item_group_code` (`group_code`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_item_group`
--
ALTER TABLE `auth_item_group`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_participant_education_idx` (`education_id`),
  ADD KEY `fk_participant_occupation_idx` (`occupation_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_auth_item_group_code` FOREIGN KEY (`group_code`) REFERENCES `auth_item_group` (`code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `fk_participant_education` FOREIGN KEY (`education_id`) REFERENCES `education` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_participant_occupation` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_visit_log`
--
ALTER TABLE `user_visit_log`
  ADD CONSTRAINT `user_visit_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
