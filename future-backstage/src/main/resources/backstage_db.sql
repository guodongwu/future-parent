/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : backstage_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-09-10 22:31:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_corporation
-- ----------------------------
DROP TABLE IF EXISTS `sys_corporation`;
CREATE TABLE `sys_corporation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_corporation
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `uId` int(4) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `funid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `funname` varchar(50) DEFAULT NULL,
  `resource` varchar(50) DEFAULT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `changed` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------
INSERT INTO `sys_data_log` VALUES ('1', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersTokenMapper.updateByPrimaryKeySelective', 'UsersTokenMapper', 'UsersToken', null, '{\"id\":1,\"userid\":1,\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAxOTo0Njo0NSIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ.npnmxE60rO4Nbw6g_fwipVvnL6DF1xi223u6BBha-5A\",\"md5token\":\"7C17D049B5718210D0BED881C9E84020\",\"logintime\":\"2018-09-07 19:46:45\"}');
INSERT INTO `sys_data_log` VALUES ('2', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersTokenMapper.updateByPrimaryKeySelective', 'UsersTokenMapper', 'UsersToken', null, '{\"id\":1,\"userid\":1,\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAxOTo0NzowOCIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ.kPljlDWDoBaou_I4IijCUlwJsvls0_KNn6N6rocxuaE\",\"md5token\":\"E594871EAB606C582FC593E9212380B4\",\"logintime\":\"2018-09-07 19:47:08\"}');
INSERT INTO `sys_data_log` VALUES ('3', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersTokenMapper.updateByPrimaryKeySelective', 'UsersTokenMapper', 'UsersToken', null, '{\"id\":1,\"userid\":1,\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAxOTo0ODo0OSIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ.ZOVvRp3gBXg-CorBXlg-78QjTAnlJEA_x1ZcVj1woWs\",\"md5token\":\"47A547B4F3127AF94B5CC0F1F808C958\",\"logintime\":\"2018-09-07 19:48:49\"}');
INSERT INTO `sys_data_log` VALUES ('4', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersTokenMapper.updateByPrimaryKeySelective', 'UsersTokenMapper', 'UsersToken', null, '{\"id\":1,\"userid\":1,\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAxOTo1MToxMyIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ.Bo7zohv1fnM9mUetjAexXLyG_Jd_QCm_9T6A8ZfIga4\",\"md5token\":\"8ED6BE37E243B1C65D7AC4598D8F392C\",\"logintime\":\"2018-09-07 19:51:13\"}');
INSERT INTO `sys_data_log` VALUES ('5', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.UsersMapper.deleteByPrimaryKey', 'UsersMapper', 'Integer', null, '2');
INSERT INTO `sys_data_log` VALUES ('6', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.UsersMapper.deleteByPrimaryKey', 'UsersMapper', 'Integer', null, '3');
INSERT INTO `sys_data_log` VALUES ('7', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.UsersMapper.deleteByPrimaryKey', 'UsersMapper', 'Integer', null, '7');
INSERT INTO `sys_data_log` VALUES ('8', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersMapper.updateByPrimaryKeySelective', 'UsersMapper', 'Users', null, '{\"id\":1,\"loginname\":\"admin\",\"name\":\"黑客\",\"password\":\"49BA59ABBE56E057\",\"departid\":1,\"office\":\"员工\",\"phone\":\"18955545431\",\"email\":\"admin@qx.com\",\"roleid\":-9999,\"state\":\"在职\",\"corporationid\":1,\"token\":null,\"img\":\"fileUpload/image/2018-09-07/ee55e589-7396-434e-976c-be0037bf0322.png\",\"departName\":null,\"roleName\":null,\"corporationName\":null}');
INSERT INTO `sys_data_log` VALUES ('9', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.RoleMapper.deleteByPrimaryKey', 'RoleMapper', 'Integer', null, '8');
INSERT INTO `sys_data_log` VALUES ('10', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.RoleMapper.deleteByPrimaryKey', 'RoleMapper', 'Integer', null, '7');
INSERT INTO `sys_data_log` VALUES ('11', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.RoleMapper.deleteByPrimaryKey', 'RoleMapper', 'Integer', null, '5');
INSERT INTO `sys_data_log` VALUES ('12', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.RoleMapper.deleteByPrimaryKey', 'RoleMapper', 'Integer', null, '4');
INSERT INTO `sys_data_log` VALUES ('13', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.RoleMapper.deleteByPrimaryKey', 'RoleMapper', 'Integer', null, '2');
INSERT INTO `sys_data_log` VALUES ('14', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.CorporationMapper.deleteByPrimaryKey', 'CorporationMapper', 'Integer', null, '7');
INSERT INTO `sys_data_log` VALUES ('15', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.CorporationMapper.deleteByPrimaryKey', 'CorporationMapper', 'Integer', null, '6');
INSERT INTO `sys_data_log` VALUES ('16', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.CorporationMapper.deleteByPrimaryKey', 'CorporationMapper', 'Integer', null, '2');
INSERT INTO `sys_data_log` VALUES ('17', null, 'DELETE', 'mybatis', 'com.springmvc.mapper.CorporationMapper.deleteByPrimaryKey', 'CorporationMapper', 'Integer', null, '1');
INSERT INTO `sys_data_log` VALUES ('18', null, 'UPDATE', 'mybatis', 'com.springmvc.mapper.UsersTokenMapper.updateByPrimaryKeySelective', 'UsersTokenMapper', 'UsersToken', null, '{\"id\":1,\"userid\":1,\"token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAyMDoxMjo0MyIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ._m8JKunvU7GXDUQP5nQVZoROg9U0OONYgw9cCL-Jm70\",\"md5token\":\"B167BF92B0B971415721282362196AB8\",\"logintime\":\"2018-09-07 20:12:43\"}');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corporationId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `leader` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('1', '1', '技术部门', '1801111111', '王鹏鹏', '综合1楼', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('2', '1', '财务部门', '1801111112', '高明', '综合2楼', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('3', '2', '技术部门', '1801111111', '王虎', '综合3楼', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('4', '2', '财务部门', '1801111112', '户飞', '综合4楼', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('6', '1', '产品部门', '18012345678', '张浩', '综合4楼', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('8', '6', '维保部门', '13899995432', '何访', '', '', '2017-11-17 09:17:32');
INSERT INTO `sys_department` VALUES ('11', '2', '办公室', '18066666543', '王明', '综合5楼', '', '2017-11-17 09:17:32');

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dkey` varchar(30) DEFAULT NULL,
  `dvalue` varchar(100) DEFAULT NULL,
  `dmemo` varchar(200) DEFAULT NULL,
  `display` int(1) DEFAULT '1' COMMENT '是否显示',
  `dorder` int(10) DEFAULT '0',
  `edits` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary` VALUES ('1', '用户状态', '在职', null, '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('2', '用户状态', '离职', '', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('3', '用户状态', '请假', '', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('4', '集团名称', '黑客帝国', '', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('5', '集团法人', 'codeing', '111', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('6', '集团地址', '地球', '', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('7', '系统名称', '管理后台', null, '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('8', '只读属性', '只读属性', '', '0', '0', null);
INSERT INTO `sys_dictionary` VALUES ('9', '用户职位', '员工', null, '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('10', '用户职位', '经理', null, '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('11', '集团法人', '法人代表', 'xxx', '1', '0', null);
INSERT INTO `sys_dictionary` VALUES ('12', '集团法人', 'abc', 'aa', '1', '0', null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `parentId` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `but` varchar(20) DEFAULT NULL,
  `leaf` varchar(20) DEFAULT NULL,
  `lmage` varchar(20) DEFAULT NULL,
  `toolImage` varchar(20) DEFAULT NULL,
  `navigationImage` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `display` int(255) DEFAULT '1' COMMENT '是否可见（超级管理员可见，其他角色不可见）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('10', '统计分析', '0', '0', null, '0', 'ios-paper', null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('1001', '数据统计', '10', '1', null, '0', null, null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('100101', '用户行为', '1001', '2', null, '1', 'leaf', null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('10010101', '查找', '100101', '-1', 'butSearch', '-1', 'ios-search-strong', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('10010102', '增加', '100101', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('1002', '登录统计', '10', '1', '', '0', '', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('100201', '异常登录', '1002', '2', '', '1', 'leaf', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('10020101', '查找', '100201', '-1', 'butSearch', '-1', 'leaf', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('10020102', '增加', '100201', '-1', 'butAdd', '-1', 'leaf', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('1003', '其他统计', '10', '3', null, '1', 'leaf', null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('100301', '查找', '1003', '-1', 'butSearch', '-1', 'ios-search-strong', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('20', '系统设置', '0', '0', null, '0', 'settings', null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('2001', '组织管理', '20', '3', null, '1', 'leaf', null, null, 'configuration/corporation_page', '0');
INSERT INTO `sys_menu` VALUES ('200101', '查找', '2001', '-1', 'butSearch', '-1', 'ios-search-strong', null, null, null, '1');
INSERT INTO `sys_menu` VALUES ('200102', '增加', '2001', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200103', '修改', '2001', '-1', 'butEdit', '-1', 'edit', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200104', '删除', '2001', '-1', 'butDel', '-1', 'close', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200105', '查看', '2001', '-1', 'butLook', '-1', 'ios-glasses', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200106', '导出', '2001', '-1', 'butExport', '-1', 'arrow-down-c', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200107', '刷新', '2001', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('2002', '部门设置', '20', '3', null, '1', 'leaf', null, null, 'configuration/department_page', '1');
INSERT INTO `sys_menu` VALUES ('200202', '增加', '2002', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200203', '修改', '2002', '-1', 'butEdit', '-1', 'edit', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200204', '删除', '2002', '-1', 'butDel', '-1', 'close', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200205', '查看', '2002', '-1', 'butLook', '-1', 'ios-glasses', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200206', '导出', '2002', '-1', 'butExport', '-1', 'arrow-down-c', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200207', '刷新', '2002', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('2003', '角色设置', '20', '3', '', '1', 'leaf', '', '', 'configuration/role_page', '1');
INSERT INTO `sys_menu` VALUES ('200302', '增加', '2003', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200303', '修改', '2003', '-1', 'butEdit', '-1', 'edit', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200304', '删除', '2003', '-1', 'butDel', '-1', 'close', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200307', '刷新', '2003', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('2004', '用户设置', '20', '3', '', '1', 'leaf', '', '', 'configuration/users_page', '1');
INSERT INTO `sys_menu` VALUES ('200402', '增加', '2004', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200403', '修改', '2004', '-1', 'butEdit', '-1', 'edit', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200404', '删除', '2004', '-1', 'butDel', '-1', 'close', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200405', '查看', '2004', '-1', 'butLook', '-1', 'ios-glasses', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200406', '刷新', '2004', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200407', '上传头像', '2004', '-1', 'butUploadHead', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200408', '导出', '2004', '-1', 'butExport', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('2005', '权限设置', '20', '3', null, '1', 'leaf', null, null, 'configuration/rights_page', '1');
INSERT INTO `sys_menu` VALUES ('200502', '保存', '2005', '-1', 'butSave', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200505', '刷新', '2005', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('2006', '数据字典', '20', '3', null, '1', 'leaf', null, null, 'configuration/data_dictionary_page', '1');
INSERT INTO `sys_menu` VALUES ('200602', '增加', '2006', '-1', 'butAdd', '-1', 'plus', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200603', '修改', '2006', '-1', 'butEdit', '-1', 'edit', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200604', '删除', '2006', '-1', 'butDel', '-1', 'close', '', '', '', '1');
INSERT INTO `sys_menu` VALUES ('200605', '刷新', '2006', '-1', 'butRefresh', '-1', 'refresh', '', '', '', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `corporationId` int(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '1', '管理员', '', '2017-11-17 09:18:02');
INSERT INTO `sys_role` VALUES ('3', '2', '管理员', '', '2017-11-17 09:18:02');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(50) DEFAULT NULL,
  `menuItemId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleName` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('34', '5', '20');
INSERT INTO `sys_role_menu` VALUES ('35', '5', '2001');
INSERT INTO `sys_role_menu` VALUES ('36', '5', '200101');
INSERT INTO `sys_role_menu` VALUES ('37', '5', '2002');
INSERT INTO `sys_role_menu` VALUES ('38', '5', '200202');
INSERT INTO `sys_role_menu` VALUES ('39', '5', '200207');
INSERT INTO `sys_role_menu` VALUES ('52', '1', '10');
INSERT INTO `sys_role_menu` VALUES ('53', '1', '1001');
INSERT INTO `sys_role_menu` VALUES ('54', '1', '100101');
INSERT INTO `sys_role_menu` VALUES ('55', '1', '10010101');
INSERT INTO `sys_role_menu` VALUES ('56', '1', '1002');
INSERT INTO `sys_role_menu` VALUES ('57', '1', '100201');
INSERT INTO `sys_role_menu` VALUES ('58', '1', '10020101');
INSERT INTO `sys_role_menu` VALUES ('59', '1', '1003');
INSERT INTO `sys_role_menu` VALUES ('60', '1', '100301');
INSERT INTO `sys_role_menu` VALUES ('61', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('62', '1', '2001');
INSERT INTO `sys_role_menu` VALUES ('63', '1', '200101');
INSERT INTO `sys_role_menu` VALUES ('64', '1', '200102');
INSERT INTO `sys_role_menu` VALUES ('65', '1', '200103');
INSERT INTO `sys_role_menu` VALUES ('66', '1', '200104');
INSERT INTO `sys_role_menu` VALUES ('67', '1', '200105');
INSERT INTO `sys_role_menu` VALUES ('68', '1', '200106');
INSERT INTO `sys_role_menu` VALUES ('69', '1', '200107');
INSERT INTO `sys_role_menu` VALUES ('70', '1', '2002');
INSERT INTO `sys_role_menu` VALUES ('71', '1', '200202');
INSERT INTO `sys_role_menu` VALUES ('72', '1', '200203');
INSERT INTO `sys_role_menu` VALUES ('73', '1', '200204');
INSERT INTO `sys_role_menu` VALUES ('74', '1', '200205');
INSERT INTO `sys_role_menu` VALUES ('75', '1', '200206');
INSERT INTO `sys_role_menu` VALUES ('76', '1', '200207');
INSERT INTO `sys_role_menu` VALUES ('77', '1', '2003');
INSERT INTO `sys_role_menu` VALUES ('78', '1', '200302');
INSERT INTO `sys_role_menu` VALUES ('79', '1', '200303');
INSERT INTO `sys_role_menu` VALUES ('80', '1', '200304');
INSERT INTO `sys_role_menu` VALUES ('81', '1', '200307');
INSERT INTO `sys_role_menu` VALUES ('82', '1', '2004');
INSERT INTO `sys_role_menu` VALUES ('83', '1', '200402');
INSERT INTO `sys_role_menu` VALUES ('84', '1', '200403');
INSERT INTO `sys_role_menu` VALUES ('85', '1', '200404');
INSERT INTO `sys_role_menu` VALUES ('86', '1', '200405');
INSERT INTO `sys_role_menu` VALUES ('87', '1', '2005');
INSERT INTO `sys_role_menu` VALUES ('88', '1', '200502');
INSERT INTO `sys_role_menu` VALUES ('89', '1', '200505');
INSERT INTO `sys_role_menu` VALUES ('90', '1', '2006');
INSERT INTO `sys_role_menu` VALUES ('91', '1', '200602');
INSERT INTO `sys_role_menu` VALUES ('92', '1', '200603');
INSERT INTO `sys_role_menu` VALUES ('93', '1', '200604');
INSERT INTO `sys_role_menu` VALUES ('94', '1', '200605');
INSERT INTO `sys_role_menu` VALUES ('95', '2', '20');
INSERT INTO `sys_role_menu` VALUES ('96', '2', '2001');
INSERT INTO `sys_role_menu` VALUES ('97', '2', '200101');
INSERT INTO `sys_role_menu` VALUES ('98', '2', '200107');
INSERT INTO `sys_role_menu` VALUES ('99', '2', '2004');
INSERT INTO `sys_role_menu` VALUES ('100', '2', '200402');
INSERT INTO `sys_role_menu` VALUES ('101', '2', '200405');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `departId` int(50) DEFAULT NULL COMMENT '部门',
  `office` varchar(50) DEFAULT NULL COMMENT '职务',
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `roleId` int(20) DEFAULT '0',
  `state` varchar(10) DEFAULT '在职',
  `corporationId` int(100) DEFAULT NULL,
  `token` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT 'images/lock.jpg' COMMENT '默认头像',
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `isAdmin` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', 'admin', '黑客', '49BA59ABBE56E057', '1', '员工', '18955545431', 'admin@qx.com', '-9999', '在职', '1', null, 'fileUpload/image/2018-09-07/ee55e589-7396-434e-976c-be0037bf0322.png', '2017-11-17 09:15:16');
INSERT INTO `sys_users` VALUES ('6', 'test', '程鸿雁', '49BA59ABBE56E057', '3', '员工', '18955545432', 'test@qxnecn.com', '3', '离职', '2', '', 'fileUpload/image/2017-11-13/fee559c6-ee71-42da-a509-d274fd22279d.png', '2017-11-08 09:15:27');
INSERT INTO `sys_users` VALUES ('9', 'sunyang', '孙阳', '47B57F152D14F30C', '4', '经理', '15633312356', 'sunyang@qxnecn.com', '0', '在职', '2', null, 'fileUpload/image/2017-11-13/18f10081-9f2f-4dc3-9784-80abcf8898be.png', '2017-11-15 09:15:39');

-- ----------------------------
-- Table structure for sys_users_control_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_control_log`;
CREATE TABLE `sys_users_control_log` (
  `id` int(4) DEFAULT NULL,
  `uid` int(4) DEFAULT NULL,
  `token` varchar(300) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `parameter` longtext,
  `departName` varchar(50) DEFAULT NULL,
  `uName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_control_log
-- ----------------------------
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryDkey', 'webframe', '2018-09-07 11:58:23', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 11:58:23', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:33', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团地址\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:35', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'系统名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:36', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'系统名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:37', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户职位\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:38', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 11:59:43', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:44', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 11:59:45', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 11:59:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryDkey', 'webframe', '2018-09-07 11:59:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:00:07', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:00:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:00:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户职位\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:00:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户状态\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:45', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"u.corporationId=\'1\'\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:45', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:45', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/vselect/selectRole', 'webframe', '2018-09-07 12:00:45', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:50', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"u.corporationId=\'2\'\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/vselect/selectRole', 'webframe', '2018-09-07 12:00:50', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'2\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:50', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'2\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:50', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'2\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:53', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'6\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:53', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"u.corporationId=\'6\'\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/vselect/selectRole', 'webframe', '2018-09-07 12:00:53', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'6\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:53', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'6\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:54', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:56', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"u.corporationId=\'7\'\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:56', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'7\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:56', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'7\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/vselect/selectRole', 'webframe', '2018-09-07 12:00:56', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'7\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:58', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:00:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"u.corporationId=\'1\'\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/vselect/selectRole', 'webframe', '2018-09-07 12:00:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/vselect/selectDepartment', 'webframe', '2018-09-07 12:00:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/delete', 'webframe', '2018-09-07 12:01:30', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/delete', 'webframe', '2018-09-07 12:01:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"3\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/delete', 'webframe', '2018-09-07 12:01:46', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"7\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'GET', '/webframe/export/exportUsers', 'webframe', '2018-09-07 12:02:21', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"u.corporationId=\'1\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/pagination', 'webframe', '2018-09-07 12:02:49', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:02:49', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'8\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:08', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:09', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'2\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:09', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:09', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:10', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'4\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:10', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'5\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:11', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'7\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:11', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'8\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:13', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'5\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:14', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'8\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'7\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'5\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:17', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'4\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:17', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:18', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'2\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:19', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:20', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'2\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:23', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:25', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:30', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:03:32', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/pagination', 'webframe', '2018-09-07 12:03:32', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'2\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:35', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:36', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:03:40', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"3\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:47', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:03:49', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"3\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:03:54', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"3\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:56', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'4\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:58', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'5\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:03:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'8\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:04:01', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:04:03', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'7\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:04:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"7\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:04:06', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'5\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:04:08', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:04:10', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'4\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:04:13', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"4\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:04:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:04:17', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'2\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:04:21', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:04:23', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:04:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/pagination', 'webframe', '2018-09-07 12:05:06', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/delete', 'webframe', '2018-09-07 12:05:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"7\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/delete', 'webframe', '2018-09-07 12:05:19', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"6\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/delete', 'webframe', '2018-09-07 12:05:26', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/delete', 'webframe', '2018-09-07 12:05:29', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/pagination', 'webframe', '2018-09-07 12:05:33', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/department/pagination', 'webframe', '2018-09-07 12:05:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:05:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/pagination', 'webframe', '2018-09-07 12:05:46', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:05:46', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:50', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:51', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/delete', 'webframe', '2018-09-07 12:05:54', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"id\":[\"3\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:05:57', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/role/pagination', 'webframe', '2018-09-07 12:05:57', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:58', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:58', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:05:59', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'1\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:06:00', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"50\"],\"where\":[\" roleid=\'3\' \"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:02', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:06:02', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:06:03', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户职位\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:06:03', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户状态\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:06:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:06:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户状态\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:06:05', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户职位\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:08', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:10', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:18', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:06:22', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 12:06:27', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryDkey', 'webframe', '2018-09-07 12:06:27', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:28', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:29', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户职位\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:30', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:31', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户职位\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:33', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:34', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'系统名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:36', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团名称\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:37', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团地址\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:38', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/insert', 'webframe', '2018-09-07 12:06:53', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:06:54', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:02', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/insert', 'webframe', '2018-09-07 12:07:07', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:07', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:09', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 12:07:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:16', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:18', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'用户状态\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:21', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/parent', 'webframe', '2018-09-07 12:07:21', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" dkey desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/pagination/child', 'webframe', '2018-09-07 12:07:23', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"20\"],\"where\":[\"dkey=\'集团法人\'\"],\"orderBy\":[\" id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:07:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户状态\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/dataDictionary/vselect/selectDataDictionaryValue', 'webframe', '2018-09-07 12:07:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"dkey=\'用户职位\'\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/users/pagination', 'webframe', '2018-09-07 12:07:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"pageNo\":[\"1\"],\"pageSize\":[\"10\"],\"where\":[\"\"],\"orderBy\":[\" u.id desc \"],\"whereInner\":[\"\"],\"rightRecord\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', '8ED6BE37E243B1C65D7AC4598D8F392C', 'POST', '/webframe/corporation/vselect/selectCorporation', 'webframe', '2018-09-07 12:07:48', '{\"jwt\":[\"8ED6BE37E243B1C65D7AC4598D8F392C\"],\"where\":[\"\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:12:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:12:54', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:12:55', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:12:56', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:12:56', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:16:38', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:16:39', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:16:40', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:16:40', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:16:40', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:16:42', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:16:43', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:16:44', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:16:44', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:16:44', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:16:47', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:16:48', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:16:48', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:16:48', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/auditWait/waitAuditCount', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"uid\":[\"1\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/sysNotice/topNewest', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"top\":[\"5\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginAllUserLastNYears/Geo', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/horizontal', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/vertical', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/bar/stack', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line/stack', 'webframe', '2018-09-07 12:16:57', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/pie', 'webframe', '2018-09-07 12:16:58', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/gauge', 'webframe', '2018-09-07 12:16:58', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);
INSERT INTO `sys_users_control_log` VALUES (null, '1', 'B167BF92B0B971415721282362196AB8', 'POST', '/webframe/chart/getLoginLogLastNYears/line', 'webframe', '2018-09-07 12:16:58', '{\"jwt\":[\"B167BF92B0B971415721282362196AB8\"],\"num\":[\"2\"]}', null, null);

-- ----------------------------
-- Table structure for sys_users_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_login_log`;
CREATE TABLE `sys_users_login_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastId` int(11) DEFAULT '0',
  `usersId` int(11) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usesId` (`usersId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_users_login_log
-- ----------------------------
INSERT INTO `sys_users_login_log` VALUES ('1', '0', '3', '60.167.71.33', '中国', '安徽省', '南京市', '登录成功', '2016-10-20 10:10:48', null);
INSERT INTO `sys_users_login_log` VALUES ('2', '1', '3', '60.167.71.33', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-20 10:12:27', null);
INSERT INTO `sys_users_login_log` VALUES ('3', '0', '2', '60.167.71.34', '中国', '安徽省', '马鞍山市', '登录成功', '2016-09-20 10:10:48', null);
INSERT INTO `sys_users_login_log` VALUES ('4', '3', '2', '60.167.71.34', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-20 10:12:27', null);
INSERT INTO `sys_users_login_log` VALUES ('5', '0', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2015-11-20 11:08:29', null);
INSERT INTO `sys_users_login_log` VALUES ('6', '5', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:09:08', null);
INSERT INTO `sys_users_login_log` VALUES ('7', '6', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:22:54', null);
INSERT INTO `sys_users_login_log` VALUES ('8', '7', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:26:02', null);
INSERT INTO `sys_users_login_log` VALUES ('10', '8', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:45:57', null);
INSERT INTO `sys_users_login_log` VALUES ('11', '10', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:47:15', null);
INSERT INTO `sys_users_login_log` VALUES ('12', '4', '2', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 11:56:23', null);
INSERT INTO `sys_users_login_log` VALUES ('13', '11', '1', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-20 13:27:57', null);
INSERT INTO `sys_users_login_log` VALUES ('14', '13', '1', '223.241.170.47', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-20 23:53:11', null);
INSERT INTO `sys_users_login_log` VALUES ('15', '14', '1', '223.241.170.47', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-21 23:25:43', null);
INSERT INTO `sys_users_login_log` VALUES ('16', '15', '1', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-22 14:21:39', null);
INSERT INTO `sys_users_login_log` VALUES ('17', '12', '2', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-22 15:56:18', null);
INSERT INTO `sys_users_login_log` VALUES ('18', '16', '1', '114.100.254.104', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-22 23:38:03', null);
INSERT INTO `sys_users_login_log` VALUES ('19', '17', '2', '114.100.254.104', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-22 23:38:44', null);
INSERT INTO `sys_users_login_log` VALUES ('20', '18', '1', '60.171.108.15', '中国', '安徽省', '马鞍山市', '登录成功', '2017-11-23 16:47:52', null);
INSERT INTO `sys_users_login_log` VALUES ('21', '19', '2', null, null, null, null, '登录成功', '2017-11-23 23:32:26', null);
INSERT INTO `sys_users_login_log` VALUES ('22', '21', '2', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-24 08:25:08', null);
INSERT INTO `sys_users_login_log` VALUES ('23', '22', '2', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-24 09:37:09', null);
INSERT INTO `sys_users_login_log` VALUES ('24', '23', '2', '112.26.51.68', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-24 10:00:33', null);
INSERT INTO `sys_users_login_log` VALUES ('25', '20', '1', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-30 23:12:20', null);
INSERT INTO `sys_users_login_log` VALUES ('26', '24', '2', '60.167.71.34', '中国', '安徽省', '芜湖市', '登录成功', '2017-11-30 23:17:14', null);
INSERT INTO `sys_users_login_log` VALUES ('27', '25', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 20:31:49', null);
INSERT INTO `sys_users_login_log` VALUES ('28', '27', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 20:38:26', null);
INSERT INTO `sys_users_login_log` VALUES ('29', '28', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 20:40:20', null);
INSERT INTO `sys_users_login_log` VALUES ('30', '29', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 20:41:15', null);
INSERT INTO `sys_users_login_log` VALUES ('31', '30', '1', null, null, null, null, '登录成功', '2017-12-12 20:48:22', null);
INSERT INTO `sys_users_login_log` VALUES ('32', '31', '1', null, null, null, null, '登录成功', '2017-12-12 20:49:55', null);
INSERT INTO `sys_users_login_log` VALUES ('33', '32', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 20:50:52', null);
INSERT INTO `sys_users_login_log` VALUES ('34', '33', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 21:38:18', null);
INSERT INTO `sys_users_login_log` VALUES ('35', '34', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 21:40:59', null);
INSERT INTO `sys_users_login_log` VALUES ('36', '35', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 21:42:25', null);
INSERT INTO `sys_users_login_log` VALUES ('37', '36', '1', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 21:42:38', null);
INSERT INTO `sys_users_login_log` VALUES ('38', '26', '2', '183.164.65.162', '中国', '安徽省', '马鞍山市', '登录成功', '2017-12-12 21:43:27', null);
INSERT INTO `sys_users_login_log` VALUES ('39', '37', '1', null, null, null, null, '登录成功', '2018-09-07 11:48:52', '47A547B4F3127AF94B5CC0F1F808C958');
INSERT INTO `sys_users_login_log` VALUES ('40', '39', '1', null, null, null, null, '登录成功', '2018-09-07 11:51:16', '8ED6BE37E243B1C65D7AC4598D8F392C');
INSERT INTO `sys_users_login_log` VALUES ('41', '40', '1', null, null, null, null, '登录成功', '2018-09-07 12:12:44', 'B167BF92B0B971415721282362196AB8');

-- ----------------------------
-- Table structure for sys_users_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_token`;
CREATE TABLE `sys_users_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` varchar(300) NOT NULL,
  `md5Token` varchar(32) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_users_token
-- ----------------------------
INSERT INTO `sys_users_token` VALUES ('1', '1', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiIxIiwibG9naW5UaW1lIjoiMjAxOC0wOS0wNyAyMDoxMjo0MyIsImNvcnBvcmF0aW9uaWQiOiIxIiwicm9sZWlkIjoiLTk5OTkiLCJsb2dpbk5hbWUiOiJhZG1pbiIsIm5hbWUiOiLpu5HlrqIiLCJkZXBhcnRpZCI6IjEifQ._m8JKunvU7GXDUQP5nQVZoROg9U0OONYgw9cCL-Jm70', 'B167BF92B0B971415721282362196AB8', '2018-09-07 12:12:43');
INSERT INTO `sys_users_token` VALUES ('2', '2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjIiLCJjb3Jwb3JhdGlvbklkIjoiMSIsImxvZ2luVGltZSI6IjIwMTctMTItMTIgMjE6NDM6MjciLCJkZXBhcnQiOiIyIiwibmFtZSI6Iueoi-e6ouiJsyIsInJvbGUiOiIxIiwibG9naW5OYW1lIjoiY2h5In0.0htvPivHaMZAgGq1PDpnpKXggGWhbmFXWpZY8lidqf4', '44E5DC12CE7A4EAAF1F08B44AF2E9E16', '2017-12-12 21:43:27');
