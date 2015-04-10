/*
MySQL Data Transfer
Source Host: localhost
Source Database: schoolweb
Target Host: localhost
Target Database: schoolweb
Date: 2015/4/10 16:52:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for bs_address
-- ----------------------------
CREATE TABLE `bs_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `consignee` varchar(255) DEFAULT NULL COMMENT '收货人',
  `address_detail` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `telephone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `postcode` varchar(6) DEFAULT NULL COMMENT '邮政编码',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `address_head` varchar(255) DEFAULT NULL COMMENT '地址头部',
  `isdefault` varchar(255) DEFAULT 'no' COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_article
-- ----------------------------
CREATE TABLE `bs_article` (
  `articleid` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '作者',
  `author` varchar(20) DEFAULT NULL,
  `createdate` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `articletype` varchar(20) DEFAULT NULL COMMENT '文章类型(通知，咨询，教学动态，学生风采) 数据字典',
  `articlesummary` varchar(2000) DEFAULT NULL COMMENT '概要',
  `content` mediumtext COMMENT '内容',
  `updatedate` varchar(20) DEFAULT NULL COMMENT '更新日期',
  `articletitle` varchar(100) DEFAULT NULL COMMENT '标题',
  `noticetarget` varchar(45) DEFAULT NULL COMMENT '通知目标',
  `noticeendtime` varchar(20) DEFAULT NULL COMMENT '通知截止日期',
  `newspic` varchar(45) DEFAULT NULL COMMENT '资讯首页显示图片',
  `newsisshow` varchar(1) DEFAULT NULL COMMENT '资讯是否在首页显示，0不显示，1显示。',
  `downloadid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='咨询（通知，咨询），教学动态';

-- ----------------------------
-- Table structure for bs_email
-- ----------------------------
CREATE TABLE `bs_email` (
  `id` bigint(14) NOT NULL AUTO_INCREMENT,
  `mailcontent` varchar(10000) DEFAULT NULL,
  `mailto` varchar(30) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `isActive` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_htmlpage
-- ----------------------------
CREATE TABLE `bs_htmlpage` (
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `htmlcode` text COMMENT '页面代码',
  `htmlname` varchar(255) DEFAULT NULL COMMENT '页面名字',
  `uptime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_images
-- ----------------------------
CREATE TABLE `bs_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(255) DEFAULT NULL COMMENT '图片名字',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图像链接',
  `image_type` varchar(255) DEFAULT NULL,
  `image_savepath` varchar(255) DEFAULT NULL COMMENT '保存路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_jobs
-- ----------------------------
CREATE TABLE `bs_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) DEFAULT NULL COMMENT '职位名臣',
  `job_require` text COMMENT '职业要求',
  `job_qualifications` text COMMENT '任职条件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_leavemessage
-- ----------------------------
CREATE TABLE `bs_leavemessage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '你的称呼',
  `message` varchar(255) DEFAULT NULL COMMENT '留言',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `leave_time` datetime DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_marking
-- ----------------------------
CREATE TABLE `bs_marking` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `sale_name` varchar(50) DEFAULT NULL COMMENT '销售员名字',
  `sale_qq` varchar(20) DEFAULT NULL COMMENT '联系QQ',
  `sale_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `sale_email` varchar(50) DEFAULT NULL COMMENT '联系邮箱',
  `areaname` varchar(255) DEFAULT NULL COMMENT '负责区域',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `classstyle` varchar(20) DEFAULT NULL COMMENT 'map属性',
  `href` varchar(255) DEFAULT NULL COMMENT '省份链接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_menu
-- ----------------------------
CREATE TABLE `bs_menu` (
  `id` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `text` varchar(50) DEFAULT NULL COMMENT '菜单名字',
  `menulevel` int(2) DEFAULT NULL COMMENT '菜单级别',
  `menuurl` varchar(100) DEFAULT NULL COMMENT '菜单url',
  `menuorder` int(2) DEFAULT NULL COMMENT '菜单顺序',
  `menuparent` int(2) DEFAULT NULL COMMENT '上级菜单',
  `state` varchar(255) DEFAULT 'closed' COMMENT 'node是否折叠',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_order
-- ----------------------------
CREATE TABLE `bs_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长1',
  `order_id` varchar(35) NOT NULL COMMENT '订单号',
  `order_status` int(1) NOT NULL COMMENT '订单状态1--未支付2--已支付',
  `order_create_time` datetime NOT NULL COMMENT '订单创建时间',
  `order_update_time` datetime DEFAULT NULL,
  `order_total_price` decimal(10,2) NOT NULL COMMENT '订单总价',
  `product_number` int(11) NOT NULL COMMENT '产品数量',
  `user_id` varchar(14) DEFAULT NULL,
  `address_id` bigint(20) DEFAULT NULL COMMENT '地址id',
  `product_id` int(20) DEFAULT NULL COMMENT '产品id',
  `pay_trade_no` varchar(255) DEFAULT NULL COMMENT '支付平台',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=468 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_pagestatic
-- ----------------------------
CREATE TABLE `bs_pagestatic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `htmname` varchar(255) DEFAULT NULL COMMENT 'htm文件名',
  `dynamicurl` varchar(255) DEFAULT NULL COMMENT '访问的动态的url',
  `filepath` varchar(255) DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_product
-- ----------------------------
CREATE TABLE `bs_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) NOT NULL COMMENT '产品代码',
  `product_name` varchar(20) NOT NULL COMMENT '品产名称',
  `product_price` decimal(10,2) NOT NULL COMMENT '产品价格',
  `product_image_url` varchar(255) NOT NULL COMMENT '片图url',
  `product_info` varchar(20000) DEFAULT NULL COMMENT '品产信息',
  `productcategory_code` varchar(20) NOT NULL COMMENT '产品分类代码',
  `supplier_code` varchar(20) NOT NULL COMMENT '应商供代码',
  `isactice` varchar(10) NOT NULL DEFAULT '' COMMENT '是否有效（上架、下架）',
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN` (`product_code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_productcategory
-- ----------------------------
CREATE TABLE `bs_productcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productcategory_code` varchar(20) NOT NULL COMMENT '分类代码',
  `productcategory_name` varchar(20) NOT NULL COMMENT '分类名字',
  `productcategory_remark` varchar(255) DEFAULT NULL COMMENT '分类介绍',
  `supplier_code` varchar(20) NOT NULL COMMENT '应商供代码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN` (`productcategory_code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_resource
-- ----------------------------
CREATE TABLE `bs_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resource_url` varchar(30) DEFAULT NULL COMMENT '资源url',
  `resouce_name` varchar(50) DEFAULT NULL COMMENT '资源名字',
  `resource_type` varchar(50) DEFAULT NULL COMMENT '资源类型public 和private',
  `menuid` bigint(14) DEFAULT NULL COMMENT '资源所属菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_role
-- ----------------------------
CREATE TABLE `bs_role` (
  `isactive` varchar(11) DEFAULT NULL COMMENT '是否激活',
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主建',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_role_resource
-- ----------------------------
CREATE TABLE `bs_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roleid` int(11) DEFAULT NULL COMMENT '角色ID',
  `resourceid` int(11) DEFAULT NULL COMMENT '资源id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_supplier
-- ----------------------------
CREATE TABLE `bs_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(20) NOT NULL DEFAULT '' COMMENT '供应商代码',
  `supplier_name` varchar(20) DEFAULT NULL COMMENT '供应商名字',
  `supplier_info` varchar(255) DEFAULT NULL COMMENT '应商供信息',
  `supplier_url` varchar(255) DEFAULT NULL COMMENT '供应商url',
  `contactname` varchar(255) DEFAULT NULL,
  `contactemail` varchar(255) DEFAULT NULL,
  `contactphone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UN` (`supplier_code`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_system
-- ----------------------------
CREATE TABLE `bs_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `system_key` varchar(255) DEFAULT NULL COMMENT '名字',
  `system_value` text COMMENT '值',
  `system_name` varchar(255) DEFAULT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_team
-- ----------------------------
CREATE TABLE `bs_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名字',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片头像',
  `title` varchar(255) DEFAULT NULL COMMENT '职位',
  `ename` varchar(255) DEFAULT NULL COMMENT '昵称',
  `say` varchar(255) DEFAULT NULL COMMENT '个性名言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_user
-- ----------------------------
CREATE TABLE `bs_user` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `userid` varchar(14) NOT NULL,
  `iccard` varchar(14) DEFAULT NULL COMMENT '智能卡号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户姓名',
  `realname` varchar(20) DEFAULT NULL,
  `mobilephone` varchar(11) DEFAULT NULL COMMENT '机号手',
  `tokenid` varchar(20) DEFAULT NULL COMMENT '牌令id',
  `email` varchar(20) DEFAULT NULL COMMENT '箱邮',
  `isadmin` varchar(255) DEFAULT NULL COMMENT '是否为管理员',
  `password` varchar(255) DEFAULT NULL COMMENT '注备2(保留字段)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`) USING BTREE,
  UNIQUE KEY `Unique_tokenid` (`tokenid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_user_role
-- ----------------------------
CREATE TABLE `bs_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` varchar(14) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_userservice
-- ----------------------------
CREATE TABLE `bs_userservice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(14) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_code` varchar(20) NOT NULL DEFAULT '',
  `service_end_time` datetime DEFAULT NULL,
  `order_iccard` varchar(14) NOT NULL DEFAULT '',
  `product_id` bigint(20) DEFAULT NULL COMMENT '产品id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_api
-- ----------------------------
CREATE TABLE `jforum_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(32) NOT NULL,
  `api_validity` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_attach
-- ----------------------------
CREATE TABLE `jforum_attach` (
  `attach_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `privmsgs_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`attach_id`),
  KEY `idx_att_post` (`post_id`),
  KEY `idx_att_priv` (`privmsgs_id`),
  KEY `idx_att_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_attach_desc
-- ----------------------------
CREATE TABLE `jforum_attach_desc` (
  `attach_desc_id` int(11) NOT NULL AUTO_INCREMENT,
  `attach_id` int(11) NOT NULL,
  `physical_filename` varchar(255) NOT NULL,
  `real_filename` varchar(255) NOT NULL,
  `download_count` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `mimetype` varchar(50) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `thumb` tinyint(1) DEFAULT '0',
  `extension_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`attach_desc_id`),
  KEY `idx_att_d_att` (`attach_id`),
  KEY `idx_att_d_ext` (`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_attach_quota
-- ----------------------------
CREATE TABLE `jforum_attach_quota` (
  `attach_quota_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `quota_limit_id` int(11) NOT NULL,
  PRIMARY KEY (`attach_quota_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_banlist
-- ----------------------------
CREATE TABLE `jforum_banlist` (
  `banlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `banlist_ip` varchar(15) DEFAULT NULL,
  `banlist_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`banlist_id`),
  KEY `idx_user` (`user_id`),
  KEY `banlist_ip` (`banlist_ip`),
  KEY `banlist_email` (`banlist_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_banner
-- ----------------------------
CREATE TABLE `jforum_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_name` varchar(90) DEFAULT NULL,
  `banner_placement` int(11) NOT NULL DEFAULT '0',
  `banner_description` varchar(250) DEFAULT NULL,
  `banner_clicks` int(11) NOT NULL DEFAULT '0',
  `banner_views` int(11) NOT NULL DEFAULT '0',
  `banner_url` varchar(250) DEFAULT NULL,
  `banner_weight` tinyint(1) NOT NULL DEFAULT '50',
  `banner_active` tinyint(1) NOT NULL DEFAULT '0',
  `banner_comment` varchar(250) DEFAULT NULL,
  `banner_type` int(11) NOT NULL DEFAULT '0',
  `banner_width` int(11) NOT NULL DEFAULT '0',
  `banner_height` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_id`),
  KEY `banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_bookmarks
-- ----------------------------
CREATE TABLE `jforum_bookmarks` (
  `bookmark_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `relation_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL,
  `public_visible` int(11) DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bookmark_id`),
  KEY `book_idx_relation` (`relation_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_categories
-- ----------------------------
CREATE TABLE `jforum_categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `moderated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_config
-- ----------------------------
CREATE TABLE `jforum_config` (
  `config_name` varchar(255) NOT NULL DEFAULT '',
  `config_value` varchar(255) NOT NULL DEFAULT '',
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_extension_groups
-- ----------------------------
CREATE TABLE `jforum_extension_groups` (
  `extension_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `allow` tinyint(1) DEFAULT '1',
  `upload_icon` varchar(100) DEFAULT NULL,
  `download_mode` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`extension_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_extensions
-- ----------------------------
CREATE TABLE `jforum_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_group_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `upload_icon` varchar(100) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`extension_id`),
  KEY `extension_group_id` (`extension_group_id`),
  KEY `extension` (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_forums
-- ----------------------------
CREATE TABLE `jforum_forums` (
  `forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL DEFAULT '1',
  `forum_name` varchar(150) NOT NULL DEFAULT '',
  `forum_desc` varchar(255) DEFAULT NULL,
  `forum_order` int(11) DEFAULT '1',
  `forum_topics` int(11) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(11) NOT NULL DEFAULT '0',
  `moderated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `categories_id` (`categories_id`),
  KEY `idx_forums_cats` (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_forums_watch
-- ----------------------------
CREATE TABLE `jforum_forums_watch` (
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `idx_fw_forum` (`forum_id`),
  KEY `idx_fw_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_groups
-- ----------------------------
CREATE TABLE `jforum_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(40) NOT NULL DEFAULT '',
  `group_description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_karma
-- ----------------------------
CREATE TABLE `jforum_karma` (
  `karma_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `rate_date` datetime DEFAULT NULL,
  PRIMARY KEY (`karma_id`),
  KEY `post_id` (`post_id`),
  KEY `topic_id` (`topic_id`),
  KEY `post_user_id` (`post_user_id`),
  KEY `from_user_id` (`from_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_mail_integration
-- ----------------------------
CREATE TABLE `jforum_mail_integration` (
  `forum_id` int(11) NOT NULL,
  `forum_email` varchar(100) NOT NULL,
  `pop_username` varchar(100) NOT NULL,
  `pop_password` varchar(100) NOT NULL,
  `pop_host` varchar(100) NOT NULL,
  `pop_port` int(11) DEFAULT '110',
  `pop_ssl` tinyint(4) DEFAULT '0',
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_moderation_log
-- ----------------------------
CREATE TABLE `jforum_moderation_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `log_description` text NOT NULL,
  `log_original_message` text,
  `log_date` datetime NOT NULL,
  `log_type` tinyint(4) DEFAULT '0',
  `post_id` int(11) DEFAULT '0',
  `topic_id` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  KEY `post_user_id` (`post_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_posts
-- ----------------------------
CREATE TABLE `jforum_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_time` datetime DEFAULT NULL,
  `poster_ip` varchar(15) DEFAULT NULL,
  `enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `enable_html` tinyint(1) NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) NOT NULL DEFAULT '1',
  `post_edit_time` datetime DEFAULT NULL,
  `post_edit_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `attach` tinyint(1) DEFAULT '0',
  `need_moderate` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `post_time` (`post_time`),
  KEY `need_moderate` (`need_moderate`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_posts_text
-- ----------------------------
CREATE TABLE `jforum_posts_text` (
  `post_id` int(11) NOT NULL,
  `post_text` text,
  `post_subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_privmsgs
-- ----------------------------
CREATE TABLE `jforum_privmsgs` (
  `privmsgs_id` int(11) NOT NULL AUTO_INCREMENT,
  `privmsgs_type` tinyint(4) NOT NULL DEFAULT '0',
  `privmsgs_subject` varchar(255) NOT NULL DEFAULT '',
  `privmsgs_from_userid` int(11) NOT NULL DEFAULT '0',
  `privmsgs_to_userid` int(11) NOT NULL DEFAULT '0',
  `privmsgs_date` datetime DEFAULT NULL,
  `privmsgs_ip` varchar(15) NOT NULL DEFAULT '',
  `privmsgs_enable_bbcode` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_enable_html` tinyint(1) NOT NULL DEFAULT '0',
  `privmsgs_enable_smilies` tinyint(1) NOT NULL DEFAULT '1',
  `privmsgs_attach_sig` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`privmsgs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_privmsgs_text
-- ----------------------------
CREATE TABLE `jforum_privmsgs_text` (
  `privmsgs_id` int(11) NOT NULL,
  `privmsgs_text` text,
  PRIMARY KEY (`privmsgs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_quota_limit
-- ----------------------------
CREATE TABLE `jforum_quota_limit` (
  `quota_limit_id` int(11) NOT NULL AUTO_INCREMENT,
  `quota_desc` varchar(50) NOT NULL,
  `quota_limit` int(11) NOT NULL,
  `quota_type` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`quota_limit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_ranks
-- ----------------------------
CREATE TABLE `jforum_ranks` (
  `rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(50) NOT NULL DEFAULT '',
  `rank_min` int(11) NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) DEFAULT NULL,
  `rank_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_role_values
-- ----------------------------
CREATE TABLE `jforum_role_values` (
  `role_id` int(11) NOT NULL,
  `role_value` varchar(255) DEFAULT NULL,
  KEY `idx_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_roles
-- ----------------------------
CREATE TABLE `jforum_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_group` (`group_id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_sessions
-- ----------------------------
CREATE TABLE `jforum_sessions` (
  `session_id` varchar(150) NOT NULL DEFAULT '',
  `session_user_id` int(11) NOT NULL DEFAULT '0',
  `session_start` datetime DEFAULT NULL,
  `session_time` bigint(20) DEFAULT '0',
  `session_ip` varchar(15) NOT NULL DEFAULT '',
  `session_page` int(11) NOT NULL DEFAULT '0',
  `session_logged_int` tinyint(1) DEFAULT NULL,
  KEY `idx_sessions_users` (`session_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_smilies
-- ----------------------------
CREATE TABLE `jforum_smilies` (
  `smilie_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT NULL,
  `disk_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smilie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_themes
-- ----------------------------
CREATE TABLE `jforum_themes` (
  `themes_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(30) NOT NULL DEFAULT '',
  `style_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`themes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_topics
-- ----------------------------
CREATE TABLE `jforum_topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `topic_title` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_time` datetime DEFAULT NULL,
  `topic_views` int(11) DEFAULT '1',
  `topic_replies` int(11) DEFAULT '0',
  `topic_status` tinyint(3) DEFAULT '0',
  `topic_vote_id` int(11) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) DEFAULT '0',
  `topic_first_post_id` int(11) DEFAULT '0',
  `topic_last_post_id` int(11) NOT NULL DEFAULT '0',
  `topic_moved_id` int(11) DEFAULT '0',
  `moderated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `topic_first_post_id` (`topic_first_post_id`),
  KEY `topic_last_post_id` (`topic_last_post_id`),
  KEY `topic_moved_id` (`topic_moved_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_topics_watch
-- ----------------------------
CREATE TABLE `jforum_topics_watch` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_read` tinyint(1) DEFAULT '1',
  KEY `idx_topic` (`topic_id`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_user_groups
-- ----------------------------
CREATE TABLE `jforum_user_groups` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `idx_group` (`group_id`),
  KEY `idx_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_users
-- ----------------------------
CREATE TABLE `jforum_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_active` tinyint(1) DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_session_time` bigint(20) DEFAULT '0',
  `user_session_page` int(11) NOT NULL DEFAULT '0',
  `user_lastvisit` datetime DEFAULT NULL,
  `user_regdate` datetime DEFAULT NULL,
  `user_level` tinyint(4) DEFAULT NULL,
  `user_posts` int(11) NOT NULL DEFAULT '0',
  `user_timezone` varchar(5) NOT NULL DEFAULT '',
  `user_style` tinyint(4) DEFAULT NULL,
  `user_lang` varchar(255) NOT NULL DEFAULT '',
  `user_dateformat` varchar(20) NOT NULL DEFAULT '%d/%M/%Y %H:%i',
  `user_new_privmsg` int(11) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(11) NOT NULL DEFAULT '0',
  `user_last_privmsg` datetime DEFAULT NULL,
  `user_emailtime` datetime DEFAULT NULL,
  `user_viewemail` tinyint(1) DEFAULT '0',
  `user_attachsig` tinyint(1) DEFAULT '1',
  `user_allowhtml` tinyint(1) DEFAULT '0',
  `user_allowbbcode` tinyint(1) DEFAULT '1',
  `user_allowsmilies` tinyint(1) DEFAULT '1',
  `user_allowavatar` tinyint(1) DEFAULT '1',
  `user_allow_pm` tinyint(1) DEFAULT '1',
  `user_allow_viewonline` tinyint(1) DEFAULT '1',
  `user_notify` tinyint(1) DEFAULT '1',
  `user_notify_always` tinyint(1) DEFAULT '0',
  `user_notify_text` tinyint(1) DEFAULT '0',
  `user_notify_pm` tinyint(1) DEFAULT '1',
  `user_popup_pm` tinyint(1) DEFAULT '1',
  `rank_id` int(11) DEFAULT '0',
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_avatar_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_icq` varchar(15) DEFAULT NULL,
  `user_website` varchar(255) DEFAULT NULL,
  `user_from` varchar(100) DEFAULT NULL,
  `user_sig` text,
  `user_sig_bbcode_uid` varchar(10) DEFAULT NULL,
  `user_aim` varchar(255) DEFAULT NULL,
  `user_yim` varchar(255) DEFAULT NULL,
  `user_msnm` varchar(255) DEFAULT NULL,
  `user_occ` varchar(100) DEFAULT NULL,
  `user_interests` varchar(255) DEFAULT NULL,
  `user_biography` text,
  `user_actkey` varchar(32) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `themes_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_viewonline` tinyint(1) DEFAULT '1',
  `security_hash` varchar(32) DEFAULT NULL,
  `user_karma` double DEFAULT NULL,
  `user_authhash` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_vote_desc
-- ----------------------------
CREATE TABLE `jforum_vote_desc` (
  `vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `vote_text` varchar(255) NOT NULL DEFAULT '',
  `vote_start` datetime NOT NULL,
  `vote_length` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_vote_results
-- ----------------------------
CREATE TABLE `jforum_vote_results` (
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `vote_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_option_text` varchar(255) NOT NULL DEFAULT '',
  `vote_result` int(11) NOT NULL DEFAULT '0',
  KEY `vote_id` (`vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_vote_voters
-- ----------------------------
CREATE TABLE `jforum_vote_voters` (
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `vote_user_id` int(11) NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(15) NOT NULL DEFAULT '',
  KEY `vote_id` (`vote_id`),
  KEY `vote_user_id` (`vote_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for jforum_words
-- ----------------------------
CREATE TABLE `jforum_words` (
  `word_id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(100) NOT NULL DEFAULT '',
  `replacement` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for open_api
-- ----------------------------
CREATE TABLE `open_api` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `text` varchar(100) DEFAULT NULL COMMENT '接口名称',
  `apiurl` varchar(200) DEFAULT NULL COMMENT 'api访问地址',
  `apitype` varchar(20) DEFAULT NULL COMMENT '支持的格式json xml',
  `httptype` varchar(20) DEFAULT NULL,
  `apidesc` text COMMENT '接口描述',
  `parent` bigint(20) DEFAULT NULL COMMENT '父级',
  `needuserconfirm` varchar(20) DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for open_app
-- ----------------------------
CREATE TABLE `open_app` (
  `apptype` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `appurl` varchar(500) DEFAULT NULL COMMENT 'app主页',
  `appdesc` varchar(1000) DEFAULT NULL COMMENT 'app描述',
  `appreturnurl` varchar(500) DEFAULT NULL COMMENT 'app回调地址',
  `appsecret` varchar(100) DEFAULT NULL COMMENT '应用私钥',
  `accesscount` bigint(20) DEFAULT '2000' COMMENT '访问次数限制',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `appname` varchar(255) DEFAULT NULL,
  `isactive` varchar(255) DEFAULT 'no' COMMENT '是否激活',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for open_log
-- ----------------------------
CREATE TABLE `open_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `appid` bigint(20) DEFAULT NULL COMMENT '应用id',
  `apiurl` varchar(50) DEFAULT NULL COMMENT '接口id',
  `accesstime` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for open_oauth
-- ----------------------------
CREATE TABLE `open_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(100) DEFAULT NULL COMMENT '授权code',
  `access_token` varchar(100) DEFAULT NULL COMMENT '访问令牌',
  `appid` bigint(20) DEFAULT NULL COMMENT '应用id',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `access_auth` varchar(255) DEFAULT NULL COMMENT '访问权限（2级菜单）逗号分开',
  `token_expires` bigint(20) DEFAULT NULL COMMENT '过期时间(秒)',
  `code_isactive` varchar(255) DEFAULT 'no' COMMENT 'code是否使用，默认no',
  `uptime` datetime DEFAULT NULL COMMENT '修改时间',
  `token_isactive` varchar(255) DEFAULT 'yes' COMMENT 'token是否失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_college
-- ----------------------------
CREATE TABLE `t_college` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `collegename` varchar(45) DEFAULT NULL COMMENT '名称',
  `collegeintroduction` varchar(10000) DEFAULT NULL COMMENT '院系介绍',
  `collegeorder` int(11) DEFAULT NULL COMMENT '院系排序',
  `createdate` datetime DEFAULT NULL,
  `collegelevel` varchar(1) DEFAULT '2' COMMENT '1,2级',
  `collegesummary` varchar(10000) DEFAULT NULL COMMENT '院系简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='院系表，分1级，2级院系，1级院系只用于学院';

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
CREATE TABLE `t_department` (
  `departmentId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT 'department',
  `departmentType` varchar(20) DEFAULT NULL COMMENT '专业类别',
  `departmentName` varchar(45) DEFAULT NULL COMMENT '专业名称',
  `departmentIntroduction` text COMMENT '专业介绍',
  `departmentDirection` text COMMENT '学科方向',
  `departmentPlanForOne` bigint(14) DEFAULT NULL COMMENT '本科培养方案',
  `departmentPlanForTwo` bigint(14) DEFAULT NULL COMMENT '硕士培养方案',
  `departmentPlanForThree` bigint(14) DEFAULT NULL COMMENT '博士培养方案',
  `departmentPlanForFour` bigint(14) DEFAULT NULL COMMENT '硕专培养方案',
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dictionary
-- ----------------------------
CREATE TABLE `t_dictionary` (
  `dictionaryid` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '字典表',
  `dictionarycode` varchar(20) DEFAULT NULL,
  `dictionaryvalue` varchar(20) DEFAULT NULL,
  `dictionaryType` varchar(20) DEFAULT NULL,
  `dictionaryremark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dictionaryid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表（文章种类，学院，教师级别，学科）';

-- ----------------------------
-- Table structure for t_download
-- ----------------------------
CREATE TABLE `t_download` (
  `downloadid` bigint(14) NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) DEFAULT NULL COMMENT '名称',
  `fileshowpath` varchar(1000) DEFAULT NULL COMMENT '资料显示路径',
  `filepath` varchar(1000) DEFAULT NULL COMMENT '资料保存路径',
  `fileisvalid` varchar(2) DEFAULT NULL COMMENT '是否启用',
  `createdate` varchar(20) DEFAULT NULL COMMENT '创建日期',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `directions` varchar(1000) DEFAULT NULL COMMENT '说明',
  `infotype` varchar(20) DEFAULT NULL COMMENT '资料分类(通知，制度，上传的资料，立项申请书电子版，论文电子版)',
  `fileType` varchar(20) DEFAULT NULL COMMENT '文件分类（word，视频，音频，rar）',
  PRIMARY KEY (`downloadid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='资料下载';

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
CREATE TABLE `t_paper` (
  `paperId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '科研--论文表\n\n论文名称、作者排序、期刊名称、刊登年份、杂志期号、论文电子版',
  `paperName` varchar(100) DEFAULT NULL COMMENT '论文名称',
  `paperAuthor` varchar(100) DEFAULT NULL COMMENT '作者排序',
  `paperNoteName` varchar(45) DEFAULT NULL COMMENT '期刊名称',
  `paperNoteYear` varchar(4) DEFAULT NULL COMMENT '刊登年份',
  `paperNoteNO` varchar(20) DEFAULT NULL COMMENT '杂志期号',
  `paperDownloadId` bigint(20) DEFAULT NULL COMMENT '论文电子版(资料表ID)',
  `paperTeacherId` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_prize
-- ----------------------------
CREATE TABLE `t_prize` (
  `prizeId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '科研--获奖表ID\n包括教学获奖、科研获奖、社会服务获奖，以及若干可自定义的备选项',
  `prizeType` varchar(10) DEFAULT NULL COMMENT '获奖类型',
  `prizeInfo` varchar(500) DEFAULT NULL COMMENT '获奖说明',
  `prizeDate` varchar(20) DEFAULT NULL COMMENT '获奖时间',
  `prizeTeacherId` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`prizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_research
-- ----------------------------
CREATE TABLE `t_research` (
  `researchId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '科研--立项表',
  `researchNO` varchar(20) DEFAULT NULL COMMENT '项目编号',
  `researchLevel` varchar(45) DEFAULT NULL COMMENT '项目级别',
  `researchName` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `researchMoney` int(11) DEFAULT NULL COMMENT '项目资金',
  `researchMatchMoney` int(11) DEFAULT NULL COMMENT '配套资金',
  `researchHost` varchar(45) DEFAULT NULL COMMENT '主持者',
  `researchActor` varchar(80) DEFAULT NULL COMMENT '参与者',
  `researchBeginDate` varchar(10) DEFAULT NULL COMMENT '科研开始时间',
  `researchEndDate` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `downloadId` bigint(20) DEFAULT NULL COMMENT '立项申请书电子版',
  `researchTeacherId` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`researchId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
CREATE TABLE `t_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
CREATE TABLE `t_student` (
  `id` bigint(14) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL COMMENT '学生风采标题',
  `content` varchar(10000) DEFAULT NULL COMMENT '内容',
  `createdate` datetime DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_subject
-- ----------------------------
CREATE TABLE `t_subject` (
  `subjectId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '课程资料',
  `subjectName` varchar(45) DEFAULT NULL COMMENT '课程名称（文字自填）',
  `subjectText` varchar(1000) DEFAULT NULL COMMENT '课程介绍（文字自填）',
  `subjectType` varchar(20) DEFAULT NULL COMMENT '课程性质（选）',
  `subjectTypeName` varchar(45) DEFAULT NULL COMMENT '课程类型名称',
  `subjectNO` varchar(45) DEFAULT NULL COMMENT '课程编号（文字自填）',
  `subjectOutline` bigint(20) DEFAULT NULL COMMENT '教学大纲（文档上传）',
  `subjectSchedule` bigint(20) DEFAULT NULL COMMENT '教学进度表（文档上传）',
  `subjectInfo` bigint(14) DEFAULT NULL COMMENT '课程资料（逐项上传文档、音频、视频、压缩文件包等）\n资料表ID以,分隔。',
  `subjectIsvalid` varchar(2) DEFAULT '1' COMMENT '是否有效',
  `subjectTeacherName` varchar(45) DEFAULT NULL,
  `subjectTeacherId` bigint(14) DEFAULT NULL,
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
CREATE TABLE `t_teacher` (
  `id` bigint(14) NOT NULL AUTO_INCREMENT,
  `sex` varchar(1) DEFAULT NULL COMMENT '性别（0男，1女）',
  `teachername` varchar(45) DEFAULT NULL COMMENT '姓名',
  `title` varchar(20) DEFAULT NULL COMMENT '职称(数据字典)',
  `college` varchar(20) DEFAULT NULL COMMENT '学院',
  `department` varchar(20) DEFAULT NULL COMMENT '专业',
  `collegename` varchar(50) DEFAULT NULL,
  `departmentname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `picpath` varchar(45) DEFAULT NULL COMMENT '照片路径',
  `content` text COMMENT '教师简历',
  `isshow` varchar(1) DEFAULT NULL COMMENT '0不显示,1显示',
  `birthday` varchar(10) DEFAULT NULL COMMENT '生日',
  `job` varchar(20) DEFAULT '' COMMENT '职务',
  `tutorType` int(1) DEFAULT '1' COMMENT '1:硕导，2：博导',
  `introduction` text COMMENT '个人介绍',
  `iimageURLl` varchar(1000) DEFAULT NULL COMMENT '照片地址',
  `titlename` varchar(50) DEFAULT NULL,
  `jobname` varchar(50) DEFAULT NULL,
  `teacherLongInName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_teacher_paper
-- ----------------------------
CREATE TABLE `t_teacher_paper` (
  `teacherId` bigint(14) NOT NULL,
  `paperId` bigint(14) NOT NULL,
  PRIMARY KEY (`teacherId`,`paperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_teacher_prize
-- ----------------------------
CREATE TABLE `t_teacher_prize` (
  `teacherId` bigint(14) NOT NULL,
  `prizeId` bigint(14) NOT NULL,
  PRIMARY KEY (`teacherId`,`prizeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_teacher_research
-- ----------------------------
CREATE TABLE `t_teacher_research` (
  `teacherId` bigint(14) NOT NULL,
  `researchId` bigint(14) NOT NULL,
  PRIMARY KEY (`teacherId`,`researchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_teacher_subject
-- ----------------------------
CREATE TABLE `t_teacher_subject` (
  `teacherId` bigint(14) NOT NULL,
  `subjectId` bigint(14) NOT NULL,
  PRIMARY KEY (`teacherId`,`subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_trainingplan
-- ----------------------------
CREATE TABLE `t_trainingplan` (
  `trainingPlanId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '培养方案ID',
  `trainingPlanDepId` bigint(14) DEFAULT NULL COMMENT '专业ID',
  `trainingPlanType` varchar(2) DEFAULT NULL COMMENT '方案类型（本科1，硕士2，博士3，专硕4）',
  `trPlanSubIdsForOne` varchar(1400) DEFAULT NULL COMMENT '学期1,课程ID',
  `trPlanSubIdsForTwo` varchar(1400) DEFAULT NULL COMMENT '学期2,课程ID',
  `trPlanSubIdsForThree` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForFour` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForFive` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsFoSix` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForSeven` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForEight` varchar(1400) DEFAULT NULL,
  PRIMARY KEY (`trainingPlanId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tj_actiontime
-- ----------------------------
CREATE TABLE `tj_actiontime` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `excute_time` bigint(11) DEFAULT NULL COMMENT '执行时间',
  `action_method` varchar(255) DEFAULT NULL COMMENT 'action方法',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `action_name` varchar(255) DEFAULT NULL COMMENT 'action名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57443 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for deleteTeacher
-- ----------------------------
DELIMITER ;;
CREATE DEFINER=`aclome`@`localhost` PROCEDURE `deleteTeacher`(IN teacherId long,OUT r_flag int)
begin
declare tempPaperId  long;
declare tempPrizeId  long;
declare tempResearchId  long;
declare tempSubjectId  long;
declare done int default 0;
declare tempDownloadId  long;
declare tempOutLineId  long;
declare tempScheduleId  long;
declare tempInfoId  long;
declare r_flag int default 0;


-- 声明游标 论文，获奖，立项，课程
declare cur_PaperId cursor  for select paperId  from t_teacher_paper where teacherId = teacherId;
declare cur_PrizeId cursor  for select prizeId  from t_teacher_prize where teacherId = teacherId;
declare cur_ProjectId cursor  for select researchId  from t_teacher_research where teacherId = teacherId;
declare cur_SubjectId cursor  for select subjectId  from t_teacher_subject where teacherId = teacherId;

declare continue handler FOR NOT FOUND set done=1;

OPEN cur_PaperId;          -- 打开游标
    fetch cur_PaperId into tempPaperId;              -- 获取IntersectionName
    while done<>1 do
	/*删除论文及附件*/
	select paperDownloadId  from t_paper where paperId = tempPaperId  into tempDownloadId;
	delete  from t_download  where  downloadid =tempDownloadId;
	delete  from t_paper  where  paperId =temppaperId;
