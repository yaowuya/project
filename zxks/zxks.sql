/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : zxks

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-01-18 23:51:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course_information`
-- ----------------------------
DROP TABLE IF EXISTS `course_information`;
CREATE TABLE `course_information` (
  `course_id` varchar(32) NOT NULL,
  `major_id` varchar(32) DEFAULT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `school_id` varchar(32) DEFAULT NULL,
  `course_credit` int(11) DEFAULT NULL,
  `course_type` varchar(32) DEFAULT NULL,
  `is_on` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `FK_Reference_23` (`major_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`major_id`) REFERENCES `major_info` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_information
-- ----------------------------
INSERT INTO `course_information` VALUES ('00001', '00010', 'NARUTO', '003', '10', '选修', '1');
INSERT INTO `course_information` VALUES ('00002', '00004', '海贼王', '002', '10', '选修', '1');
INSERT INTO `course_information` VALUES ('00003', '00008', '拆砖', '003', '5', '必修', '2');
INSERT INTO `course_information` VALUES ('00004', '00001', '反正工程', '001', '10', '好的分类', '1');
INSERT INTO `course_information` VALUES ('00005', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00006', '00001', '好工程', '001', '20', '好分类', '2');
INSERT INTO `course_information` VALUES ('00007', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00008', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00009', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00010', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00011', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00012', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00013', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00014', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('00015', '00001', '好工程', '001', '20', '好分类', '1');
INSERT INTO `course_information` VALUES ('001', '00003', '学习经济', '001', '2', '必修', '1');

-- ----------------------------
-- Table structure for `dealer`
-- ----------------------------
DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `dealer_id` varchar(32) NOT NULL,
  `dealer_name` varchar(50) DEFAULT NULL,
  `dealer_address` varchar(100) DEFAULT NULL,
  `dealer_contacts` varchar(20) DEFAULT NULL,
  `dealer_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dealer
-- ----------------------------
INSERT INTO `dealer` VALUES ('000001', '哈哈', '四川省成都市', '李四', '18845688795');
INSERT INTO `dealer` VALUES ('DR20167294150', '华迪有限公司', '郫县德源金荣大厦50-100层', '陈经理', '185778254984');
INSERT INTO `dealer` VALUES ('DR201672941531', '赵日天', '郫县德源金荣大厦', '豪爷', '400-800-0315');
INSERT INTO `dealer` VALUES ('DR201672941614', '海天有限公司', '天河区天河城30层', '顾少', '185778254955');
INSERT INTO `dealer` VALUES ('DR20167298743', '海克斯股份', '四川省成都市', '陈经理', '18526555321');
INSERT INTO `dealer` VALUES ('DR20168132958', '無所謂', '广州市', '海贼王', '18823563252');
INSERT INTO `dealer` VALUES ('DR201682043215', 'a', 'b', 'c', '18814093777');
INSERT INTO `dealer` VALUES ('DR20168284542', '王丽有限', '深圳', '王可', '18815469876');

-- ----------------------------
-- Table structure for `elective_info`
-- ----------------------------
DROP TABLE IF EXISTS `elective_info`;
CREATE TABLE `elective_info` (
  `elective_id` varchar(32) NOT NULL,
  `course_id` varchar(32) DEFAULT NULL,
  `stu_num` varchar(32) DEFAULT NULL,
  `elective_time` datetime DEFAULT NULL,
  `mig_grade` double DEFAULT NULL,
  `term_grade` double DEFAULT NULL,
  PRIMARY KEY (`elective_id`),
  KEY `FK_Reference_16` (`course_id`),
  KEY `FK_Reference_43` (`stu_num`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`course_id`) REFERENCES `course_information` (`course_id`),
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of elective_info
-- ----------------------------
INSERT INTO `elective_info` VALUES ('000001', '00001', '201600000003', '2016-08-11 17:05:11', '85', '55');
INSERT INTO `elective_info` VALUES ('000215', '00001', '111', null, null, '99');
INSERT INTO `elective_info` VALUES ('111111', '00001', '486', null, null, '77');
INSERT INTO `elective_info` VALUES ('4564684', '00001', '114', null, null, '88');
INSERT INTO `elective_info` VALUES ('546546', '00001', '113', null, null, '99');
INSERT INTO `elective_info` VALUES ('6876851', '00001', '112', null, null, '66');

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` varchar(20) NOT NULL,
  `major_id` varchar(32) DEFAULT NULL,
  `exam_name` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `apply_start` datetime DEFAULT NULL,
  `apply_end` datetime DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `FK_Reference_48` (`major_id`),
  CONSTRAINT `FK_Reference_48` FOREIGN KEY (`major_id`) REFERENCES `major_info` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('00000', '00001', '正式考试', '2016-09-24 00:00:00', '2016-07-29 00:00:00', '2016-09-03 00:00:00');
INSERT INTO `exam` VALUES ('00001', '00001', '又一次考试', '2016-09-25 00:00:00', '2016-08-04 00:00:00', '2016-09-22 00:00:00');
INSERT INTO `exam` VALUES ('00002', '00004', '土木的考试', '2016-10-01 00:00:00', '2016-08-17 00:00:00', '2016-09-09 00:00:00');
INSERT INTO `exam` VALUES ('00003', '00001', 'NARUTO', '2016-08-05 00:00:00', '2016-08-01 00:00:00', '2016-08-02 00:00:00');
INSERT INTO `exam` VALUES ('00004', '00003', '哈哈', '2016-08-20 00:00:00', '2016-08-04 00:00:00', '2016-08-05 00:00:00');
INSERT INTO `exam` VALUES ('00005', '00001', '哈哈', '2016-08-20 00:00:00', '2016-08-04 00:00:00', '2016-08-05 00:00:00');
INSERT INTO `exam` VALUES ('00006', '00001', '海贼王', '2016-08-28 00:00:00', '2016-08-02 00:00:00', '2016-08-03 00:00:00');
INSERT INTO `exam` VALUES ('00007', '00001', '新的考试', '2016-09-09 00:00:00', '2016-09-02 00:00:00', '2016-09-04 00:00:00');
INSERT INTO `exam` VALUES ('00008', '00001', '又是新的考试', '2016-10-01 00:00:00', '2016-09-03 00:00:00', '2016-09-15 00:00:00');
INSERT INTO `exam` VALUES ('00009', '00001', '还是新的考试', '2016-09-27 00:00:00', '2016-08-31 00:00:00', '2016-09-02 00:00:00');
INSERT INTO `exam` VALUES ('00010', '00001', '我的考试', '2016-09-16 00:00:00', '2016-08-31 00:00:00', '2016-09-02 00:00:00');
INSERT INTO `exam` VALUES ('00011', '00001', '继续考试', '2016-09-25 00:00:00', '2016-08-31 00:00:00', '2016-09-04 00:00:00');
INSERT INTO `exam` VALUES ('00012', '00001', '继续新的考试', '2016-10-01 00:00:00', '2016-09-04 00:00:00', '2016-09-07 00:00:00');
INSERT INTO `exam` VALUES ('00013', '00001', '来吧，考试', '2016-09-11 00:00:00', '2016-09-02 00:00:00', '2016-09-03 00:00:00');
INSERT INTO `exam` VALUES ('00014', '00001', '我的新的考试', '2016-09-11 00:00:00', '2016-09-09 00:00:00', '2016-09-10 00:00:00');

-- ----------------------------
-- Table structure for `exam_apply`
-- ----------------------------
DROP TABLE IF EXISTS `exam_apply`;
CREATE TABLE `exam_apply` (
  `apply_id` varchar(32) NOT NULL,
  `stu_num` varchar(32) DEFAULT NULL,
  `site_id` varchar(32) DEFAULT NULL,
  `exam_id` varchar(20) DEFAULT NULL,
  `exam_name` varchar(32) DEFAULT NULL,
  `sit_num` varchar(3) DEFAULT NULL,
  `exam_room` varchar(32) DEFAULT NULL,
  `exam_score` double DEFAULT NULL,
  `exam_num` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`apply_id`),
  KEY `FK_Reference_21` (`stu_num`),
  KEY `FK_Reference_28` (`site_id`),
  KEY `FK_Reference_40` (`exam_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`site_id`) REFERENCES `test_sites` (`site_id`),
  CONSTRAINT `FK_Reference_40` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_apply
-- ----------------------------
INSERT INTO `exam_apply` VALUES ('14DA4D145DC8483D985D932BB717EBB5', '201600000003', '01010004', '00003', 'NARUTO', '1', '1', null, '2016082800000003');
INSERT INTO `exam_apply` VALUES ('4890CA88BC1C452FA073BED7546928CF', '20130', '01010004', '00003', 'NARUTO', '0', '1', null, '2016082500000001');
INSERT INTO `exam_apply` VALUES ('791D3B31DC7741BB9A16E6B600BA3763', '20130', '01010004', '00006', '正式考试', '0', '1', null, '2016082400000000');
INSERT INTO `exam_apply` VALUES ('DA90D75A179F468195C65FACC81A5F63', '20130', '01010005', '00004', '又一次考试', '0', '1', null, '2016082600000002');

-- ----------------------------
-- Table structure for `exam_sites`
-- ----------------------------
DROP TABLE IF EXISTS `exam_sites`;
CREATE TABLE `exam_sites` (
  `exam_site_id` varchar(32) NOT NULL,
  `site_id` varchar(32) DEFAULT NULL,
  `exam_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`exam_site_id`),
  KEY `FK_Reference_45` (`site_id`),
  KEY `FK_Reference_46` (`exam_id`),
  CONSTRAINT `FK_Reference_45` FOREIGN KEY (`site_id`) REFERENCES `test_sites` (`site_id`),
  CONSTRAINT `FK_Reference_46` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_sites
-- ----------------------------
INSERT INTO `exam_sites` VALUES ('00003', '01010004', '00004');
INSERT INTO `exam_sites` VALUES ('00004', '01010004', '00004');
INSERT INTO `exam_sites` VALUES ('00005', '01010005', '00006');
INSERT INTO `exam_sites` VALUES ('00006', '01010006', '00004');
INSERT INTO `exam_sites` VALUES ('00007', '001', '00001');
INSERT INTO `exam_sites` VALUES ('00008', '51376913EAD34C5BB6712C6737902602', '00002');
INSERT INTO `exam_sites` VALUES ('123454', '01010004', '00003');
INSERT INTO `exam_sites` VALUES ('123456', '01010005', '00006');
INSERT INTO `exam_sites` VALUES ('1234567', '01010004', '00000');

-- ----------------------------
-- Table structure for `graduation_information`
-- ----------------------------
DROP TABLE IF EXISTS `graduation_information`;
CREATE TABLE `graduation_information` (
  `graduation_id` varchar(32) NOT NULL,
  `stu_num` varchar(32) DEFAULT NULL,
  `graduation_date` datetime DEFAULT NULL,
  `error_info` varchar(100) DEFAULT NULL,
  `lost_info` varchar(100) DEFAULT NULL,
  `lost_time` datetime DEFAULT NULL,
  PRIMARY KEY (`graduation_id`),
  KEY `FK_Reference_26` (`stu_num`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of graduation_information
-- ----------------------------
INSERT INTO `graduation_information` VALUES ('5039446C780F44E58EBA2A858BAA1A14', '111', null, '��ҵ֤ͳ���ϸ�֤��ҵ���ĺϸ�֤', 'finish', '2016-09-09 00:00:00');

-- ----------------------------
-- Table structure for `major_info`
-- ----------------------------
DROP TABLE IF EXISTS `major_info`;
CREATE TABLE `major_info` (
  `major_id` varchar(32) NOT NULL,
  `school_id` varchar(32) DEFAULT NULL,
  `major_name` varchar(32) DEFAULT NULL,
  `major_credit` double DEFAULT NULL,
  `major_reply` tinyint(4) DEFAULT NULL,
  `is_exam_together` tinyint(4) DEFAULT NULL,
  `major_type` varchar(32) DEFAULT NULL,
  `major_layer` varchar(32) DEFAULT NULL,
  `major_pro` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`major_id`),
  KEY `FK_Reference_49` (`school_id`),
  CONSTRAINT `FK_Reference_49` FOREIGN KEY (`school_id`) REFERENCES `school_information` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major_info
-- ----------------------------
INSERT INTO `major_info` VALUES ('00001', '003', '软件工程', '50', '1', '1', '计算机类专业', '高层次', '好性质');
INSERT INTO `major_info` VALUES ('00002', '002', '土木工程', '20', '1', '1', '土木类专业', '高层次', '最好的性质');
INSERT INTO `major_info` VALUES ('00003', '003', '金融学', '50', '0', '1', '金融类专业', '高层次', '这种性质');
INSERT INTO `major_info` VALUES ('00004', '002', '会计学', '50', '1', '1', '金融类专业', '高层次', '这种性质');
INSERT INTO `major_info` VALUES ('00005', '002', '信息管理', '10', '1', '0', '管理类专业', '高层次', '好兴致');
INSERT INTO `major_info` VALUES ('00006', '002', '金融一', '12', '0', '1', '1', '1', '1');
INSERT INTO `major_info` VALUES ('00007', '001', '金融二', '1', '1', '1', '21', '21', '21');
INSERT INTO `major_info` VALUES ('00008', '002', '动物科学', '50', '1', '0', '21', '2', '1');
INSERT INTO `major_info` VALUES ('00010', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00011', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00012', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00013', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00014', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00015', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00016', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00017', '001', '金融', null, '1', '1', '', '', '');
INSERT INTO `major_info` VALUES ('00018', '001', '金融', null, '1', '1', '', '', '');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` varchar(32) NOT NULL,
  `url` varchar(320) DEFAULT NULL,
  `menu_name` varchar(32) DEFAULT NULL,
  `father_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('00000', '/student/turnToBasicMessage', '基本信息', '基本信息');
INSERT INTO `menu` VALUES ('00001', '/user/user_manager', '查找用户', '用户管理');
INSERT INTO `menu` VALUES ('00002', '/user/userAuthority', '查看权限', '用户管理');
INSERT INTO `menu` VALUES ('00003', '/apply/checkApply', '查看报考进度和考生统计', '报名管理');
INSERT INTO `menu` VALUES ('00004', '/apply/trunToSetApplyTime', '报考时限设置', '报名管理');
INSERT INTO `menu` VALUES ('00005', '/site/turnToSiteManager', '管理设置考点', '考点管理');
INSERT INTO `menu` VALUES ('00006', '/siteMajor/turnToTestMajor', '考点专业设置', '考点管理');
INSERT INTO `menu` VALUES ('00007', '/major/turnToMajorManager', '专业设置', '专业课程管理');
INSERT INTO `menu` VALUES ('00008', '/course/turnToCourseManage', '课程设置', '专业课程管理');
INSERT INTO `menu` VALUES ('00009', '/exam/turnToExam', '考试设置', '考试管理');
INSERT INTO `menu` VALUES ('00010', '/score/skip', '成绩管理', '成绩管理');
INSERT INTO `menu` VALUES ('00011', '/score/skip1', '合格证打印', '成绩管理');
INSERT INTO `menu` VALUES ('00012', '/score/skip2', '违纪作弊管理', '成绩管理');
INSERT INTO `menu` VALUES ('00013', '/ERNM/skip1', '毕业生预提管理', '考籍管理');
INSERT INTO `menu` VALUES ('00014', '/ERNM/skip2', '毕业资格审查办理', '考籍管理');
INSERT INTO `menu` VALUES ('00015', '/ERNM/skip3', '证明遗失记录', '考籍管理');
INSERT INTO `menu` VALUES ('00016', '/ERNM/skip4', '出国留学证明办理', '考籍管理');
INSERT INTO `menu` VALUES ('00017', '/user', '所有用户操作', null);
INSERT INTO `menu` VALUES ('00018', '/apply', '所有申请操作', null);
INSERT INTO `menu` VALUES ('00019', '/score', '成绩操作', null);
INSERT INTO `menu` VALUES ('00020', '/ERNM', '毕业管理', null);
INSERT INTO `menu` VALUES ('00021', '/Controller4Jims/toUrl002', '征题管理', '命题管理');
INSERT INTO `menu` VALUES ('00022', '/Controller4Jims/toUrl0011', '抽题管理', '命题管理');
INSERT INTO `menu` VALUES ('00023', '/QuestionBankExtend/query3', '教材变更管理', '命题管理');
INSERT INTO `menu` VALUES ('00024', '/Controller4Jims/toUrl009', '题库管理', '命题管理');
INSERT INTO `menu` VALUES ('00025', '/Controller4Jims/toUrl004', '教材采购管理', '教材管理模块');
INSERT INTO `menu` VALUES ('00026', '/Controller4Jims/toUrl0010', '入库调拨管理', '教材管理模块');
INSERT INTO `menu` VALUES ('00027', '/Controller4Jims/toUrl006', '库存管理', '教材管理模块');
INSERT INTO `menu` VALUES ('00028', '/Controller4Jims/toUrl005', '预定邮购及退书管理', '教材管理模块');
INSERT INTO `menu` VALUES ('00029', '/FinanceBill/create', '教材财务管理', '教材管理模块');
INSERT INTO `menu` VALUES ('00030', '/Controller4Jims/toUrl003', '样卷管理', '命题管理');
INSERT INTO `menu` VALUES ('00031', '/student/studentMessage', '显示学生信息', '学生信息');
INSERT INTO `menu` VALUES ('00032', '/student/turnToExamApply', '申请考试', '考试申请');
INSERT INTO `menu` VALUES ('00033', '/menu', '菜单管理', null);
INSERT INTO `menu` VALUES ('00034', '/Controller4Jims', '命题管理和教材管理', null);
INSERT INTO `menu` VALUES ('00035', '/course', '课程管理', null);
INSERT INTO `menu` VALUES ('00036', '/Dealer', '供货商管理', null);
INSERT INTO `menu` VALUES ('00037', '/exam', '考试管理', null);
INSERT INTO `menu` VALUES ('00038', '/ERNM', '考试申请管理', null);
INSERT INTO `menu` VALUES ('00039', '/FinanceBill', '账单管理', null);
INSERT INTO `menu` VALUES ('00040', '/major', '专业管理', null);
INSERT INTO `menu` VALUES ('00041', '/QuestionBank', '题库', null);
INSERT INTO `menu` VALUES ('00042', '/QuestionBankExtend', '题库拓展', null);
INSERT INTO `menu` VALUES ('00043', '/Refund', '退订单', null);
INSERT INTO `menu` VALUES ('00044', '/Reserve', '交换', null);
INSERT INTO `menu` VALUES ('00045', '/score', '成绩', null);
INSERT INTO `menu` VALUES ('00046', '/site', '考点', null);
INSERT INTO `menu` VALUES ('00047', '/siteMajor', '考点专业', null);
INSERT INTO `menu` VALUES ('00048', '/student', '学生', null);
INSERT INTO `menu` VALUES ('00049', '/Textbookbill', '教材账单', null);
INSERT INTO `menu` VALUES ('00050', '/Textbook', '教材', null);
INSERT INTO `menu` VALUES ('00051', '/score/skip3', '课程成绩查询', '学生信息');
INSERT INTO `menu` VALUES ('00052', 'login', '登陆', null);
INSERT INTO `menu` VALUES ('00053', 'regist', '注册', null);
INSERT INTO `menu` VALUES ('00054', 'verify', '验证码', null);
INSERT INTO `menu` VALUES ('00055', 'logout', '登出', null);
INSERT INTO `menu` VALUES ('00056', 'menu', '菜单', null);
INSERT INTO `menu` VALUES ('00057', 'check', '检查注册', null);
INSERT INTO `menu` VALUES ('00058', 'updateUser', '更新用户', null);
INSERT INTO `menu` VALUES ('00059', 'Password', '密码操作', null);
INSERT INTO `menu` VALUES ('00060', 'changeMessage', '更改信息', null);
INSERT INTO `menu` VALUES ('00061', '/StudentquaryScore', '查询自己分数', null);

-- ----------------------------
-- Table structure for `privilege`
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `privilege_id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL,
  `privilege_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`),
  KEY `FK_Reference_50` (`role_id`),
  KEY `FK_Reference_51` (`menu_id`),
  CONSTRAINT `FK_Reference_50` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FK_Reference_51` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('000000', '000', '00000', '基本信息');
INSERT INTO `privilege` VALUES ('000001', '000', '00001', '查找用户');
INSERT INTO `privilege` VALUES ('000002', '000', '00002', '查看权限');
INSERT INTO `privilege` VALUES ('000003', '000', '00003', '查看报考进度和考生统计');
INSERT INTO `privilege` VALUES ('000005', '000', '00005', '管理设置考点');
INSERT INTO `privilege` VALUES ('000006', '000', '00006', '考点专业设置');
INSERT INTO `privilege` VALUES ('000007', '000', '00007', '专业设置');
INSERT INTO `privilege` VALUES ('000008', '000', '00008', '课程设置');
INSERT INTO `privilege` VALUES ('000009', '000', '00009', '考试设置');
INSERT INTO `privilege` VALUES ('000010', '000', '00010', '成绩管理');
INSERT INTO `privilege` VALUES ('000011', '000', '00011', '合格证打印');
INSERT INTO `privilege` VALUES ('000012', '000', '00012', '违纪作弊管理');
INSERT INTO `privilege` VALUES ('000013', '000', '00013', '毕业生预提');
INSERT INTO `privilege` VALUES ('000014', '000', '00014', '毕业资格审查办理');
INSERT INTO `privilege` VALUES ('000015', '000', '00015', '证明遗失记录');
INSERT INTO `privilege` VALUES ('000016', '000', '00016', '出国留学证明办理');
INSERT INTO `privilege` VALUES ('000017', '000', '00017', '用户信息管理');
INSERT INTO `privilege` VALUES ('000018', '000', '00018', '申请管理');
INSERT INTO `privilege` VALUES ('000019', '000', '00019', '考籍管理');
INSERT INTO `privilege` VALUES ('0000197', '003', '00061', '查询自己分数');
INSERT INTO `privilege` VALUES ('000020', '000', '00020', '毕业管理');
INSERT INTO `privilege` VALUES ('000021', '000', '00021', '征题管理');
INSERT INTO `privilege` VALUES ('000022', '000', '00022', '抽题管理');
INSERT INTO `privilege` VALUES ('000023', '000', '00023', '教材变更管理');
INSERT INTO `privilege` VALUES ('000024', '000', '00024', '题库管理');
INSERT INTO `privilege` VALUES ('000025', '000', '00025', '教材采购管理');
INSERT INTO `privilege` VALUES ('000026', '000', '00026', '入库调拨管理');
INSERT INTO `privilege` VALUES ('000027', '000', '00027', '库存管理');
INSERT INTO `privilege` VALUES ('000028', '000', '00028', '预定邮购及退书管理');
INSERT INTO `privilege` VALUES ('000029', '000', '00029', '教材财务管理');
INSERT INTO `privilege` VALUES ('000030', '000', '00030', '样卷管理');
INSERT INTO `privilege` VALUES ('000031', '000', '00033', '菜单管理');
INSERT INTO `privilege` VALUES ('000032', '000', '00034', '命题管理和教材管理');
INSERT INTO `privilege` VALUES ('000033', '000', '00035', '课程管理');
INSERT INTO `privilege` VALUES ('000034', '000', '00036', '供货商管理');
INSERT INTO `privilege` VALUES ('000035', '000', '00037', '考试管理');
INSERT INTO `privilege` VALUES ('000036', '000', '00038', '考试申请管理');
INSERT INTO `privilege` VALUES ('000037', '000', '00039', '帐单管理');
INSERT INTO `privilege` VALUES ('000038', '000', '00040', '专业管理');
INSERT INTO `privilege` VALUES ('000039', '000', '00041', '题库');
INSERT INTO `privilege` VALUES ('000040', '000', '00042', '题库拓展');
INSERT INTO `privilege` VALUES ('000041', '000', '00043', '退订单');
INSERT INTO `privilege` VALUES ('000042', '000', '00044', '交换');
INSERT INTO `privilege` VALUES ('000043', '000', '00045', '成绩');
INSERT INTO `privilege` VALUES ('000044', '000', '00046', '考点');
INSERT INTO `privilege` VALUES ('000045', '000', '00047', '考点专业');
INSERT INTO `privilege` VALUES ('000046', '000', '00049', '教材账单');
INSERT INTO `privilege` VALUES ('000047', '000', '00050', '教材');
INSERT INTO `privilege` VALUES ('000050', '001', '00000', '基本信息');
INSERT INTO `privilege` VALUES ('000051', '001', '00001', '查找用户');
INSERT INTO `privilege` VALUES ('000052', '001', '00002', '查看权限');
INSERT INTO `privilege` VALUES ('000053', '001', '00003', '查看报考进度和考生统计');
INSERT INTO `privilege` VALUES ('000055', '001', '00005', '管理设置考点');
INSERT INTO `privilege` VALUES ('000056', '001', '00006', '考点专业设置');
INSERT INTO `privilege` VALUES ('000057', '001', '00007', '专业设置');
INSERT INTO `privilege` VALUES ('000058', '001', '00008', '课程设置');
INSERT INTO `privilege` VALUES ('000059', '001', '00009', '考试设置');
INSERT INTO `privilege` VALUES ('000060', '001', '00010', '成绩管理');
INSERT INTO `privilege` VALUES ('000061', '001', '00011', '合格证打印');
INSERT INTO `privilege` VALUES ('000062', '001', '00012', '违纪作弊管理');
INSERT INTO `privilege` VALUES ('000063', '001', '00013', '毕业生预提');
INSERT INTO `privilege` VALUES ('000064', '001', '00014', '毕业资格审查办理');
INSERT INTO `privilege` VALUES ('000065', '001', '00015', '证明遗失记录');
INSERT INTO `privilege` VALUES ('000066', '001', '00016', '出国留学证明办理');
INSERT INTO `privilege` VALUES ('000067', '001', '00017', '用户信息管理');
INSERT INTO `privilege` VALUES ('000068', '001', '00018', '申请管理');
INSERT INTO `privilege` VALUES ('000069', '001', '00019', '考籍管理');
INSERT INTO `privilege` VALUES ('000070', '001', '00020', '毕业管理');
INSERT INTO `privilege` VALUES ('000071', '001', '00021', '征题管理');
INSERT INTO `privilege` VALUES ('000072', '001', '00022', '抽题管理');
INSERT INTO `privilege` VALUES ('000073', '001', '00023', '教材变更管理');
INSERT INTO `privilege` VALUES ('000074', '001', '00024', '题库管理');
INSERT INTO `privilege` VALUES ('000075', '001', '00025', '教材采购管理');
INSERT INTO `privilege` VALUES ('000076', '001', '00026', '入库调拨管理');
INSERT INTO `privilege` VALUES ('000077', '001', '00027', '库存管理');
INSERT INTO `privilege` VALUES ('000078', '001', '00028', '预定邮购及退书管理');
INSERT INTO `privilege` VALUES ('000079', '001', '00029', '教材财务管理');
INSERT INTO `privilege` VALUES ('000080', '001', '00030', '样卷管理');
INSERT INTO `privilege` VALUES ('000081', '001', '00033', '菜单管理');
INSERT INTO `privilege` VALUES ('000082', '001', '00034', '命题管理和教材管理');
INSERT INTO `privilege` VALUES ('000083', '001', '00035', '课程管理');
INSERT INTO `privilege` VALUES ('000084', '001', '00036', '供货商管理');
INSERT INTO `privilege` VALUES ('000085', '001', '00037', '考试管理');
INSERT INTO `privilege` VALUES ('000086', '001', '00038', '考试申请管理');
INSERT INTO `privilege` VALUES ('000087', '001', '00039', '帐单管理');
INSERT INTO `privilege` VALUES ('000088', '001', '00040', '专业管理');
INSERT INTO `privilege` VALUES ('000089', '001', '00041', '题库');
INSERT INTO `privilege` VALUES ('000090', '001', '00042', '题库拓展');
INSERT INTO `privilege` VALUES ('000091', '001', '00043', '退订单');
INSERT INTO `privilege` VALUES ('000092', '001', '00044', '交换');
INSERT INTO `privilege` VALUES ('000093', '001', '00045', '成绩');
INSERT INTO `privilege` VALUES ('000094', '001', '00046', '考点');
INSERT INTO `privilege` VALUES ('000095', '001', '00047', '考点专业');
INSERT INTO `privilege` VALUES ('000096', '001', '00049', '教材账单');
INSERT INTO `privilege` VALUES ('000097', '001', '00050', '教材');
INSERT INTO `privilege` VALUES ('000098', '001', '00048', '学生');
INSERT INTO `privilege` VALUES ('000099', '002', '00000', '基本信息');
INSERT INTO `privilege` VALUES ('000100', '002', '00003', '查看报考进度和考生统计');
INSERT INTO `privilege` VALUES ('000102', '002', '00005', '管理设置考点');
INSERT INTO `privilege` VALUES ('000103', '002', '00006', '考点专业设置');
INSERT INTO `privilege` VALUES ('000104', '002', '00007', '专业设置');
INSERT INTO `privilege` VALUES ('000105', '002', '00008', '课程设置');
INSERT INTO `privilege` VALUES ('000106', '002', '00009', '考试设置');
INSERT INTO `privilege` VALUES ('000107', '002', '00010', '成绩管理');
INSERT INTO `privilege` VALUES ('000108', '002', '00011', '合格证打印');
INSERT INTO `privilege` VALUES ('000109', '002', '00012', '违纪作弊管理');
INSERT INTO `privilege` VALUES ('000110', '002', '00013', '毕业生预提');
INSERT INTO `privilege` VALUES ('000111', '002', '00014', '毕业资格审查办理');
INSERT INTO `privilege` VALUES ('000112', '002', '00015', '证明遗失记录');
INSERT INTO `privilege` VALUES ('000113', '002', '00016', '出国留学证明办理');
INSERT INTO `privilege` VALUES ('000114', '002', '00017', '用户信息管理');
INSERT INTO `privilege` VALUES ('000115', '002', '00018', '申请管理');
INSERT INTO `privilege` VALUES ('000116', '002', '00019', '考籍管理');
INSERT INTO `privilege` VALUES ('000117', '002', '00020', '毕业管理');
INSERT INTO `privilege` VALUES ('000118', '002', '00021', '征题管理');
INSERT INTO `privilege` VALUES ('000119', '002', '00022', '抽题管理');
INSERT INTO `privilege` VALUES ('000120', '002', '00023', '教材变更管理');
INSERT INTO `privilege` VALUES ('000121', '002', '00024', '题库管理');
INSERT INTO `privilege` VALUES ('000122', '002', '00025', '教材采购管理');
INSERT INTO `privilege` VALUES ('000123', '002', '00026', '入库调拨管理');
INSERT INTO `privilege` VALUES ('000124', '002', '00027', '库存管理');
INSERT INTO `privilege` VALUES ('000125', '002', '00028', '预定邮购及退书管理');
INSERT INTO `privilege` VALUES ('000126', '002', '00029', '教材财务管理');
INSERT INTO `privilege` VALUES ('000127', '002', '00030', '样卷管理');
INSERT INTO `privilege` VALUES ('000128', '002', '00033', '菜单管理');
INSERT INTO `privilege` VALUES ('000129', '002', '00034', '命题管理和教材管理');
INSERT INTO `privilege` VALUES ('000130', '002', '00035', '课程管理');
INSERT INTO `privilege` VALUES ('000131', '002', '00036', '供货商管理');
INSERT INTO `privilege` VALUES ('000132', '002', '00037', '考试管理');
INSERT INTO `privilege` VALUES ('000133', '002', '00038', '考试申请管理');
INSERT INTO `privilege` VALUES ('000134', '002', '00039', '帐单管理');
INSERT INTO `privilege` VALUES ('000135', '002', '00040', '专业管理');
INSERT INTO `privilege` VALUES ('000136', '002', '00041', '题库');
INSERT INTO `privilege` VALUES ('000137', '002', '00042', '题库拓展');
INSERT INTO `privilege` VALUES ('000138', '002', '00043', '退订单');
INSERT INTO `privilege` VALUES ('000139', '002', '00044', '交换');
INSERT INTO `privilege` VALUES ('000140', '002', '00045', '成绩');
INSERT INTO `privilege` VALUES ('000141', '002', '00046', '考点');
INSERT INTO `privilege` VALUES ('000142', '002', '00047', '考点专业');
INSERT INTO `privilege` VALUES ('000143', '002', '00049', '教材账单');
INSERT INTO `privilege` VALUES ('000144', '002', '00050', '教材');
INSERT INTO `privilege` VALUES ('000146', '003', '00000', '基本信息');
INSERT INTO `privilege` VALUES ('000147', '003', '00048', '学生');
INSERT INTO `privilege` VALUES ('000148', '003', '00031', '显示学生信息');
INSERT INTO `privilege` VALUES ('000149', '003', '00032', '申请考试');
INSERT INTO `privilege` VALUES ('000150', '004', '00000', '基本信息');
INSERT INTO `privilege` VALUES ('000151', '003', '00051', '课程成绩');
INSERT INTO `privilege` VALUES ('000152', '000', '00052', '登陆');
INSERT INTO `privilege` VALUES ('000153', '000', '00053', '注册');
INSERT INTO `privilege` VALUES ('000154', '000', '00054', '验证码');
INSERT INTO `privilege` VALUES ('000155', '000', '00055', '登出');
INSERT INTO `privilege` VALUES ('000156', '000', '00056', '菜单');
INSERT INTO `privilege` VALUES ('000157', '000', '00057', '检查注册');
INSERT INTO `privilege` VALUES ('000158', '000', '00058', '更新用户');
INSERT INTO `privilege` VALUES ('000159', '000', '00059', '密码操作');
INSERT INTO `privilege` VALUES ('000160', '000', '00060', '更改信息');
INSERT INTO `privilege` VALUES ('000161', '001', '00052', '登陆');
INSERT INTO `privilege` VALUES ('000162', '001', '00053', '注册');
INSERT INTO `privilege` VALUES ('000163', '001', '00054', '验证码');
INSERT INTO `privilege` VALUES ('000164', '001', '00055', '登出');
INSERT INTO `privilege` VALUES ('000165', '001', '00056', '菜单');
INSERT INTO `privilege` VALUES ('000166', '001', '00057', '检查注册');
INSERT INTO `privilege` VALUES ('000167', '001', '00058', '更新用户');
INSERT INTO `privilege` VALUES ('000168', '001', '00059', '密码操作');
INSERT INTO `privilege` VALUES ('000169', '001', '00060', '更改信息');
INSERT INTO `privilege` VALUES ('000170', '002', '00052', '登陆');
INSERT INTO `privilege` VALUES ('000171', '002', '00053', '注册');
INSERT INTO `privilege` VALUES ('000172', '002', '00054', '验证码');
INSERT INTO `privilege` VALUES ('000173', '002', '00055', '登出');
INSERT INTO `privilege` VALUES ('000174', '002', '00056', '菜单');
INSERT INTO `privilege` VALUES ('000175', '002', '00057', '检查注册');
INSERT INTO `privilege` VALUES ('000176', '002', '00058', '更新用户');
INSERT INTO `privilege` VALUES ('000177', '002', '00059', '密码操作');
INSERT INTO `privilege` VALUES ('000178', '002', '00060', '更改信息');
INSERT INTO `privilege` VALUES ('000179', '003', '00052', '登陆');
INSERT INTO `privilege` VALUES ('000180', '003', '00053', '注册');
INSERT INTO `privilege` VALUES ('000181', '003', '00054', '验证码');
INSERT INTO `privilege` VALUES ('000182', '003', '00055', '登出');
INSERT INTO `privilege` VALUES ('000183', '003', '00056', '菜单');
INSERT INTO `privilege` VALUES ('000184', '003', '00057', '检查注册');
INSERT INTO `privilege` VALUES ('000185', '003', '00058', '更新用户');
INSERT INTO `privilege` VALUES ('000186', '003', '00059', '密码操作');
INSERT INTO `privilege` VALUES ('000187', '003', '00060', '更改信息');
INSERT INTO `privilege` VALUES ('000188', '004', '00052', '登陆');
INSERT INTO `privilege` VALUES ('000189', '004', '00053', '注册');
INSERT INTO `privilege` VALUES ('000190', '004', '00054', '验证码');
INSERT INTO `privilege` VALUES ('000191', '004', '00055', '登出');
INSERT INTO `privilege` VALUES ('000192', '004', '00056', '菜单');
INSERT INTO `privilege` VALUES ('000193', '004', '00057', '检查注册');
INSERT INTO `privilege` VALUES ('000194', '004', '00058', '更新用户');
INSERT INTO `privilege` VALUES ('000195', '004', '00059', '密码操作');
INSERT INTO `privilege` VALUES ('000196', '004', '00060', '更改信息');

-- ----------------------------
-- Table structure for `questionbank`
-- ----------------------------
DROP TABLE IF EXISTS `questionbank`;
CREATE TABLE `questionbank` (
  `questionbank_id` varchar(50) NOT NULL,
  `paper_type` varchar(20) DEFAULT NULL,
  `writer` varchar(20) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `used` int(11) DEFAULT NULL,
  `borrowed` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `testbook_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`questionbank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionbank
-- ----------------------------
INSERT INTO `questionbank` VALUES ('20000000', '测试样卷', '张三', '2016-08-28 16:27:59', '1', '0', '3', '00001');
INSERT INTO `questionbank` VALUES ('T201672944521', '经济学2015秋季考试', '丽水问', '2016-08-29 16:45:21', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672944535', '经济学考试2016春季季考试', '李文英', '2016-08-29 16:45:35', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T20167294454', '经济学2015春季考试', '阿斯达', '2016-08-29 16:45:05', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672944717', '经济学考试2016秋季考试', '任达', '2016-08-29 16:47:18', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672944827', '日语n2考试', '丽水问', '2016-08-29 16:48:28', '0', '1', '1', 'TBK20167294921');
INSERT INTO `questionbank` VALUES ('T201672944842', '人工智能考试', '阿斯达', '2016-08-29 16:48:43', '0', '0', '1', 'TBK20167294935');
INSERT INTO `questionbank` VALUES ('T201672945138', '经济学原理春季考试', '阿斯达', '2016-08-29 16:51:39', '0', '0', '1', 'TBK20167294836');
INSERT INTO `questionbank` VALUES ('T201672945229', '经济学2014春季考试', '阿斯达', '2016-08-29 16:52:30', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672945347', '经济学2013春季考试', '丽水问', '2016-08-29 16:53:47', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672945359', '经济学2012春季考试', '任达', '2016-08-29 16:54:00', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672945426', '经济学2012春季考试', '丽水问', '2016-08-29 16:54:27', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672945451', '经济学2013秋季考试', '阿斯达', '2016-08-29 16:54:52', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672945824', '日本语测试样卷02', '海思', '2016-08-29 16:58:25', '1', '0', '3', '00001');
INSERT INTO `questionbank` VALUES ('T201672945842', '经济学原理测试样卷', '阿斯达', '2016-08-29 16:58:43', '0', '0', '0', 'TBK20167294836');
INSERT INTO `questionbank` VALUES ('T20167294587', '日本语测试样卷', '海婷', '2016-08-29 16:58:08', '0', '0', '1', 'TBK20167294921');
INSERT INTO `questionbank` VALUES ('T20167295024', '数据结构', '阿斯达', '2016-08-29 17:00:24', '0', '1', '1', '00001');
INSERT INTO `questionbank` VALUES ('T20167295035', 'JAVA语言', '丽水问', '2016-08-29 17:00:36', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T2016729508', '数据库原理', '晚饭', '2016-08-29 17:00:09', '0', '1', '1', '00001');
INSERT INTO `questionbank` VALUES ('T20167297431', '市场营销2016年度考试', '王军', '2016-08-29 19:43:01', '0', '0', '3', 'TBK20167294836');
INSERT INTO `questionbank` VALUES ('T201672974324', '市场营销2015年度考试', '王军', '2016-08-29 19:43:25', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672974426', '雅思考试20168月', '海利斯', '2016-08-29 19:44:26', '0', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T201672974452', '黄冈密卷2016', '黄老师', '2016-08-29 19:44:52', '0', '0', '3', '00001');
INSERT INTO `questionbank` VALUES ('T2016813132', '经济学原理16年考试1', '任达', '2016-09-01 15:13:03', '0', '0', '3', 'TBK20167294836');
INSERT INTO `questionbank` VALUES ('T20168131330', '经济学原理16年考试2', '任达', '2016-09-01 15:13:30', '0', '0', '0', '00001');
INSERT INTO `questionbank` VALUES ('T20168143729', '中忍考试', '三代目火影', '2016-09-01 16:37:30', '0', '0', '3', 'TBK2016729898');
INSERT INTO `questionbank` VALUES ('T20168143935', '再不斩与白', '鸣人', '2016-09-01 16:39:35', '0', '0', '3', 'TBK2016729898');
INSERT INTO `questionbank` VALUES ('T20168144015', '经济学2016期中考试', '题录', '2016-09-01 16:40:16', '0', '0', '0', '00001');
INSERT INTO `questionbank` VALUES ('T20168144054', '日语n2考试', '日本考试院', '2016-09-01 16:40:54', '0', '0', '0', 'TBK20167294921');
INSERT INTO `questionbank` VALUES ('T20168144143', '日本n2九月份考试', '教育局外语部', '2016-09-01 16:41:44', '0', '0', '0', '00001');
INSERT INTO `questionbank` VALUES ('T20168144224', '人工智能15年考试', '李琴', '2016-09-01 16:42:25', '0', '0', '0', 'TBK20167294935');
INSERT INTO `questionbank` VALUES ('T20168144259', '算法考试', '凌风', '2016-09-01 16:43:00', '0', '0', '0', 'TBK20167294935');
INSERT INTO `questionbank` VALUES ('T20168144323', '使用教程考试', '卫生局', '2016-09-01 16:43:24', '0', '0', '3', 'TBK2016813318');
INSERT INTO `questionbank` VALUES ('T201682102415', '考试01', '海里', '2016-09-02 10:24:15', '0', '0', '0', 'TBK20167294836');
INSERT INTO `questionbank` VALUES ('T20168284157', '微观宏观经济学', '立即', '2016-09-02 08:41:58', '1', '0', '1', '00001');
INSERT INTO `questionbank` VALUES ('T20168284240', '海斯经济理论', '盈缺四天', '2016-09-02 08:42:41', '0', '0', '3', '00001');

-- ----------------------------
-- Table structure for `questionoutofstorage`
-- ----------------------------
DROP TABLE IF EXISTS `questionoutofstorage`;
CREATE TABLE `questionoutofstorage` (
  `borrow_record_id` varchar(32) NOT NULL,
  `questionbank_id` varchar(50) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `out_user_email` varchar(32) DEFAULT NULL,
  `in_user_email` varchar(32) DEFAULT NULL,
  `test_id` varchar(50) DEFAULT NULL,
  `borrow_time` datetime DEFAULT NULL,
  `pre_returntime` datetime DEFAULT NULL,
  `returen_time` datetime DEFAULT NULL,
  PRIMARY KEY (`borrow_record_id`),
  KEY `FK_Reference_36` (`email`),
  KEY `FK_Reference_37` (`out_user_email`),
  KEY `FK_Reference_38` (`in_user_email`),
  KEY `FK_Reference_39` (`questionbank_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  CONSTRAINT `FK_Reference_37` FOREIGN KEY (`out_user_email`) REFERENCES `user` (`email`),
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`in_user_email`) REFERENCES `user` (`email`),
  CONSTRAINT `FK_Reference_39` FOREIGN KEY (`questionbank_id`) REFERENCES `questionbank` (`questionbank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionoutofstorage
-- ----------------------------
INSERT INTO `questionoutofstorage` VALUES ('B201672945911', 'T201672944827', '123', '001@001.com', '001@001.com', null, '2016-08-29 16:59:11', '2016-09-18 16:59:11', '2016-08-29 17:39:49');
INSERT INTO `questionoutofstorage` VALUES ('B201672945923', 'T201672945824', '123', '001@001.com', '001@001.com', null, '2016-08-29 16:59:23', '2016-09-18 16:59:23', '2016-08-29 16:59:31');
INSERT INTO `questionoutofstorage` VALUES ('B20167295052', 'T20167295035', '123', '001@001.com', '001@001.com', null, '2016-08-29 17:00:52', '2016-09-18 17:00:52', '2016-08-29 20:02:06');
INSERT INTO `questionoutofstorage` VALUES ('B20167295113', 'T2016729508', '123', '001@001.com', null, null, '2016-08-29 17:01:14', '2016-09-18 17:01:14', null);
INSERT INTO `questionoutofstorage` VALUES ('B2016729514', 'T20167295024', '123', '001@001.com', null, null, '2016-08-29 17:01:05', '2016-09-18 17:01:05', null);
INSERT INTO `questionoutofstorage` VALUES ('B20167298155', 'T201672944827', '123', '001@001.com', null, null, '2016-08-29 20:01:56', '2016-09-18 20:01:56', null);
INSERT INTO `questionoutofstorage` VALUES ('B20167298644', 'T201672944521', '005', '001@001.com', '001@001.com', null, '2016-08-29 20:06:44', '2016-09-18 20:06:44', '2016-08-29 20:06:52');
INSERT INTO `questionoutofstorage` VALUES ('B201682102726', 'T201672944535', '005@005.com', '001@001.com', '001@001.com', null, '2016-09-02 10:27:27', '2016-09-22 10:27:27', '2016-09-02 10:28:20');
INSERT INTO `questionoutofstorage` VALUES ('B20168284429', 'T201672944521', '005@005.com', '001@001.com', '001@001.com', null, '2016-09-02 08:44:29', '2016-09-22 08:44:29', '2016-09-02 08:44:36');

-- ----------------------------
-- Table structure for `refund`
-- ----------------------------
DROP TABLE IF EXISTS `refund`;
CREATE TABLE `refund` (
  `Refund_id` varchar(32) NOT NULL,
  `textbook_id` varchar(32) DEFAULT NULL,
  `textbook_io_id` varchar(32) DEFAULT NULL,
  `refund_time` datetime DEFAULT NULL,
  `refund_amount` double DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `refund_price` double DEFAULT NULL,
  PRIMARY KEY (`Refund_id`),
  KEY `FK_Reference_35` (`textbook_id`),
  KEY `FK_Reference_41` (`textbook_io_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`textbook_id`),
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`textbook_io_id`) REFERENCES `textbook_bill` (`textbook_io_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refund
-- ----------------------------
INSERT INTO `refund` VALUES ('TD201672942618', 'TBK20167294836', 'TB201672942140', '2016-08-29 16:26:18', '50', '不知道', '25');
INSERT INTO `refund` VALUES ('TD201672942659', 'TBK20167294935', 'TB20167294250', '2016-08-29 16:27:00', '50', '出新版了', '40');
INSERT INTO `refund` VALUES ('TD201672981347', 'TBK20167294935', 'TB201672981319', '2016-08-29 20:13:48', '20', '版本不对', '50');
INSERT INTO `refund` VALUES ('TD20168133831', '00001', 'TB201672942339', '2016-09-01 15:38:32', '10', '123', '20');
INSERT INTO `refund` VALUES ('TD201682103341', '00001', 'TB201682103327', '2016-09-02 10:33:41', '10', '456', '50');

-- ----------------------------
-- Table structure for `reserve`
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve` (
  `reserve_id` varchar(32) NOT NULL,
  `textbook_id` varchar(32) DEFAULT NULL,
  `dealer_id` varchar(32) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `reserve_time` datetime DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`reserve_id`),
  KEY `FK_Reference_32` (`textbook_id`),
  KEY `FK_Reference_34` (`dealer_id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`textbook_id`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`dealer_id`) REFERENCES `dealer` (`dealer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES ('RE201672941631', 'TBK20167294836', '000001', '20', '2016-08-29 16:16:32', '100');
INSERT INTO `reserve` VALUES ('RE201672941730', 'TBK20167294935', 'DR20167294150', '30', '2016-08-29 16:17:30', '200');
INSERT INTO `reserve` VALUES ('RE201672941745', '00001', 'DR201672941531', '25', '2016-08-29 16:17:46', '600');
INSERT INTO `reserve` VALUES ('RE201672941759', 'TBK20167294921', 'DR20167294150', '50', '2016-08-29 16:17:59', '150');
INSERT INTO `reserve` VALUES ('RE201672941813', 'TBK20167294921', 'DR20167298743', '60', '2016-08-29 16:18:13', '120');
INSERT INTO `reserve` VALUES ('RE20167298755', '00001', '000001', '50', '2016-08-29 20:07:55', '520');
INSERT INTO `reserve` VALUES ('RE20168133013', 'TBK20167294935', 'DR201672941614', '20', '2016-09-01 15:30:13', '500');
INSERT INTO `reserve` VALUES ('RE201682102934', '00001', 'DR201672941531', '50', '2016-09-02 10:29:34', '30');
INSERT INTO `reserve` VALUES ('RE20168284611', 'TBK20167294935', 'DR20168132958', '50', '2016-09-02 08:46:12', '500');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(32) NOT NULL,
  `role_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('000', '超级管理员');
INSERT INTO `role` VALUES ('001', '管理员');
INSERT INTO `role` VALUES ('002', '教师');
INSERT INTO `role` VALUES ('003', '学生');
INSERT INTO `role` VALUES ('004', '临时人员');

-- ----------------------------
-- Table structure for `school_information`
-- ----------------------------
DROP TABLE IF EXISTS `school_information`;
CREATE TABLE `school_information` (
  `school_id` varchar(32) NOT NULL,
  `school_name` varchar(32) DEFAULT NULL,
  `school_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_information
-- ----------------------------
INSERT INTO `school_information` VALUES ('001', '一号大学', '成都市武侯区');
INSERT INTO `school_information` VALUES ('002', '二号大学', '广州市海珠区');
INSERT INTO `school_information` VALUES ('003', '三号大学', '里约');

-- ----------------------------
-- Table structure for `site_state_record`
-- ----------------------------
DROP TABLE IF EXISTS `site_state_record`;
CREATE TABLE `site_state_record` (
  `record_id` varchar(32) NOT NULL,
  `site_state_id` varchar(32) DEFAULT NULL,
  `site_id` varchar(32) DEFAULT NULL,
  `reason` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FK_Reference_30` (`site_state_id`),
  KEY `FK_Reference_31` (`site_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`site_state_id`) REFERENCES `test_site_state` (`site_state_id`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`site_id`) REFERENCES `test_sites` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_state_record
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_num` varchar(32) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `school_id` varchar(32) DEFAULT NULL,
  `major_id` varchar(20) DEFAULT NULL,
  `graduate_state` int(11) DEFAULT NULL,
  `essay_remark` double DEFAULT NULL,
  `id_card` varchar(32) DEFAULT NULL,
  `exam_score` double DEFAULT NULL,
  `contact_person` varchar(32) DEFAULT NULL,
  `contact_phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`stu_num`),
  KEY `FK_Reference_15` (`email`),
  KEY `FK_Reference_44` (`school_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  CONSTRAINT `FK_Reference_44` FOREIGN KEY (`school_id`) REFERENCES `school_information` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('111', 'A@B.com', null, '00001', '7', '45', null, '78', null, null);
INSERT INTO `student` VALUES ('112', 'B@C.com', null, '00001', '5', '65', null, '45', null, null);
INSERT INTO `student` VALUES ('113', 'D@E.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('114', 'E@F.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('115', 'F@G.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('116', 'G@H.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('117', 'I@J.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('118', 'J@K.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('119', 'M@N.com', null, '00001', '5', null, null, null, null, null);
INSERT INTO `student` VALUES ('20130', '001@001.com', '002', '00001', '5', '90', '20', '85', '20', '20');
INSERT INTO `student` VALUES ('201600000001', '002@002.com', null, '00001', null, null, null, null, null, null);
INSERT INTO `student` VALUES ('201600000002', '003@003.com', null, '00001', null, '88', null, '77', null, null);
INSERT INTO `student` VALUES ('201600000003', '004@004.com', '001', '00003', '5', '89', '12344455', '88', '112', '111111');
INSERT INTO `student` VALUES ('201600000013', '006@006.com', '001', '00001', '1', null, '42353462525', null, '张三', '18813752456');
INSERT INTO `student` VALUES ('486', '486@486.com', null, '00001', '5', '99', null, '88', null, '486486486');

-- ----------------------------
-- Table structure for `study_abroad`
-- ----------------------------
DROP TABLE IF EXISTS `study_abroad`;
CREATE TABLE `study_abroad` (
  `stu_num` varchar(32) NOT NULL,
  `destination_c` varchar(32) DEFAULT NULL,
  `destination_s` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`stu_num`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of study_abroad
-- ----------------------------
INSERT INTO `study_abroad` VALUES ('20130', '英国', '加州大学伯克利分校');

-- ----------------------------
-- Table structure for `stu_award`
-- ----------------------------
DROP TABLE IF EXISTS `stu_award`;
CREATE TABLE `stu_award` (
  `award_id` varchar(32) NOT NULL,
  `stu_num` varchar(32) DEFAULT NULL,
  `award_time` datetime DEFAULT NULL,
  `award_detail` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`award_id`),
  KEY `FK_Reference_25` (`stu_num`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_award
-- ----------------------------

-- ----------------------------
-- Table structure for `stu_punishment`
-- ----------------------------
DROP TABLE IF EXISTS `stu_punishment`;
CREATE TABLE `stu_punishment` (
  `punish_id` varchar(32) NOT NULL,
  `stu_num` varchar(32) DEFAULT NULL,
  `punish_time` datetime DEFAULT NULL,
  `punish_detail` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `apply_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`punish_id`),
  KEY `FK_Reference_27` (`stu_num`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`stu_num`) REFERENCES `student` (`stu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_punishment
-- ----------------------------

-- ----------------------------
-- Table structure for `test_sites`
-- ----------------------------
DROP TABLE IF EXISTS `test_sites`;
CREATE TABLE `test_sites` (
  `site_id` varchar(32) NOT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `site_address` varchar(100) DEFAULT NULL,
  `site_room_number` int(11) DEFAULT NULL,
  `site_linkman` varchar(20) DEFAULT NULL,
  `site_linkphone` varchar(20) DEFAULT NULL,
  `site_state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_sites
-- ----------------------------
INSERT INTO `test_sites` VALUES ('001', '一号考点', '是', '10', '宇宙最帅伦', '23556974', '0002');
INSERT INTO `test_sites` VALUES ('003', '二号考点', '四川市', '20', '李四', '53663204', '0002');
INSERT INTO `test_sites` VALUES ('01010004', '六号考点', '纽约', '30', '张兵', '123456999', '0003');
INSERT INTO `test_sites` VALUES ('01010005', '八号考点', '波士顿', '30', '马奇', '987645123', '0002');
INSERT INTO `test_sites` VALUES ('01010006', '十号考点', '地对地导弹', '22', '海王祭奥', '12354678', '0001');
INSERT INTO `test_sites` VALUES ('01010007', '测试考点', '成都市', '30', '张三', '12234564', '0001');
INSERT INTO `test_sites` VALUES ('01010008', '测试考点', '广州市', '30', '李四', '12234564', '0001');
INSERT INTO `test_sites` VALUES ('01010009', '有一测试考点', '哈尔滨', '30', '章三三', '13336523655', '0001');
INSERT INTO `test_sites` VALUES ('01010010', '一个考点', '内蒙古', '30', '李思思', '23652333', '0001');
INSERT INTO `test_sites` VALUES ('01010011', '一个我的考点', '哈尔滨', '30', '李四好', '1332654863', '0001');
INSERT INTO `test_sites` VALUES ('01010012', '新的考点', '成都市', '30', '张三', '13352652312', '0001');
INSERT INTO `test_sites` VALUES ('51376913EAD34C5BB6712C6737902602', '三号考点', '里约', '20', '马六', '18813532552', '0002');
INSERT INTO `test_sites` VALUES ('D6F078E032A04F2A8CB38CB26B328BAA', '四号考点', '蒙古', '35', '陈七', '1352266584', '0001');

-- ----------------------------
-- Table structure for `test_site_state`
-- ----------------------------
DROP TABLE IF EXISTS `test_site_state`;
CREATE TABLE `test_site_state` (
  `site_state_id` varchar(32) NOT NULL,
  `site_state_name` varchar(32) DEFAULT NULL,
  `site_state_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`site_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_site_state
-- ----------------------------
INSERT INTO `test_site_state` VALUES ('0001', '启用', '正常使用');
INSERT INTO `test_site_state` VALUES ('0002', '待用', '等待使用');
INSERT INTO `test_site_state` VALUES ('0003', '停用', '停止使用');

-- ----------------------------
-- Table structure for `textbook`
-- ----------------------------
DROP TABLE IF EXISTS `textbook`;
CREATE TABLE `textbook` (
  `textbook_id` varchar(32) NOT NULL,
  `course_id` varchar(32) DEFAULT NULL,
  `booktype` varchar(32) DEFAULT NULL,
  `bookname` varchar(50) DEFAULT NULL,
  `book_storage` int(11) DEFAULT NULL,
  `is_overdue` varchar(20) DEFAULT NULL,
  `overdue_time` datetime DEFAULT NULL,
  `overdue_reason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`textbook_id`),
  KEY `FK_Reference_47` (`course_id`),
  CONSTRAINT `FK_Reference_47` FOREIGN KEY (`course_id`) REFERENCES `course_information` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook
-- ----------------------------
INSERT INTO `textbook` VALUES ('00001', '001', '哈哈', '经济', '620', '000', '2016-08-29 17:38:59', '');
INSERT INTO `textbook` VALUES ('TBK20167294836', '001', '教学用书', '经济学原理', '650', '000', '2016-08-29 19:45:43', '');
INSERT INTO `textbook` VALUES ('TBK20167294921', '00001', '测试用', '标准日本语', '250', '000', null, '');
INSERT INTO `textbook` VALUES ('TBK20167294935', '00002', '教学', '人工智能', '350', '000', null, null);
INSERT INTO `textbook` VALUES ('TBK2016729898', '00001', '教学', '火影忍者', '5000', '000', '2016-09-02 10:30:57', '');
INSERT INTO `textbook` VALUES ('TBK2016813318', '001', '教学', '浸灰剂', '6000', '111', '2016-09-02 08:47:46', '无效课本信息');

-- ----------------------------
-- Table structure for `textbook_bill`
-- ----------------------------
DROP TABLE IF EXISTS `textbook_bill`;
CREATE TABLE `textbook_bill` (
  `textbook_io_id` varchar(32) NOT NULL,
  `textbook_id` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `Textbook_iotime` datetime DEFAULT NULL,
  `textbook_iocount` int(11) DEFAULT NULL,
  `textbook_price` double DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `post_price` double DEFAULT NULL,
  PRIMARY KEY (`textbook_io_id`),
  KEY `FK_Reference_33` (`textbook_id`),
  KEY `FK_Reference_42` (`email`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`textbook_id`) REFERENCES `textbook` (`textbook_id`),
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of textbook_bill
-- ----------------------------
INSERT INTO `textbook_bill` VALUES ('TB201672942140', 'TBK20167294836', '001@001.com', '2016-08-29 16:21:40', '-111', '60', '成都科技大学清水河校区', '110');
INSERT INTO `textbook_bill` VALUES ('TB201672942339', '00001', '123', '2016-08-29 16:23:40', '-111', '65', '成都科技大学清水河校区', '120');
INSERT INTO `textbook_bill` VALUES ('TB201672942410', '00001', '123', '2016-08-29 16:24:10', '100', '50', '四川科技大学', '20');
INSERT INTO `textbook_bill` VALUES ('TB20167294250', 'TBK20167294935', '123', '2016-08-29 16:25:01', '-111', '50', '华南农业大学', '15');
INSERT INTO `textbook_bill` VALUES ('TB201672942638', 'TBK20167294935', '123', '2016-08-29 16:26:39', '100', '50', '华南农业大学', '120');
INSERT INTO `textbook_bill` VALUES ('TB201672981319', 'TBK20167294935', '005', '2016-08-29 20:13:20', '-111', '65', '华南农业大学', '20');
INSERT INTO `textbook_bill` VALUES ('TB20168133621', '00001', '123', '2016-09-01 15:36:22', '200', '60', '成都科技大学清水河校区', '110');
INSERT INTO `textbook_bill` VALUES ('TB201682103327', '00001', '005@005.com', '2016-09-02 10:33:27', '-111', '50', '123', '123');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  `address` varchar(52) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `FK_Reference_19` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001@001.com', '000', '001', '张伟伦', '0', '广州市番禺区', '123465786');
INSERT INTO `user` VALUES ('002@002.com', '001', '002', '流汗', '1', '广州市', '111222333');
INSERT INTO `user` VALUES ('003@003.com', '002', '0000003', '哈哈', '0', '纽约', '18813755555');
INSERT INTO `user` VALUES ('004@004.com', '003', '004', '测试', '0', '成都', '123456');
INSERT INTO `user` VALUES ('005', '003', '004', '111', '1', '成都市', '00');
INSERT INTO `user` VALUES ('005@005.com', '004', '005', '路人', '1', '街边', '1234534');
INSERT INTO `user` VALUES ('006@006.com', '003', '123456', '马六', '1', '广州市华南农业大学', '18813256253');
INSERT INTO `user` VALUES ('007@007.com', '004', '1234567', '王琦', '0', '成都市', '18813752563');
INSERT INTO `user` VALUES ('008@008.com', '004', '123456', '张三', '0', '成都市', '18813526321');
INSERT INTO `user` VALUES ('009@qq.com', '004', '12345', 'xiaominh', '1', 'sichangh', '18824095787');
INSERT INTO `user` VALUES ('123', '004', '123', '任达', '1', '村口垃圾站', '123654');
INSERT INTO `user` VALUES ('486@486.com', '004', '486', '486', '1', '成都市', '486486486');
INSERT INTO `user` VALUES ('A@B.com', '004', '000', 'Emiria', '1', '成都市', '486');
INSERT INTO `user` VALUES ('B@C.com', '004', '000', 'Puck', '1', '成都市', '486');
INSERT INTO `user` VALUES ('C@D.com', '004', '000', 'Rem', '1', '成都市', '486');
INSERT INTO `user` VALUES ('D@E.com', '004', '000', 'Ram', '1', '成都市', '486');
INSERT INTO `user` VALUES ('E@F.com', '004', '000', 'Beatrice', '1', '成都市', '486');
INSERT INTO `user` VALUES ('F@G.com', '004', '000', 'Wilhelm van Astrea', '1', '成都市', '486');
INSERT INTO `user` VALUES ('G@H.com', '004', '000', 'Felix Argyle', '1', '成都市', '486');
INSERT INTO `user` VALUES ('I@J.com', '004', '000', 'Okabe Rintarou', '1', '成都市', '486');
INSERT INTO `user` VALUES ('J@K.com', '004', '000', 'Makise Kurisu', '1', '成都市', '486');
INSERT INTO `user` VALUES ('K@L.com', '004', '000', '777', '1', '成都市', '486');
INSERT INTO `user` VALUES ('M@N.com', '004', '000', '888', '1', '成都市', '486');
