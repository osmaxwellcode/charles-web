PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "gen_table";
CREATE TABLE "gen_table" (
  "table_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "table_name" text(200),
  "table_comment" text(500),
  "sub_table_name" TEXT(64),
  "sub_table_fk_name" TEXT(64),
  "class_name" text(100),
  "tpl_category" text(200) DEFAULT 'crud',
  "package_name" text(100),
  "module_name" text(30),
  "business_name" text(30),
  "function_name" text(50),
  "function_author" text(50),
  "gen_type" TEXT(1) DEFAULT '0',
  "gen_path" TEXT(200) DEFAULT '/',
  "options" text(1000),
  "create_by" text(64),
  "create_time" text,
  "update_by" text(64),
  "update_time" text,
  "remark" text(500)
);

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO "gen_table" VALUES (6, 'sys_config', NULL, NULL, NULL, 'SysConfig', 'crud', 'io.charles.project.system', 'system', 'config', NULL, 'webapp', 0, '/', NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL, NULL);
INSERT INTO "gen_table" VALUES (7, 'sys_dept', NULL, NULL, NULL, 'SysDept', 'crud', 'io.charles.project.system', 'system', 'dept', NULL, 'webapp', 0, '/', NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "gen_table_column";
CREATE TABLE "gen_table_column" (
  "column_id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "table_id" text(64),
  "column_name" text(200),
  "column_comment" text(500),
  "column_type" text(100),
  "java_type" text(500),
  "java_field" text(200),
  "is_pk" text(1),
  "is_increment" text(1),
  "is_required" text(1),
  "is_insert" text(1),
  "is_edit" text(1),
  "is_list" text(1),
  "is_query" text(1),
  "query_type" text(200) DEFAULT 'EQ',
  "html_type" text(200),
  "dict_type" text(200),
  "sort" integer(11),
  "create_by" text(64),
  "create_time" text,
  "update_by" text(64),
  "update_time" text
);

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO "gen_table_column" VALUES (82, 6, 'config_id', NULL, 'INTEGER', 'String', 'configId', 1, NULL, 1, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (83, 6, 'config_name', NULL, 'TEXT(100)', 'String', 'configName', 0, NULL, 0, 1, 1, 1, 1, 'LIKE', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (84, 6, 'config_key', NULL, 'TEXT(100)', 'String', 'configKey', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (85, 6, 'config_value', NULL, 'TEXT(500)', 'String', 'configValue', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (86, 6, 'config_type', NULL, 'TEXT(1)', 'String', 'configType', 0, NULL, 0, 1, 1, 1, 1, 'EQ', 'select', NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (87, 6, 'create_by', NULL, 'TEXT(64)', 'String', 'createBy', 0, NULL, 0, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (88, 6, 'create_time', NULL, 'TEXT', 'String', 'createTime', 0, NULL, 0, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (89, 6, 'update_by', NULL, 'TEXT(64)', 'String', 'updateBy', 0, NULL, 0, 1, 1, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (90, 6, 'update_time', NULL, 'TEXT', 'String', 'updateTime', 0, NULL, 0, 1, 1, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (91, 6, 'remark', NULL, 'TEXT(500)', 'String', 'remark', 0, NULL, 0, 1, 1, 1, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:01:37', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (92, 7, 'dept_id', NULL, 'INTEGER', 'String', 'deptId', 1, NULL, 1, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (93, 7, 'parent_id', NULL, 'INTEGER(20)', 'String', 'parentId', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (94, 7, 'ancestors', NULL, 'TEXT(50)', 'String', 'ancestors', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (95, 7, 'dept_name', NULL, 'TEXT(30)', 'String', 'deptName', 0, NULL, 0, 1, 1, 1, 1, 'LIKE', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (96, 7, 'order_num', NULL, 'INTEGER(4)', 'String', 'orderNum', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (97, 7, 'leader', NULL, 'TEXT(20)', 'String', 'leader', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (98, 7, 'phone', NULL, 'TEXT(11)', 'String', 'phone', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (99, 7, 'email', NULL, 'TEXT(50)', 'String', 'email', 0, NULL, 0, 1, 1, 1, 1, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (100, 7, 'status', NULL, 'TEXT(1)', 'String', 'status', 0, NULL, 0, 1, 1, 1, 1, 'EQ', 'radio', NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (101, 7, 'del_flag', NULL, 'TEXT(1)', 'String', 'delFlag', 0, NULL, 0, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (102, 7, 'create_by', NULL, 'TEXT(64)', 'String', 'createBy', 0, NULL, 0, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (103, 7, 'create_time', NULL, 'TEXT', 'String', 'createTime', 0, NULL, 0, 1, NULL, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (104, 7, 'update_by', NULL, 'TEXT(64)', 'String', 'updateBy', 0, NULL, 0, 1, 1, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);
INSERT INTO "gen_table_column" VALUES (105, 7, 'update_time', NULL, 'TEXT', 'String', 'updateTime', 0, NULL, 0, 1, 1, NULL, NULL, 'EQ', NULL, NULL, NULL, 'admin', '2021-09-12 14:08:43', NULL, NULL);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_blob_triggers";
CREATE TABLE "qrtz_blob_triggers" (
  "sched_name" text(120) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "blob_data" blob,
  PRIMARY KEY ("sched_name", "trigger_name", "trigger_group"),
  CONSTRAINT "qrtz_blob_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_calendars";
CREATE TABLE "qrtz_calendars" (
  "sched_name" text(120) NOT NULL,
  "calendar_name" text(200) NOT NULL,
  "calendar" blob NOT NULL,
  PRIMARY KEY ("sched_name", "calendar_name")
);

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_cron_triggers";
CREATE TABLE "qrtz_cron_triggers" (
  "sched_name" text(120) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "cron_expression" text(200) NOT NULL,
  "time_zone_id" text(80),
  PRIMARY KEY ("sched_name", "trigger_name", "trigger_group"),
  CONSTRAINT "qrtz_cron_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO "qrtz_cron_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO "qrtz_cron_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO "qrtz_cron_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_fired_triggers";
CREATE TABLE "qrtz_fired_triggers" (
  "sched_name" text(120) NOT NULL,
  "entry_id" text(95) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "instance_name" text(200) NOT NULL,
  "fired_time" integer(20) NOT NULL,
  "sched_time" integer(20) NOT NULL,
  "priority" integer(11) NOT NULL,
  "state" text(16) NOT NULL,
  "job_name" text(200),
  "job_group" text(200),
  "is_nonconcurrent" text(1),
  "requests_recovery" text(1),
  PRIMARY KEY ("sched_name", "entry_id")
);

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_job_details";
CREATE TABLE "qrtz_job_details" (
  "sched_name" text(120) NOT NULL,
  "job_name" text(200) NOT NULL,
  "job_group" text(200) NOT NULL,
  "description" text(250),
  "job_class_name" text(250) NOT NULL,
  "is_durable" text(1) NOT NULL,
  "is_nonconcurrent" text(1) NOT NULL,
  "is_update_data" text(1) NOT NULL,
  "requests_recovery" text(1) NOT NULL,
  "job_data" blob,
  PRIMARY KEY ("sched_name", "job_name", "job_group")
);

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO "qrtz_job_details" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'io.charles.common.utils.job.QuartzDisallowConcurrentExecution', 0, 1, 0, 0, 'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E0009787074000561646D696E74000A323032312D30382D323670707070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800');
INSERT INTO "qrtz_job_details" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'io.charles.common.utils.job.QuartzDisallowConcurrentExecution', 0, 1, 0, 0, 'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E0009787074000561646D696E74000A323032312D30382D323670707070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800');
INSERT INTO "qrtz_job_details" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'io.charles.common.utils.job.QuartzDisallowConcurrentExecution', 0, 1, 0, 0, 'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D6571007E00094C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E0009787074000561646D696E74000A323032312D30382D323670707070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_locks";
CREATE TABLE "qrtz_locks" (
  "sched_name" text(120) NOT NULL,
  "lock_name" text(40) NOT NULL,
  PRIMARY KEY ("sched_name", "lock_name")
);

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO "qrtz_locks" VALUES ('WebAppScheduler', 'STATE_ACCESS');
INSERT INTO "qrtz_locks" VALUES ('WebAppScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_paused_trigger_grps";
CREATE TABLE "qrtz_paused_trigger_grps" (
  "sched_name" text(120) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  PRIMARY KEY ("sched_name", "trigger_group")
);

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_scheduler_state";
CREATE TABLE "qrtz_scheduler_state" (
  "sched_name" text(120) NOT NULL,
  "instance_name" text(200) NOT NULL,
  "last_checkin_time" integer(20) NOT NULL,
  "checkin_interval" integer(20) NOT NULL,
  PRIMARY KEY ("sched_name", "instance_name")
);

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO "qrtz_scheduler_state" VALUES ('WebAppScheduler', 'DESKTOP-6MISMAG1596009097480', 1596009449214, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simple_triggers";
CREATE TABLE "qrtz_simple_triggers" (
  "sched_name" text(120) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "repeat_count" integer(20) NOT NULL,
  "repeat_interval" integer(20) NOT NULL,
  "times_triggered" integer(20) NOT NULL,
  PRIMARY KEY ("sched_name", "trigger_name", "trigger_group"),
  CONSTRAINT "qrtz_simple_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simprop_triggers";
CREATE TABLE "qrtz_simprop_triggers" (
  "sched_name" text(120) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "str_prop_1" text(512),
  "str_prop_2" text(512),
  "str_prop_3" text(512),
  "int_prop_1" integer(11),
  "int_prop_2" integer(11),
  "long_prop_1" integer(20),
  "long_prop_2" integer(20),
  "dec_prop_1" real(13,4),
  "dec_prop_2" real(13,4),
  "bool_prop_1" text(1),
  "bool_prop_2" text(1),
  PRIMARY KEY ("sched_name", "trigger_name", "trigger_group"),
  CONSTRAINT "qrtz_simprop_triggers_ibfk_1" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_triggers";
CREATE TABLE "qrtz_triggers" (
  "sched_name" text(120) NOT NULL,
  "trigger_name" text(200) NOT NULL,
  "trigger_group" text(200) NOT NULL,
  "job_name" text(200) NOT NULL,
  "job_group" text(200) NOT NULL,
  "description" text(250),
  "next_fire_time" integer(20),
  "prev_fire_time" integer(20),
  "priority" integer(11),
  "trigger_state" text(16) NOT NULL,
  "trigger_type" text(8) NOT NULL,
  "start_time" integer(20) NOT NULL,
  "end_time" integer(20),
  "calendar_name" text(200),
  "misfire_instr" integer(6),
  "job_data" blob,
  PRIMARY KEY ("sched_name", "trigger_name", "trigger_group"),
  CONSTRAINT "qrtz_triggers_ibfk_1" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO "qrtz_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1631623620000, -1, 5, 'PAUSED', 'CRON', 1631623619000, 0, NULL, 2, NULL);
INSERT INTO "qrtz_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1631623620000, -1, 5, 'PAUSED', 'CRON', 1631623619000, 0, NULL, 2, NULL);
INSERT INTO "qrtz_triggers" VALUES ('WebAppScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1631623620000, -1, 5, 'PAUSED', 'CRON', 1631623619000, 0, NULL, 2, NULL);

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
-- DROP TABLE IF EXISTS "sqlite_sequence";
-- CREATE TABLE "sqlite_sequence" (
--   "name" ,
--   "seq"
-- );

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO "sqlite_sequence" VALUES ('sys_dept', 115);
INSERT INTO "sqlite_sequence" VALUES ('sys_config', 5);
INSERT INTO "sqlite_sequence" VALUES ('sys_dict_type', 11);
INSERT INTO "sqlite_sequence" VALUES ('sys_job_log', 0);
INSERT INTO "sqlite_sequence" VALUES ('sys_menu', 1060);
INSERT INTO "sqlite_sequence" VALUES ('sys_oper_log', 30);
INSERT INTO "sqlite_sequence" VALUES ('sys_post', 4);
INSERT INTO "sqlite_sequence" VALUES ('sys_role', 2);
INSERT INTO "sqlite_sequence" VALUES ('sys_user', 3);
INSERT INTO "sqlite_sequence" VALUES ('sys_notice', 2);
INSERT INTO "sqlite_sequence" VALUES ('gen_table', 7);
INSERT INTO "sqlite_sequence" VALUES ('gen_table_column', 105);
INSERT INTO "sqlite_sequence" VALUES ('sys_logininfor', 117);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "sys_config";
CREATE TABLE "sys_config" (
  "config_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "config_name" TEXT(100),
  "config_key" TEXT(100),
  "config_value" TEXT(500),
  "config_type" TEXT(1) DEFAULT 'N',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO "sys_config" VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-08-26', NULL, NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO "sys_config" VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', 123456, 'Y', 'admin', '2021-08-26', NULL, NULL, '初始化密码 123456');
INSERT INTO "sys_config" VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-08-26', NULL, NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO "sys_config" VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2021-08-26', NULL, NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO "sys_config" VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-08-26', NULL, NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS "sys_dept";
CREATE TABLE "sys_dept" (
  "dept_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "parent_id" INTEGER(20) DEFAULT 0,
  "ancestors" TEXT(50),
  "dept_name" TEXT(30),
  "order_num" INTEGER(4) DEFAULT 0,
  "leader" TEXT(20) DEFAULT NULL,
  "phone" TEXT(11) DEFAULT NULL,
  "email" TEXT(50) DEFAULT NULL,
  "status" TEXT(1) DEFAULT '0',
  "del_flag" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64) DEFAULT '',
  "create_time" TEXT,
  "update_by" TEXT(64) DEFAULT '',
  "update_time" TEXT
);

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO "sys_dept" VALUES (100, 0, 0, 'xxx科技', NULL, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (101, 100, '0,100', '深圳总公司', 1, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (102, 100, '0,100', '长沙分公司', 2, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (103, 101, '0,100,101', '研发部门', 1, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (104, 101, '0,100,101', '市场部门', 2, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (105, 101, '0,100,101', '测试部门', 3, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (106, 101, '0,100,101', '财务部门', 4, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (107, 101, '0,100,101', '运维部门', 5, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (108, 102, '0,100,102', '市场部门', 1, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (109, 102, '0,100,102', '财务部门', 2, 'xxx', 15888888888, 'xxx@qq.com', 0, 0, 'admin', '2021-08-26', NULL, NULL);
INSERT INTO "sys_dept" VALUES (115, 101, '0,100,101', 'ceshi', 99, NULL, NULL, NULL, 0, 0, 'admin', '2021-09-03 13:48:24', 'admin', '2021-09-03 13:48:38');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_data";
CREATE TABLE "sys_dict_data" (
  "dict_code" INTEGER(20) NOT NULL,
  "dict_sort" INTEGER(4) DEFAULT 0,
  "dict_label" TEXT(100),
  "dict_value" TEXT(100),
  "dict_type" TEXT(100),
  "css_class" TEXT(100),
  "list_class" TEXT(100),
  "is_default" TEXT(1) DEFAULT 'N',
  "status" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(254),
  PRIMARY KEY ("dict_code")
);

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO "sys_dict_data" VALUES (1, 1, '男', 0, 'sys_user_sex', NULL, NULL, 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '性别男');
INSERT INTO "sys_dict_data" VALUES (2, 2, '女', 1, 'sys_user_sex', NULL, NULL, 'N', 0, 'admin', '2021-08-26', NULL, NULL, '性别女');
INSERT INTO "sys_dict_data" VALUES (3, 3, '未知', 2, 'sys_user_sex', NULL, NULL, 'N', 0, 'admin', '2021-08-26', NULL, NULL, '性别未知');
INSERT INTO "sys_dict_data" VALUES (4, 1, '显示', 0, 'sys_show_hide', NULL, 'primary', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '显示菜单');
INSERT INTO "sys_dict_data" VALUES (5, 2, '隐藏', 1, 'sys_show_hide', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '隐藏菜单');
INSERT INTO "sys_dict_data" VALUES (6, 1, '正常', 0, 'sys_normal_disable', NULL, 'primary', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '正常状态');
INSERT INTO "sys_dict_data" VALUES (7, 2, '停用', 1, 'sys_normal_disable', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '停用状态');
INSERT INTO "sys_dict_data" VALUES (8, 1, '正常', 0, 'sys_job_status', NULL, 'primary', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '正常状态');
INSERT INTO "sys_dict_data" VALUES (9, 2, '暂停', 1, 'sys_job_status', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '停用状态');
INSERT INTO "sys_dict_data" VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', NULL, NULL, 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '默认分组');
INSERT INTO "sys_dict_data" VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', NULL, NULL, 'N', 0, 'admin', '2021-08-26', NULL, NULL, '系统分组');
INSERT INTO "sys_dict_data" VALUES (12, 1, '是', 'Y', 'sys_yes_no', NULL, 'primary', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '系统默认是');
INSERT INTO "sys_dict_data" VALUES (13, 2, '否', 'N', 'sys_yes_no', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '系统默认否');
INSERT INTO "sys_dict_data" VALUES (14, 1, '通知', 1, 'sys_notice_type', NULL, 'warning', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '通知');
INSERT INTO "sys_dict_data" VALUES (15, 2, '公告', 2, 'sys_notice_type', NULL, 'success', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '公告');
INSERT INTO "sys_dict_data" VALUES (16, 1, '正常', 0, 'sys_notice_status', NULL, 'primary', 'Y', 0, 'admin', '2021-08-26', NULL, NULL, '正常状态');
INSERT INTO "sys_dict_data" VALUES (17, 2, '关闭', 1, 'sys_notice_status', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '关闭状态');
INSERT INTO "sys_dict_data" VALUES (18, 1, '新增', 1, 'sys_oper_type', NULL, 'info', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '新增操作');
INSERT INTO "sys_dict_data" VALUES (19, 2, '修改', 2, 'sys_oper_type', NULL, 'info', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '修改操作');
INSERT INTO "sys_dict_data" VALUES (20, 3, '删除', 3, 'sys_oper_type', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '删除操作');
INSERT INTO "sys_dict_data" VALUES (21, 4, '授权', 4, 'sys_oper_type', NULL, 'primary', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '授权操作');
INSERT INTO "sys_dict_data" VALUES (22, 5, '导出', 5, 'sys_oper_type', NULL, 'warning', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '导出操作');
INSERT INTO "sys_dict_data" VALUES (23, 6, '导入', 6, 'sys_oper_type', NULL, 'warning', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '导入操作');
INSERT INTO "sys_dict_data" VALUES (24, 7, '强退', 7, 'sys_oper_type', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '强退操作');
INSERT INTO "sys_dict_data" VALUES (25, 8, '生成代码', 8, 'sys_oper_type', NULL, 'warning', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '生成操作');
INSERT INTO "sys_dict_data" VALUES (26, 9, '清空数据', 9, 'sys_oper_type', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '清空操作');
INSERT INTO "sys_dict_data" VALUES (27, 1, '成功', 0, 'sys_common_status', NULL, 'primary', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '正常状态');
INSERT INTO "sys_dict_data" VALUES (28, 2, '失败', 1, 'sys_common_status', NULL, 'danger', 'N', 0, 'admin', '2021-08-26', NULL, NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_type";
CREATE TABLE "sys_dict_type" (
  "dict_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "dict_name" TEXT(100),
  "dict_type" TEXT(100),
  "status" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO "sys_dict_type" VALUES (1, '用户性别', 'sys_user_sex', 0, 'admin', '2021-08-26', NULL, NULL, '用户性别列表');
INSERT INTO "sys_dict_type" VALUES (2, '菜单状态', 'sys_show_hide', 0, 'admin', '2021-08-26', NULL, NULL, '菜单状态列表');
INSERT INTO "sys_dict_type" VALUES (3, '系统开关', 'sys_normal_disable', 0, 'admin', '2021-08-26', NULL, NULL, '系统开关列表');
INSERT INTO "sys_dict_type" VALUES (4, '任务状态', 'sys_job_status', 0, 'admin', '2021-08-26', NULL, NULL, '任务状态列表');
INSERT INTO "sys_dict_type" VALUES (5, '任务分组', 'sys_job_group', 0, 'admin', '2021-08-26', NULL, NULL, '任务分组列表');
INSERT INTO "sys_dict_type" VALUES (6, '系统是否', 'sys_yes_no', 0, 'admin', '2021-08-26', NULL, NULL, '系统是否列表');
INSERT INTO "sys_dict_type" VALUES (7, '通知类型', 'sys_notice_type', 0, 'admin', '2021-08-26', NULL, NULL, '通知类型列表');
INSERT INTO "sys_dict_type" VALUES (8, '通知状态', 'sys_notice_status', 0, 'admin', '2021-08-26', NULL, NULL, '通知状态列表');
INSERT INTO "sys_dict_type" VALUES (9, '操作类型', 'sys_oper_type', 0, 'admin', '2021-08-26', NULL, NULL, '操作类型列表');
INSERT INTO "sys_dict_type" VALUES (10, '系统状态', 'sys_common_status', 0, 'admin', '2021-08-26', NULL, NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS "sys_job";
CREATE TABLE "sys_job" (
  "job_id" INTEGER(20) NOT NULL,
  "job_name" TEXT(64) NOT NULL,
  "job_group" TEXT(64) NOT NULL DEFAULT 'DEFAULT',
  "invoke_target" TEXT(500) NOT NULL,
  "cron_expression" TEXT(255),
  "misfire_policy" TEXT(20) DEFAULT '3',
  "concurrent" TEXT(1) DEFAULT '1',
  "status" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500),
  PRIMARY KEY ("job_id", "job_name", "job_group")
);

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO "sys_job" VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', 3, 1, 1, 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_job" VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(''ry'')', '0/15 * * * * ?', 3, 1, 1, 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_job" VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(''ry'', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', 3, 1, 1, 'admin', '2021-08-26', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS "sys_job_log";
CREATE TABLE "sys_job_log" (
  "job_log_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "job_name" TEXT(64) NOT NULL,
  "job_group" TEXT(64) NOT NULL,
  "invoke_target" TEXT(500) NOT NULL,
  "job_message" TEXT(500),
  "status" TEXT(1) DEFAULT '0',
  "exception_info" TEXT(2000),
  "create_time" TEXT
);

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS "sys_logininfor";
CREATE TABLE "sys_logininfor" (
  "info_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "user_name" TEXT(50),
  "ipaddr" TEXT(128),
  "login_location" TEXT(255),
  "browser" TEXT(50),
  "os" TEXT(50),
  "status" TEXT(1) DEFAULT '0',
  "msg" TEXT(255),
  "login_time" TEXT
);

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO "sys_logininfor" VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '退出成功', '2021-09-07 09:13:07');
INSERT INTO "sys_logininfor" VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-07 09:13:32');
INSERT INTO "sys_logininfor" VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-07 09:17:57');
INSERT INTO "sys_logininfor" VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-07 11:34:25');
INSERT INTO "sys_logininfor" VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-07 14:13:44');
INSERT INTO "sys_logininfor" VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-07 14:48:57');
INSERT INTO "sys_logininfor" VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-12 08:56:48');
INSERT INTO "sys_logininfor" VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-12 13:25:00');
INSERT INTO "sys_logininfor" VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-12 13:56:39');
INSERT INTO "sys_logininfor" VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 1, '验证码已失效', '2021-09-14 12:52:53');
INSERT INTO "sys_logininfor" VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', 0, '登录成功', '2021-09-14 12:52:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "sys_menu";
CREATE TABLE "sys_menu" (
  "menu_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "menu_name" TEXT(50) NOT NULL,
  "parent_id" INTEGER(20) DEFAULT 0,
  "order_num" INTEGER(4) DEFAULT 0,
  "path" TEXT(200),
  "component" TEXT(255) DEFAULT NULL,
  "is_frame" INTEGER(1) DEFAULT 1,
  "is_cache" INTEGER(1) DEFAULT 0,
  "menu_type" TEXT(1) DEFAULT '',
  "visible" TEXT(1) DEFAULT '0',
  "status" TEXT(1) DEFAULT '0',
  "perms" TEXT(100),
  "icon" TEXT(100) DEFAULT '#',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO "sys_menu" VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, NULL, 'M', 0, 0, NULL, 'system', 'admin', '2021-08-26', NULL, NULL, '系统管理目录');
INSERT INTO "sys_menu" VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, NULL, 'M', 0, 0, NULL, 'monitor', 'admin', '2021-08-26', NULL, NULL, '系统监控目录');
INSERT INTO "sys_menu" VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, NULL, 'M', 0, 0, NULL, 'tool', 'admin', '2021-08-26', NULL, NULL, '系统工具目录');
INSERT INTO "sys_menu" VALUES (4, 'xxx官网', 0, 4, 'http://xxx.io', NULL, 2, NULL, 'M', 0, 0, NULL, 'guide', 'admin', '2021-08-26', NULL, NULL, 'charles官网地址');
INSERT INTO "sys_menu" VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, NULL, 'C', 0, 0, 'system:user:list', 'user', 'admin', '2021-08-26', NULL, NULL, '用户管理菜单');
INSERT INTO "sys_menu" VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, NULL, 'C', 0, 0, 'system:role:list', 'peoples', 'admin', '2021-08-26', NULL, NULL, '角色管理菜单');
INSERT INTO "sys_menu" VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, NULL, 'C', 0, 0, 'system:menu:list', 'tree-table', 'admin', '2021-08-26', NULL, NULL, '菜单管理菜单');
INSERT INTO "sys_menu" VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, NULL, 'C', 0, 0, 'system:dept:list', 'tree', 'admin', '2021-08-26', NULL, NULL, '部门管理菜单');
INSERT INTO "sys_menu" VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, NULL, 'C', 0, 0, 'system:post:list', 'post', 'admin', '2021-08-26', NULL, NULL, '岗位管理菜单');
INSERT INTO "sys_menu" VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, NULL, 'C', 0, 0, 'system:dict:list', 'dict', 'admin', '2021-08-26', NULL, NULL, '字典管理菜单');
INSERT INTO "sys_menu" VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, NULL, 'C', 0, 0, 'system:config:list', 'edit', 'admin', '2021-08-26', NULL, NULL, '参数设置菜单');
INSERT INTO "sys_menu" VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, NULL, 'C', 0, 0, 'system:notice:list', 'message', 'admin', '2021-08-26', NULL, NULL, '通知公告菜单');
INSERT INTO "sys_menu" VALUES (108, '日志管理', 1, 9, 'log', NULL, 1, NULL, 'M', 0, 0, NULL, 'log', 'admin', '2021-08-26', NULL, NULL, '日志管理菜单');
INSERT INTO "sys_menu" VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, NULL, 'C', 0, 0, 'monitor:online:list', 'online', 'admin', '2021-08-26', NULL, NULL, '在线用户菜单');
INSERT INTO "sys_menu" VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, NULL, 'C', 0, 0, 'monitor:job:list', 'job', 'admin', '2021-08-26', NULL, NULL, '定时任务菜单');
INSERT INTO "sys_menu" VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, NULL, 'C', 0, 0, 'monitor:druid:list', 'druid', 'admin', '2021-08-26', NULL, NULL, '数据监控菜单');
INSERT INTO "sys_menu" VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, NULL, 'C', 0, 0, 'monitor:server:list', 'server', 'admin', '2021-08-26', NULL, NULL, '服务监控菜单');
INSERT INTO "sys_menu" VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, NULL, 'C', 1, 1, 'monitor:cache:list', 'redis', 'admin', '2021-08-26', 'admin', '2021-09-07 08:38:12', '缓存监控菜单');
INSERT INTO "sys_menu" VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, NULL, 'C', 0, 0, 'tool:build:list', 'build', 'admin', '2021-08-26', NULL, NULL, '表单构建菜单');
INSERT INTO "sys_menu" VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, NULL, 'C', 0, 0, 'tool:gen:list', 'code', 'admin', '2021-08-26', NULL, NULL, '代码生成菜单');
INSERT INTO "sys_menu" VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, NULL, 'C', 0, 0, 'tool:swagger:list', 'swagger', 'admin', '2021-08-26', NULL, NULL, '系统接口菜单');
INSERT INTO "sys_menu" VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, NULL, 'C', 0, 0, 'monitor:operlog:list', 'form', 'admin', '2021-08-26', NULL, NULL, '操作日志菜单');
INSERT INTO "sys_menu" VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, NULL, 'C', 0, 0, 'monitor:logininfor:list', 'logininfor', 'admin', '2021-08-26', NULL, NULL, '登录日志菜单');
INSERT INTO "sys_menu" VALUES (1001, '用户查询', 100, 1, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1002, '用户新增', 100, 2, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1003, '用户修改', 100, 3, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1004, '用户删除', 100, 4, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1005, '用户导出', 100, 5, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1006, '用户导入', 100, 6, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:import', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1007, '重置密码', 100, 7, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:user:resetPwd', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1008, '角色查询', 101, 1, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:role:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1009, '角色新增', 101, 2, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:role:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1010, '角色修改', 101, 3, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:role:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1011, '角色删除', 101, 4, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:role:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1012, '角色导出', 101, 5, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:role:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1013, '菜单查询', 102, 1, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:menu:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1014, '菜单新增', 102, 2, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:menu:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1015, '菜单修改', 102, 3, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:menu:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1016, '菜单删除', 102, 4, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:menu:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1017, '部门查询', 103, 1, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:dept:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1018, '部门新增', 103, 2, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:dept:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1019, '部门修改', 103, 3, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:dept:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1020, '部门删除', 103, 4, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:dept:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1021, '岗位查询', 104, 1, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:post:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1022, '岗位新增', 104, 2, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:post:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1023, '岗位修改', 104, 3, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:post:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1024, '岗位删除', 104, 4, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:post:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1025, '岗位导出', 104, 5, NULL, NULL, 1, NULL, 'F', 0, 0, 'system:post:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1026, '字典查询', 105, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'system:dict:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1027, '字典新增', 105, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'system:dict:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1028, '字典修改', 105, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'system:dict:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1029, '字典删除', 105, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'system:dict:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1030, '字典导出', 105, 5, '#', NULL, 1, NULL, 'F', 0, 0, 'system:dict:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1031, '参数查询', 106, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'system:config:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1032, '参数新增', 106, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'system:config:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1033, '参数修改', 106, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'system:config:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1034, '参数删除', 106, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'system:config:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1035, '参数导出', 106, 5, '#', NULL, 1, NULL, 'F', 0, 0, 'system:config:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1036, '公告查询', 107, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'system:notice:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1037, '公告新增', 107, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'system:notice:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1038, '公告修改', 107, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'system:notice:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1039, '公告删除', 107, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'system:notice:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1040, '操作查询', 500, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:operlog:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1041, '操作删除', 500, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:operlog:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1042, '日志导出', 500, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:operlog:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1043, '登录查询', 501, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:logininfor:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1044, '登录删除', 501, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:logininfor:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1045, '日志导出', 501, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:logininfor:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1046, '在线查询', 109, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:online:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1047, '批量强退', 109, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:online:batchLogout', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1048, '单条强退', 109, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:online:forceLogout', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1049, '任务查询', 110, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1050, '任务新增', 110, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:add', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1051, '任务修改', 110, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1052, '任务删除', 110, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1053, '状态修改', 110, 5, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:changeStatus', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1054, '任务导出', 110, 7, '#', NULL, 1, NULL, 'F', 0, 0, 'monitor:job:export', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1055, '生成查询', 115, 1, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:query', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1056, '生成修改', 115, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:edit', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1057, '生成删除', 115, 3, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:remove', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1058, '导入代码', 115, 2, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:import', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1059, '预览代码', 115, 4, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:preview', '#', 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_menu" VALUES (1060, '生成代码', 115, 5, '#', NULL, 1, NULL, 'F', 0, 0, 'tool:gen:code', '#', 'admin', '2021-08-26', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS "sys_notice";
CREATE TABLE "sys_notice" (
  "notice_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "notice_title" TEXT(50) NOT NULL,
  "notice_type" TEXT(1) NOT NULL,
  "notice_content" TEXT(2000),
  "status" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(255)
);

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO "sys_notice" VALUES (1, '温馨提醒：2018-07-01 charles新版本发布啦', 2, '<p>5paw54mI5pys5YaF5a65dfdfgdfdfg梵蒂冈地方</p>', 0, 'admin', '2021-08-26', 'admin', '2021-09-03 14:28:56', '管理员');
INSERT INTO "sys_notice" VALUES (2, '维护通知：2018-07-01 charles系统凌晨维护', 1, '57u05oqk5YaF5a65', 0, 'admin', '2021-08-26', NULL, NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "sys_oper_log";
CREATE TABLE "sys_oper_log" (
  "oper_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "title" TEXT(50),
  "business_type" INTEGER(2) DEFAULT 0,
  "method" TEXT(100),
  "request_method" TEXT(10),
  "operator_type" INTEGER(1) DEFAULT 0,
  "oper_name" TEXT(50),
  "dept_name" TEXT(50),
  "oper_url" TEXT(255),
  "oper_ip" TEXT(128),
  "oper_location" TEXT(255),
  "oper_param" TEXT(2000),
  "json_result" TEXT(2000),
  "status" INTEGER(1) DEFAULT 0,
  "error_msg" TEXT(2000),
  "oper_time" TEXT
);

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO "sys_oper_log" VALUES (18, '操作日志', 9, 'io.charles.project.monitor.controller.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2021-09-07 08:52:01');
INSERT INTO "sys_oper_log" VALUES (19, '登录日志', 9, 'io.charles.project.monitor.controller.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2021-09-07 08:52:06');
INSERT INTO "sys_oper_log" VALUES (20, '调度日志', 9, 'io.charles.project.monitor.controller.SysJobLogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/jobLog/clean', '127.0.0.1', '内网IP', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2021-09-07 08:52:27');
INSERT INTO "sys_oper_log" VALUES (21, '字典类型', 1, 'io.charles.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{"createBy":"admin","dictName":"TEST","params":{},"dictType":"TEST","status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2021-09-07 14:50:08');
INSERT INTO "sys_oper_log" VALUES (22, '字典类型', 3, 'io.charles.project.system.controller.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/11', '127.0.0.1', '内网IP', '{dictIds=11}', '{"msg":"操作成功","code":200}', 0, NULL, '2021-09-07 14:52:42');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS "sys_post";
CREATE TABLE "sys_post" (
  "post_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "post_code" TEXT(64) NOT NULL,
  "post_name" TEXT(50) NOT NULL,
  "post_sort" INTEGER(4) NOT NULL,
  "status" TEXT(1) NOT NULL,
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO "sys_post" VALUES (1, 'ceo', '董事长', 1, 0, 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_post" VALUES (2, 'se', '项目经理', 2, 0, 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_post" VALUES (3, 'hr', '人力资源', 3, 0, 'admin', '2021-08-26', NULL, NULL, NULL);
INSERT INTO "sys_post" VALUES (4, 'user', '普通员工', 4, 0, 'admin', '2021-08-26', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "sys_role";
CREATE TABLE "sys_role" (
  "role_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "role_name" TEXT(30) NOT NULL,
  "role_key" TEXT(100) NOT NULL,
  "role_sort" INTEGER(4) NOT NULL,
  "data_scope" TEXT(1) DEFAULT '1',
  "menu_check_strictly" INTEGER(1) DEFAULT 1,
  "dept_check_strictly" INTEGER(1) DEFAULT 1,
  "status" TEXT(1) NOT NULL,
  "del_flag" TEXT(1) DEFAULT '0',
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "sys_role" VALUES (1, '超级管理员', 'admin', 1, 1, 1, 1, 0, 0, 'admin', '2021-08-26', NULL, NULL, '超级管理员');
INSERT INTO "sys_role" VALUES (2, '普通角色', 'common', 2, 2, 1, 1, 0, 0, 'admin', '2021-08-26', NULL, NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS "sys_role_dept";
CREATE TABLE "sys_role_dept" (
  "role_id" INTEGER(20) NOT NULL,
  "dept_id" INTEGER(20) NOT NULL
);

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO "sys_role_dept" VALUES (2, 100);
INSERT INTO "sys_role_dept" VALUES (2, 101);
INSERT INTO "sys_role_dept" VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "sys_role_menu";
CREATE TABLE "sys_role_menu" (
  "role_id" INTEGER(20) NOT NULL,
  "menu_id" INTEGER(20) NOT NULL
);

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO "sys_role_menu" VALUES (2, 1);
INSERT INTO "sys_role_menu" VALUES (2, 2);
INSERT INTO "sys_role_menu" VALUES (2, 3);
INSERT INTO "sys_role_menu" VALUES (2, 4);
INSERT INTO "sys_role_menu" VALUES (2, 100);
INSERT INTO "sys_role_menu" VALUES (2, 101);
INSERT INTO "sys_role_menu" VALUES (2, 102);
INSERT INTO "sys_role_menu" VALUES (2, 103);
INSERT INTO "sys_role_menu" VALUES (2, 104);
INSERT INTO "sys_role_menu" VALUES (2, 105);
INSERT INTO "sys_role_menu" VALUES (2, 106);
INSERT INTO "sys_role_menu" VALUES (2, 107);
INSERT INTO "sys_role_menu" VALUES (2, 108);
INSERT INTO "sys_role_menu" VALUES (2, 109);
INSERT INTO "sys_role_menu" VALUES (2, 110);
INSERT INTO "sys_role_menu" VALUES (2, 111);
INSERT INTO "sys_role_menu" VALUES (2, 112);
INSERT INTO "sys_role_menu" VALUES (2, 113);
INSERT INTO "sys_role_menu" VALUES (2, 114);
INSERT INTO "sys_role_menu" VALUES (2, 115);
INSERT INTO "sys_role_menu" VALUES (2, 116);
INSERT INTO "sys_role_menu" VALUES (2, 500);
INSERT INTO "sys_role_menu" VALUES (2, 501);
INSERT INTO "sys_role_menu" VALUES (2, 1000);
INSERT INTO "sys_role_menu" VALUES (2, 1001);
INSERT INTO "sys_role_menu" VALUES (2, 1002);
INSERT INTO "sys_role_menu" VALUES (2, 1003);
INSERT INTO "sys_role_menu" VALUES (2, 1004);
INSERT INTO "sys_role_menu" VALUES (2, 1005);
INSERT INTO "sys_role_menu" VALUES (2, 1006);
INSERT INTO "sys_role_menu" VALUES (2, 1007);
INSERT INTO "sys_role_menu" VALUES (2, 1008);
INSERT INTO "sys_role_menu" VALUES (2, 1009);
INSERT INTO "sys_role_menu" VALUES (2, 1010);
INSERT INTO "sys_role_menu" VALUES (2, 1011);
INSERT INTO "sys_role_menu" VALUES (2, 1012);
INSERT INTO "sys_role_menu" VALUES (2, 1013);
INSERT INTO "sys_role_menu" VALUES (2, 1014);
INSERT INTO "sys_role_menu" VALUES (2, 1015);
INSERT INTO "sys_role_menu" VALUES (2, 1016);
INSERT INTO "sys_role_menu" VALUES (2, 1017);
INSERT INTO "sys_role_menu" VALUES (2, 1018);
INSERT INTO "sys_role_menu" VALUES (2, 1019);
INSERT INTO "sys_role_menu" VALUES (2, 1020);
INSERT INTO "sys_role_menu" VALUES (2, 1021);
INSERT INTO "sys_role_menu" VALUES (2, 1022);
INSERT INTO "sys_role_menu" VALUES (2, 1023);
INSERT INTO "sys_role_menu" VALUES (2, 1024);
INSERT INTO "sys_role_menu" VALUES (2, 1025);
INSERT INTO "sys_role_menu" VALUES (2, 1026);
INSERT INTO "sys_role_menu" VALUES (2, 1027);
INSERT INTO "sys_role_menu" VALUES (2, 1028);
INSERT INTO "sys_role_menu" VALUES (2, 1029);
INSERT INTO "sys_role_menu" VALUES (2, 1030);
INSERT INTO "sys_role_menu" VALUES (2, 1031);
INSERT INTO "sys_role_menu" VALUES (2, 1032);
INSERT INTO "sys_role_menu" VALUES (2, 1033);
INSERT INTO "sys_role_menu" VALUES (2, 1034);
INSERT INTO "sys_role_menu" VALUES (2, 1035);
INSERT INTO "sys_role_menu" VALUES (2, 1036);
INSERT INTO "sys_role_menu" VALUES (2, 1037);
INSERT INTO "sys_role_menu" VALUES (2, 1038);
INSERT INTO "sys_role_menu" VALUES (2, 1039);
INSERT INTO "sys_role_menu" VALUES (2, 1040);
INSERT INTO "sys_role_menu" VALUES (2, 1041);
INSERT INTO "sys_role_menu" VALUES (2, 1042);
INSERT INTO "sys_role_menu" VALUES (2, 1043);
INSERT INTO "sys_role_menu" VALUES (2, 1044);
INSERT INTO "sys_role_menu" VALUES (2, 1045);
INSERT INTO "sys_role_menu" VALUES (2, 1046);
INSERT INTO "sys_role_menu" VALUES (2, 1047);
INSERT INTO "sys_role_menu" VALUES (2, 1048);
INSERT INTO "sys_role_menu" VALUES (2, 1049);
INSERT INTO "sys_role_menu" VALUES (2, 1050);
INSERT INTO "sys_role_menu" VALUES (2, 1051);
INSERT INTO "sys_role_menu" VALUES (2, 1052);
INSERT INTO "sys_role_menu" VALUES (2, 1053);
INSERT INTO "sys_role_menu" VALUES (2, 1054);
INSERT INTO "sys_role_menu" VALUES (2, 1055);
INSERT INTO "sys_role_menu" VALUES (2, 1056);
INSERT INTO "sys_role_menu" VALUES (2, 1057);
INSERT INTO "sys_role_menu" VALUES (2, 1058);
INSERT INTO "sys_role_menu" VALUES (2, 1059);
INSERT INTO "sys_role_menu" VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "sys_user";
CREATE TABLE "sys_user" (
  "user_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "dept_id" INTEGER(20),
  "user_name" TEXT(30) NOT NULL,
  "nick_name" TEXT(30) NOT NULL,
  "user_type" TEXT(2) DEFAULT '00',
  "email" TEXT(50),
  "phonenumber" TEXT(11),
  "sex" TEXT(1) DEFAULT '0',
  "avatar" TEXT(100),
  "password" TEXT(100),
  "status" TEXT(1) DEFAULT '0',
  "del_flag" TEXT(1) DEFAULT '0',
  "login_ip" TEXT(128),
  "login_date" TEXT,
  "create_by" TEXT(64),
  "create_time" TEXT,
  "update_by" TEXT(64),
  "update_time" TEXT,
  "remark" TEXT(500)
);

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "sys_user" VALUES (1, 103, 'admin', 'charles', '00', 'app@163.com', 15888888888, 1, '/profile/avatar/2021/09/07/1ba7f730-64c9-46d0-b6c8-4fc32f1acad4.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 0, 0, '127.0.0.1', '2021-09-14 20:52:59', 'admin', '2021-08-26', NULL, '2021-09-14 12:53:00', '管理员');
INSERT INTO "sys_user" VALUES (2, 105, 'ry', 'charles', '00', 'app@qq.com', 15666666666, 0, NULL, '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 0, 0, '127.0.0.1', '2021-08-26', 'admin', '2021-08-26', 'admin', '2021-09-03 13:54:49', '测试员');
INSERT INTO "sys_user" VALUES (3, 103, 'zhoumh', 'zhoumh', '00', NULL, 18660925037, 0, NULL, '$2a$10$Z22DHvta0/e/w7emTTwrleN.6E.REYEQ2dzEtDAqoqyDZPGovxGlm', 0, 0, NULL, NULL, 'admin', '2021-09-03 13:57:51', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS "sys_user_post";
CREATE TABLE "sys_user_post" (
  "user_id" INTEGER(20) NOT NULL,
  "post_id" INTEGER(20) NOT NULL
);

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO "sys_user_post" VALUES (1, 1);
INSERT INTO "sys_user_post" VALUES (2, 2);
INSERT INTO "sys_user_post" VALUES (3, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "sys_user_role";
CREATE TABLE "sys_user_role" (
  "user_id" INTEGER(20) NOT NULL,
  "role_id" INTEGER(20)
);

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "sys_user_role" VALUES (1, 1);
INSERT INTO "sys_user_role" VALUES (3, 2);
INSERT INTO "sys_user_role" VALUES (2, 2);
INSERT INTO "sys_user_role" VALUES (3, 2);

-- ----------------------------
-- Auto increment value for gen_table
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 7 WHERE name = 'gen_table';

-- ----------------------------
-- Auto increment value for gen_table_column
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 105 WHERE name = 'gen_table_column';

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "sched_name"
ON "qrtz_triggers" (
  "sched_name" ASC,
  "job_name" ASC,
  "job_group" ASC
);

-- ----------------------------
-- Auto increment value for sys_config
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 5 WHERE name = 'sys_config';

-- ----------------------------
-- Auto increment value for sys_dept
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 115 WHERE name = 'sys_dept';

-- ----------------------------
-- Auto increment value for sys_dict_type
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 11 WHERE name = 'sys_dict_type';

-- ----------------------------
-- Auto increment value for sys_job_log
-- ----------------------------

-- ----------------------------
-- Auto increment value for sys_logininfor
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 117 WHERE name = 'sys_logininfor';

-- ----------------------------
-- Auto increment value for sys_menu
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 1060 WHERE name = 'sys_menu';

-- ----------------------------
-- Auto increment value for sys_notice
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'sys_notice';

-- ----------------------------
-- Auto increment value for sys_oper_log
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 30 WHERE name = 'sys_oper_log';

-- ----------------------------
-- Auto increment value for sys_post
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 4 WHERE name = 'sys_post';

-- ----------------------------
-- Auto increment value for sys_role
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 2 WHERE name = 'sys_role';

-- ----------------------------
-- Auto increment value for sys_user
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 3 WHERE name = 'sys_user';

PRAGMA foreign_keys = true;