fetch cur_PaperId into tempPaperId;
   end while;
CLOSE  cur_PaperId;

set done=0;
OPEN cur_PrizeId;-- 打开游标
    fetch cur_PrizeId into tempPrizeId;              -- 获取IntersectionName
    while done<>1 do
	/*删除获奖*/
	delete  from t_prize  where prizeId = tempPrizeId;
fetch cur_PrizeId into tempPrizeId;
   end while;
CLOSE  cur_PrizeId;

/*立项*/
set done=0;
OPEN cur_ProjectId;-- 打开游标
    fetch cur_ProjectId into tempResearchId;              -- 获取IntersectionName
    while done<>1 do
	/*删除立项及附件*/
	select downloadId  from t_research where researchId = tempResearchId  into tempDownloadId;
	delete  from t_download  where  downloadid =tempDownloadId;
	delete  from t_research  where  researchId =tempResearchId;
fetch cur_ProjectId into tempResearchId;
   end while;
CLOSE  cur_ProjectId;




/*课程*/
set done=0;
OPEN cur_SubjectId;-- 打开游标
    fetch cur_SubjectId into tempSubjectId;              -- 获取IntersectionName
    while done<>1 do
	/*删除课程及附件*/
	select subjectOutline,subjectSchedule,subjectInfo  from t_subject where subjectId = tempSubjectId  into tempOutLineId,tempScheduleId,tempInfoId;
	delete  from t_download  where  downloadid in (tempOutLineId,tempScheduleId,tempInfoId );
	delete  from t_subject  where  subjectId =tempSubjectId;
fetch cur_SubjectId into tempSubjectId;
   end while;
CLOSE  cur_SubjectId;

delete from t_teacher_paper where teacherId = teacherId;
delete from t_teacher_prize where teacherId = teacherId;
delete from t_teacher_research where teacherId = teacherId;
delete from t_teacher_subject where teacherId = teacherId;

delete from t_teacher where id = teacherId;

