CREATE TABLE `a` (
  `id` int(13) NOT NULL,
  `name` varchar(11) NOT NULL,
  `deptId` varchar(10) NOT NULL,
  `depName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `progress`.`a` (`id`, `name`, `deptId`, `depName`) VALUES (1, '小王', '', NULL);
INSERT INTO `progress`.`a` (`id`, `name`, `deptId`, `depName`) VALUES (2, '小李', '', NULL);
INSERT INTO `progress`.`a` (`id`, `name`, `deptId`, `depName`) VALUES (3, '小刘', '', NULL);
CREATE TABLE `b` (
  `id` int(11) NOT NULL,
  `A_id` int(11) DEFAULT NULL,
  `job` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `progress`.`b` (`id`, `A_id`, `job`) VALUES (1, 2, '老师');
INSERT INTO `progress`.`b` (`id`, `A_id`, `job`) VALUES (2, 4, '程序员');
CREATE TABLE `employee_information` (
  `employee` varchar(255) NOT NULL,
  `dept_id` varchar(255) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`employee`) USING BTREE,
  KEY `employee_index` (`employee`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `progress`.`employee_information` (`employee`, `dept_id`, `dept_name`) VALUES ('10001', '456789', '公共开发部');
CREATE TABLE `my_test` (
  `id` int(15) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(15) NOT NULL COMMENT '姓名',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1571 DEFAULT CHARSET=utf8;
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1562, '申莉', '2021-08-22 02:21:03');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1563, '申莉', '2021-08-22 02:22:22');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1564, '申莉', '2021-08-22 02:24:34');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1565, '申莉', '2021-08-22 02:27:28');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1566, '申莉', '2021-08-22 02:31:41');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1567, '申莉', '2021-08-22 02:39:33');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1568, '孙伟', '2021-08-22 03:35:43');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1569, '孙伟', '2021-08-22 03:41:30');
INSERT INTO `progress`.`my_test` (`id`, `name`, `create_time`) VALUES (1570, '孙伟', '2021-08-22 03:47:56');
CREATE TABLE `user` (
  `name` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `id` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `progress`.`user` (`name`, `password`, `id`) VALUES ('test1', '123', 1001);
INSERT INTO `progress`.`user` (`name`, `password`, `id`) VALUES ('test2', '123', 1002);
