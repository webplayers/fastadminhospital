-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-03-21 08:21:56
-- 服务器版本： 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastadmin`
--

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin`
--

CREATE TABLE `fa_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(59) NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_admin`
--

INSERT INTO `fa_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `loginfailure`, `logintime`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', 'admin1', 's4f3', '/uploads/20180320/ed4a3d6abce3a65d9718de94ea8952f1.png', 'admin@chuangxin.net', 0, 1521602690, 1492186163, 1521602690, 'ac8bc39a-07dd-4843-81e7-f70a0c198fe3', 'normal'),
(6, 'admin11', 'zhuren', 'admin1', '7KAor0', '/assets/img/avatar.png', 'amytang@goliebao.com', 0, 1521607369, 1521529928, 1521607369, '88dc0ff8-cdcf-4072-bcc1-d4bb69c9f8a8', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_admin_log`
--

CREATE TABLE `fa_admin_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text NOT NULL COMMENT '内容',
  `ip` varchar(50) NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员日志表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_admin_log`
--

INSERT INTO `fa_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1317, 2, 'admin2', '/houtai/mobanadmin/hospital/public/admin/index/login.html', '登录', '{"__token__":"501d08699b685647329ad7db4baca698","username":"admin2"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 1520915983),
(1318, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916178),
(1319, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/auth/group/roletree', '', '{"id":"4","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916190),
(1320, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/auth/group/edit/ids/4?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84","pid":"1","name":"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec42","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916205),
(1321, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/upload', '', '{"name":"35f4a2032e4cff07dd2585dd105f2ced.jpg"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916347),
(1322, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/upload', '', '{"name":"\\u957f\\u53d1\\u7f8e\\u5c11\\u5973\\u7948\\u7977\\u4e8c\\u6b21\\u5143\\u52a8\\u6f2b4k\\u58c1\\u7eb8_\\u5f7c\\u5cb8\\u56fe\\u7f51.jpg"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916379),
(1323, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/upload', '', '{"name":"16100G10R7-1.jpg"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520916386),
(1324, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/weigh', '', '{"ids":"4,2,11,10,9,12,1,3,7,6,5,8","changeid":"2","pid":"0","field":"weigh","orderway":"desc","table":"user_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520924551),
(1325, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/weigh', '', '{"ids":"2,11,4,10,9,12,1,3,7,6,5,8","changeid":"4","pid":"2","field":"weigh","orderway":"desc","table":"user_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520924568),
(1326, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/ajax/weigh', '', '{"ids":"1,2,6,8,7,3,5,9,10,11,12,4,66,67,73,79","changeid":"7","pid":"2","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520924628),
(1327, 1, 'admin', '/houtai/mobanadmin/hospital/public/admin/user/user/edit/ids/1?dialog=1', '会员管理 会员管理 编辑', '{"dialog":"1","row":{"group_id":"1","username":"admin","nickname":"admin","password":"","email":"admin@163.com","mobile":"13888888888","avatar":"\\/uploads\\/20180313\\/d5408850893fe5e477dde9571b77e258.jpg","level":"0","gender":"0","birthday":"2017-04-15","bio":"","score":"0","successions":"1","maxsuccessions":"1","prevtime":"2018-01-17 14:28:12","logintime":"2018-01-17 14:46:54","loginip":"127.0.0.1","loginfailure":"0","joinip":"127.0.0.1","jointime":"2017-04-06 14:50:18","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1520929076),
(1328, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '登录', '{"__token__":"c59f94dcb5bedf4b4e118fd43c67131b","username":"admin","keeplogin":"1"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 1521511888),
(1329, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"1,4,66,67,73,79,5,12,11,10,9,3,2,8,7,6","changeid":"1","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 1521513349),
(1330, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"addon","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-rocket","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', 1521513497),
(1331, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/17', '', '{"action":"","ids":"17","params":"ismenu=1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514300),
(1332, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/15', '', '{"action":"","ids":"15","params":"ismenu=1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514332),
(1333, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/4', '', '{"action":"","ids":"4","params":"ismenu=0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514368),
(1334, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/4', '', '{"action":"","ids":"4","params":"ismenu=1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514379),
(1335, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"#","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-rocket","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514492),
(1336, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"user","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-rocket","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514501),
(1337, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"users","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-rocket","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514505),
(1338, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/17', '', '{"action":"","ids":"17","params":"ismenu=0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514608),
(1339, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/15', '', '{"action":"","ids":"15","params":"ismenu=0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514613),
(1340, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/17,15,16,14,13', '权限管理 规则管理 删除', '{"action":"del","ids":"17,15,16,14,13","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514672),
(1341, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521514991),
(1342, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/55,56,57,58,59,60,61,62,63,64,65,38', '权限管理 规则管理 删除', '{"action":"del","ids":"55,56,57,58,59,60,61,62,63,64,65,38","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515131),
(1343, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/66?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"user","title":"\\u4eba\\u5458\\u7ba1\\u7406","icon":"fa fa-list","weigh":"33","condition":"","remark":"","status":"normal"},"ids":"66"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515190),
(1344, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/67?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"66","name":"user\\/user","title":"\\u4eba\\u5458\\u7ba1\\u7406","icon":"fa fa-user","weigh":"71","condition":"","remark":"","status":"normal"},"ids":"67"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515204),
(1345, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/rule/del/ids/1,3,7,6,5,8', '人员管理 会员规则 删除', '{"action":"del","ids":"1,3,7,6,5,8","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515262),
(1346, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"users","title":"\\u8003\\u52e4\\u7ba1\\u7406","icon":"fa fa-address-card-o","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515550),
(1347, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/4?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"kaoqing","title":"\\u8003\\u52e4\\u7ba1\\u7406","icon":"fa fa-address-card-o","weigh":"72","condition":"","remark":"Addon tips","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515565),
(1348, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/1?dialog=1', '人员管理 会员分组 编辑', '{"dialog":"1","row":{"rules":"9,10,11,12,4,2","name":"\\u7ec4\\u7ec7\\u79d1","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515846),
(1349, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 会员分组 添加', '{"dialog":"1","row":{"rules":"2,4,9,10,11,12","name":"\\u79d1\\u6559\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515857),
(1350, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/category/del/ids/13,12', '', '{"action":"del","ids":"13,12","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521515968),
(1351, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/upload', '', '{"name":"\\u95ee\\u9898\\u70b9.txt"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516059),
(1352, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment/del/ids/4', '常规管理 附件管理 删除', '{"action":"del","ids":"4","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516086),
(1353, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment/del/ids/3', '常规管理 附件管理 删除', '{"action":"del","ids":"3","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516091),
(1354, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment/del/ids/2', '常规管理 附件管理 删除', '{"action":"del","ids":"2","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516093),
(1355, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/upload', '', '{"name":"\\u5de5\\u4f5c\\u7c3f1.xlsx"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516117),
(1356, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment?addtabs=1', '常规管理 附件管理 查看', '{"addtabs":"1","file":"\\/uploads\\/20180320\\/b044954979a5c39e00dd102ad3bc70cf.xlsx"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516117),
(1357, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/upload', '', '{"name":"user2-160x160.jpg.png"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516307),
(1358, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/upload', '', '{"name":"user2-160x160.jpg.png"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516321),
(1359, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment/del/ids/6', '常规管理 附件管理 删除', '{"action":"del","ids":"6","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516332),
(1360, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general/attachment/del/ids/5', '常规管理 附件管理 删除', '{"action":"del","ids":"5","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521516345),
(1361, 2, 'admin2', '/houtai/mobanadmin/fastadmin/public/admin.php/general.config/edit', '常规管理 系统配置 编辑', '{"row":{"name":"\\u533b\\u9662\\u4eba\\u4e8b\\u7ba1\\u7406\\u7cfb\\u7edf","beian":"\\u7ca4ICP\\u590715012502\\u53f7","cdnurl":"","version":"1.0.1","timezone":"Asia\\/Shanghai","forbiddenip":"","languages":{"field":{"backend":"backend","frontend":"frontend"},"value":{"backend":"zh-cn","frontend":"zh-cn"}},"fixedpage":"dashboard"}}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517701),
(1362, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517742),
(1363, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"5","pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517801),
(1364, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/5?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,2,4,6,7,8,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34","pid":"2","name":"\\u4e09\\u7ea7\\u7ba1\\u7406\\u7ec42","status":"normal"},"ids":"5"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517812),
(1365, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"4","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517818),
(1366, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/4?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,68,69,70,71,72,74,75,76,77,78,80,81,82,83,84,67,73,79,66","pid":"1","name":"\\u4e8c\\u7ea7\\u7ba1\\u7406\\u7ec42","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517821),
(1367, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/edit/ids/2?dialog=1', '权限管理 管理员管理 编辑', '{"dialog":"1","group":["2"],"row":{"username":"admin2","email":"admin2@fastadmin.net","nickname":"admin2","password":"","status":"normal"},"ids":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517833),
(1368, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/2', '权限管理 角色组 删除', '{"action":"del","ids":"2","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517930),
(1369, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/2,3,5,4', '权限管理 角色组 删除', '{"action":"del","ids":"2,3,5,4","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517946),
(1370, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/3,5', '权限管理 角色组 删除', '{"action":"del","ids":"3,5","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517958),
(1371, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"3","pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517965),
(1372, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/2', '权限管理 角色组 删除', '{"action":"del","ids":"2","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517973),
(1373, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517985),
(1374, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521517991),
(1375, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518037),
(1376, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,50,49,48,47,46,45,44,43,42,41,40,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,8,6,7,2,11,10,9,5","pid":"1","name":"\\u9662\\u957f\\u5ba4","status":"normal"},"ids":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518059),
(1377, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518075),
(1378, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"3","pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518080),
(1379, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/3?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,50,49,48,47,46,45,44,43,42,41,40,11,10,9,5","pid":"2","name":"\\u526f\\u9662\\u957f","status":"normal"},"ids":"3"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518084),
(1380, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '登录', '{"__token__":"762864ae0e70b7a629b5b5b5bdaf4212","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518115),
(1381, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"5","pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518127),
(1382, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/5?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,8,6,7,2","pid":"2","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"5"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518134),
(1383, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"3","pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518144),
(1384, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/edit/ids/5?dialog=1', '权限管理 管理员管理 编辑', '{"dialog":"1","group":["5"],"row":{"username":"admin32","email":"admin32@chuagnxin.net","nickname":"admin32","password":"","status":"normal"},"ids":"5"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518182),
(1385, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/edit/ids/4?dialog=1', '权限管理 管理员管理 编辑', '{"dialog":"1","group":["5"],"row":{"username":"admin22","email":"admin22@chuagnxin.net","nickname":"admin22","password":"","status":"normal"},"ids":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518188),
(1386, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/edit/ids/3?dialog=1', '权限管理 管理员管理 编辑', '{"dialog":"1","group":["3"],"row":{"username":"admin3","email":"admin3@chuagnxin.net","nickname":"admin3","password":"","status":"normal"},"ids":"3"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518196),
(1387, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/edit/ids/2?dialog=1', '权限管理 管理员管理 编辑', '{"dialog":"1","group":["2"],"row":{"username":"admin2","email":"admin2@chuagnxin.net","nickname":"admin2","password":"","status":"normal"},"ids":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518203),
(1388, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '登录', '{"__token__":"41b02ed14a242baebe944ebece1669ad","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518372),
(1389, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/70', '', '{"action":"","ids":"70","params":"ismenu=1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518864),
(1390, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/multi/ids/70', '', '{"action":"","ids":"70","params":"ismenu=0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521518933),
(1391, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/73?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"66","name":"user\\/group","title":"\\u79d1\\u5ba4\\u7ba1\\u7406","icon":"fa fa-users","weigh":"65","condition":"","remark":"","status":"normal"},"ids":"73"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519020),
(1392, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/rule/del/ids/2,4,11,10,9,12', '人员管理 会员规则 删除', '{"action":"del","ids":"2,4,11,10,9,12","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519111),
(1393, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/rule/add/ids/0?dialog=1', '人员管理 会员规则 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"daka","title":"\\u8bf7\\u4f11\\u5047\\u5ba1\\u6279","remark":"\\u8bf7\\u4f11\\u5047\\u5ba1\\u6279","weigh":"0","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519207),
(1394, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/rule/add/ids/0?dialog=1', '人员管理 会员规则 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"kaoqin","title":"\\u8003\\u52e4\\u7ba1\\u7406","remark":"","weigh":"0","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519234),
(1395, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/general.config/edit', '常规管理 系统配置 编辑', '[]', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519813),
(1396, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/upload', '', '{"name":"user2-160x160.jpg.png"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519897),
(1397, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/user/edit/ids/1?dialog=1', '人员管理 人员管理 编辑', '{"dialog":"1","row":{"group_id":"1","username":"admin","nickname":"admin","password":"","email":"admin@163.com","mobile":"13888888888","avatar":"\\/uploads\\/20180320\\/ed4a3d6abce3a65d9718de94ea8952f1.png","level":"0","gender":"0","birthday":"2017-04-15","bio":"","score":"0","successions":"1","maxsuccessions":"1","prevtime":"2018-01-17 14:46:54","logintime":"2018-03-20 12:20:43","loginip":"0.0.0.0","loginfailure":"0","joinip":"127.0.0.1","jointime":"2017-04-06 14:50:18","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521519899),
(1398, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/79?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"66","name":"user\\/rule","title":"\\u4eba\\u5458\\u6743\\u9650","icon":"fa fa-circle-o","weigh":"59","condition":"","remark":"","status":"normal"},"ids":"79"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520049),
(1399, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/1?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"13,14","name":"\\u7ec4\\u7ec7\\u79d1","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520099),
(1400, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/2?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"13,14","name":"\\u79d1\\u6559\\u79d1","status":"normal"},"ids":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520105),
(1401, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/1?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"13,14","name":"\\u7ec4\\u7ec7\\u79d1","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520110),
(1402, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/1?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-dashboard","weigh":"84","condition":"","remark":"Dashboard tips","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520226),
(1403, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/1?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-dashboard","weigh":"84","condition":"","remark":"Dashboard tips","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520229),
(1404, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/1?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-dashboard","weigh":"84","condition":"","remark":"Dashboard tips","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520229),
(1405, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/79', '权限管理 规则管理 删除', '{"action":"del","ids":"79","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520613),
(1406, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u540e\\u52e4\\u90e8","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521520759),
(1407, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/del/ids/3,2,1', '人员管理 科室管理 删除', '{"action":"del","ids":"3,2,1","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521434),
(1408, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u9662\\u957f","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521448),
(1409, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521457),
(1410, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/del/ids/4', '人员管理 科室管理 删除', '{"action":"del","ids":"4","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521464),
(1411, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u526f\\u9662\\u957f","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521471),
(1412, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u6863\\u6848\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521477),
(1413, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u515a\\u59d4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521483),
(1414, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u56e2\\u59d4\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521496),
(1415, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5ba3\\u4f20\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521508),
(1416, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4fdd\\u536b\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521515),
(1417, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u79d1\\u6559\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521525),
(1418, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u533b\\u4fdd\\u529e","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521531),
(1419, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4fdd\\u5065\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521535),
(1420, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u62a4\\u7406\\u90e8\\u4e3b\\u4efb","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521548),
(1421, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5916\\u79d1\\u603b\\u62a4\\u58eb\\u957f","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521557),
(1422, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5185\\u79d1\\u603b\\u62a4\\u58eb\\u957f","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521564),
(1423, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5de5\\u4f1a","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521573),
(1424, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u52b3\\u52a8\\u5de5\\u8d44\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521583),
(1425, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u7ec4\\u7ec7\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521589),
(1426, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u804c\\u6539\\u529e","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521600),
(1427, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u75c5\\u6848\\u7edf\\u8ba1\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521607),
(1428, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u56fe\\u4e66\\u9986","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521611),
(1429, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u8d22\\u52a1\\u5904","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521616),
(1430, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u603b\\u52a1\\u5904","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521638),
(1431, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u8bbe\\u5907\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521685),
(1432, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u57fa\\u5efa\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521729),
(1433, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u529f\\u80fd\\u533b\\u6280\\u79d1\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521739),
(1434, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u95e8\\u8bca\\u68c0\\u9a8c","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521748),
(1435, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u68c0\\u9a8c\\u79d1\\uff08\\u75c5\\u623f\\u68c0\\u9a8c\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521777),
(1436, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/29?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u68c0\\u9a8c\\u79d1\\uff08\\u95e8\\u8bca\\u68c0\\u9a8c\\uff09","status":"normal"},"ids":"29"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521788),
(1437, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u75c5\\u7406\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521801),
(1438, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5f71\\u50cf\\u5b66","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521807),
(1439, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u81b3\\u98df\\u8425\\u517b\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521819),
(1440, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u95e8\\u8bca\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521856),
(1441, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u6025\\u8bca\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521864),
(1442, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4f4f\\u9662\\u90e8","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521873),
(1443, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u795e\\u7ecf\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521885),
(1444, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u7532\\u4e73\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521894),
(1445, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80f8\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521901),
(1446, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5fc3\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521907),
(1447, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u809d\\u80c6\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521915),
(1448, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80c3\\u80a0\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521923),
(1449, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u6ccc\\u5c3f\\u5916\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521931),
(1450, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u76ae\\u80a4\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521958),
(1451, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/37?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u795e\\u7ecf\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"37"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521969),
(1452, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/38?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u7532\\u4e73\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"38"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521973),
(1453, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/39?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u80f8\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"39"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521976),
(1454, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/40?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u5fc3\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"40"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521979),
(1455, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/41?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u809d\\u80c6\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"41"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521982),
(1456, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/42?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u80c3\\u80a0\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"42"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521984),
(1457, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/edit/ids/43?dialog=1', '人员管理 科室管理 编辑', '{"dialog":"1","row":{"rules":"","name":"\\u6ccc\\u5c3f\\u5916\\u79d1\\uff08\\u5916\\u79d1\\uff09","status":"normal"},"ids":"43"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521521987);
INSERT INTO `fa_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1458, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u8840\\u6db2\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522009),
(1459, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u6d88\\u5316\\u5185\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522017),
(1460, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u795e\\u7ecf\\u5185\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522023),
(1461, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80be\\u5185\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522038),
(1462, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u547c\\u5438\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522042),
(1463, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4f20\\u67d3\\u75c5\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522050),
(1464, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80a0\\u9053\\u79d1\\uff08\\u5185\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522058),
(1465, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u53e3\\u8154\\u5185\\u79d1\\uff08\\u53e3\\u8154\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522076),
(1466, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u53e3\\u8154\\u5916\\u79d1\\uff08\\u53e3\\u8154\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522086),
(1467, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4e94\\u5b98\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522093),
(1468, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u773c\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522097),
(1469, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u5987\\u79d1\\uff08\\u5987\\u4ea7\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522108),
(1470, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4ea7\\u79d1\\uff08\\u5987\\u4ea7\\u79d1\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522118),
(1471, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u513f\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522124),
(1472, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80bf\\u7624\\u653e\\u7597\\u79d1\\uff08\\u80bf\\u7624\\u79d1\\u4e2d\\u5fc3\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522139),
(1473, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u80bf\\u7624\\u5316\\u7597\\u79d1\\uff08\\u80bf\\u7624\\u79d1\\u4e2d\\u5fc3\\uff09","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522157),
(1474, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u7f8e\\u5bb9\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522167),
(1475, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4f53\\u68c0","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522171),
(1476, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u9aa8\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522176),
(1477, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4e2d\\u533b\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522181),
(1478, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4f20\\u67d3\\u75c5\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522186),
(1479, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u836f\\u5242\\u79d1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522191),
(1480, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u4e2d\\u5fc3\\u4f9b\\u5e94\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522201),
(1481, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '人员管理 科室管理 添加', '{"dialog":"1","row":{"rules":"","name":"\\u624b\\u672f\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521522205),
(1482, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526290),
(1483, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526300),
(1484, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526308),
(1485, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"5"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526311),
(1486, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526312),
(1487, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526461),
(1488, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"4"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526463),
(1489, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/add/ids/0?dialog=1', '权限管理 角色组 添加', '{"dialog":"1","row":{"rules":"1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,3,39,37,36,35,2","pid":"4","name":"\\u6863\\u6848\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521526486),
(1490, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521528999),
(1491, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/2?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,3,39,37,36,35,2","pid":"1","name":"\\u9662\\u957f\\u5ba4","status":"normal"},"ids":"2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529005),
(1492, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529008),
(1493, 0, 'Unknown', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '', '{"__token__":"2310e6385abdb08e440a5606113d277b","username":"admin2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529101),
(1494, 2, 'admin2', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '登录', '{"__token__":"45fdc2e6f24a5a1910b3ca6ff50e8be0","username":"admin2"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529114),
(1495, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529337),
(1496, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"2","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529641),
(1497, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/5', '权限管理 角色组 删除', '{"action":"del","ids":"5","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529660),
(1498, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/del/ids/3', '权限管理 角色组 删除', '{"action":"del","ids":"3","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529669),
(1499, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"4,1,66,67,68,69,70,71,72,73,74,75,76,77,78,5,12,54,53,52,51,11,50,49,48,47,10,46,45,44,9,43,42,41,40,3,39,37,36,35,2,8,34,33,32,31,30,29,7,28,27,26,25,24,23,6,22,21,20,19,18","changeid":"4","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529708),
(1500, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"1,4,66,67,68,69,70,71,72,73,74,75,76,77,78,5,12,54,53,52,51,11,50,49,48,47,10,46,45,44,9,43,42,41,40,3,39,37,36,35,2,8,34,33,32,31,30,29,7,28,27,26,25,24,23,6,22,21,20,19,18","changeid":"4","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529721),
(1501, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529847),
(1502, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529852),
(1503, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/add/ids/0?dialog=1', '权限管理 角色组 添加', '{"dialog":"1","row":{"rules":"","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529864),
(1504, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/admin/add/ids/0?dialog=1', '权限管理 管理员管理 添加', '{"dialog":"1","group":["7"],"row":{"username":"admin11","email":"amytang@goliebao.com","nickname":"zhuren","password":"admin1","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521529928),
(1505, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530153),
(1506, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530157),
(1507, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530199),
(1508, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,3,39,37,36,35,2","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530201),
(1509, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530317),
(1510, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,8,6,7,2,12,11,10,9,5,3","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530321),
(1511, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530377),
(1512, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"recruit","title":"\\u62db\\u8058\\u7ba1\\u7406","icon":"fa fa-address-book","weigh":"0","condition":"","remark":"\\u62db\\u8058\\u7ba1\\u7406","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530747),
(1513, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"85,1,4,66,67,68,69,70,71,72,73,74,75,76,77,78,5,12,54,53,52,51,11,50,49,48,47,10,46,45,44,9,43,42,41,40,3,39,37,36,35,2,8,34,33,32,31,30,29,7,28,27,26,25,24,23,6,22,21,20,19,18","changeid":"85","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530766),
(1514, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"1,4,66,67,68,69,70,71,72,73,74,75,76,77,78,5,12,54,53,52,51,11,50,49,48,47,10,46,45,44,9,43,42,41,40,3,39,37,36,35,2,8,34,33,32,31,30,29,7,28,27,26,25,24,23,6,22,21,20,19,18,85","changeid":"85","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521530830),
(1515, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/85?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"recruit","title":"\\u62db\\u8058\\u7ba1\\u7406","icon":"fa fa-address-book","weigh":"2","condition":"","remark":"\\u62db\\u8058\\u7ba1\\u7406","status":"normal"},"ids":"85"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531013),
(1516, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"training","title":"\\u57f9\\u8bad\\u7ba1\\u7406","icon":"fa fa-bar-chart-o","weigh":"3","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531091),
(1517, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"performance","title":"\\u6548\\u7ee9\\u7ba1\\u7406","icon":"fa fa-dot","weigh":"5","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531137),
(1518, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"contract","title":"\\u5408\\u540c\\u7ba1\\u7406","icon":"fa fa-dot","weigh":"6","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531183),
(1519, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/87?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"performance","title":"\\u6548\\u7ee9\\u7ba1\\u7406","icon":"fa fa-bank","weigh":"5","condition":"","remark":"","status":"normal"},"ids":"87"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531209),
(1520, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/88?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"contract","title":"\\u5408\\u540c\\u7ba1\\u7406","icon":"fa fa-newspaper-o","weigh":"6","condition":"","remark":"","status":"normal"},"ids":"88"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531240),
(1521, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"arrangement","title":"\\u4eba\\u4e8b\\u4e8b\\u7269","icon":"fa fa-jsfiddle","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531494),
(1522, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/89?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"arrangement","title":"\\u4eba\\u4e8b\\u4e8b\\u7269","icon":"fa fa-jsfiddle","weigh":"7","condition":"","remark":"","status":"normal"},"ids":"89"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531515),
(1523, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"archives","title":"\\u4eba\\u4e8b\\u6863\\u6848","icon":"fa fa-files-o","weigh":"0","condition":"","remark":"\\u4eba\\u4e8b\\u6863\\u6848","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531617),
(1524, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/90?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"archives","title":"\\u4eba\\u4e8b\\u6863\\u6848","icon":"fa fa-files-o","weigh":"8","condition":"","remark":"\\u4eba\\u4e8b\\u6863\\u6848","status":"normal"},"ids":"90"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531635),
(1525, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"payment","title":"\\u85aa\\u916c\\u7ba1\\u7406","icon":"fa fa-money","weigh":"8","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521531689),
(1526, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/user/multi/ids/1', '人员管理 人员管理 批量更新', '{"ids":"1","params":"status=hidden"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521534654),
(1527, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/user/multi/ids/1', '人员管理 人员管理 批量更新', '{"ids":"1","params":"status=normal"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521534659),
(1528, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login.html', '登录', '{"__token__":"5941f7387103fcc0e2c11fd4fc35c779","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 1521597559),
(1529, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login', '登录', '{"__token__":"9bcb11e31c5e1d066f71c47ada3c01d4","username":"admin"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0', 1521599643),
(1530, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/index/login.html', '登录', '{"__token__":"fa38f0d58e8747081fd76416abd34736","username":"admin"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521602691),
(1531, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521602807),
(1532, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"90","name":"renshidangan","title":"\\u7f16\\u8f91","icon":"fa fa-dot","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521602924),
(1533, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521602948),
(1534, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603029),
(1535, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,90,91,3,89,39,88,87,37,36,86,35,85,2,92","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603032),
(1536, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603035),
(1537, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,90,91,3,89,39,88,87,37,36,86,35,85,2,92","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603039),
(1538, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603041),
(1539, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-address-book","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603184),
(1540, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/1?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboards","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-dashboard","weigh":"84","condition":"","remark":"Dashboard tips","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603192),
(1541, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"110","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603223),
(1542, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603240),
(1543, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"2,3,5,6,7,8,9,10,11,12,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,93","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603248),
(1544, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/93?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"person","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"110","condition":"","remark":"","status":"normal"},"ids":"93"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603431),
(1545, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603468),
(1546, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"93,1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,90,91,3,89,39,88,87,37,36,86,35,85,2,92","pid":"1","name":"\\u9662\\u957f\\u529e\\u516c\\u5ba4","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603473),
(1547, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603478),
(1548, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"93,1,4,68,69,70,71,72,74,75,76,77,78,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,92,91,39,37,36,35,89,88,87,86,85,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,67,73,66,8,6,7,2,12,11,10,9,5,3,90","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603485),
(1549, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/93?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"person","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"110","condition":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","remark":"","status":"normal"},"ids":"93"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603562),
(1550, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/93', '权限管理 规则管理 删除', '{"action":"del","ids":"93","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603639),
(1551, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603645),
(1552, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"68,69,70,71,72,74,75,76,77,78,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,92,91,39,37,36,35,89,88,87,86,85,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,67,73,66,8,6,7,2,12,11,10,9,5,3,90","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603649),
(1553, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"person","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-life-saver","weigh":"0","condition":"","remark":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603718),
(1554, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603729),
(1555, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"2,3,5,6,7,8,9,10,11,12,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,94","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603733),
(1556, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/66?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"user\\/index","title":"\\u4eba\\u5458\\u7ba1\\u7406","icon":"fa fa-list","weigh":"33","condition":"","remark":"","status":"normal"},"ids":"66"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521603804),
(1557, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/94?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"person\\/persn","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-life-saver","weigh":"110","condition":"","remark":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","status":"normal"},"ids":"94"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521604052),
(1558, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605289),
(1559, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605295),
(1560, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"94,1,4,67,68,69,70,71,72,73,74,75,76,77,78,34,33,32,31,30,29,8,22,21,20,19,18,7,28,27,26,25,24,23,6,66,54,53,52,51,12,50,49,48,47,11,46,45,44,10,43,42,41,40,9,5,90,91,3,89,39,88,87,37,36,86,35,85,2,92","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605299),
(1561, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605302),
(1562, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"94,68,69,70,71,72,74,75,76,77,78,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,92,91,39,37,36,35,89,88,87,86,85,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,67,73,66,8,6,7,2,12,11,10,9,5,3,90","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605314),
(1563, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/94?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"user\\/persns","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-life-saver","weigh":"110","condition":"","remark":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","status":"normal"},"ids":"94"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605343),
(1564, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"1,4,66,94,67,73,5,12,54,53,52,51,11,50,49,48,47,10,46,45,44,9,43,42,41,40,90,92,91,3,39,37,36,35,89,88,87,86,85,2,8,34,33,32,31,30,29,7,28,27,26,25,24,23,6,22,21,20,19,18","changeid":"94","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605403),
(1565, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/94?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"66","name":"user\\/persns","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-life-saver","weigh":"1","condition":"","remark":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","status":"normal"},"ids":"94"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605453),
(1566, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/94', '权限管理 规则管理 删除', '{"action":"del","ids":"94","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605754),
(1567, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/1?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"dashboard","title":"\\u4e3b\\u83dc\\u5355","icon":"fa fa-dashboard","weigh":"110","condition":"","remark":"Dashboard tips","status":"normal"},"ids":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605819),
(1568, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/ajax/weigh', '', '{"ids":"1,5,2,23,24,25,26,27,28,29,30,31,32,33,34,85,86,87,88,3,35,36,37,39,89,90,92,91,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,66,73,78,77,76,75,74,67,72,71,70,69,68,4","changeid":"5","pid":"0","field":"weigh","orderway":"desc","table":"auth_rule"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605866),
(1569, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/5?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"auth","title":"\\u6743\\u9650\\u7ba1\\u7406","icon":"fa fa-group","weigh":"99","condition":"","remark":"","status":"normal"},"ids":"5"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605916),
(1570, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"persons\\/persons","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605962),
(1571, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/95?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"persons\\/persons","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"100","condition":"","remark":"","status":"normal"},"ids":"95"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521605981),
(1572, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/95?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"peoples\\/peoples","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"100","condition":"","remark":"","status":"normal"},"ids":"95"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606022),
(1573, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606099),
(1574, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"2,3,5,6,7,8,9,10,11,12,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,95","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606105),
(1575, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/add/ids/0?dialog=1', '权限管理 规则管理 添加', '{"dialog":"1","row":{"ismenu":"1","pid":"95","name":"persons\\/persons","title":"\\u9662\\u7cfb\\u67b6\\u6784\\u56fe","icon":"fa fa-connectdevelop","weigh":"0","condition":"","remark":"","status":"normal"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606263),
(1576, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/95?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"peoples","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"100","condition":"","remark":"","status":"normal"},"ids":"95"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606272),
(1577, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606288),
(1578, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"2,3,5,6,7,8,9,10,11,12,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,95,96","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606294),
(1579, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/del/ids/96', '权限管理 规则管理 删除', '{"action":"del","ids":"96","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606447),
(1580, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/95?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"peoples\\/peoples","title":"\\u4e2a\\u4eba\\u4e2d\\u5fc3","icon":"fa fa-audio-description","weigh":"100","condition":"","remark":"","status":"normal"},"ids":"95"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606457),
(1581, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606468),
(1582, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '权限管理 角色组 编辑', '{"dialog":"1","row":{"rules":"2,3,5,6,7,8,9,10,11,12,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,95","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521606478),
(1583, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/rule/edit/ids/85?dialog=1', '权限管理 规则管理 编辑', '{"dialog":"1","row":{"ismenu":"1","pid":"0","name":"recruit\\/recruit","title":"\\u62db\\u8058\\u7ba1\\u7406","icon":"fa fa-address-book","weigh":"65","condition":"","remark":"\\u62db\\u8058\\u7ba1\\u7406","status":"normal"},"ids":"85"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521607322),
(1584, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521613274),
(1585, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '', '{"dialog":"1","row":{"rules":"95,85,86,87,88,89,92,91,90","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521613292),
(1586, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/roletree', '', '{"id":"7","pid":"1"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521613382),
(1587, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/auth/group/edit/ids/7?dialog=1', '', '{"dialog":"1","row":{"rules":"66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,95","pid":"1","name":"\\u7ba1\\u7406\\u5458","status":"normal"},"ids":"7"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521613404);
INSERT INTO `fa_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1588, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/add/ids/0?dialog=1', '', '{"dialog":"1","row":{"rules":"","name":"a","status":"hidden"},"ids":"0"}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521616417),
(1589, 1, 'admin', '/houtai/mobanadmin/fastadmin/public/admin.php/user/group/del/ids/69', '', '{"action":"del","ids":"69","params":""}', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36', 1521616445);

-- --------------------------------------------------------

--
-- 表的结构 `fa_attachment`
--

CREATE TABLE `fa_attachment` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建日期',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `uploadtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上传时间',
  `storage` enum('local','upyun','qiniu') NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) NOT NULL DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_attachment`
--

INSERT INTO `fa_attachment` (`id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6'),
(7, '/uploads/20180320/ed4a3d6abce3a65d9718de94ea8952f1.png', '160', '160', 'png', 0, 32827, 'image/png', '', 1521516321, 1521516321, 1521516321, 'local', 'dd02101e38e8cc6fb1c37802fa93df44a1b13a29'),
(8, '/uploads/20180320/ed4a3d6abce3a65d9718de94ea8952f1.png', '160', '160', 'png', 0, 32827, 'image/png', '', 1521519896, 1521519896, 1521519896, 'local', 'dd02101e38e8cc6fb1c37802fa93df44a1b13a29'),
(9, '/uploads/20180320/ed4a3d6abce3a65d9718de94ea8952f1.png', '160', '160', 'png', 0, 32827, 'image/png', '', 1521519910, 1521519910, 1521519910, 'local', 'dd02101e38e8cc6fb1c37802fa93df44a1b13a29');

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group`
--

CREATE TABLE `fa_auth_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text NOT NULL COMMENT '规则ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分组表';

--
-- 转存表中的数据 `fa_auth_group`
--

INSERT INTO `fa_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal'),
(7, 1, '管理员', '66,67,68,69,70,71,72,73,74,75,76,77,78,85,86,87,88,89,90,91,92,95', 1521529864, 1521613403, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_group_access`
--

CREATE TABLE `fa_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限分组表';

--
-- 转存表中的数据 `fa_auth_group_access`
--

INSERT INTO `fa_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 5),
(5, 5),
(6, 7);

-- --------------------------------------------------------

--
-- 表的结构 `fa_auth_rule`
--

CREATE TABLE `fa_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('menu','file') NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='节点表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_auth_rule`
--

INSERT INTO `fa_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', '主菜单', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1521605819, 110, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 67, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-list', '', 'Category tips', 1, 1497429920, 1497429920, 59, 'normal'),
(4, 'file', 0, 'kaoqing', '考勤管理', 'fa fa-address-card-o', '', 'Addon tips', 1, 1502035509, 1521515565, 3, 'normal'),
(5, 'file', 0, 'auth', '权限管理', 'fa fa-group', '', '', 1, 1497429920, 1521605916, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 35, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 28, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 22, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 55, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 50, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 46, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 41, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 27, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 26, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 25, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 24, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 23, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 34, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 21, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 20, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 19, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 18, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 17, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 16, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 68, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 66, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 64, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 62, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 54, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 53, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 49, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 47, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 45, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 44, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 43, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 42, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 40, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 39, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 38, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 37, 'normal'),
(66, 'file', 0, 'user/index', '人员管理', 'fa fa-list', '', '', 1, 1516374729, 1521603804, 36, 'normal'),
(67, 'file', 66, 'user/user', '人员管理', 'fa fa-user', '', '', 1, 1516374729, 1521515204, 4, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 5, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 6, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 7, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 8, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 9, 'normal'),
(73, 'file', 66, 'user/group', '科室管理', 'fa fa-users', '', '', 1, 1516374729, 1521519020, 10, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 11, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 12, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 13, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 14, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 15, 'normal'),
(85, 'file', 0, 'recruit/recruit', '招聘管理', 'fa fa-address-book', '', '招聘管理', 1, 1521530747, 1521607322, 65, 'normal'),
(86, 'file', 0, 'training', '培训管理', 'fa fa-bar-chart-o', '', '', 1, 1521531091, 1521531091, 63, 'normal'),
(87, 'file', 0, 'performance', '效绩管理', 'fa fa-bank', '', '', 1, 1521531137, 1521531209, 61, 'normal'),
(88, 'file', 0, 'contract', '合同管理', 'fa fa-newspaper-o', '', '', 1, 1521531182, 1521531240, 60, 'normal'),
(89, 'file', 0, 'arrangement', '人事事物', 'fa fa-jsfiddle', '', '', 1, 1521531494, 1521531514, 58, 'normal'),
(90, 'file', 0, 'archives', '人事档案', 'fa fa-files-o', '', '人事档案', 1, 1521531617, 1521531634, 57, 'normal'),
(91, 'file', 0, 'payment', '薪酬管理', 'fa fa-money', '', '', 1, 1521531689, 1521531689, 56, 'normal'),
(92, 'file', 90, 'renshidangan', '编辑', 'fa fa-dot', '', '', 1, 1521602924, 1521602924, 70, 'normal'),
(95, 'file', 0, 'peoples/peoples', '个人中心', 'fa fa-audio-description', '', '', 1, 1521605962, 1521606457, 100, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_category`
--

CREATE TABLE `fa_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fa_category`
--

INSERT INTO `fa_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_config`
--

CREATE TABLE `fa_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text NOT NULL COMMENT '变量值',
  `content` text NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) NOT NULL DEFAULT '' COMMENT '扩展属性'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置';

--
-- 转存表中的数据 `fa_config`
--

INSERT INTO `fa_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `value`, `content`, `rule`, `extend`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '医院人事管理系统', '', 'required', ''),
(2, 'beian', 'basic', 'Beian', '粤ICP备15054802号-4', 'string', '粤ICP备15012502号', '', '', ''),
(3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', ''),
(5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', ''),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', ''),
(7, 'languages', 'basic', 'Languages', '', 'array', '{"backend":"zh-cn","frontend":"zh-cn"}', '', 'required', ''),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', ''),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{"default":"Default","page":"Page","article":"Article","test":"Test"}', '', '', ''),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{"basic":"Basic","email":"Email","dictionary":"Dictionary","user":"User","example":"Example"}', '', '', ''),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '["Please select","SMTP","Mail"]', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '["None","TLS","SSL"]', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `fa_sms`
--

CREATE TABLE `fa_sms` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信验证码表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `fa_test`
--

CREATE TABLE `fa_test` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) NOT NULL DEFAULT '' COMMENT '省市',
  `price` float(10,2) UNSIGNED NOT NULL DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '刷新时间(int)',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_test`
--

INSERT INTO `fa_test` (`id`, `admin_id`, `category_id`, `category_ids`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `price`, `views`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `fa_user`
--

CREATE TABLE `fa_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date NOT NULL COMMENT '生日',
  `bio` varchar(100) NOT NULL COMMENT '格言',
  `score` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `logintime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(50) NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '加入时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) NOT NULL DEFAULT '' COMMENT '验证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_user`
--

INSERT INTO `fa_user` (`id`, `group_id`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 5, 'admin', 'admin', 'c09efe2f1baa647154effc87c7975cfa', 'dG0klQ', 'admin@163.com', '13888888888', '/uploads/20180320/ed4a3d6abce3a65d9718de94ea8952f1.png', 0, 0, '2017-04-15', '', 0, 1, 1, 1516171614, 1521519643, '0.0.0.0', 0, '127.0.0.1', 1491461418, 0, 1521519899, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_group`
--

CREATE TABLE `fa_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT '' COMMENT '组名',
  `rules` text COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员组表';

--
-- 转存表中的数据 `fa_user_group`
--

INSERT INTO `fa_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(5, '院长办公室', '', 1521521457, 1521521457, 'normal'),
(6, '副院长', '', 1521521471, 1521521471, 'normal'),
(7, '档案室', '', 1521521477, 1521521477, 'normal'),
(8, '党委', '', 1521521483, 1521521483, 'normal'),
(9, '团委办公室', '', 1521521496, 1521521496, 'normal'),
(10, '宣传科', '', 1521521508, 1521521508, 'normal'),
(11, '保卫科', '', 1521521515, 1521521515, 'normal'),
(12, '科教科', '', 1521521525, 1521521525, 'normal'),
(13, '医保办', '', 1521521531, 1521521531, 'normal'),
(14, '保健科', '', 1521521535, 1521521535, 'normal'),
(15, '护理部主任', '', 1521521548, 1521521548, 'normal'),
(16, '外科总护士长', '', 1521521557, 1521521557, 'normal'),
(17, '内科总护士长', '', 1521521564, 1521521564, 'normal'),
(18, '工会', '', 1521521573, 1521521573, 'normal'),
(19, '劳动工资科', '', 1521521583, 1521521583, 'normal'),
(20, '组织科', '', 1521521589, 1521521589, 'normal'),
(21, '职改办', '', 1521521600, 1521521600, 'normal'),
(22, '病案统计科', '', 1521521607, 1521521607, 'normal'),
(23, '图书馆', '', 1521521611, 1521521611, 'normal'),
(24, '财务处', '', 1521521616, 1521521616, 'normal'),
(25, '总务处', '', 1521521638, 1521521638, 'normal'),
(26, '设备科', '', 1521521685, 1521521685, 'normal'),
(27, '基建科', '', 1521521729, 1521521729, 'normal'),
(28, '功能医技科室', '', 1521521739, 1521521739, 'normal'),
(29, '检验科（门诊检验）', '', 1521521748, 1521521788, 'normal'),
(30, '检验科（病房检验）', '', 1521521777, 1521521777, 'normal'),
(31, '病理科', '', 1521521801, 1521521801, 'normal'),
(32, '影像学', '', 1521521807, 1521521807, 'normal'),
(33, '膳食营养科', '', 1521521819, 1521521819, 'normal'),
(34, '门诊办公室', '', 1521521856, 1521521856, 'normal'),
(35, '急诊室', '', 1521521864, 1521521864, 'normal'),
(36, '住院部', '', 1521521873, 1521521873, 'normal'),
(37, '神经外科（外科）', '', 1521521885, 1521521969, 'normal'),
(38, '甲乳外科（外科）', '', 1521521894, 1521521973, 'normal'),
(39, '胸外科（外科）', '', 1521521901, 1521521976, 'normal'),
(40, '心外科（外科）', '', 1521521907, 1521521979, 'normal'),
(41, '肝胆外科（外科）', '', 1521521915, 1521521982, 'normal'),
(42, '胃肠外科（外科）', '', 1521521923, 1521521984, 'normal'),
(43, '泌尿外科（外科）', '', 1521521931, 1521521987, 'normal'),
(44, '皮肤科（内科）', '', 1521521958, 1521521958, 'normal'),
(45, '血液科（内科）', '', 1521522009, 1521522009, 'normal'),
(46, '消化内科（内科）', '', 1521522017, 1521522017, 'normal'),
(47, '神经内科（内科）', '', 1521522023, 1521522023, 'normal'),
(48, '肾内科（内科）', '', 1521522038, 1521522038, 'normal'),
(49, '呼吸科（内科）', '', 1521522042, 1521522042, 'normal'),
(50, '传染病科（内科）', '', 1521522050, 1521522050, 'normal'),
(51, '肠道科（内科）', '', 1521522058, 1521522058, 'normal'),
(52, '口腔内科（口腔科）', '', 1521522076, 1521522076, 'normal'),
(53, '口腔外科（口腔科）', '', 1521522086, 1521522086, 'normal'),
(54, '五官科', '', 1521522093, 1521522093, 'normal'),
(55, '眼科', '', 1521522097, 1521522097, 'normal'),
(56, '妇科（妇产科）', '', 1521522108, 1521522108, 'normal'),
(57, '产科（妇产科）', '', 1521522118, 1521522118, 'normal'),
(58, '儿科', '', 1521522124, 1521522124, 'normal'),
(59, '肿瘤放疗科（肿瘤科中心）', '', 1521522139, 1521522139, 'normal'),
(60, '肿瘤化疗科（肿瘤科中心）', '', 1521522157, 1521522157, 'normal'),
(61, '美容科', '', 1521522167, 1521522167, 'normal'),
(62, '体检', '', 1521522170, 1521522170, 'normal'),
(63, '骨科', '', 1521522176, 1521522176, 'normal'),
(64, '中医科', '', 1521522181, 1521522181, 'normal'),
(65, '传染病科', '', 1521522186, 1521522186, 'normal'),
(66, '药剂科', '', 1521522191, 1521522191, 'normal'),
(67, '中心供应室', '', 1521522201, 1521522201, 'normal'),
(68, '手术室', '', 1521522205, 1521522205, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_rule`
--

CREATE TABLE `fa_user_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `title` varchar(50) DEFAULT '' COMMENT '标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员规则表';

--
-- 转存表中的数据 `fa_user_rule`
--

INSERT INTO `fa_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(13, 0, 'daka', '请休假审批', '请休假审批', 1, 1521519207, 1521519207, 13, 'normal'),
(14, 0, 'kaoqin', '考勤管理', '', 1, 1521519234, 1521519234, 14, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_score_log`
--

CREATE TABLE `fa_user_score_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_user_token`
--

CREATE TABLE `fa_user_token` (
  `token` varchar(50) NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `expiretime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员Token表';

-- --------------------------------------------------------

--
-- 表的结构 `fa_version`
--

CREATE TABLE `fa_version` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) NOT NULL DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='版本表' ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `fa_version`
--

INSERT INTO `fa_version` (`id`, `oldversion`, `newversion`, `packagesize`, `content`, `downloadurl`, `enforce`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'http://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fa_admin`
--
ALTER TABLE `fa_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- Indexes for table `fa_attachment`
--
ALTER TABLE `fa_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_auth_group_access`
--
ALTER TABLE `fa_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- Indexes for table `fa_category`
--
ALTER TABLE `fa_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `fa_config`
--
ALTER TABLE `fa_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `fa_sms`
--
ALTER TABLE `fa_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_test`
--
ALTER TABLE `fa_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_user`
--
ALTER TABLE `fa_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- Indexes for table `fa_user_group`
--
ALTER TABLE `fa_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_user_rule`
--
ALTER TABLE `fa_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_user_score_log`
--
ALTER TABLE `fa_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fa_user_token`
--
ALTER TABLE `fa_user_token`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `fa_version`
--
ALTER TABLE `fa_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fa_admin`
--
ALTER TABLE `fa_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `fa_admin_log`
--
ALTER TABLE `fa_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=1590;
--
-- 使用表AUTO_INCREMENT `fa_attachment`
--
ALTER TABLE `fa_attachment`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `fa_auth_group`
--
ALTER TABLE `fa_auth_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `fa_auth_rule`
--
ALTER TABLE `fa_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- 使用表AUTO_INCREMENT `fa_category`
--
ALTER TABLE `fa_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `fa_config`
--
ALTER TABLE `fa_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `fa_sms`
--
ALTER TABLE `fa_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';
--
-- 使用表AUTO_INCREMENT `fa_test`
--
ALTER TABLE `fa_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `fa_user`
--
ALTER TABLE `fa_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `fa_user_group`
--
ALTER TABLE `fa_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- 使用表AUTO_INCREMENT `fa_user_rule`
--
ALTER TABLE `fa_user_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- 使用表AUTO_INCREMENT `fa_user_score_log`
--
ALTER TABLE `fa_user_score_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `fa_version`
--
ALTER TABLE `fa_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