end;;
DELIMITER ;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `bs_article` VALUES ('20', 'www', '2015-03-05 00:00:00', 'regulation', '123123123123', '<p>&nbsp;222222222222222</p>', '2015-03-05 11:45:52', '教学规章制度', null, null, null, null, '17');
INSERT INTO `bs_article` VALUES ('21', 'admin', '2015-03-05', 'student', 'fffffff', '<p>&nbsp;淡定顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶</p>', '2015-03-05 16:33:42', '学生风采1', null, null, null, null, '18');
INSERT INTO `bs_article` VALUES ('22', '3啊啊啊', '2015-03-05', 'regulation', '333333333333333333333333', '<p>&nbsp;反反复复反反复复反反复复发反反复复反复烦烦烦反反复复反反复复反反复复发反反复复反复烦烦烦反反复复反反复复反反复复</p>', '2015-03-05 16:35:55', '3', null, null, null, null, '19');
INSERT INTO `bs_article` VALUES ('23', '呜呜呜呜', '2015-03-05', 'regulation', '444232323', '<p>&nbsp;反反复复反反复复反反复复</p>', '2015-03-05 16:46:43', '4', null, null, null, null, '20');
INSERT INTO `bs_article` VALUES ('24', '1', '2015-03-05', 'notice', '1', '<p>&nbsp;1</p>', '2015-03-05 16:49:52', '1', null, null, null, null, '21');
INSERT INTO `bs_article` VALUES ('25', '2', '2015-03-05', 'notice', '2', '<p>&nbsp;2</p>', '2015-03-05 16:51:29', '2', null, null, null, null, '22');
INSERT INTO `bs_article` VALUES ('27', '3', '2015-03-06', 'notice', '3', '<p>&nbsp;3</p>', '2015-03-05 17:01:43', '3', null, null, null, null, '24');
INSERT INTO `bs_article` VALUES ('28', '3', '2015-03-06', 'notice', '3', '<p>&nbsp;3</p>', '2015-03-05 17:03:19', '3', null, null, null, null, '25');
INSERT INTO `bs_article` VALUES ('29', '222222', '2015-03-17', 'notice', '333333', '<p>&nbsp;11111111112222222222</p>', '2015-03-17 16:35:53', '通知11', null, null, null, null, '49');
INSERT INTO `bs_article` VALUES ('30', '123123123', '2015-03-17', 'notice', '3333333333333333333', '<p>&nbsp;发反反复复</p>', '2015-03-17 17:16:44', '通知2222', null, null, null, null, '50');
INSERT INTO `bs_article` VALUES ('31', '44', '2015-03-17', 'regulation', '55', '<p>&nbsp;方法</p>', '2015-03-17 17:21:43', '333', null, null, null, null, '51');
INSERT INTO `bs_article` VALUES ('33', '44', '2015-03-24', 'regulation', '55', '<p>&nbsp;123123</p>', '2015-03-23 14:41:03', '2233', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('34', '22', '2015-03-18', 'regulation', '33', '<p>&nbsp;4444</p>', '2015-03-23 14:41:21', '11', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('40', 'fff', '2015-03-23', 'construction', 'sss', '<p>&nbsp;fffffffff</p>', '2015-03-23 15:13:07', 'ddd1', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('41', 'bb2', '2015-03-23', 'build_course', 'sdfsdf', '<p>&nbsp;adsfasdf</p>', '2015-03-23 15:17:22', 'aa1', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('42', 'ccc', '2015-03-23', 'regulation', 'cc', '<p>&nbsp;ccccc</p>', '2015-03-23 15:18:19', 'ccc', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('43', 'rrr', '2015-03-23', 'regulation', 'rrr', '<p>&nbsp;rrrrr</p>', '2015-03-23 15:24:13', 'rrr', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('44', 'qq', '2015-03-23', 'reform', 'qq', '<p>&nbsp;qq</p>', '2015-03-23 15:26:16', 'qq', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('46', 'tt', '2015-03-24', 'reform', 'tt', '<p>&nbsp;ttt</p>', '2015-03-23 15:27:59', 'tt', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('47', 'yy', '2015-03-23', 'regulation', 'yy', '<p>&nbsp;yy</p>', '2015-03-23 15:28:11', 'yy', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('48', '1123123', '2015-03-23', 'notice', '33333333333', '<p>&nbsp;fffff</p>', '2015-03-23 17:06:31', 'cccccccccccccccccccc', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('49', '22', '2015-03-25', 'notice', '33444123', '<p><img src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150325/60231427252357156.tmp\" _src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150325/60231427252357156.tmp\"/>&nbsp;</p>', '2015-03-25 11:00:09', '111', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('50', '版本', '2015-03-24', 'regulation', '顶顶顶', '<p>&nbsp;<img src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150331/88041427792721151.tmp\" _src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150331/88041427792721151.tmp\"/></p>', '2015-03-31 17:05:26', '啊啊', null, null, null, null, null);
INSERT INTO `bs_article` VALUES ('51', 'aaaaaaa', '2015-04-06', 'notice', '各省、市、自治区社会学会，各社会学研究、教学机构，各专业委员会：\r\n\r\n社会学界的各位同仁：\r\n\r\n经中国社会学会审批，今年年会目前已经批准设立的论坛现在中国社会学网上公布，如有增报论坛，我们将及时公布，请大家继续关注。\r\n', '<p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\">各省、市、自治区社会学会，各社会学研究、教学机构，各专业委员会：</span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\">社会学界的各位同仁：</span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"font-family: 宋体; font-size: 13px;\">经中国社会学会审批，今年年会目前已经批准设立的论坛现在中国社会学网上公布，如有增报论坛，我们将及时公布，请大家继续关注。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\">特别要提醒注意以下几点：</span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp;1</span><span style=\"font-family: 宋体; font-size: 13px;\">、 &nbsp;为提高论坛的学术质量，保证会议顺利召开，各位同仁投稿时请务必参照网上公布的论坛信息，投稿的论文选题应符合论坛主题，并请将论文直接发给各论坛负责人或联系人，经论坛负责人审核后，发给会议邀请函，方可参会。<span style=\"font-size:12px\"><strong>每篇论文只可投递一个论坛。严禁一稿多投。一稿多投的论文将不能参加年会的优秀论文评选。</strong></span></span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp;2</span><span style=\"font-family: 宋体; font-size: 13px;\">、 &nbsp;为保证论坛的学术质量，所投论文必须符合学术规范，凡是不符合学术规范要求的论文，不能参加年会的论文评奖。</span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp;3</span><span style=\"font-family: 宋体; font-size: 13px;\">、学术规范的要求：</span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; （<span style=\"font-size:12px\"><span>1</span>）稿件第一页应包括以下信息：文章标题、作者姓名、单位、职称、联系电话、通讯地址、电邮地址；</span></span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; （<span style=\"font-size:12px\"><span>2</span>）稿件第二页应包括以下信息：文章标题、中文摘要，不超过</span><span style=\"font-size:12px\"><span>200</span>字、</span><span style=\"font-size:12px\"><span>3-5</span>个中文关键词、英文标题、作者姓名的汉语拼音、英文摘要，不超过</span><span style=\"font-size:12px\"><span>150</span>字；</span></span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; （<span style=\"font-size:12px\"><span>3</span>）文章凡采用他人成说，务必加注说明。在引文后加括号注明作者、出版年份及页码，详细文献出处作为参考文献列于文后，以作者、出版年份、书（或文章）名、出版单位（或期刊名）、出版地点排序。文献按作者姓氏的第一个字母依</span><span style=\"font-size:12px\"><span>A</span>－</span><span style=\"font-size:12px\"><span>Z</span>顺序分中、英文两部分排列，中文文献在前，英文文献在后。引文中的英文部分，专著名用斜体，论文题目写入“”号内。作者自己的说明放在当页脚注；</span></span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; （<span style=\"font-size:12px\"><span>4</span>）文章原则上不超过</span><span style=\"font-size:12px\"><span>12000</span>字。</span><span style=\"undefinedfont-size:12px\"> </span></span></p><p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; 附：中国社会学会<span style=\"font-size:12px\"><span>2015</span>年年会论坛设置情况</span></span></p><p><span style=\"font-family: 宋体; font-size: 13px;\"> <p style=\"text-align: left;\"><span style=\"font-family: 宋体; font-size: 13px;\"> &nbsp; &nbsp; 中国社会学会<span>2015</span>年年会论坛设置情况（以收到申请表时间为序）</span></p><p style=\"text-align: center;\"></p><p style=\"text-align: center;\"><table style=\"width: 617px; border-collapse: collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"616\"><colgroup><col style=\"width: 143px;\" width=\"143\"/><col style=\"width: 200px;\" width=\"200\"/><col style=\"width: 87px;\" width=\"86\"/><col style=\"width: 121px;\" width=\"121\"/><col style=\"width: 32px;\" width=\"32\"/><col style=\"width: 35px;\" width=\"34\"/></colgroup><tbody><tr style=\"height: 28px;\" height=\"28\"><td style=\"border: 1px solid windowtext; width: 143px; height: 28px; background-color: silver;\" height=\"28\" width=\"143\"><p><span style=\"color:#000000;font-size:12px\"><strong>名称</strong></span></p></td><td style=\"border-width: 1px 1px 1px medium; border-style: solid solid solid none; border-color: windowtext; width: 200px; background-color: silver;\" width=\"200\"><p><span style=\"color:#000000;font-size:12px\"><strong>申办单位</strong></span></p></td><td style=\"border-width: 1px 1px 1px medium; border-style: solid solid solid none; border-color: windowtext; width: 87px; background-color: silver;\" width=\"86\"><p><span style=\"color:#000000;font-size:12px\"><strong>负责人</strong></span></p></td><td style=\"border-width: 1px 1px 1px medium; border-style: solid solid solid none; border-color: windowtext; width: 121px; background-color: silver;\" width=\"121\"><p><span style=\"color:#000000;font-size:12px\"><strong>联系人</strong></span></p></td><td style=\"border-width: 1px 1px 1px medium; border-style: solid solid solid none; border-color: windowtext; width: 32px; background-color: silver;\" width=\"32\"><p><span style=\"color:#000000;font-size:12px\"><strong>人数</strong></span></p></td><td style=\"border-width: 1px 1px 1px medium; border-style: solid solid solid none; border-color: windowtext; width: 35px; background-color: silver;\" width=\"34\"><p><strong><span style=\"color:#000000;font-size:12px\">所需时间</span></strong></p></td></tr><tr style=\"height: 32px;\" height=\"32\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 32px; background-color: white;\" height=\"32\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会流动与社会结构转型：中日社会学家的交流</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会科学院社会学研究所 &nbsp;上海大学社会学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">张</span><span> </span><span style=\"color:#000000;font-size:12px\">翼 张海东</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">姚烨琳18502127690 &nbsp;yaoyelin110@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">10</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><span style=\"color:#000000;font-size:12px\">农村公共事务治理</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会科学院社会学研究所农村环境与社会研究中心，华中科技大学中国乡村治理研究中心，人大农业与农村发展学院等</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王晓毅</span><span> </span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">张倩13126608310 &nbsp;zhangqian@cass.org.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">经济新常态与消费新模式</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中山大学社会学与人类学学院 &nbsp;上海大学社会学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王</span><span> </span><span style=\"color:#000000;font-size:12px\">宁</span><span> </span><span style=\"color:#000000;font-size:12px\">张敦福 吕大乐</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">张敦福13764433044 &nbsp;dunfuzhang@hotmail.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">转型中国的劳动与劳动力研究</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中山大学城市社会研究中心 &nbsp;中山大学社会学与社会工作系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">蔡</span><span> </span><span style=\"color:#000000;font-size:12px\">禾</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">冯晓敏13642300805 &nbsp;475638203@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749901.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">中国环境社会学青年论坛</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会环境社会学专业委员会 中国人民大学环境社会学研究所 &nbsp;中南大学公共管理学院社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">洪大用</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">彭远春18229904073 &nbsp;pyc9600@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">农民工市民化成本分担机制研究</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">广州大学公共管理学院社会学系 广州市社会工作学会 &nbsp;广州市社会工作研究中心</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">谢建社</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">李夏茵15622370685 &nbsp;4651717605@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">60</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749627.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">新常态下的移民与社会</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会移民社会学专委会 河海大学中国移民研究中心 &nbsp;三峡大学长江三峡发展研究中心</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">施国庆 段跃芳</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">朱秀杰15950576062 &nbsp;zhuxiujie@yeah.net</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">70</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会建设的理论与实践：社会体制改革与小康社会建设</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">北京工业大学人文社会科学学院 中国社会科学院社会学研究所 &nbsp;陆学艺社会学发展基金会 中国社会学会社会建设研究专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">唐</span><span> </span><span style=\"color:#000000;font-size:12px\">军 陈光金</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">鞠春彦13552296569 &nbsp;rw6398@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><span style=\"color:#000000;font-size:12px\">经济社会学：理论评析与中国经验</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">浙江大学社会系 香港树仁大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">刘志军 高</span><span> </span><span style=\"color:#000000;font-size:12px\">崇</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">刘志军 高崇13119548418 &nbsp;Liuzhijun@zju.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749957.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">廉政建设与社会评价</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会科学院社会学所廉政建设与社会评价研究室</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">孙壮志</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">蒋来用85195127 &nbsp;jiangly@cass.org.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749978.htm\" target=\"_blank\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">老年社会学:老龄政策与老年公平</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国人民大学社会与人口学院老年学研究所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">杜</span><span> </span><span style=\"color:#000000;font-size:12px\">鹏</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">杜鹏13501275637 &nbsp;dupeng@ruc.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">100</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">性别视角：经济新常态下的社会改革</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">浙江省社会科学院妇女与家庭研究中心 &nbsp;浙江省社会科学院社会学所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王金玲</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">高雪玉13606619993 &nbsp;zjwfsc@mail.hz.zj.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">教育中的社会问题研究</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">武汉大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">杨</span><span> </span><span style=\"color:#000000;font-size:12px\">敏 郁之虹 林</span><span> </span><span style=\"color:#000000;font-size:12px\">曾</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">郁之虹18627939033 &nbsp;annayu@163.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749902.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">理论社会学的当代视野与理论创新</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国人民大学社会学理论与方法研究中心 &nbsp;中国社会学会理论社会学专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">刘少杰</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">王水雄 李锁成13331080919 &nbsp;xiongshui@ruc.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 66px;\" height=\"66\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 66px; background-color: white;\" height=\"66\" width=\"143\"><span style=\"color:#000000;font-size:12px\">2015年农村社会学论坛---法治化背景下的农村社会发展</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">华中农业大学文法学院 华中农业大学农村社会建设与管理研究中心 &nbsp;中国人民大学社会学理论与方法研究中心、华东理工大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">钟涨宝 陆益龙 杨发祥</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">狄金华、李锁成13331080919 &nbsp;dijinhua1982@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749903.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">公共场所安全维护及暴恐事件的群防群治</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">广州市公共安全重点研究基地 广东警官学院珠三角公共安全研究所 &nbsp;广州市公共安全管理学会 广州市法学会公共安全法律研究会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">马建文</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">甘维祥13729861006 &nbsp;597265849@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会分层与流动：中国社会转型的机制与经验</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">同济大学社会学系 &nbsp;中国社会学会社会分层与流动研究专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王甫勤</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">王琪13817380415 &nbsp;2015rssm@tongji.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">80</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749904.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">人口流动与城市治理</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">北京市委党校社会学教研部 &nbsp;北京社会建设研究会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">洪小良</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">潘建雷15120033648 &nbsp;panjianlei@bac.gov.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">考试招生制度改革与社会公平</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会教育社会学专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王旭东</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">张翼13810026254 &nbsp;yizhang14@mails</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">韦伯与中国文化</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">哈尔滨工程大学人文社会科学学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">苏国勋 杨国庆</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">张翼飞15645005413 &nbsp;zhang-yifei@hotmail.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">20</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">草原社会学与牧区治理</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">内蒙古大学民族学与社会学学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">宋跃飞</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">刘强18548118536 &nbsp;liuq85@163.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749905.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">社会影响评价：理论与实践</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">华中师范大学中部地区减贫与发展研究院 &nbsp;华中师范大学社会学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">陆汉文</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">蔡志海18571652857 &nbsp;alex_cai@mail.ccnu.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">25</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">新常态下的体育深化改革</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会体育社会学专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">杨文轩</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">庹权13570535555 &nbsp;tuoquan@yeah.net</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">城乡社区治理论坛</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">北京市会社会科学院社会学所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">沈</span><span> </span><span style=\"color:#000000;font-size:12px\">原 李伟东</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">李伟东13426337807 &nbsp;Liweidongxi@sina.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">20</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">地方社会治理实践与案例研究</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">四川省社会科学院社会学所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">李</span><span> </span><span style=\"color:#000000;font-size:12px\">羚</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">陈序13076005171 &nbsp;874807765@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">经济新常态下的农村社会全面改革与创新</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">安徽省社会学会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">蔡</span><span> </span><span style=\"color:#000000;font-size:12px\">宪</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">马宏宇 张倩倩18355319512 &nbsp;wky54321@163.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">世妇会20年：性别社会学研究的回顾与展望</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会性别专业委员会 &nbsp;北京大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">佟</span><span> </span><span style=\"color:#000000;font-size:12px\">新</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">马冬玲13691370169 &nbsp;madongling@wsic.ac.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749906.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">社会资本与基层社会治理</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">复旦大学社会学系 &nbsp;厦门大学社会学与社会工作系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">刘</span><span> </span><span style=\"color:#000000;font-size:12px\">欣 胡</span><span> </span><span style=\"color:#000000;font-size:12px\">荣</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">俞志元13816109802 &nbsp;yuzhiyuan@fudan.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749907.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">2015年犯罪社会学论坛：经济新常态下的刑事犯罪与社会治理</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会犯罪社会学专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">吴鹏森</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">梁德阔15026813212 &nbsp;liangdekuo@hotmail.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749908.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">第四届网络社会学与虚拟社会治理论坛</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">华东政法大学社会发展学院 广州大学社会学系 &nbsp;中国社会学会网络社会学专业委员会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">何明升 谢俊贵</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">倪蒸蒸021-67790095 &nbsp;nizhengzheng@ecupl.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">民族地区社会治理与社会发展</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">贵州民族大学民族学与社会学学院 &nbsp;贵州省社会科学院社会研究所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王国勇 黄德林</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">刘玉连18984559639 &nbsp;258810293@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">传媒与社会治理创新</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国传媒大学文法学部</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">青连斌 冯 波 谢进川</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">陈文玲13264002006 &nbsp;wenlingchen@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">文化社会学：中国传统文化观念的当代价值</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">复旦大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">周</span><span> </span><span style=\"color:#000000;font-size:12px\">怡</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">胡安宁18201778359 &nbsp;huanning@fudan.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 56px;\" height=\"56\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 56px; background-color: white;\" height=\"56\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749909.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">关系研究：理论反思与中国经验</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">哈尔滨工程大学 西安交通大学</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">刘</span><span> </span><span style=\"color:#000000;font-size:12px\">军 李黎明 杜海峰</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">郑鸣九、杜巍13614510631 &nbsp;zhengmingjiu@hrbeu.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">25</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749973.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">科学社会学论坛：新改革时期的科学技术与社会</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">南开大学社会学系 科技部科技发展战略研究院 &nbsp;清华大学科技与社会研究所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">赵万里 赵延东 李正风</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">王琰18002035211 &nbsp;wangyansoc@icloud.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">宗教社会学论坛:宗教与社会治理</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">华东师范大学社会学系 宗教与社会研究中心 &nbsp;北京大学中国宗教与社会研究中心 华东政法大学社会发展学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">李向平 卢云峰</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">李峰18694398410 &nbsp;lffile@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">发展社会学论坛：新时期中国的城乡发展与基层社会治理</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">吉林大学哲学社会学院 &nbsp;华东师范大学社会学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">田毅鹏 文</span><span> </span><span style=\"color:#000000;font-size:12px\">军</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">董运生 芦恒15948379082 &nbsp;luheng@jlu.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749994.htm\" target=\"_blank\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">城镇化与城乡统筹</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">清华大学社会科学学院 中华女子学院 中南大学社会学系 &nbsp;福州大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">李</span><span> </span><span style=\"color:#000000;font-size:12px\">强</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">李敏15501000918 &nbsp;limin760@163.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">60</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会治理理论的新发展与我国经验</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会社会管理专业委员会(筹）</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">宋宝安</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">王璐航 贾玉娇13756563980 &nbsp;shgl2015@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会转型与家庭建设</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会家庭社会学专业委员会、中国婚姻家庭研究会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">徐安琪 甄</span><span> </span><span style=\"color:#000000;font-size:12px\">砚</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">刘汶蓉13817550402 &nbsp;lwr@sass.org.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">20</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">第六届中国海洋社会学论坛：海洋渔村与社会变迁</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会学会海洋社会学专业委员会 &nbsp;中国海洋大学法政学院社会学研究所</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">崔</span><span> </span><span style=\"color:#000000;font-size:12px\">凤</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">赵宗金18669791177 &nbsp;zongjin@ouc.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">20</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749910.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">社会治理的理想与质性社会学研究</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">陕西省社会科学院社会学研究所 &nbsp;陕西省社会学会</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">尹小俊 吴</span><span> </span><span style=\"color:#000000;font-size:12px\">南 王旭瑞</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">王旭瑞13892813907 &nbsp;gracewxr@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749962.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">当代中国研究</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">南京大学社会学院 &nbsp;南京大学当代中国研究中心</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">周晓虹</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">陆远13151404143 &nbsp;luyuan@nju.edu.cn</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">40</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">区域、阶层与体制：比较社会政策</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">华东理工大学社会学系</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">徐永祥</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">孙中伟18516043003 &nbsp;303520863@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr><tr style=\"height: 28px;\" height=\"28\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 28px; background-color: white;\" height=\"28\" width=\"143\"><span style=\"color:#000000;font-size:12px\">社会工作与社会治理创新</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">广东工业大学，中南大学，湖南师范大学，怀化学院</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">刘静林陈成文</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span style=\"color:#000000;font-size:12px\">黄庆林13556166664 &nbsp;156795639@qq.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">50</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">全天</span></td></tr><tr style=\"height: 42px;\" height=\"42\"><td style=\"border-width: medium 1px 1px; border-style: none solid solid; border-color: windowtext; width: 143px; height: 42px; background-color: white;\" height=\"42\" width=\"143\"><a href=\"http://www.sociology2010.cass.cn/news/749974.htm\"><span style=\"color: windowtext; font-family: 宋体; font-size: 11px;\"><span style=\"text-decoration:underline;\">转型期社会心态研究</span></span></a></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 200px; background-color: white;\" width=\"200\"><span style=\"color:#000000;font-size:12px\">中国社会科学院社会学研究所社会心理研究中心</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 87px; background-color: white;\" width=\"86\"><span style=\"color:#000000;font-size:12px\">王俊秀 杨宜音</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 121px; background-color: white;\" width=\"121\"><span> </span><span style=\"color:#000000;font-size:12px\">高文珺15652202656 &nbsp;casswenjungao@126.com</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 32px; background-color: white;\" width=\"32\"><span style=\"color:#000000;font-size:12px\">30</span></td><td style=\"border-width: medium 1px 1px medium; border-style: none solid solid none; border-color: windowtext; width: 35px; background-color: white;\" width=\"34\"><span style=\"color:#000000;font-size:12px\">半天</span></td></tr></tbody></table><p></p><p></p></p></span></p><p></p>', '2015-04-05 16:25:44', '中国社会学会2015年学术年会举办论坛的通知(0402)中国社会学会2015年学术年会举办论坛的通知', null, null, null, null, null);
INSERT INTO `bs_menu` VALUES ('1', '后台管理系统', '1', null, '1', null, 'open');
INSERT INTO `bs_menu` VALUES ('2', '权限管理', '2', null, '1', '1', 'closed');
INSERT INTO `bs_menu` VALUES ('3', '菜单管理', '3', 'Menu_show', '2', '2', 'open');
INSERT INTO `bs_menu` VALUES ('12', '用户中心', '2', null, '5', '1', 'closed');
INSERT INTO `bs_menu` VALUES ('13', '用户管理', '3', 'User_index', '1', '12', 'open');
INSERT INTO `bs_menu` VALUES ('54', '角色管理', '0', 'Role_index', '0', '2', 'open');
INSERT INTO `bs_menu` VALUES ('67', '监控统计', '2', null, '8', '1', 'closed');
INSERT INTO `bs_menu` VALUES ('68', 'Action执行时间', '0', 'ExcuteTime_index', '0', '67', 'open');
INSERT INTO `bs_menu` VALUES ('69', '应用服务器监控', '0', 'monitoring', '0', '67', 'open');
INSERT INTO `bs_menu` VALUES ('71', '意见反馈', '0', 'LeaveMessage_index', '0', '2', 'open');
INSERT INTO `bs_menu` VALUES ('77', 'druid连接池', '0', 'druid/druid.html', '0', '67', 'open');
INSERT INTO `bs_menu` VALUES ('103', '系统设置', '2', null, '6', '1', 'open');
INSERT INTO `bs_menu` VALUES ('116', '内容管理', '2', null, '1', '1', 'closed');
INSERT INTO `bs_menu` VALUES ('117', '资料下载', '3', 'Download_index', '1', '116', 'open');
INSERT INTO `bs_menu` VALUES ('118', '文章管理', '3', 'Article_index', '1', '116', 'open');
INSERT INTO `bs_menu` VALUES ('119', '数据字典', '0', 'Dictionary_index', '0', '103', 'closed');
INSERT INTO `bs_menu` VALUES ('121', '师资队伍', '3', 'Teacher_index', '1', '116', 'closed');
INSERT INTO `bs_menu` VALUES ('125', '人才培养方案', '3', 'TrainingPlan_index', '1', '116', 'closed');
INSERT INTO `bs_menu` VALUES ('127', '测试', '3', 'TrainingPlan_testindex', '1', '116', 'closed');
INSERT INTO `bs_menu` VALUES ('128', '缓存管理', '0', 'Cache_index', '0', '67', 'open');
INSERT INTO `bs_pagestatic` VALUES ('327', 'Article_toNoticePage.htm', 'http://127.0.0.1:8080/schnew/Article_toNoticePage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('328', 'Login_init.htm', 'http://127.0.0.1:8080/schnew/Login_init', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('329', 'Download_toDownloadPage.htm', 'http://127.0.0.1:8080/schnew/Download_toDownloadPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('330', 'Download_toDownloadPage.htm', 'http://127.0.0.1:8080/schnew/Download_toDownloadPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('331', 'Teacher_toTeacherPage.htm', 'http://127.0.0.1:8080/schnew/Teacher_toTeacherPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('332', 'TrainingPlan_toPlanPage.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toPlanPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('333', 'TrainingPlan_toPlanPage.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toPlanPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('334', 'Article_toRegulationPage.htm', 'http://127.0.0.1:8080/schnew/Article_toRegulationPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('335', 'Article_toNoticePage.htm', 'http://127.0.0.1:8080/schnew/Article_toNoticePage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('336', 'Article_toNoticePage.htm', 'http://127.0.0.1:8080/schnew/Article_toNoticePage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('337', 'Login_init.htm', 'http://127.0.0.1:8080/schnew/Login_init', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('338', 'Login_init.htm', 'http://127.0.0.1:8080/schnew/Login_init', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('339', 'Article_toTrainingResultPage.htm', 'http://127.0.0.1:8080/schnew/Article_toTrainingResultPage', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('340', 'Article_teachDetail_51.htm', 'http://127.0.0.1:8080/schnew/Article_teachDetail?id=51', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('341', 'index.htm', 'http://127.0.0.1:8080/schnew/index', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('342', 'Teacher_teacherDetail_52.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=52', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('343', 'Article_teachDetail_49.htm', 'http://127.0.0.1:8080/schnew/Article_teachDetail?id=49', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('344', 'Teacher_teacherDetail_56.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=56', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('345', 'Teacher_teacherDetail_54.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=54', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('346', 'Teacher_teacherDetail_58.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=58', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_productcategory` VALUES ('1', '22', '33333', '2123', '123');
INSERT INTO `bs_resource` VALUES ('1', 'Admin', '后台登陆【后台】', 'public', '2');
INSERT INTO `bs_resource` VALUES ('2', 'Login', '前台登陆【前台】', 'public', '71');
INSERT INTO `bs_resource` VALUES ('3', 'News_doqueryNews', '新闻列表【前台】', 'public', null);
INSERT INTO `bs_resource` VALUES ('4', 'News_newsdetail', '新闻详细信息【前台】', 'public', '54');
INSERT INTO `bs_resource` VALUES ('5', 'Marking_getxml', '市场合作Xml【前台】', 'public', '52');
INSERT INTO `bs_resource` VALUES ('6', 'toNewsPage', '新闻首页【前台】', 'public', '46');
INSERT INTO `bs_resource` VALUES ('7', 'UserCenter_toUserInfo', '个人中心【前台】', 'protect', '13');
INSERT INTO `bs_resource` VALUES ('8', 'Trade_toTradeQuery', '交易查询【前台】', 'protect', '12');
INSERT INTO `bs_resource` VALUES ('9', 'UserCenter_toupdatepasswd', '修改密码【前台】', 'protect', '12');
INSERT INTO `bs_resource` VALUES ('10', 'Trade_doTradeSearch', '交易查询【前台】', 'protect', '5');
INSERT INTO `bs_resource` VALUES ('11', 'UserCenter_doUpdateUser', '更新用户信息【前台】', 'protect', '12');
INSERT INTO `bs_resource` VALUES ('12', 'UserCenter_updatepasswd', '修改密码【前台】', 'protect', '12');
INSERT INTO `bs_resource` VALUES ('13', 'User_query', '用户查询【前台】', 'protect', null);
INSERT INTO `bs_resource` VALUES ('14', 'OpenApp', 'opnapi【前台】', 'protect', null);
INSERT INTO `bs_resource` VALUES ('15', 'ShopCart_queryShopCart', '购物车查询【前台】', 'public', null);
INSERT INTO `bs_resource` VALUES ('16', 'ShopCart_addItem', '增加', 'public', null);
INSERT INTO `bs_resource` VALUES ('17', 'ShopCart_updateCheckbox', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('18', 'ShopCart_deleteItem', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('19', 'ShopCart_setProductnum', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('20', 'ShopCart_deleteItem', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('21', 'ShopCart_commit', null, 'protect', null);
INSERT INTO `bs_resource` VALUES ('22', 'ShopCart_pay', null, 'protect', null);
INSERT INTO `bs_resource` VALUES ('23', 'Ordering_doProductChoose', null, 'protect', null);
INSERT INTO `bs_resource` VALUES ('24', 'Ordering_toProductSearch', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('25', 'Ordering_doProductSearch', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('26', 'Ordering_queryProductInfo', null, 'public', null);
INSERT INTO `bs_resource` VALUES ('27', 'UserCenter_getorderdetail', null, 'protect', null);
INSERT INTO `bs_resource` VALUES ('28', 'Page_getPage', '获取页面', 'public', null);
INSERT INTO `bs_resource` VALUES ('29', 'Team_queryJson', '前台查询团队', 'public', null);
INSERT INTO `bs_resource` VALUES ('30', 'Job_queryJson', '工作查询【前台】', 'public', null);
INSERT INTO `bs_resource` VALUES ('31', 'Address_index', '地址首页【后台】', 'private', '75');
INSERT INTO `bs_resource` VALUES ('32', 'Address_query', '地址查询【后台】', 'private', '75');
INSERT INTO `bs_resource` VALUES ('33', 'Address_save', '地址保存【后台】', 'private', '75');
INSERT INTO `bs_resource` VALUES ('34', 'Address_delete', '删除地址【后台】', 'private', '75');
INSERT INTO `bs_resource` VALUES ('35', 'Address_update', '地址更新【后台】', 'private', '75');
INSERT INTO `bs_resource` VALUES ('36', 'Cache_clearSystemConstant', '清除缓存【后台】', 'private', '73');
INSERT INTO `bs_resource` VALUES ('37', 'Cache_index', '缓存首页【后台】', 'private', '73');
INSERT INTO `bs_resource` VALUES ('38', 'Email_index', '邮件首页【后台】', 'private', '14');
INSERT INTO `bs_resource` VALUES ('39', 'Email_query', '邮件查询【后台】', 'private', '14');
INSERT INTO `bs_resource` VALUES ('40', 'Email_detail', '邮件详情【后台】', 'private', '14');
INSERT INTO `bs_resource` VALUES ('41', 'ExcuteTime_index', '执行时间首页【后台】', 'private', '68');
INSERT INTO `bs_resource` VALUES ('42', 'ExcuteTime_query', '执行时间查询【后台】', 'private', '68');
INSERT INTO `bs_resource` VALUES ('43', 'Image_index', '图像管理首页【后台】', 'private', '106');
INSERT INTO `bs_resource` VALUES ('44', 'Image_query', '图片查询【后台】', 'private', '106');
INSERT INTO `bs_resource` VALUES ('45', 'Image_save', '图片保存[【后台】', 'private', '106');
INSERT INTO `bs_resource` VALUES ('46', 'Image_update', '图像更新【后台】', 'private', '106');
INSERT INTO `bs_resource` VALUES ('47', 'Image_delete', '图像删除【后台】', 'private', '106');
INSERT INTO `bs_resource` VALUES ('48', 'Job_index', '首页【后台】', 'private', '114');
INSERT INTO `bs_resource` VALUES ('49', 'Job_query', '工作查询【后台】', 'private', '114');
INSERT INTO `bs_resource` VALUES ('50', 'Job_save', '工作保存【后台】', 'private', '114');
INSERT INTO `bs_resource` VALUES ('51', 'job_update', '工作更新【后台】', 'private', '114');
INSERT INTO `bs_resource` VALUES ('52', 'Job_delete', '删除工作【后台】', 'private', '114');
INSERT INTO `bs_resource` VALUES ('53', 'LeaveMessage_index', '留言首页【后台】', 'private', '71');
INSERT INTO `bs_resource` VALUES ('54', 'LeaveMessage_query', '留言查询【后台】', 'private', '71');
INSERT INTO `bs_resource` VALUES ('55', 'Marking_index', '市场首页【后台】', 'private', '52');
INSERT INTO `bs_resource` VALUES ('56', 'Marking_query', '市场查询【后台】', 'private', '52');
INSERT INTO `bs_resource` VALUES ('57', 'Marking_update', '市场更新【后台】', 'private', '52');
INSERT INTO `bs_resource` VALUES ('58', 'Marking_save', '市场保存【后台】', 'private', '52');
INSERT INTO `bs_resource` VALUES ('59', 'Marking_delete', '删除市场【后台】', 'private', '52');
INSERT INTO `bs_resource` VALUES ('60', 'Menu_show', '菜单管理首页【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('61', 'Menu_query', '查询菜单【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('62', 'Menu_updateoradd', '更新或者增加菜单【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('63', 'Menu_querymenu', '查询菜单【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('64', 'Menu_deleteMenu', '删除菜单【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('65', 'Menu_queryMenuByLevel', '查询子菜单【后台】', 'private', '3');
INSERT INTO `bs_resource` VALUES ('66', 'News_index', '新闻首页【后台】', 'private', '8');
INSERT INTO `bs_resource` VALUES ('67', 'News_query', '新闻查询【后台】', 'private', '8');
INSERT INTO `bs_resource` VALUES ('68', 'News_save', '新闻保存【后台】', 'private', '8');
INSERT INTO `bs_resource` VALUES ('69', 'News_update', '新闻更新【后台】', 'private', '8');
INSERT INTO `bs_resource` VALUES ('70', 'News_deleteArticle', '删除新闻【后台】', 'private', '8');
INSERT INTO `bs_resource` VALUES ('71', 'OpenApi_index', '开发api【后台】', 'private', '62');
INSERT INTO `bs_resource` VALUES ('72', 'OpenApi_queryapi', '查询api【后台】', 'private', '62');
INSERT INTO `bs_resource` VALUES ('73', 'OpenApi_save', '保存api【后台】', 'private', '62');
INSERT INTO `bs_resource` VALUES ('74', 'OpenApi_update', '修改api【后台】', 'private', '62');
INSERT INTO `bs_resource` VALUES ('75', 'OpenApi_deleteOpenApi', '删除api【后台】', 'private', '62');
INSERT INTO `bs_resource` VALUES ('76', 'OpenApp_index', '应用管理首页【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('77', 'OpenApp_queryApp', '查询应用【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('78', 'OpenApp_editApp', '编辑应用【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('79', 'OpenApp_save', '保存应用【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('80', 'OpenApp_deleteApp', '删除app【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('81', 'OpenApp_resetSecret', '重置密钥【后台】', 'private', '63');
INSERT INTO `bs_resource` VALUES ('82', 'OpenLog_index', '日志首页【后台】', 'private', '64');
INSERT INTO `bs_resource` VALUES ('83', 'OpenLog_query', '日志查询【后台】', 'private', '64');
INSERT INTO `bs_resource` VALUES ('84', 'OpenOauth_index', '授权首页【后台】', 'private', '65');
INSERT INTO `bs_resource` VALUES ('85', 'OpenOauth_query', '授权查询【后台】', 'private', '65');
INSERT INTO `bs_resource` VALUES ('86', 'OpenOauth_edit', '授权编辑【后台】', 'private', '65');
INSERT INTO `bs_resource` VALUES ('87', 'OpenOauth_save', '授权保存【后台】', 'private', '65');
INSERT INTO `bs_resource` VALUES ('88', 'OpenOauth_delete', '授权删除【后台】', 'private', '65');
INSERT INTO `bs_resource` VALUES ('89', 'Order_index', '订单首页【后台】', 'private', '5');
INSERT INTO `bs_resource` VALUES ('90', 'Order_query', '订单查询【后台】', 'private', '5');
INSERT INTO `bs_resource` VALUES ('91', 'Order_update', '订单更新【后台】', 'private', '5');
INSERT INTO `bs_resource` VALUES ('92', 'Order_save', '订单保存【首页】', 'private', '5');
INSERT INTO `bs_resource` VALUES ('93', 'Order_delete', '订单删除【后台】', 'private', '5');
INSERT INTO `bs_resource` VALUES ('94', 'Page_index', '页面管理首页【后台】', 'private', '115');
INSERT INTO `bs_resource` VALUES ('95', 'Page_query', '页面查询【后台】', 'private', '115');
INSERT INTO `bs_resource` VALUES ('96', 'Page_update', '页面更新【后台】', 'private', '115');
INSERT INTO `bs_resource` VALUES ('97', 'Page_delete', '删除页面【后台】', 'private', '115');
INSERT INTO `bs_resource` VALUES ('98', 'Page_save', '页面保存【后台】', 'private', '115');
INSERT INTO `bs_resource` VALUES ('99', 'Product_index', '产品管理【首页】', 'private', '10');
INSERT INTO `bs_resource` VALUES ('100', 'Product_query', '产品查询【后台】', 'private', '10');
INSERT INTO `bs_resource` VALUES ('101', 'Product_save', '产品保存【后台】', 'private', '10');
INSERT INTO `bs_resource` VALUES ('102', 'Product_update', '产品更新【首页】', 'private', '10');
INSERT INTO `bs_resource` VALUES ('103', 'Product_deleteBsProduct', '产品删除【首页】', 'private', '10');
INSERT INTO `bs_resource` VALUES ('104', 'Productcategory_index', '产品分类首页【后台】', 'private', '46');
INSERT INTO `bs_resource` VALUES ('105', 'Productcategory_query', '产品分类查询【后台】', 'private', '46');
INSERT INTO `bs_resource` VALUES ('106', 'Productcategory_update', '产品分类更新【后台】', 'private', '46');
INSERT INTO `bs_resource` VALUES ('107', 'Productcategory_save', '产品分类保存【后台】', 'private', '46');
INSERT INTO `bs_resource` VALUES ('108', 'Productcategory_delete', '产品分类删除【更新】', 'private', '46');
INSERT INTO `bs_resource` VALUES ('109', 'Resource_index', '资源管理首页【后台】', 'private', '55');
INSERT INTO `bs_resource` VALUES ('110', 'Resource_query', '资源查询【后台】', 'private', '55');
INSERT INTO `bs_resource` VALUES ('111', 'Resource_update', '资源更新【后台】', 'private', '55');
INSERT INTO `bs_resource` VALUES ('112', 'Resource_save', '资源保存【后台】', 'private', '55');
INSERT INTO `bs_resource` VALUES ('113', 'Resource_delete', '资源删除【后台】', 'private', '55');
INSERT INTO `bs_resource` VALUES ('114', 'Role_index', '角色管理【后台】', 'private', '54');
INSERT INTO `bs_resource` VALUES ('115', 'Role_query', '角色查询【后台】', 'private', '54');
INSERT INTO `bs_resource` VALUES ('116', 'Role_update', '角色更新【后台】', 'private', '54');
INSERT INTO `bs_resource` VALUES ('117', 'Role_save', '角色保存【后台】', 'private', '54');
INSERT INTO `bs_resource` VALUES ('118', 'Role_delete', '删除角色【后台】', 'private', '54');
INSERT INTO `bs_resource` VALUES ('119', 'SiteParam_index', '站点参数首页【后台】', 'private', '110');
INSERT INTO `bs_resource` VALUES ('120', 'SiteParam_query', '参数查询【后台】', 'private', '110');
INSERT INTO `bs_resource` VALUES ('121', 'SiteParam_save', '参数保存【后台】', 'private', '110');
INSERT INTO `bs_resource` VALUES ('122', 'SiteParam_update', '参数更新【后台】', 'private', '110');
INSERT INTO `bs_resource` VALUES ('123', 'SiteParam_delete', '参数更新【后台】', 'private', '110');
INSERT INTO `bs_resource` VALUES ('124', 'Supplier_index', '供应商首页【后台】', 'private', '11');
INSERT INTO `bs_resource` VALUES ('125', 'Supplier_query', '供应商查询【后台】', 'private', '11');
INSERT INTO `bs_resource` VALUES ('126', 'Supplier_update', '供应商更新【后台】', 'private', '11');
INSERT INTO `bs_resource` VALUES ('127', 'Supplier_save', '供应商保存【后台】', 'private', '11');
INSERT INTO `bs_resource` VALUES ('128', 'Supplier_delete', '供应商删除【后台】', 'private', '11');
INSERT INTO `bs_resource` VALUES ('129', 'Team_index', '团队首页【后台】', 'private', '113');
INSERT INTO `bs_resource` VALUES ('130', 'Team_query', '团队查询【后台】', 'private', '113');
INSERT INTO `bs_resource` VALUES ('131', 'Team_save', '团队保存【更新】', 'private', '113');
INSERT INTO `bs_resource` VALUES ('132', 'Team_update', '团队更新【后台】', 'private', '113');
INSERT INTO `bs_resource` VALUES ('133', 'Team_delete', '团队删除【后台】', 'private', '113');
INSERT INTO `bs_resource` VALUES ('134', 'User_index', '用户首页【更新】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('135', 'User_query', '用户查询【后台】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('136', 'User_save', '用户保存【后台】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('137', 'User_update', '用户更新【后台】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('138', 'User_delete', '用户删除【后台】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('139', 'User_ExportExcel', '导出Excep【后台】', 'private', '13');
INSERT INTO `bs_resource` VALUES ('140', 'UserService_index', '用户服务首页【后台】', 'private', '6');
INSERT INTO `bs_resource` VALUES ('141', 'UserService_query', '会员服务查询【后台】', 'private', '6');
INSERT INTO `bs_resource` VALUES ('142', 'UserService_update', '会员服务更新【后台】', 'private', '6');
INSERT INTO `bs_resource` VALUES ('143', 'UserService_save', '会员服务保存【后台】', 'private', '6');
INSERT INTO `bs_resource` VALUES ('144', 'UserService_delete', '会员服务删除【后台】', 'private', '6');
INSERT INTO `bs_resource` VALUES ('145', 'toDownloadPage', '资料下载【前台】', 'public', '116');
INSERT INTO `bs_resource` VALUES ('146', 'Download_doqueryDownload', '资料下载列表【前台】', 'public', '117');
INSERT INTO `bs_resource` VALUES ('147', 'Download_downloaddetail', '资料下载详细【前台】', 'public', '117');
INSERT INTO `bs_resource` VALUES ('148', 'toCollegeSummaryPage', '学院简介【前台】', 'public', '118');
INSERT INTO `bs_role` VALUES ('yes', '管理员', '1');
INSERT INTO `bs_role` VALUES ('yes', '前台角色', '2');
INSERT INTO `bs_role` VALUES ('yes', '教师', '3');
INSERT INTO `bs_role` VALUES ('yes', '1', '11');
INSERT INTO `bs_role` VALUES ('no', '7', '16');
INSERT INTO `bs_role` VALUES ('yes', '2', '18');
INSERT INTO `bs_role` VALUES ('yes', '3', '19');
INSERT INTO `bs_role_resource` VALUES ('1', '1', '3');
INSERT INTO `bs_role_resource` VALUES ('2', '1', '61');
INSERT INTO `bs_role_resource` VALUES ('11', '3', '118');
INSERT INTO `bs_role_resource` VALUES ('12', '14', '1');
INSERT INTO `bs_role_resource` VALUES ('13', '14', '4');
INSERT INTO `bs_role_resource` VALUES ('14', '15', '44');
INSERT INTO `bs_role_resource` VALUES ('15', '15', '45');
INSERT INTO `bs_role_resource` VALUES ('16', '16', '118');
INSERT INTO `bs_role_resource` VALUES ('17', '16', '117');
INSERT INTO `bs_role_resource` VALUES ('18', '16', '46');
INSERT INTO `bs_role_resource` VALUES ('19', '17', '118');
INSERT INTO `bs_role_resource` VALUES ('20', '17', '117');
INSERT INTO `bs_role_resource` VALUES ('21', '17', '46');
INSERT INTO `bs_system` VALUES ('1', 'sitename', '学校网站', '站点名字*');
INSERT INTO `bs_system` VALUES ('2', 'websiteurl', 'http://127.0.0.1:8080/schoolweb', '网站地址*');
INSERT INTO `bs_system` VALUES ('3', 'emailtemplate', 'E:\\\\commspace\\\\cus\\\\WebContent\\\\WEB-INF\\\\emailtemplate\\\\', '邮件模板路劲');
INSERT INTO `bs_system` VALUES ('4', 'alipay_partner', '2088302368358275', '支付宝partner');
INSERT INTO `bs_system` VALUES ('5', 'alipay_key', 'p7gu92iemlc1ki1ckfiuk7ea57riuljw', '支付宝key');
INSERT INTO `bs_system` VALUES ('6', 'alipay_log_path', 'log_path', '支付宝log');
INSERT INTO `bs_system` VALUES ('7', 'alipay_email', 'jxausea@gmail.com', '支付宝email');
INSERT INTO `bs_system` VALUES ('8', 'alipay_notify_url', 'http://125.35.15.73/pay/Pay_notifyurl', '支付宝通知地址');
INSERT INTO `bs_system` VALUES ('9', 'alipay_return_url', 'http://125.35.15.73/pay/Pay_returnurl', '支付宝回调地址');
INSERT INTO `bs_system` VALUES ('10', 'mail_host', 'smtp.ym.163.com', '邮件主机');
INSERT INTO `bs_system` VALUES ('11', 'mail_port', '25', '邮箱端口');
INSERT INTO `bs_system` VALUES ('12', 'mail_username', 'service@59et.com', '邮箱用户名');
INSERT INTO `bs_system` VALUES ('13', 'mail_password', '123456', '邮箱密码');
INSERT INTO `bs_system` VALUES ('14', 'mail_nickname', '邮箱', '邮箱昵称');
INSERT INTO `bs_system` VALUES ('15', 'image_realpath_upload', '\\cus\\image', '图像真实路径');
INSERT INTO `bs_system` VALUES ('16', 'image_accessurl_upload', 'http://127.0.0.1:8080/schnew/umeditor/', '图像访问路径');
INSERT INTO `bs_system` VALUES ('17', 'license_path', 'E:\\cus\\license\\license1.properties', '证书地址');
INSERT INTO `bs_system` VALUES ('18', 'ftp_serverip', '127.0.0.1', 'FTP服务器IP');
INSERT INTO `bs_system` VALUES ('19', 'ftp_account', 'user01', 'FTP用户名');
INSERT INTO `bs_system` VALUES ('20', 'ftp_pwd', '1', 'FTP用户密码');
INSERT INTO `bs_user` VALUES ('00000000001', '1', '21000000', 'admin', '管理员', '13944444444', 'JF20120311170949275', '47758001@qq.com', 'yes', '1');
INSERT INTO `bs_user` VALUES ('00000000002', '2', '21000001', 'user1', '普通用户', '13944444445', 'JF20120311170949271', '47758001@qq.com', 'no', '1');
INSERT INTO `bs_user` VALUES ('00000000028', '0217101700846', '123123', 'teacher', '教师', '13922222222', null, '111@qq.com', 'no', '1');
INSERT INTO `bs_user_role` VALUES ('1', '1', '1');
INSERT INTO `bs_user_role` VALUES ('2', '0217101700846', '3');
INSERT INTO `bs_user_role` VALUES ('3', '2', '3');
INSERT INTO `jforum_bookmarks` VALUES ('1', '3', '3', '2', '1', '第一帖哦', '`12`12');
INSERT INTO `jforum_categories` VALUES ('1', '默认分区', '1', '0');
INSERT INTO `jforum_categories` VALUES ('2', '测试1', '2', '0');
INSERT INTO `jforum_categories` VALUES ('3', '222', '3', '0');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online', '3', '1');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online', '3', '2');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online.date', '1418722782531', '3');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online.date', '1418722782531', '4');
INSERT INTO `jforum_forums` VALUES ('1', '1', '默认版块', '这是一个默认版块', '1', '1', '4', '0');
INSERT INTO `jforum_forums` VALUES ('2', '3', 'aaa', 'dfdfdfdfdfdf', '2', '3', '7', '1');
INSERT INTO `jforum_forums` VALUES ('3', '2', '333', 'asdfasdfasdfasdf', '3', '0', '0', '0');
INSERT INTO `jforum_forums` VALUES ('4', '3', '3333', 'fffddasdfasdf', '4', '0', '0', '0');
INSERT INTO `jforum_groups` VALUES ('1', '普通用户', '普通用户', '0');
INSERT INTO `jforum_groups` VALUES ('2', '管理员', '管理员用户', '0');
INSERT INTO `jforum_groups` VALUES ('3', '一级会员', '1', '0');
INSERT INTO `jforum_groups` VALUES ('4', '二级', '2', '0');
INSERT INTO `jforum_groups` VALUES ('5', '222版主', '123123', '2');
INSERT INTO `jforum_groups` VALUES ('6', '333版主', '123123', '2');
INSERT INTO `jforum_moderation_log` VALUES ('1', '3', '测试置顶成功！！！', '测试置顶测试置顶测试置顶测试置顶测试置顶', '2015-01-15 16:49:31', '2', '6', '5', '2');
INSERT INTO `jforum_posts` VALUES ('3', '3', '1', '3', '2014-12-16 17:16:02', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:16:02', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('4', '3', '1', '3', '2014-12-16 17:16:30', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:16:30', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('5', '4', '2', '2', '2014-12-16 17:28:05', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:28:05', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('6', '5', '2', '2', '2015-01-15 16:47:58', '127.0.0.1', '1', '0', '1', '1', '2015-01-15 16:49:31', '1', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('7', '6', '2', '3', '2015-01-15 17:01:33', '127.0.0.1', '1', '0', '1', '1', '2015-01-15 17:01:34', '0', '1', '0', '0');
INSERT INTO `jforum_posts_text` VALUES ('3', '哈哈', '第一帖哦');
INSERT INTO `jforum_posts_text` VALUES ('4', '沙发我也抢了', '回复:第一帖哦');
INSERT INTO `jforum_posts_text` VALUES ('5', '3434', '232324234');
INSERT INTO `jforum_posts_text` VALUES ('6', '测试置顶测试置顶测试置顶测试置顶测试置顶', '测试置顶');
INSERT INTO `jforum_posts_text` VALUES ('7', '测试投票测试投票测试投票', '测试投票');
INSERT INTO `jforum_privmsgs` VALUES ('1', '2', '111', '3', '2', '2014-12-16 17:17:17', '', '1', '0', '1', '1');
INSERT INTO `jforum_privmsgs` VALUES ('2', '0', '111', '3', '2', '2014-12-16 17:17:17', '', '1', '0', '1', '1');
INSERT INTO `jforum_privmsgs` VALUES ('3', '2', '回复:111', '2', '3', '2014-12-16 17:18:35', '', '1', '0', '1', '1');
INSERT INTO `jforum_privmsgs` VALUES ('4', '0', '回复:111', '2', '3', '2014-12-16 17:18:35', '', '1', '0', '1', '1');
INSERT INTO `jforum_privmsgs_text` VALUES ('1', '222');
INSERT INTO `jforum_privmsgs_text` VALUES ('2', '222');
INSERT INTO `jforum_privmsgs_text` VALUES ('3', '222333');
INSERT INTO `jforum_privmsgs_text` VALUES ('4', '222333');
INSERT INTO `jforum_ranks` VALUES ('1', '一级', '100', '0', null);
INSERT INTO `jforum_ranks` VALUES ('2', '二级', '5', '0', null);
INSERT INTO `jforum_ranks` VALUES ('3', '三级', '3', '0', null);
INSERT INTO `jforum_ranks` VALUES ('4', '四级', '1', '0', null);
INSERT INTO `jforum_role_values` VALUES ('24', '1');
INSERT INTO `jforum_role_values` VALUES ('26', '1');
INSERT INTO `jforum_role_values` VALUES ('28', '1');
INSERT INTO `jforum_role_values` VALUES ('30', '1');
INSERT INTO `jforum_role_values` VALUES ('32', '1');
INSERT INTO `jforum_role_values` VALUES ('34', '1');
INSERT INTO `jforum_role_values` VALUES ('36', '1');
INSERT INTO `jforum_role_values` VALUES ('38', '1');
INSERT INTO `jforum_role_values` VALUES ('46', '2');
INSERT INTO `jforum_role_values` VALUES ('52', '2');
INSERT INTO `jforum_role_values` VALUES ('54', '2');
INSERT INTO `jforum_role_values` VALUES ('24', '2');
INSERT INTO `jforum_role_values` VALUES ('50', '2');
INSERT INTO `jforum_role_values` VALUES ('55', '2');
INSERT INTO `jforum_role_values` VALUES ('3', '2');
INSERT INTO `jforum_role_values` VALUES ('53', '2');
INSERT INTO `jforum_role_values` VALUES ('56', '2');
INSERT INTO `jforum_role_values` VALUES ('30', '2');
INSERT INTO `jforum_role_values` VALUES ('43', '2');
INSERT INTO `jforum_role_values` VALUES ('57', '2');
INSERT INTO `jforum_role_values` VALUES ('36', '2');
INSERT INTO `jforum_role_values` VALUES ('51', '2');
INSERT INTO `jforum_role_values` VALUES ('58', '2');
INSERT INTO `jforum_role_values` VALUES ('32', '2');
INSERT INTO `jforum_role_values` VALUES ('52', '3');
INSERT INTO `jforum_role_values` VALUES ('54', '3');
INSERT INTO `jforum_role_values` VALUES ('24', '3');
INSERT INTO `jforum_role_values` VALUES ('50', '3');
INSERT INTO `jforum_role_values` VALUES ('55', '3');
INSERT INTO `jforum_role_values` VALUES ('3', '3');
INSERT INTO `jforum_role_values` VALUES ('53', '3');
INSERT INTO `jforum_role_values` VALUES ('56', '3');
INSERT INTO `jforum_role_values` VALUES ('30', '3');
INSERT INTO `jforum_role_values` VALUES ('43', '3');
INSERT INTO `jforum_role_values` VALUES ('57', '3');
INSERT INTO `jforum_role_values` VALUES ('36', '3');
INSERT INTO `jforum_role_values` VALUES ('32', '3');
INSERT INTO `jforum_role_values` VALUES ('52', '4');
INSERT INTO `jforum_role_values` VALUES ('54', '4');
INSERT INTO `jforum_role_values` VALUES ('24', '4');
INSERT INTO `jforum_role_values` VALUES ('50', '4');
INSERT INTO `jforum_role_values` VALUES ('55', '4');
INSERT INTO `jforum_role_values` VALUES ('3', '4');
INSERT INTO `jforum_role_values` VALUES ('53', '4');
INSERT INTO `jforum_role_values` VALUES ('56', '4');
INSERT INTO `jforum_role_values` VALUES ('30', '4');
INSERT INTO `jforum_role_values` VALUES ('43', '4');
INSERT INTO `jforum_role_values` VALUES ('57', '4');
INSERT INTO `jforum_role_values` VALUES ('36', '4');
INSERT INTO `jforum_role_values` VALUES ('51', '4');
INSERT INTO `jforum_role_values` VALUES ('58', '4');
INSERT INTO `jforum_role_values` VALUES ('32', '4');
INSERT INTO `jforum_role_values` VALUES ('189', '3');
INSERT INTO `jforum_role_values` VALUES ('189', '4');
INSERT INTO `jforum_role_values` VALUES ('189', '2');
INSERT INTO `jforum_role_values` VALUES ('189', '1');
INSERT INTO `jforum_role_values` VALUES ('190', '1');
INSERT INTO `jforum_role_values` VALUES ('191', '3');
INSERT INTO `jforum_role_values` VALUES ('191', '4');
INSERT INTO `jforum_role_values` VALUES ('191', '2');
INSERT INTO `jforum_role_values` VALUES ('191', '1');
INSERT INTO `jforum_role_values` VALUES ('193', '1');
INSERT INTO `jforum_role_values` VALUES ('193', '2');
INSERT INTO `jforum_role_values` VALUES ('193', '3');
INSERT INTO `jforum_role_values` VALUES ('197', '3');
INSERT INTO `jforum_role_values` VALUES ('197', '4');
INSERT INTO `jforum_role_values` VALUES ('197', '2');
INSERT INTO `jforum_role_values` VALUES ('197', '1');
INSERT INTO `jforum_role_values` VALUES ('198', '3');
INSERT INTO `jforum_role_values` VALUES ('198', '4');
INSERT INTO `jforum_role_values` VALUES ('198', '2');
INSERT INTO `jforum_role_values` VALUES ('198', '1');
INSERT INTO `jforum_role_values` VALUES ('201', '3');
INSERT INTO `jforum_role_values` VALUES ('201', '4');
INSERT INTO `jforum_role_values` VALUES ('201', '2');
INSERT INTO `jforum_role_values` VALUES ('201', '1');
INSERT INTO `jforum_role_values` VALUES ('203', '3');
INSERT INTO `jforum_role_values` VALUES ('203', '4');
INSERT INTO `jforum_role_values` VALUES ('203', '2');
INSERT INTO `jforum_role_values` VALUES ('203', '1');
INSERT INTO `jforum_role_values` VALUES ('204', '3');
INSERT INTO `jforum_role_values` VALUES ('204', '4');
INSERT INTO `jforum_role_values` VALUES ('204', '2');
INSERT INTO `jforum_role_values` VALUES ('204', '1');
INSERT INTO `jforum_role_values` VALUES ('231', '3');
INSERT INTO `jforum_role_values` VALUES ('231', '2');
INSERT INTO `jforum_role_values` VALUES ('231', '1');
INSERT INTO `jforum_role_values` VALUES ('233', '3');
INSERT INTO `jforum_role_values` VALUES ('233', '2');
INSERT INTO `jforum_role_values` VALUES ('233', '1');
INSERT INTO `jforum_role_values` VALUES ('235', '1');
INSERT INTO `jforum_role_values` VALUES ('235', '2');
INSERT INTO `jforum_role_values` VALUES ('235', '3');
INSERT INTO `jforum_role_values` VALUES ('240', '3');
INSERT INTO `jforum_role_values` VALUES ('240', '2');
INSERT INTO `jforum_role_values` VALUES ('240', '1');
INSERT INTO `jforum_role_values` VALUES ('243', '3');
INSERT INTO `jforum_role_values` VALUES ('243', '2');
INSERT INTO `jforum_role_values` VALUES ('243', '1');
INSERT INTO `jforum_role_values` VALUES ('244', '3');
INSERT INTO `jforum_role_values` VALUES ('244', '4');
INSERT INTO `jforum_role_values` VALUES ('244', '2');
INSERT INTO `jforum_role_values` VALUES ('244', '1');
INSERT INTO `jforum_role_values` VALUES ('250', '3');
INSERT INTO `jforum_role_values` VALUES ('250', '4');
INSERT INTO `jforum_role_values` VALUES ('250', '2');
INSERT INTO `jforum_role_values` VALUES ('250', '1');
INSERT INTO `jforum_role_values` VALUES ('253', '4');
INSERT INTO `jforum_role_values` VALUES ('253', '1');
INSERT INTO `jforum_role_values` VALUES ('254', '1');
INSERT INTO `jforum_role_values` VALUES ('254', '2');
INSERT INTO `jforum_role_values` VALUES ('254', '3');
INSERT INTO `jforum_role_values` VALUES ('258', '3');
INSERT INTO `jforum_role_values` VALUES ('258', '4');
INSERT INTO `jforum_role_values` VALUES ('258', '2');
INSERT INTO `jforum_role_values` VALUES ('258', '1');
INSERT INTO `jforum_role_values` VALUES ('259', '3');
INSERT INTO `jforum_role_values` VALUES ('259', '4');
INSERT INTO `jforum_role_values` VALUES ('259', '2');
INSERT INTO `jforum_role_values` VALUES ('259', '1');
INSERT INTO `jforum_role_values` VALUES ('261', '3');
INSERT INTO `jforum_role_values` VALUES ('261', '4');
INSERT INTO `jforum_role_values` VALUES ('261', '2');
INSERT INTO `jforum_role_values` VALUES ('261', '1');
INSERT INTO `jforum_role_values` VALUES ('262', '3');
INSERT INTO `jforum_role_values` VALUES ('262', '4');
INSERT INTO `jforum_role_values` VALUES ('262', '2');
INSERT INTO `jforum_role_values` VALUES ('262', '1');
INSERT INTO `jforum_role_values` VALUES ('264', '3');
INSERT INTO `jforum_role_values` VALUES ('264', '4');
INSERT INTO `jforum_role_values` VALUES ('264', '2');
INSERT INTO `jforum_role_values` VALUES ('264', '1');
INSERT INTO `jforum_roles` VALUES ('1', '1', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('2', '1', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('3', '1', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('4', '1', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('5', '1', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('6', '1', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('7', '1', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('8', '1', 'perm_moderation_log');
INSERT INTO `jforum_roles` VALUES ('24', '1', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('26', '1', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('28', '1', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('30', '1', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('32', '1', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('34', '1', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('36', '1', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('38', '1', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('41', '3', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('42', '3', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('43', '3', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('44', '3', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('45', '3', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('46', '3', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('47', '3', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('48', '3', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('49', '3', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('50', '3', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('51', '3', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('52', '3', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('53', '3', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('54', '4', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('55', '4', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('56', '4', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('57', '4', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('58', '4', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('182', '2', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('183', '2', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('184', '2', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('185', '2', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('186', '2', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('187', '2', 'perm_moderation_log');
INSERT INTO `jforum_roles` VALUES ('188', '2', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('189', '2', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('190', '2', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('191', '2', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('192', '2', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('193', '2', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('194', '2', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('195', '2', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('196', '2', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('197', '2', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('198', '2', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('199', '2', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('200', '2', 'perm_full_moderation_log');
INSERT INTO `jforum_roles` VALUES ('201', '2', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('202', '2', 'perm_administration');
INSERT INTO `jforum_roles` VALUES ('203', '2', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('204', '2', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('205', '2', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('225', '5', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('226', '5', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('227', '5', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('228', '5', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('229', '5', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('230', '5', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('231', '5', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('232', '5', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('233', '5', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('234', '5', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('235', '5', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('236', '5', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('237', '5', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('238', '5', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('239', '5', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('240', '5', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('241', '5', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('242', '5', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('243', '5', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('244', '5', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('245', '5', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('246', '6', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('247', '6', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('248', '6', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('249', '6', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('250', '6', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('251', '6', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('252', '6', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('253', '6', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('254', '6', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('255', '6', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('256', '6', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('257', '6', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('258', '6', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('259', '6', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('260', '6', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('261', '6', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('262', '6', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('263', '6', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('264', '6', 'perm_read_only_forums');
INSERT INTO `jforum_sessions` VALUES ('81CEBDD3BA6C1076EE98E54F754C6609', '2', '2015-01-15 16:54:45', '186844', '', '0', null);
INSERT INTO `jforum_sessions` VALUES ('12D7FFC59AA4F892CAC8CE60B9C6EAE2', '3', '2015-01-15 17:04:35', '4219', '', '0', null);
INSERT INTO `jforum_sessions` VALUES ('12D7FFC59AA4F892CAC8CE60B9C6EAE2', '4', '2015-01-15 17:02:41', '107359', '', '0', null);
INSERT INTO `jforum_smilies` VALUES ('1', ':)', '<img src=\"#CONTEXT#/images/smilies/3b63d1616c5dfcf29f8a7a031aaa7cad.gif\" />', '3b63d1616c5dfcf29f8a7a031aaa7cad.gif');
INSERT INTO `jforum_smilies` VALUES ('2', ':-)', '<img src=\"#CONTEXT#/images/smilies/3b63d1616c5dfcf29f8a7a031aaa7cad.gif\"/>', '3b63d1616c5dfcf29f8a7a031aaa7cad.gif');
INSERT INTO `jforum_smilies` VALUES ('3', ':D', '<img src=\"#CONTEXT#/images/smilies/283a16da79f3aa23fe1025c96295f04f.gif\" />', '283a16da79f3aa23fe1025c96295f04f.gif');
INSERT INTO `jforum_smilies` VALUES ('4', ':-D', '<img src=\"#CONTEXT#/images/smilies/283a16da79f3aa23fe1025c96295f04f.gif\" />', '283a16da79f3aa23fe1025c96295f04f.gif');
INSERT INTO `jforum_smilies` VALUES ('5', ':(', '<img src=\"#CONTEXT#/images/smilies/9d71f0541cff0a302a0309c5079e8dee.gif\" />', '9d71f0541cff0a302a0309c5079e8dee.gif');
INSERT INTO `jforum_smilies` VALUES ('6', ':mrgreen:', '<img src=\"#CONTEXT#/images/smilies/ed515dbff23a0ee3241dcc0a601c9ed6.gif\" />', 'ed515dbff23a0ee3241dcc0a601c9ed6.gif');
INSERT INTO `jforum_smilies` VALUES ('7', ':-o', '<img src=\"#CONTEXT#/images/smilies/47941865eb7bbc2a777305b46cc059a2.gif\"  />', '47941865eb7bbc2a777305b46cc059a2.gif');
INSERT INTO `jforum_smilies` VALUES ('8', ':shock:', '<img src=\"#CONTEXT#/images/smilies/385970365b8ed7503b4294502a458efa.gif\" />', '385970365b8ed7503b4294502a458efa.gif');
INSERT INTO `jforum_smilies` VALUES ('9', ':?:', '<img src=\"#CONTEXT#/images/smilies/0a4d7238daa496a758252d0a2b1a1384.gif\" />', '0a4d7238daa496a758252d0a2b1a1384.gif');
INSERT INTO `jforum_smilies` VALUES ('10', '8)', '<img src=\"#CONTEXT#/images/smilies/b2eb59423fbf5fa39342041237025880.gif\"  />', 'b2eb59423fbf5fa39342041237025880.gif');
INSERT INTO `jforum_smilies` VALUES ('11', ':lol:', '<img src=\"#CONTEXT#/images/smilies/97ada74b88049a6d50a6ed40898a03d7.gif\" />', '97ada74b88049a6d50a6ed40898a03d7.gif');
INSERT INTO `jforum_smilies` VALUES ('12', ':x', '<img src=\"#CONTEXT#/images/smilies/1069449046bcd664c21db15b1dfedaee.gif\"  />', '1069449046bcd664c21db15b1dfedaee.gif');
INSERT INTO `jforum_smilies` VALUES ('13', ':P', '<img src=\"#CONTEXT#/images/smilies/69934afc394145350659cd7add244ca9.gif\" />', '69934afc394145350659cd7add244ca9.gif');
INSERT INTO `jforum_smilies` VALUES ('14', ':-P', '<img src=\"#CONTEXT#/images/smilies/69934afc394145350659cd7add244ca9.gif\" />', '69934afc394145350659cd7add244ca9.gif');
INSERT INTO `jforum_smilies` VALUES ('15', ':oops:', '<img src=\"#CONTEXT#/images/smilies/499fd50bc713bfcdf2ab5a23c00c2d62.gif\" />', '499fd50bc713bfcdf2ab5a23c00c2d62.gif');
INSERT INTO `jforum_smilies` VALUES ('16', ':cry:', '<img src=\"#CONTEXT#/images/smilies/c30b4198e0907b23b8246bdd52aa1c3c.gif\" />', 'c30b4198e0907b23b8246bdd52aa1c3c.gif');
INSERT INTO `jforum_smilies` VALUES ('17', ':evil:', '<img src=\"#CONTEXT#/images/smilies/2e207fad049d4d292f60607f80f05768.gif\" />', '2e207fad049d4d292f60607f80f05768.gif');
INSERT INTO `jforum_smilies` VALUES ('18', ':twisted:', '<img src=\"#CONTEXT#/images/smilies/908627bbe5e9f6a080977db8c365caff.gif\" />', '908627bbe5e9f6a080977db8c365caff.gif');
INSERT INTO `jforum_smilies` VALUES ('19', ':roll:', '<img src=\"#CONTEXT#/images/smilies/2786c5c8e1a8be796fb2f726cca5a0fe.gif\" />', '2786c5c8e1a8be796fb2f726cca5a0fe.gif');
INSERT INTO `jforum_smilies` VALUES ('20', ':wink:', '<img src=\"#CONTEXT#/images/smilies/8a80c6485cd926be453217d59a84a888.gif\" />', '8a80c6485cd926be453217d59a84a888.gif');
INSERT INTO `jforum_smilies` VALUES ('21', ';)', '<img src=\"#CONTEXT#/images/smilies/8a80c6485cd926be453217d59a84a888.gif\" />', '8a80c6485cd926be453217d59a84a888.gif');
INSERT INTO `jforum_smilies` VALUES ('22', ';-)', '<img src=\"#CONTEXT#/images/smilies/8a80c6485cd926be453217d59a84a888.gif\" />', '8a80c6485cd926be453217d59a84a888.gif');
INSERT INTO `jforum_smilies` VALUES ('23', ':!:', '<img src=\"#CONTEXT#/images/smilies/9293feeb0183c67ea1ea8c52f0dbaf8c.gif\" />', '9293feeb0183c67ea1ea8c52f0dbaf8c.gif');
INSERT INTO `jforum_smilies` VALUES ('24', ':?', '<img src=\"#CONTEXT#/images/smilies/136dd33cba83140c7ce38db096d05aed.gif\" />', '136dd33cba83140c7ce38db096d05aed.gif');
INSERT INTO `jforum_smilies` VALUES ('25', ':idea:', '<img src=\"#CONTEXT#/images/smilies/8f7fb9dd46fb8ef86f81154a4feaada9.gif\" />', '8f7fb9dd46fb8ef86f81154a4feaada9.gif');
INSERT INTO `jforum_smilies` VALUES ('26', ':arrow:', '<img src=\"#CONTEXT#/images/smilies/d6741711aa045b812616853b5507fd2a.gif\" />', 'd6741711aa045b812616853b5507fd2a.gif');
INSERT INTO `jforum_smilies` VALUES ('27', ':hunf:', '<img src=\"#CONTEXT#/images/smilies/0320a00cb4bb5629ab9fc2bc1fcc4e9e.gif\" />', '0320a00cb4bb5629ab9fc2bc1fcc4e9e.gif');
INSERT INTO `jforum_smilies` VALUES ('28', ':-(', '<img src=\"#CONTEXT#/images/smilies/9d71f0541cff0a302a0309c5079e8dee.gif\"  />', '9d71f0541cff0a302a0309c5079e8dee.gif');
INSERT INTO `jforum_smilies` VALUES ('29', ':XD:', '<img src=\"#CONTEXT#/images/smilies/49869fe8223507d7223db3451e5321aa.gif\" />', '49869fe8223507d7223db3451e5321aa.gif');
INSERT INTO `jforum_smilies` VALUES ('30', ':thumbup:', '<img src=\"#CONTEXT#/images/smilies/e8a506dc4ad763aca51bec4ca7dc8560.gif\" />', 'e8a506dc4ad763aca51bec4ca7dc8560.gif');
INSERT INTO `jforum_smilies` VALUES ('31', ':thumbdown:', '<img src=\"#CONTEXT#/images/smilies/e78feac27fa924c4d0ad6cf5819f3554.gif\" />', 'e78feac27fa924c4d0ad6cf5819f3554.gif');
INSERT INTO `jforum_smilies` VALUES ('32', ':|', '<img src=\"#CONTEXT#/images/smilies/1cfd6e2a9a2c0cf8e74b49b35e2e46c7.gif\" />', '1cfd6e2a9a2c0cf8e74b49b35e2e46c7.gif');
INSERT INTO `jforum_topics` VALUES ('3', '1', '第一帖哦', '3', '2014-12-16 17:16:02', '14', '1', '0', '0', '0', '3', '4', '0', '0');
INSERT INTO `jforum_topics` VALUES ('4', '2', '232324234', '2', '2014-12-16 17:28:05', '8', '0', '0', '0', '2', '5', '5', '0', '1');
INSERT INTO `jforum_topics` VALUES ('5', '2', '测试置顶', '2', '2015-01-15 16:47:58', '7', '0', '0', '0', '1', '6', '6', '0', '0');
INSERT INTO `jforum_topics` VALUES ('6', '2', '测试投票', '3', '2015-01-15 17:01:33', '14', '0', '0', '1', '0', '7', '7', '0', '0');
INSERT INTO `jforum_topics_watch` VALUES ('3', '3', '1');
INSERT INTO `jforum_topics_watch` VALUES ('4', '2', '1');
INSERT INTO `jforum_topics_watch` VALUES ('5', '2', '1');
INSERT INTO `jforum_topics_watch` VALUES ('6', '3', '1');
INSERT INTO `jforum_user_groups` VALUES ('1', '1');
INSERT INTO `jforum_user_groups` VALUES ('2', '2');
INSERT INTO `jforum_user_groups` VALUES ('5', '3');
INSERT INTO `jforum_user_groups` VALUES ('6', '4');
INSERT INTO `jforum_users` VALUES ('1', null, '游客', 'nopass', '0', '0', null, '2014-12-16 17:03:30', null, '0', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null);
INSERT INTO `jforum_users` VALUES ('2', null, 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', '0', null, '2014-12-16 17:03:30', null, '4', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, 'd159dda6718123706b59088dc58f1145');
INSERT INTO `jforum_users` VALUES ('3', '1', '哈哈', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', '2014-12-16 17:48:41', '2014-12-16 17:15:20', null, '3', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '-1', null, '0', 'wanglitao@qq.com', '', '', '', '', null, '', '', '', '', '', '', null, null, '0', null, '1', null, null, null);
INSERT INTO `jforum_users` VALUES ('4', '1', '嘻嘻', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', '2014-12-16 17:48:49', '2014-12-16 17:39:22', null, '0', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '-1', null, '0', '1111@qq.com', '', '', '', '', null, '', '', '', '', '', '', null, null, '0', null, '1', null, null, null);
INSERT INTO `jforum_vote_desc` VALUES ('1', '6', '这个网站怎么样', '2015-01-15 17:01:33', '10');
INSERT INTO `jforum_vote_results` VALUES ('1', '1', '好用', '1');
INSERT INTO `jforum_vote_results` VALUES ('1', '2', '不好用', '1');
INSERT INTO `jforum_vote_results` VALUES ('1', '3', '不知道', '1');
INSERT INTO `jforum_vote_voters` VALUES ('1', '3', '127.0.0.1');
INSERT INTO `jforum_vote_voters` VALUES ('1', '2', '127.0.0.1');
INSERT INTO `jforum_vote_voters` VALUES ('1', '4', '127.0.0.1');
INSERT INTO `open_app` VALUES (null, '1', '12', '23', '333123', '402881e74bb43cf2014bb43cf21d0000', '2000', '1', '23', 'no');
INSERT INTO `t_college` VALUES ('1', '人文学院', '学院现设有XX,XX,XX,XX,XX,学系；数十个教研室。每年承担约三万学时的教学工作，涌现出一批优秀的学科带头人及骨干教师。学院现设有XX,XX,XX,XX,XX,学系；数十个教研室。每年承担约三万学时的教学工作，涌现出一批优秀的学科带头人及骨干教师。学院现设有XX,XX,XX,XX,XX,学系；数十个教研室。每年承担约三万学时的教学工作，涌现出一批优秀的学科带头人及骨干教师。学院现设有XX,XX,XX,XX,XX,学系；数十个教研室。每年承担约三万学时的教学工作，涌现出一批优秀的学科带头人及骨干教师。', '1', '2014-12-31 16:57:09', '1', '12月2日，第十二届“理律杯”全国高校模拟法庭竞赛决赛暨颁奖典礼在辽宁大厦辽宁厅举行。本次大赛由清华大学法学院主办,台湾理律文教基金会、台湾理律律师事务所协办。哈尔滨工程大学作为黑龙江省唯一受邀参赛院校，与北京大学、清华大学、中国人民大学、浙江大学、南京大学、武汉大学、中国政法大学等40所知名高校共同竞技。\r\n \r\n   “理律杯”全国高校模拟竞赛旨在吸引社会各界对法学教育的关注，并为即将步出校园踏入社会的青年提供体验、熟悉法律实务工作的机会，同时鼓励同学从不同方面提高能力、丰富经验，进而促进教学体系的深层次改革。\r\n \r\n    我校赴京赛队由哈尔滨工程大学人文社会科学学院党委副书记杨国庆、辅导员李瑶任带队老师，由法学系专任教师韩晋任教练，由兼职辅导员朱梦云任领队，法学系学生杨博、杨晓萌、吴国邦、刘子旗、崔雨桐、蔚罗兰、胡颖、韩丽垚和马俊男作为赛队队员参加本次比赛。\r\n \r\n \r\n \r\n    本次比赛中，我院参赛选手分别与中央财经大学、西南政法大学、安徽大学、福州大学四支参赛队伍进行较量。经过两个月的精心备战，面对强大的对手，我院参赛选手凭借扎实的理论功底，冷静陈述、灵活辩论，其出色的场上表现与镇定自然的比赛状态得到了评委老师的高度认可。每一场比赛，参赛选手都自信地展示出自己缜密思维、聪慧善辩和追求公平正义的法律精神，充分展现了工程学子的骄人风采。我院选手杨博、吴国邦在初赛中以申诉方的身份战胜了本届亚军、上届＂最佳组织奖＂获得者西南政法大学，且以第二名的组内积分成绩力压中央财经大学（第十一届最佳起诉状获得者）、福州大学（第十一届最佳答辩状获得者）和安徽大学。其中，吴国邦同学以出色的临场表现被评为＂优秀辩手＂。最终，我校赛队凭借整齐的组织秩序和优异的庭辩成绩获得＂最佳组织奖＂，四十支代表队中仅有我校和吉林大学获此殊荣。\r\n \r\n \r\n \r\n \r\n \r\n    至此，第十二届“理律杯”全国高校模拟法庭竞赛落下帷幕。从2003年举办至今，“理律杯”模拟法庭竞赛已经成为大陆地区最具有影响的模拟法庭竞赛，更有人将之称为中国“国内法学界的顶级赛事”。这是哈尔滨工程大学法学专业学生第4次获得清华大学的邀请参加此次竞赛，我校学生在竞赛中展现出扎实的理论功底、出色的口才和敏捷的临场应变能力，大赛评委对选手们的表现给予充分肯定。同时，在全国高校法学院强势比拼的平台上，参赛选手明确了自身夯实专业基础、提高专业素质的努力方向。<br>aaaaa');
INSERT INTO `t_college` VALUES ('2', '应用学', '无', '1', '2015-01-04 15:07:51', '2', '12月2日，第十二届“理律杯”全国高校模拟法庭竞赛决赛暨颁奖典礼在辽宁大厦辽宁厅举行。本次大赛由清华大学法学院主办,台湾理律文教基金会、台湾理律律师事务所协办。哈尔滨工程大学作为黑龙江省唯一受邀参赛院校，与北京大学、清华大学、中国人民大学、浙江大学、南京大学、武汉大学、中国政法大学等40所知名高校共同竞技。\r\n \r\n   “理律杯”全国高校模拟竞赛旨在吸引社会各界对法学教育的关注，并为即将步出校园踏入社会的青年提供体验、熟悉法律实务工作的机会，同时鼓励同学从不同方面提高能力、丰富经验，进而促进教学体系的深层次改革。\r\n \r\n    我校赴京赛队由哈尔滨工程大学人文社会科学学院党委副书记杨国庆、辅导员李瑶任带队老师，由法学系专任教师韩晋任教练，由兼职辅导员朱梦云任领队，法学系学生杨博、杨晓萌、吴国邦、刘子旗、崔雨桐、蔚罗兰、胡颖、韩丽垚和马俊男作为赛队队员参加本次比赛。\r\n \r\n \r\n \r\n    本次比赛中，我院参赛选手分别与中央财经大学、西南政法大学、安徽大学、福州大学四支参赛队伍进行较量。经过两个月的精心备战，面对强大的对手，我院参赛选手凭借扎实的理论功底，冷静陈述、灵活辩论，其出色的场上表现与镇定自然的比赛状态得到了评委老师的高度认可。每一场比赛，参赛选手都自信地展示出自己缜密思维、聪慧善辩和追求公平正义的法律精神，充分展现了工程学子的骄人风采。我院选手杨博、吴国邦在初赛中以申诉方的身份战胜了本届亚军、上届＂最佳组织奖＂获得者西南政法大学，且以第二名的组内积分成绩力压中央财经大学（第十一届最佳起诉状获得者）、福州大学（第十一届最佳答辩状获得者）和安徽大学。其中，吴国邦同学以出色的临场表现被评为＂优秀辩手＂。最终，我校赛队凭借整齐的组织秩序和优异的庭辩成绩获得＂最佳组织奖＂，四十支代表队中仅有我校和吉林大学获此殊荣。\r\n \r\n \r\n \r\n \r\n \r\n    至此，第十二届“理律杯”全国高校模拟法庭竞赛落下帷幕。从2003年举办至今，“理律杯”模拟法庭竞赛已经成为大陆地区最具有影响的模拟法庭竞赛，更有人将之称为中国“国内法学界的顶级赛事”。这是哈尔滨工程大学法学专业学生第4次获得清华大学的邀请参加此次竞赛，我校学生在竞赛中展现出扎实的理论功底、出色的口才和敏捷的临场应变能力，大赛评委对选手们的表现给予充分肯定。同时，在全国高校法学院强势比拼的平台上，参赛选手明确了自身夯实专业基础、提高专业素质的努力方向。<br>aaaaa');
INSERT INTO `t_college` VALUES ('3', '法学', null, '2', '2015-01-04 15:08:16', '2', 'adfasdfasdfasdf');
INSERT INTO `t_department` VALUES ('8', 'faxue', '法学专业', '<div class=\"para\" sizcache04988730874625507=\"85\" sizset=\"506\" jquery18006659207917937213=\"502\"><a href=\"http://baike.baidu.com/view/1609682.htm\" target=\"_blank\" jquery18006659207917937213=\"503\"><span style=\"color: rgb(19, 110, 194);\">中国社会科学院研究生院</span></a>，由于是硕士起点招收的院校，少为人知，是法学领域的最顶级院校，和教育部平级，直属于国务院的一级单位，因其相对封闭性，向来只招收本领域最顶级的精英人才，属于精英俱乐部，自<a href=\"http://baike.baidu.com/view/3155741.htm\" target=\"_blank\" jquery18006659207917937213=\"504\"><span style=\"color: rgb(19, 110, 194);\">中共中央政治局集体学习</span></a>制度实施以来，截至2014年，已出现160多位专家学者授课的身影。其中，中国社会科学院获邀参与授课的人次最多，有31人次；其次是国务院发展研究中心，获邀次数为13人次，国家发改委宏观经济研究院和中国人民大学各有11人次，中央党校有8人次。在<a href=\"http://baike.baidu.com/view/613679.htm\" target=\"_blank\" jquery18006659207917937213=\"505\"><span style=\"color: rgb(19, 110, 194);\">中国校友会网</span></a>大学评价课题组目前评选出的三届（07年、08年、11年）“中国杰出人文社会科学家名单”中，中国社会科学院学者入选人数稳居榜首（第一届157人、第二届203人、第三届264人），是我国人文社会科学研究高端人才密集度最高之地，堪称“中国人文社会科学研究国家智库”。</div><p><a href=\"http://baike.baidu.com/view/1609682.htm\" target=\"_blank\" jquery18006659207917937213=\"503\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国社会科学院研究生院</span></span></a>，由于是硕士起点招收的院校，少为人知，是法学领域的最顶级院校，和教育部平级，直属于国务院的一级单位，因其相对封闭性，向来只招收本领域最顶级的精英人才，属于精英俱乐部，自<a href=\"http://baike.baidu.com/view/3155741.htm\" target=\"_blank\" jquery18006659207917937213=\"504\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中共中央政治局集体学习</span></span></a>制度实施以来，截至2014年，已出现160多位专家学者授课的身影。其中，中国社会科学院获邀参与授课的人次最多，有31人次；其次是国务院发展研究中心，获邀次数为13人次，国家发改委宏观经济研究院和中国人民大学各有11人次，中央党校有8人次。在<a href=\"http://baike.baidu.com/view/613679.htm\" target=\"_blank\" jquery18006659207917937213=\"505\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国校友会网</span></span></a>大学评价课题组目前评选出的三届（07年、08年、11年）“中国杰出人文社会科学家名单”中，中国社会科学院学者入选人数稳居榜首（第一届157人、第二届203人、第三届264人），是我国人文社会科学研究高端人才密集度最高之地，堪称“中国人文社会科学研究国家智库”。<img src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150327/13481427441025522.tmp\" _src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150327/13481427441025522.tmp\"/></p><p><a href=\"http://baike.baidu.com/view/1609682.htm\" target=\"_blank\" jquery18006659207917937213=\"503\"><span style=\"color: rgb(19, 110, 194);\">中国社会科学院研究生院</span></a>，由于是硕士起点招收的院校，少为人知，是法学领域的最顶级院校，和教育部平级，直属于国务院的一级单位，因其相对封闭性，向来只招收本领域最顶级的精英人才，属于精英俱乐部，自<a href=\"http://baike.baidu.com/view/3155741.htm\" target=\"_blank\" jquery18006659207917937213=\"504\"><span style=\"color: rgb(19, 110, 194);\">中共中央政治局集体学习</span></a>制度实施以来，截至2014年，已出现160多位专家学者授课的身影。其中，中国社会科学院获邀参与授课的人次最多，有31人次；其次是国务院发展研究中心，获邀次数为13人次，国家发改委宏观经济研究院和中国人民大学各有11人次，中央党校有8人次。在<a href=\"http://baike.baidu.com/view/613679.htm\" target=\"_blank\" jquery18006659207917937213=\"505\"><span style=\"color: rgb(19, 110, 194);\">中国校友会网</span></a>大学评价课题组目前评选出的三届（07年、08年、11年）“中国杰出人文社会科学家名单”中，中国社会科学院学者入选人数稳居榜首（第一届157人、第二届203人、第三届264人），是我国人文社会科学研究高端人才密集度最高之地，堪称“中国人文社会科学研究国家智库”。</p>', '<p>\r\n							学习法律相关内容</p><div class=\"para\" sizcache04988730874625507=\"85\" sizset=\"506\" jquery18006659207917937213=\"502\"><a href=\"http://baike.baidu.com/view/1609682.htm\" target=\"_blank\" jquery18006659207917937213=\"503\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国社会科学院研究生院</span></span></a>，由于是硕士起点招收的院校，少为人知，是法学领域的最顶级院校，和教育部平级，直属于国务院的一级单位，因其相对封闭性，向来只招收本领域最顶级的精英人才，属于精英俱乐部，自<a href=\"http://baike.baidu.com/view/3155741.htm\" target=\"_blank\" jquery18006659207917937213=\"504\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中共中央政治局集体学习</span></span></a>制度实施以来，截至2014年，已出现160多位专家学者授课的身影。其中，中国社会科学院获邀参与授课的人次最多，有31人次；其次是国务院发展研究中心，获邀次数为13人次，国家发改委宏观经济研究院和中国人民大学各有11人次，中央党校有8人次。在<a href=\"http://baike.baidu.com/view/613679.htm\" target=\"_blank\" jquery18006659207917937213=\"505\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国校友会网</span></span></a>大学评价课题组目前评选出的三届（07年、08年、11年）“中国杰出人文社会科学家名单”中，中国社会科学院学者入选人数稳居榜首（第一届157人、第二届203人、第三届264人），是我国人文社会科学研究高端人才密集度最高之地，堪称“中国人文社会科学研究国家智库”。</div><p><a href=\"http://baike.baidu.com/view/1609682.htm\" target=\"_blank\" jquery18006659207917937213=\"503\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国社会科学院研究生院</span></span></a>，由于是硕士起点招收的院校，少为人知，是法学领域的最顶级院校，和教育部平级，直属于国务院的一级单位，因其相对封闭性，向来只招收本领域最顶级的精英人才，属于精英俱乐部，自<a href=\"http://baike.baidu.com/view/3155741.htm\" target=\"_blank\" jquery18006659207917937213=\"504\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中共中央政治局集体学习</span></span></a>制度实施以来，截至2014年，已出现160多位专家学者授课的身影。其中，中国社会科学院获邀参与授课的人次最多，有31人次；其次是国务院发展研究中心，获邀次数为13人次，国家发改委宏观经济研究院和中国人民大学各有11人次，中央党校有8人次。在<a href=\"http://baike.baidu.com/view/613679.htm\" target=\"_blank\" jquery18006659207917937213=\"505\"><span style=\"color: rgb(19, 110, 194);\"><span style=\"text-decoration: underline;\">中国校友会网</span></span></a>大学评价课题组目前评选出的三届（07年、08年、11年）“中国杰出人文社会科学家名单”中，中国社会科学院学者入选人数稳居榜首（第一届157人、第二届203人、第三届264人），是我国人文社会科学研究高端人才密集度最高之地，堪称“中国人文社会科学研究国家智库”。</p><p><img src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150327/18881427448212766.tmp\" width=\"806\" height=\"768\" _src=\"http://127.0.0.1:8080/schnew/umeditor/upload/20150327/18881427448212766.tmp\"/></p>', null, null, null, null);
INSERT INTO `t_department` VALUES ('9', 'yingyongxue', '应用学专业', '<p>&nbsp;这是一门科学。</p>', '<p>&nbsp;具体学习什么我也不太清楚。</p>', null, null, null, null);
INSERT INTO `t_dictionary` VALUES ('1', 'man', '男', 'sex', '性别');
INSERT INTO `t_dictionary` VALUES ('2', 'woman', '女', 'sex', '性别');
INSERT INTO `t_dictionary` VALUES ('3', 'faxue', '法学', 'department', '专业');
INSERT INTO `t_dictionary` VALUES ('4', 'yingyongxue', '应用学', 'department', '专业');
INSERT INTO `t_dictionary` VALUES ('5', 'jiaoshou', '教授', 'title', '职称');
INSERT INTO `t_dictionary` VALUES ('6', 'xiaozhang', '校长', 'job', '职务');
INSERT INTO `t_dictionary` VALUES ('7', 'bodao', '博导', 'tutor', '导师类别');
INSERT INTO `t_dictionary` VALUES ('8', 'shuodao', '硕导', 'tutor', '导师类别');
INSERT INTO `t_dictionary` VALUES ('10', 'comparter', '公共课', 'subjectType', '课程性质');
INSERT INTO `t_dictionary` VALUES ('11', 'choose', '选修课', 'subjectType', '课程性质');
INSERT INTO `t_dictionary` VALUES ('13', 'jiaoshi', '教师', 'title', '职称');
INSERT INTO `t_dictionary` VALUES ('14', 'zhuren', '主任', 'job', '职务');
INSERT INTO `t_download` VALUES ('17', '问题.docx', 'uploadFile\\article\\o_19fk0k4h7frm1ikmd0nobt1sjc5.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fk0k4h7frm1ikmd0nobt1sjc5.docx', '1', '2015-03-05 11:45:52', 'admin', '1', 'regulation', '1');
INSERT INTO `t_download` VALUES ('18', '问题.docx', 'uploadFile\\article\\o_19fkh337t11opln260l11ik196b5.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkh337t11opln260l11ik196b5.docx', '1', '2015-03-05 16:33:42', 'admin', '1', 'regulation', '1');
INSERT INTO `t_download` VALUES ('19', '问题.docx', 'uploadFile\\article\\o_19fkh75gp1ng6ili6j8d6h3f75.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkh75gp1ng6ili6j8d6h3f75.docx', '1', '2015-03-05 16:35:55', 'admin', '1', 'regulation', '1');
INSERT INTO `t_download` VALUES ('20', '问题.docx', 'uploadFile\\article\\o_19fkhqvkfncpbnd1d3r170o10ci5.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkhqvkfncpbnd1d3r170o10ci5.docx', '1', '2015-03-05 16:46:43', 'admin', '1', 'regulation', '1');
INSERT INTO `t_download` VALUES ('21', '问题.docx', 'uploadFile\\article\\o_19fki0qf51aun1d9tftnq77ukf5.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fki0qf51aun1d9tftnq77ukf5.docx', '1', '2015-03-05 16:49:52', 'admin', '1', 'notice', '1');
INSERT INTO `t_download` VALUES ('24', '新建文本文档.txt', 'uploadFile\\article\\o_19fkimfmr8fo5c31rh81fkk8uf5.txt', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkimfmr8fo5c31rh81fkk8uf5.txt', '1', '2015-03-05 17:01:43', 'admin', '1', 'notice', '1');
INSERT INTO `t_download` VALUES ('25', '新建文本文档.txt', 'uploadFile\\article\\o_19fkipdm51qf61calg3voi7n5.txt', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkipdm51qf61calg3voi7n5.txt', '1', '2015-03-05 17:03:19', 'admin', '1', 'notice', '1');
INSERT INTO `t_download` VALUES ('26', '新建文本文档.txt', 'uploadFile\\article\\o_19fkiq3k5g0j1ni71r5h17bv1chs9.txt', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fkiq3k5g0j1ni71r5h17bv1chs9.txt', '1', '2015-03-05 17:03:42', 'admin', '1', 'notice', '1');
INSERT INTO `t_download` VALUES ('27', '11', 'uploadFile\\article\\o_19fmrf9fb1inptimqc3g27u1o5.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\article\\o_19fmrf9fb1inptimqc3g27u1o5.docx', '1', '2015-03-06', '2222', '33', null, null);
INSERT INTO `t_download` VALUES ('28', '前端上传组件Plupload使用指南 - 无双 - 博客园.mht', 'uploadFile\\other\\o_19fms2eh03iphlr1ije1eqq19qj5.mht', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\other\\o_19fms2eh03iphlr1ije1eqq19qj5.mht', '1', '2015-03-06', '33', '33555', null, null);
INSERT INTO `t_download` VALUES ('29', '问题.docx', 'uploadFile\\teacher\\o_19g1g8kj21a0d12fpu1r12kpaph1b.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g1g8kj21a0d12fpu1r12kpaph1b.docx', '1', '2015-03-10 17:35:34', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('30', '问题.docx', 'uploadFile\\teacher\\o_19g1hg8181a6u1mo6oh913da1l261b.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g1hg8181a6u1mo6oh913da1l261b.docx', '1', '2015-03-10 17:50:57', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('33', '问题.docx', 'uploadFile\\teacher\\o_19g462h0epv83lr1eq7lij19o3q.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g462h0epv83lr1eq7lij19o3q.docx', '1', '2015-03-11 18:29:29', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('34', '问题.docx', 'uploadFile\\teacher\\o_19g462lh4a29119mq5teu110c9r.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g462lh4a29119mq5teu110c9r.docx', '1', '2015-03-11 18:29:29', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('37', '问题.docx', 'uploadFile\\teacher\\o_19g46bd4k1bstpof1v6f4u11l291d.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g46bd4k1bstpof1v6f4u11l291d.docx', '1', '2015-03-11 18:35:07', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('38', '问题.docx', 'uploadFile\\teacher\\o_19g46bgt21dk8cg5dlistg1goq1e.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g46bgt21dk8cg5dlistg1goq1e.docx', '1', '2015-03-11 18:35:07', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('39', '问题.docx', 'uploadFile\\teacher\\o_19g46bm5d1n0f1j2616cu1hfj1ri1f.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g46bm5d1n0f1j2616cu1hfj1ri1f.docx', '1', '2015-03-11 18:35:07', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('42', '问题.docx', 'uploadFile\\teacher\\o_19g5q560o5cvne44mlj0kildp.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5q560o5cvne44mlj0kildp.docx', '1', '2015-03-12 09:40:43', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('43', '问题.docx', 'uploadFile\\teacher\\o_19g5q6dvv1r17gghrfhm81surq.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5q6dvv1r17gghrfhm81surq.docx', '1', '2015-03-12 09:40:43', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('44', '销管系统迁移方案(V0.2).docx', 'uploadFile\\teacher\\o_19g5q6ll78tdsik1gc010ad36mr.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5q6ll78tdsik1gc010ad36mr.docx', '1', '2015-03-12 09:40:43', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('46', '问题.docx', 'uploadFile\\teacher\\o_19g5qeatk1dpg1295vbt1v2r47op.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5qeatk1dpg1295vbt1v2r47op.docx', '1', '2015-03-12 09:44:28', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('47', '问题.docx', 'uploadFile\\teacher\\o_19g5qr6m656otfo1qo11se21nk1p.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5qr6m656otfo1qo11se21nk1p.docx', '1', '2015-03-12 09:51:16', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('48', '问题.docx', 'uploadFile\\teacher\\o_19g5r9r5c1aqer19hlokao3p.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19g5r9r5c1aqer19hlokao3p.docx', '1', '2015-03-12 09:59:16', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('49', '问题.docx', 'uploadFile\\article\\o_19gjdvj113qbprggm51fkt1d7s5.docx', 'C:\\schoolfile\\uploadFile\\article\\o_19gjdvj113qbprggm51fkt1d7s5.docx', '1', '2015-03-17 16:35:57', 'admin', null, 'notice', null);
INSERT INTO `t_download` VALUES ('50', '问题.docx', 'uploadFile\\article\\o_19gjgah871re714v61l2a11ut8m75.docx', 'D:\\soft\\Java\\apache-tomcat-7.0.34-2\\webapps\\schnew\\uploadFile\\article\\o_19gjgah871re714v61l2a11ut8m75.docx', '1', '2015-03-17 17:16:44', 'admin', null, 'notice', null);
INSERT INTO `t_download` VALUES ('51', '问题.docx', 'uploadFile\\article\\o_19gjgjn8n10ha1k74epb1dv9qgn5.docx', 'D:\\soft\\Java\\apache-tomcat-7.0.34-2\\webapps\\schnew\\uploadFile\\article\\o_19gjgjn8n10ha1k74epb1dv9qgn5.docx', '1', '2015-03-17 17:21:43', 'admin', null, 'regulation', null);
INSERT INTO `t_download` VALUES ('52', 'school.rar', 'uploadFile\\teacher\\o_19i67l0fv5501gsc19b15ct138u2c.rar', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67l0fv5501gsc19b15ct138u2c.rar', '1', '2015-04-06 10:07:25', 'admin', null, 'project', null);
INSERT INTO `t_download` VALUES ('53', '新建 Microsoft Word 文档.docx', 'uploadFile\\teacher\\o_19i67jbk21gbflel8m44c11jdv1r.docx', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67jbk21gbflel8m44c11jdv1r.docx', '1', '2015-04-06 10:07:25', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('54', '新建 Microsoft Excel 工作表.xlsx', 'uploadFile\\teacher\\o_19i67jihnglf3548d81p5f7qt1u.xlsx', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67jihnglf3548d81p5f7qt1u.xlsx', '1', '2015-04-06 10:07:25', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('55', '新建文本文档.rar', 'uploadFile\\teacher\\o_19i67jtktvsd1alsecju9s16c221.rar', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67jtktvsd1alsecju9s16c221.rar', '1', '2015-04-06 10:07:25', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('56', '新建 Microsoft Excel 工作表.xlsx', 'uploadFile\\teacher\\o_19i67m4mc9k25c8k5msll49g2n.xlsx', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67m4mc9k25c8k5msll49g2n.xlsx', '1', '2015-04-06 10:07:25', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('57', 'easyui-lang-zh_CN.js.rar', 'uploadFile\\teacher\\o_19i684ut1mm56fdf3j17gd1r1v1u.rar', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i684ut1mm56fdf3j17gd1r1v1u.rar', '1', '2015-04-06 10:15:47', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('58', '新建 Microsoft Word 文档.docx', 'uploadFile\\teacher\\o_19i6856891rs81f1s1qcc1gbd1qkl1v.docx', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i6856891rs81f1s1qcc1gbd1qkl1v.docx', '1', '2015-04-06 10:15:47', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('59', '新建 Microsoft Excel 工作表.xlsx', 'uploadFile\\teacher\\o_19i685agolhrlti1c1c1619r120.xlsx', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i685agolhrlti1c1c1619r120.xlsx', '1', '2015-04-06 10:15:47', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('60', 'Desktop.rar', 'uploadFile\\teacher\\o_19ie1cgtufp7jt91i77eg0131t12.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie1cgtufp7jt91i77eg0131t12.rar', '1', '2015-04-09 10:51:04', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('61', 'Desktop.rar', 'uploadFile\\teacher\\o_19ie2saph9ccmt416ne75615s6j.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie2saph9ccmt416ne75615s6j.rar', '1', '2015-04-09 11:17:25', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('62', 'Desktop.rar', 'uploadFile\\teacher\\o_19ie2v2o22foltb1k0l1l44rca2a.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie2v2o22foltb1k0l1l44rca2a.rar', '1', '2015-04-09 11:18:41', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('63', 'Desktop.rar', 'uploadFile\\teacher\\o_19ie403q6103prba1unlfia1ajfo.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie403q6103prba1unlfia1ajfo.rar', '1', '2015-04-09 11:37:22', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('64', '备案.rar', 'uploadFile\\teacher\\o_19ie40g6sigo1bm4120kfdesh8q.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie40g6sigo1bm4120kfdesh8q.rar', '1', '2015-04-09 11:37:34', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('65', 'Desktop.rar', 'uploadFile\\teacher\\o_19iecdpbqv8fo4t14b244n62g1b.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iecdpbqv8fo4t14b244n62g1b.rar', '1', '2015-04-09 14:03:59', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('66', '23213.docx', 'uploadFile\\teacher\\o_19iecdsgoodvg6r1dflfb11jqd1c.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iecdsgoodvg6r1dflfb11jqd1c.docx', '1', '2015-04-09 14:03:59', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('67', 'Desktop.rar', 'uploadFile\\teacher\\o_19iecnipmvpj3vi1h79op3oftv.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iecnipmvpj3vi1h79op3oftv.rar', '1', '2015-04-09 14:09:11', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('68', '23213.docx', 'uploadFile\\teacher\\o_19iecnob71ldp1imj1bdr78g1r3q14.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iecnob71ldp1imj1bdr78g1r3q14.docx', '1', '2015-04-09 14:09:11', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('69', 'SCHOOLWEB新增SQL.xlsx', 'uploadFile\\teacher\\o_19iepr7h2dr2dj28r318imd4c21.xlsx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iepr7h2dr2dj28r318imd4c21.xlsx', '1', '2015-04-09 17:58:55', 'admin', null, 'project', null);
INSERT INTO `t_download` VALUES ('70', '23213.docx', 'uploadFile\\teacher\\o_19iepqemedrfpnagd1ldpgrn1r.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iepqemedrfpnagd1ldpgrn1r.docx', '1', '2015-04-09 17:58:55', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('71', '说明1.txt', 'uploadFile\\teacher\\o_19iepqm3j16lgrtk1l681jpd8e1s.txt', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iepqm3j16lgrtk1l681jpd8e1s.txt', '1', '2015-04-09 17:58:55', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('72', '问题.docx', 'uploadFile\\teacher\\o_19iepqp4n1tc313k0dc91pk51h3g1t.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iepqp4n1tc313k0dc91pk51h3g1t.docx', '1', '2015-04-09 17:58:55', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('73', '23213.docx', 'uploadFile\\teacher\\o_19ieprpsp13kreak1dul1f2s11el27.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ieprpsp13kreak1dul1f2s11el27.docx', '1', '2015-04-09 17:58:56', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('74', '销管系统迁移方案(V0.2).docx', 'uploadFile\\teacher\\o_19ieps68nc1ftnm14ks1bf5t6c2c.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ieps68nc1ftnm14ks1bf5t6c2c.docx', '1', '2015-04-09 17:58:56', 'admin', null, 'paper', null);
INSERT INTO `t_paper` VALUES ('2', '论文1', '作者1，作者2', '期刊A', '2015', '111', '56', '51');
INSERT INTO `t_paper` VALUES ('3', '顶顶顶顶', '', '', '', '', null, '52');
INSERT INTO `t_paper` VALUES ('4', '论文2', '', '', '', '', null, '53');
INSERT INTO `t_paper` VALUES ('5', '轮1', '2', '3', '4', '5', '60', '54');
INSERT INTO `t_paper` VALUES ('6', '1', '2', '3', '4', '5', null, '55');
INSERT INTO `t_paper` VALUES ('7', '3', '6', '4', '6', '5', null, '56');
INSERT INTO `t_paper` VALUES ('8', '1', '2', '3', '4', '5', null, '57');
INSERT INTO `t_paper` VALUES ('15', '112', '212', '312', '412', '512', null, '58');
INSERT INTO `t_paper` VALUES ('16', '32', '42', '62', '52', '72', null, '58');
INSERT INTO `t_paper` VALUES ('19', '1', '2', '3', '4', '5', null, '59');
INSERT INTO `t_paper` VALUES ('20', '22', '33', '44', '55', '66', null, '59');
INSERT INTO `t_prize` VALUES ('42', 'teach', '教学获奖1', null, '51');
INSERT INTO `t_prize` VALUES ('43', 'teach', '社会服务获奖1', null, '51');
INSERT INTO `t_prize` VALUES ('44', 'science', '科研获奖1', null, '51');
INSERT INTO `t_prize` VALUES ('45', 'teach', '反反复复', null, '52');
INSERT INTO `t_prize` VALUES ('46', 'teach', '123', null, '53');
INSERT INTO `t_prize` VALUES ('47', 'science', '科研2', null, '53');
INSERT INTO `t_prize` VALUES ('50', 'teach', '111123', null, '59');
INSERT INTO `t_prize` VALUES ('51', 'science', '222224', null, '59');
INSERT INTO `t_prize` VALUES ('52', 'teach', '66666', null, '60');
INSERT INTO `t_prize` VALUES ('53', 'social', '666454444', null, '60');
INSERT INTO `t_research` VALUES ('2', '0002', '1', '项目1', '100000', '10000', '主持人1', '参与者1', '2015-04-06', '2015-04-06', '52', '51');
INSERT INTO `t_research` VALUES ('3', '', '嗷嗷', '版本', '0', '0', '', '', '', '', null, '52');
INSERT INTO `t_research` VALUES ('4', '', '1', '项目2', '0', '0', '', '', '', '', null, '53');
INSERT INTO `t_research` VALUES ('5', '', '', '132123123', '0', '0', '', '', '', '', null, '54');
INSERT INTO `t_research` VALUES ('6', '', '', '3', '0', '0', '', '', '', '', null, '55');
INSERT INTO `t_research` VALUES ('7', '', '', '3', '0', '0', '', '', '', '', null, '56');
INSERT INTO `t_research` VALUES ('8', '', '', '3', '0', '0', '', '', '', '', null, '57');
INSERT INTO `t_research` VALUES ('12', '', '1', '2', '0', '0', '', '', '', '', null, '58');
INSERT INTO `t_research` VALUES ('14', '41', '1', '333333333', '2', '3', '4', '5', '2015-04-09', '2015-04-10', null, '59');
INSERT INTO `t_research` VALUES ('15', '', '', '66', '0', '0', '', '', '', '', null, '60');
INSERT INTO `t_role_menu` VALUES ('30', '11', '46');
INSERT INTO `t_role_menu` VALUES ('31', '11', '14');
INSERT INTO `t_role_menu` VALUES ('35', '18', '118');
INSERT INTO `t_role_menu` VALUES ('36', '18', '117');
INSERT INTO `t_role_menu` VALUES ('40', '19', '118');
INSERT INTO `t_role_menu` VALUES ('41', '19', '117');
INSERT INTO `t_role_menu` VALUES ('42', '19', '46');
INSERT INTO `t_role_menu` VALUES ('43', '19', '14');
INSERT INTO `t_role_menu` VALUES ('44', '19', '13');
INSERT INTO `t_role_menu` VALUES ('48', '3', '118');
INSERT INTO `t_role_menu` VALUES ('49', '3', '117');
INSERT INTO `t_role_menu` VALUES ('50', '3', '13');
INSERT INTO `t_role_menu` VALUES ('51', '3', '121');
INSERT INTO `t_subject` VALUES ('17', '法学课', '123123', 'comparter', '公共课', '001', '53', '54', '55', '1', '赵老师', '51');
INSERT INTO `t_subject` VALUES ('18', '应用学', '', 'comparter', '公共课', '002', null, null, null, '1', '王老师', '52');
INSERT INTO `t_subject` VALUES ('19', '英语课', '', 'choose', '选修课', '003', '57', '58', '59', '1', '钱老师', '53');
INSERT INTO `t_subject` VALUES ('20', '法律基础', '阿斯顿发士大夫', 'comparter', '公共课', '0003', null, null, null, '1', '孙老师', '54');
INSERT INTO `t_subject` VALUES ('21', '5', '', 'comparter', '公共课', '4', null, null, null, '1', '1', '55');
INSERT INTO `t_subject` VALUES ('22', '3', '', 'comparter', '公共课', '2', null, null, null, '1', '2', '56');
INSERT INTO `t_subject` VALUES ('23', '5', '', 'comparter', '公共课', '4', null, null, null, '1', '3', '57');
INSERT INTO `t_subject` VALUES ('26', '44', '', 'comparter', '公共课', '33', null, null, null, '1', null, '58');
INSERT INTO `t_subject` VALUES ('28', '22222', '234234', 'comparter', '公共课', '1', null, null, null, '1', null, '59');
INSERT INTO `t_subject` VALUES ('29', '66', '6666', 'comparter', '公共课', '66', null, null, null, '1', '6', '60');
INSERT INTO `t_teacher` VALUES ('51', '0', '赵老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-06', 'xiaozhang', '1', '123123123', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67ibp8pdm19m21ss2c0v1d3fv.jpg', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('52', '0', '王老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-06', 'xiaozhang', '1', '反反复复', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i67vatrfgi20d1h21u183lg.jpg', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('53', '0', '钱老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-06', 'xiaozhang', '1', '反反复复sss啊啊啊', 'D:\\JAVA\\jzfg\\apache-tomcat-7.0.34\\webapps\\sch\\uploadFile\\teacher\\o_19i683t491e1m3d716qs1t5oa3m1i.jpg', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('54', '0', '孙老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-02', 'xiaozhang', '1', '方法反反复复', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ie1bj661h7l1j5l35i4ga6j8g.jpg', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('55', '0', '1', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-07', 'xiaozhang', '1', '123', null, '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('56', '0', '2', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-13', 'xiaozhang', '1', '', null, '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('57', '0', '3', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-09', 'xiaozhang', '1', '4444', null, '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('58', '0', '4', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-08', 'xiaozhang', '1', '', null, '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('59', '0', '5', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-09', 'xiaozhang', '1', '', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19iepq2j41s7dv0u1mc41veu1v721d.jpg', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('60', '0', '6', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-07', 'xiaozhang', '1', '66666', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19ieq2t7s16fc5n81gug185e1h6u2p.jpg', '教授', '校长', 'admin');
INSERT INTO `t_trainingplan` VALUES ('11', '8', '1', '17', '21,19', '20,12', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('15', '9', '2', '21,19,12,13,14,3,6', '', '', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('16', '9', '1', '17', '', '', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('17', '9', '3', '18', '', '', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('18', '9', '4', '22', '', '', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('20', '8', '3', '23,12,17', '', '', '', '6,14', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('21', '8', '4', '18,22,15,11', '24', '', '', '', '', '', '');
INSERT INTO `t_trainingplan` VALUES ('22', '8', '2', '22,18,15', '25', '', '', '', '', '', '');
