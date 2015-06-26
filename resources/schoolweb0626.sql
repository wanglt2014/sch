/*
MySQL Data Transfer
Source Host: localhost
Source Database: schoolweb
Target Host: localhost
Target Database: schoolweb
Date: 2015/6/26 16:48:31
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
  `articleIsTop` varchar(1) DEFAULT '0' COMMENT '置顶（0不置顶，1置顶）',
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='咨询（通知，咨询），教学动态';

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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bs_user_role
-- ----------------------------
CREATE TABLE `bs_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` varchar(14) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=537 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
-- Table structure for t_attmeeting
-- ----------------------------
CREATE TABLE `t_attmeeting` (
  `attendId` bigint(14) NOT NULL AUTO_INCREMENT,
  `attendTeacherName` varchar(20) DEFAULT NULL COMMENT '师教名称',
  `attMeetingName` varchar(30) DEFAULT NULL COMMENT '议会名称',
  `attMeetingType` varchar(2) DEFAULT NULL COMMENT '会议类别“国际”、“国内”',
  `attMeetingHost` varchar(30) DEFAULT NULL COMMENT '主办方',
  `attMeetingBeginTime` varchar(10) DEFAULT NULL COMMENT '始开时间',
  `attMeetingEndTime` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `attMeetingPlace` varchar(30) DEFAULT NULL COMMENT '地点',
  `attMeetingPaper` varchar(50) DEFAULT NULL COMMENT '参会论文',
  `attMeetingReportType` varchar(5) DEFAULT NULL COMMENT '报告类别“大会报告”“小组报告”',
  PRIMARY KEY (`attendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_atttrain
-- ----------------------------
CREATE TABLE `t_atttrain` (
  `attTrainId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '教师参加培训',
  `attTeacherName` varchar(20) DEFAULT NULL COMMENT '教师姓名',
  `attType` varchar(2) DEFAULT NULL COMMENT '类别，国内，国际',
  `attHost` varchar(30) DEFAULT NULL COMMENT '主办方',
  `attTrainBeginTime` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `attTrainEndTime` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `attTrainPlace` varchar(30) DEFAULT NULL COMMENT '地点',
  `attTrainResult` varchar(50) DEFAULT NULL COMMENT '培训成果',
  PRIMARY KEY (`attTrainId`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院系表，分1级，2级院系，1级院系只用于学院';

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='字典表（文章种类，学院，教师级别，学科）';

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='资料下载';

-- ----------------------------
-- Table structure for t_exchange_stu
-- ----------------------------
CREATE TABLE `t_exchange_stu` (
  `exchangeStuId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '学生国际交流',
  `stuName` varchar(20) DEFAULT NULL COMMENT '学生姓名',
  `stuType` varchar(5) DEFAULT NULL COMMENT '学生在读情况（学士、硕士、博士）',
  `exchangeBeginTime` varchar(10) DEFAULT NULL COMMENT '开始时间',
  `exchangeEndTime` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `timeLength` varchar(5) DEFAULT NULL COMMENT '时间长度（月）',
  `exchangePlace` varchar(30) DEFAULT NULL COMMENT '地点',
  `projectName` varchar(30) DEFAULT NULL COMMENT '国际交流项目名称或主要交流目的',
  PRIMARY KEY (`exchangeStuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_foreign_experts
-- ----------------------------
CREATE TABLE `t_foreign_experts` (
  `foreignId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '国外专家来访',
  `fprojectmanager` varchar(20) DEFAULT NULL COMMENT '项目负责人',
  `fprojectType` varchar(20) DEFAULT NULL,
  `expertName` varchar(30) DEFAULT NULL COMMENT '专家姓名',
  `expertNationality` varchar(20) DEFAULT NULL COMMENT '国籍',
  `workUnit` varchar(30) DEFAULT NULL COMMENT '工作单位',
  `visitTime` varchar(10) DEFAULT NULL COMMENT '来访时间',
  `visitGoal` varchar(50) DEFAULT NULL COMMENT '来访目的',
  `visitActivity` varchar(50) DEFAULT NULL COMMENT '来访活动',
  `other` varchar(50) DEFAULT NULL COMMENT '其他',
  PRIMARY KEY (`foreignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_holdmeeting
-- ----------------------------
CREATE TABLE `t_holdmeeting` (
  `holdId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '学院举办国际/国内会议',
  `meetingName` varchar(30) DEFAULT NULL COMMENT '会议名称',
  `meetingType` varchar(2) DEFAULT NULL COMMENT '类别（国际或国内）',
  `meetingBeginTime` varchar(10) DEFAULT NULL COMMENT '会议开始时间',
  `meetingEndTime` varchar(10) DEFAULT NULL COMMENT '会议结束时间',
  `meetingPlace` varchar(30) DEFAULT NULL COMMENT '地点',
  `meetingPeopleNum` varchar(5) DEFAULT NULL COMMENT '会议人数',
  `meetingResult` varchar(50) DEFAULT NULL COMMENT '会议成果',
  PRIMARY KEY (`holdId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_honorandother
-- ----------------------------
CREATE TABLE `t_honorandother` (
  `honorId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '荣誉及其他',
  `honorTitle` varchar(30) DEFAULT NULL COMMENT '荣誉名称',
  `honorLeave` varchar(8) DEFAULT NULL COMMENT '荣誉级别',
  `honorDep` varchar(20) DEFAULT NULL COMMENT '授予部门',
  `honorRemark` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`honorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
CREATE TABLE `t_paper` (
  `paperId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '科研\\教改--论文表',
  `paperName` varchar(50) DEFAULT NULL COMMENT '论文名称',
  `paperAuthor` varchar(2) DEFAULT NULL COMMENT '作者排名',
  `paperNoteName` varchar(60) DEFAULT NULL COMMENT '发表刊物/论文集名称',
  `paperNoteYear` varchar(4) DEFAULT NULL COMMENT '刊登年份',
  `paperNoteNO` varchar(20) DEFAULT NULL COMMENT '期号（卷号）',
  `paperDownloadId` bigint(20) DEFAULT NULL COMMENT '论文电子版(资料表ID)',
  `paperTeacherId` bigint(14) DEFAULT NULL COMMENT '师教ID',
  `paperTeachOrResearch` varchar(1) DEFAULT NULL COMMENT '0教学，1科研',
  `paperTeacherName` varchar(45) DEFAULT NULL COMMENT '师教姓名',
  `paperNoteCountry` varchar(20) DEFAULT NULL COMMENT '刊物国别',
  `paperNoteDate` varchar(20) DEFAULT NULL COMMENT '发表/出版时间',
  `paperNotePage` varchar(5) DEFAULT NULL COMMENT '页码',
  `paperIncluded` varchar(10) DEFAULT NULL COMMENT '论文收录(0 SCI；1SSCI； 2EI； 3A&HCI；4CSSCI；5CSSCI扩展；6中文核心 )',
  `paperFactors` varchar(50) DEFAULT NULL COMMENT '影响因子',
  `paperReprint` varchar(5) DEFAULT NULL COMMENT '论文转载(1是，0否)',
  `paperClassA` varchar(3) DEFAULT NULL COMMENT '一级学科',
  `paperProjectNO` varchar(20) DEFAULT NULL COMMENT '资助项目编号',
  PRIMARY KEY (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_partjob
-- ----------------------------
CREATE TABLE `t_partjob` (
  `partId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '学术兼职',
  `partName` varchar(20) DEFAULT NULL COMMENT '姓名',
  `partPlace` varchar(50) DEFAULT NULL COMMENT '学会/协会/期刊名称(兼职地点)',
  `partJob` varchar(30) DEFAULT NULL COMMENT '兼职职务',
  `partBeginTime` varchar(20) DEFAULT NULL,
  `partEndTime` varchar(20) DEFAULT NULL,
  `partToPay` varchar(1) DEFAULT NULL COMMENT '是否需要交纳会费(0否，1是)',
  `partOfMoney` varchar(10) DEFAULT NULL COMMENT '交纳金额',
  PRIMARY KEY (`partId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_prize
-- ----------------------------
CREATE TABLE `t_prize` (
  `prizeId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '获奖表(0教学果成奖，1科研，2优秀主讲教师)',
  `prizeType` varchar(10) DEFAULT NULL COMMENT '成果类别( 1学术论文、2著作、3研究报告、4普及读物)',
  `prizeDate` varchar(20) DEFAULT NULL COMMENT '获奖时间',
  `prizeTeacherId` bigint(14) DEFAULT NULL,
  `prizeTeachOrResearch` varchar(1) DEFAULT NULL COMMENT '0教学果成奖，1科研，2优秀主讲教师',
  `prizeTeacherName` varchar(45) DEFAULT NULL COMMENT '教师姓名',
  `prizeRank` varchar(1) DEFAULT NULL COMMENT '获奖排名',
  `prizeTitle` varchar(50) DEFAULT NULL COMMENT '奖项名称(1高等学校科学研究优秀成果奖；2黑龙江省社会科学优秀成果奖、3黑龙江省高校人文社会科学研究优秀成果奖、4其他省部级以上获奖)',
  `prizeResultName` varchar(50) DEFAULT NULL COMMENT '成果名称',
  `prizeLevel` varchar(8) DEFAULT NULL COMMENT '奖励等级(1特等奖、2一等奖、3二等奖、4三等奖、5佳作奖)',
  `prizeDep` varchar(50) DEFAULT NULL COMMENT '授奖部门',
  `prizeNO` varchar(20) DEFAULT NULL COMMENT '证书编号',
  PRIMARY KEY (`prizeId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_research
-- ----------------------------
CREATE TABLE `t_research` (
  `researchId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '科研--立项表',
  `researchNO` varchar(20) DEFAULT NULL COMMENT '项目编号',
  `researchLevel` varchar(10) DEFAULT NULL COMMENT '目项类别：1重大；2重点；3一般；4面上；5青年；6其他',
  `researchName` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `researchMoney` int(11) DEFAULT NULL COMMENT '项目资金',
  `researchMatchMoney` int(11) DEFAULT NULL COMMENT '配套资金',
  `researchHost` varchar(45) DEFAULT NULL COMMENT '主持者',
  `researchActor` varchar(80) DEFAULT NULL COMMENT '参与者',
  `researchBeginDate` varchar(10) DEFAULT NULL COMMENT '科研开始时间',
  `researchEndDate` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `downloadId` bigint(20) DEFAULT NULL COMMENT '立项申请书电子版',
  `researchTeacherId` bigint(14) DEFAULT NULL,
  `researchTeachOrResearch` varchar(1) DEFAULT NULL COMMENT '0教学，1科研',
  `researchTeacherName` varchar(45) DEFAULT NULL,
  `researchRank` varchar(1) DEFAULT NULL,
  `researchType` varchar(50) DEFAULT NULL COMMENT '项目种类:1国家社会科学基金；2国家自然科学基金；3教育部人文社科基金；4省哲学社会科学研究规划项目；5省自然科学基金项目；6其他省部级以上项目',
  `isResearch` varchar(5) DEFAULT NULL COMMENT '是否在研（0否,1是）',
  `researchKnot` varchar(10) DEFAULT NULL COMMENT '结题等级(1优秀；2良好；3合格；4其他  )',
  PRIMARY KEY (`researchId`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_research_teach
-- ----------------------------
CREATE TABLE `t_research_teach` (
  `researchId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '改教立项表',
  `researchRank` varchar(1) DEFAULT NULL COMMENT '师教排名',
  `researchLevel` varchar(10) DEFAULT NULL COMMENT '项目类别：1省级、2校级、3省级研究生项目',
  `researchName` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `researchNO` varchar(20) DEFAULT NULL COMMENT '项目编号',
  `researchBeginDate` varchar(10) DEFAULT NULL COMMENT '科研开始时间',
  `researchEndDate` varchar(10) DEFAULT NULL COMMENT '结束时间',
  `isResearch` varchar(5) DEFAULT NULL COMMENT '是否在研（0否,1是）',
  `researchKnot` varchar(10) DEFAULT NULL COMMENT '结题等级(1优秀；2良好；3合格；4其他  )',
  PRIMARY KEY (`researchId`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

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
  `subjectTypeName` varchar(45) DEFAULT NULL COMMENT '课程性质名称',
  `subjectNO` varchar(10) DEFAULT NULL COMMENT '课程编号（文字自填）',
  `subjectOutline` bigint(20) DEFAULT NULL COMMENT '教学大纲（文档上传）',
  `subjectSchedule` bigint(20) DEFAULT NULL COMMENT '教学进度表（文档上传）',
  `subjectInfo` bigint(14) DEFAULT NULL COMMENT '课程资料（逐项上传文档、音频、视频、压缩文件包等）\n资料表ID以,分隔。',
  `subjectIsvalid` varchar(2) DEFAULT '1' COMMENT '是否有效',
  `subjectTeacherName` varchar(45) DEFAULT NULL COMMENT '师教姓名',
  `subjectTeacherId` bigint(14) DEFAULT NULL COMMENT '教师ID',
  `subjectDepartment` varchar(20) DEFAULT NULL COMMENT '课程所属专业',
  `subjectDepartmentName` varchar(50) DEFAULT NULL COMMENT '课程所属专业名称',
  `subjectYear` varchar(4) DEFAULT NULL COMMENT '课程所属年份',
  `subjectRemark` varchar(1000) DEFAULT NULL COMMENT '备注',
  `subjectCredit` varchar(5) DEFAULT NULL COMMENT '学分',
  `classHourForTheory` varchar(5) DEFAULT NULL COMMENT '理论学时',
  `classHourForTest` varchar(5) DEFAULT NULL COMMENT '实验学时',
  `classHourForMachine` varchar(5) DEFAULT NULL COMMENT '上机学时',
  `classHourForOther` varchar(5) DEFAULT NULL COMMENT '其它学时',
  `termClassHourForOne` varchar(5) DEFAULT NULL COMMENT '一学期学时',
  `termClassHourForTwo` varchar(5) DEFAULT NULL COMMENT '二学期学时',
  `termClassHourForThree` varchar(5) DEFAULT NULL COMMENT '三学期学时',
  `termClassHourForFour` varchar(5) DEFAULT NULL COMMENT '四学期学时',
  `termClassHourForFive` varchar(5) DEFAULT NULL COMMENT '五学期学时',
  `termClassHourForSix` varchar(5) DEFAULT NULL COMMENT '六学期学时',
  `termClassHourForSeven` varchar(5) DEFAULT NULL COMMENT '七学期学时',
  `termClassHourForEight` varchar(5) DEFAULT NULL COMMENT '八学期学时',
  `subjectTeachOrResearch` varchar(1) DEFAULT NULL COMMENT '0教学，1科研',
  `subjectRank` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='课程表';

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
  `trPlanSubIdsForOne` varchar(1400) DEFAULT NULL COMMENT '课程ID',
  `trPlanSubIdsForTwo` varchar(1400) DEFAULT NULL COMMENT '课程名称',
  `trPlanSubIdsForThree` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForFour` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForFive` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsFoSix` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForSeven` varchar(1400) DEFAULT NULL,
  `trPlanSubIdsForEight` varchar(1400) DEFAULT NULL,
  `trainingPlanGrade` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`trainingPlanId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_visitschool
-- ----------------------------
CREATE TABLE `t_visitschool` (
  `visitId` bigint(14) NOT NULL AUTO_INCREMENT COMMENT '教师访学',
  `visitName` varchar(20) DEFAULT NULL COMMENT '姓名',
  `visitDate` varchar(10) DEFAULT NULL COMMENT '访学时间',
  `visitLength` varchar(3) DEFAULT NULL COMMENT '时间长度（以月为单位）',
  `visitPlace` varchar(20) DEFAULT NULL COMMENT '地点（国家/地区及高校）',
  `visitForProject` varchar(100) DEFAULT NULL COMMENT '国际交流项目名称或主要交流目的',
  PRIMARY KEY (`visitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_work
-- ----------------------------
CREATE TABLE `t_work` (
  `workId` bigint(14) NOT NULL AUTO_INCREMENT,
  `workAuthorRank` varchar(2) DEFAULT NULL COMMENT '作者排名',
  `workTitle` varchar(50) DEFAULT NULL COMMENT '著作题目',
  `workPublishUnit` varchar(50) DEFAULT NULL COMMENT '出版单位',
  `workType` varchar(5) DEFAULT NULL COMMENT '著作类别(专著；编著；译著)',
  `workPublishArea` varchar(50) DEFAULT NULL COMMENT '出版地',
  `workPublishTime` varchar(10) DEFAULT NULL COMMENT '出版时间',
  `oriAuthor` varchar(30) DEFAULT NULL COMMENT '原作者',
  `translateForeign` varchar(2) DEFAULT NULL COMMENT '是否译成外文（0否,1是）',
  `alreadyPublish` varchar(2) DEFAULT NULL COMMENT '已出几版',
  `isbnNO` varchar(20) DEFAULT NULL,
  `classA` varchar(5) DEFAULT NULL COMMENT '一级学科',
  `projectno` varchar(20) DEFAULT NULL COMMENT '资助项目编号',
  `totalWord` varchar(10) DEFAULT NULL COMMENT '总字数',
  `workTeacherId` bigint(14) DEFAULT NULL,
  `workTeachOrResearch` varchar(1) DEFAULT NULL COMMENT '0教学，1科研',
  `workTeacherName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`workId`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `bs_article` VALUES ('52', 'admin', '2015-04-23', 'regulation', '根据《哈尔滨工程大学攻读硕士学位研究生学位论文评阅、答辩、毕业、结业及学位授予管理办法（试行）》（校研字[2006]13号）及《哈尔滨工程大学研究生培养基金管理办法（试行）》（校研字[2007]50号）等文件要求，结合人文学院以往实践工作经验，并充分听取导师意见及建议，现将硕士学位论文评审有关环节归纳如下：', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">根据《哈尔滨工程大学攻读硕士学位研究生学位论文评阅、答辩、毕业、结业及学位授予管理办法（试行）》（校研字<span style=\"undefinedfont-size: 12px;\">[2006]13</span>号）及《哈尔滨工程大学研究生培养基金管理办法（试行）》（校研字<span style=\"undefinedfont-size: 12px;\">[2007]50</span>号）等文件要求，结合人文学院以往实践工作经验，并充分听取导师意见及建议，现将硕士学位论文评审有关环节归纳如下：</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">一、论文审查时间及方式</span></strong></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 4px 0px 0px; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（一）开题：每年的<span style=\"font-size: 12px;\"><span>7</span>月<span>1</span>日</span>－<span style=\"undefinedfont-size: 12px;\">15</span>日，<span style=\"font-size: 12px;\"><span>9</span>月<span>1</span>日</span>－<span style=\"undefinedfont-size: 12px;\">15</span>日。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">根据学校相关规定，研究生应在完成学位课程及文献阅读、课题调研的基础上，经导师指导写出开题报告。学科应在学生论文专业范围内组成不少于<span style=\"undefinedfont-size: 12px;\">5</span>人的“开题报告评审小组”，并另设秘书<span style=\"undefinedfont-size: 12px;\">1</span>名。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 24px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">开题报告被认为有下列情况之一者，不能通过：</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">1</span>）选题不符合学科专业培养方向；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">2</span>）选题缺乏学术价值与实践意义；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">3</span>）所选课题工作量不足或明显过大，研究内容不明确；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">4</span>）缺乏必要的研究手段与资料来源；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">5</span>）对课题的国内外研究动态不清楚，缺乏分析和综述；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">6</span>）文献综述不系统；</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 18px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">7</span>）论文结构不合理，逻辑混乱，或提纲不完整。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 24px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">开题报告未通过者，不得进入论文写作阶段。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">7</span><span style=\"font-family: 宋体; font-size: 13px;\">月份开题未通过者，可于<span style=\"undefinedfont-size: 12px;\">9</span>月进行第二次开题，第二次开题仍未通过者，经充分准备，可于一个月后再次提出开题申请。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 31px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">申请开题答辩的学生应填写《哈尔滨工程大学研究生开题报告评审表》，并由开题答辩秘书在评审小组意见栏写明修改意见或开题不通过原因等。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（二）内审</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 4px 0px 0px; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">1.</span><span style=\"font-family: 宋体; font-size: 13px;\">导师审查。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">指导教师应该对学生学位论文进行全程指导。并在如下时间完成相关审查及手续：</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 12px;\">&nbsp;</span></p><p style=\"margin: 0px 0px 0px 56px; color: rgb(0, 0, 0); line-height: 24.7px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 仿宋_GB2312; font-size: 13px;\"><span><span style=\"font-family: 宋体; font-size: 12px;\">⑴</span><span times=\"\" new=\"\">&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span><span style=\"font-family: 宋体; font-size: 13px;\">论文提纲及写作框架审查：每年<span style=\"undefinedfont-size: 12px;\">10</span>月<span style=\"undefinedfont-size: 12px;\">30</span>日前完成；</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 56px; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 仿宋_GB2312; font-size: 13px;\"><span><span style=\"font-family: 宋体; font-size: 12px;\">⑵</span><span times=\"\" new=\"\">&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span><span style=\"font-family: 宋体; font-size: 13px;\">论文过程审查：每<span style=\"undefinedfont-size: 12px;\">2</span>个月至少进行一次全面审查；</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 56px; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 仿宋_GB2312; font-size: 13px;\"><span><span style=\"font-family: 宋体; font-size: 12px;\">⑶</span><span times=\"\" new=\"\">&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span><span style=\"font-family: 宋体; font-size: 13px;\">论文定稿：每年<span style=\"undefinedfont-size: 12px;\">3</span>月<span style=\"undefinedfont-size: 12px;\">30</span>日前完成，并填写《硕士学位论文指导教师审查意见表》（附件<span style=\"undefinedfont-size: 12px;\">1</span>）。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 4px 0px 0px; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">导师在审查学生学位论文时要及时提出修改意见。《人文学院硕士学位论文指导教师审查意见表》应对硕士研究生的学术水平作出评价，评价内容包括论文所反映的硕士研究生的理论基础、专业知识水平、科学研究能力，以及学术成果的真实性、论文是否达到硕士学位论文水平等。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 4px 0px 0px; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">申请硕士学位论文答辩的学生应于申请答辩当年<span style=\"undefinedfont-size: 12px;\">4</span>月底前有<span style=\"undefinedfont-size: 12px;\">2</span>篇学术论文在相关学术刊物上发表或确已达到发表水平。如已达发表水平但尚未发表，需导师在《人文学院硕士学位论文答辩申请表》（附件<span style=\"undefinedfont-size: 12px;\">2</span>）上签署对论文学术水平的评价意见。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">2.</span><span style=\"font-family: 宋体; font-size: 13px;\">学科审查：由学科负责人具体组织实施。每年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">1</span>日－<span style=\"undefinedfont-size: 12px;\">5</span>日或<span style=\"font-size: 12px;\"><span>9</span>月<span>1</span>日</span>－<span style=\"undefinedfont-size: 12px;\">5</span>日左右完成。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">经导师审查合格的学位论文，提交至学科进行审查，经学科审查同意后，方可提交学院进行双盲评审。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">3.</span><span style=\"font-family: 宋体; font-size: 13px;\">主审人审查：每年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">5</span>日－<span style=\"font-size: 12px;\"><span>4</span>月<span>13</span>日</span>或<span style=\"font-size: 12px;\"><span>9</span>月<span>5</span>日</span>－<span style=\"undefinedfont-size: 12px;\">13</span>日左右完成。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">为避免人际因素等干扰，硕士学位论文院内评审实行双盲评审。评审方案由学科拟定，每篇学位论文确定一名主审人，并将具体名单报学院审查、备案（由教务办受理）。学院审查通过评审方案后，教务办负责将学生提交的<span style=\"undefinedfont-size: 12px;\">1</span>本隐匿学生和导师姓名的论文分发给各主审人。主审人审阅后填写《硕士学位论文院内审查意见表》（附件<span style=\"undefinedfont-size: 12px;\">3</span>），返回教务办。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">学生提交的双盲评审论文须按规范模式打印，但不需要装饰性论文封面，应隐匿论文中学生及导师姓名。对于“攻读硕士学位期间发表的论文和取得的科研成果”要求不得出现硕士学位论文作者及其导师的名字。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">4.</span><span style=\"font-family: 宋体; font-size: 13px;\">复审：每年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">14</span>日－<span style=\"font-size: 12px;\"><span>4</span>月<span>15</span>日</span>或<span style=\"font-size: 12px;\"><span>9</span>月<span>14</span>日</span>－<span style=\"undefinedfont-size: 12px;\">15</span>日左右完成。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">论文主审人对于学生学位论文的某些观点把握不准，不能确定是否通过内审，可提交学院申请复审。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">教务办将申请复审的论文统一提交至学院学位委员会或专家组，由学位委员会或专家组审议确定是否通过内审。同时填写《硕士学位论文院内复审意见表》（附件<span style=\"undefinedfont-size: 12px;\">4</span>）。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">5.</span><span style=\"font-family: 宋体; font-size: 13px;\">修改论文：每年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">15</span>日－<span style=\"font-size: 12px;\"><span>4</span>月<span>20</span>日</span>或<span style=\"font-size: 12px;\"><span>9</span>月<span>15</span>日</span>－<span style=\"undefinedfont-size: 12px;\">20</span>日左右完成。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">教务办将论文主审（及复审）评阅意见汇总给学位论文指导教师，指导教师参照评阅意见确定该论文是否需要修改及如何修改，并填写《硕士学位论文内审意见反馈单》（附件<span style=\"undefinedfont-size: 12px;\">5</span>），交至教务办备案。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（三）学术不端检测：检测时间及结果处理方式按照学校每年统一安排进行。教务办及时将检测结果发给指导教师。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（四）外审：按照学校每年统一安排时间进行。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">通过学院内审及学校学术不端检测的学位论文，根据学校预审查工作安排通知各学科收齐后统一由教务办送交学校进行外审。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（五）修改论文：指导教师参照外审评阅意见确定学生论文是否需要修改及如何修改。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 80px; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\"><span><span style=\"font-size: 12px;\">二、</span><span times=\"\" new=\"\">&nbsp;&nbsp;&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span></strong><strong><span style=\"font-family: 宋体; font-size: 13px;\">答辩</span></strong></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">通过外审并按要求修改完的硕士学位论文，可进入论文答辩环节。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">学院答辩委员会由<span style=\"undefinedfont-size: 12px;\">5</span>或<span style=\"undefinedfont-size: 12px;\">7</span>名教授、副教授（或相当专业技术职务）组成（指导教师除外），对于<span style=\"undefinedfont-size: 12px;\">2003</span>年以后（含<span style=\"undefinedfont-size: 12px;\">2003</span>年）新增的硕士学位点，其第<span style=\"undefinedfont-size: 12px;\">1</span>年和第<span style=\"undefinedfont-size: 12px;\">2</span>年招收的硕士生进行学位论文答辩时，须邀请<span style=\"undefinedfont-size: 12px;\">1</span>名以上（含<span style=\"undefinedfont-size: 12px;\">1</span>名）外单位的同行专家（职称必<span style=\"font-size: 12px;\">须为</span>教授或相当专业技术职务）参加答辩委员会。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">答辩委员会成员由学科确定，报教务办备案。答辩委员会设主席、秘书各一名。答辩委员会主席及成员应承担相关的审查责任。学科在确定答辩委员会成员名单前应事先征得成员同意，同时向答辩委员会成员介绍答辩学生基本情况。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">答辩委员会在每个学生答辩完毕后应召开内部评议会议，审定申请人的论文是否达到硕士学位论文水平，并根据研究生回答问题的情况进行投票表决，讨论并通过答辩委员会决议。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 80px; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\"><span><span style=\"font-size: 12px;\">三、</span><span times=\"\" new=\"\">&nbsp;&nbsp;&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span></strong><strong><span style=\"font-family: 宋体; font-size: 13px;\">论文评价等级申报</span></strong></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">实行硕士学位论文答辩等级申报制，即学生在提交答辩论文的同时对自己的论文等级进行总体评价，并提出申请等级（具体等级分为优秀、良好、中等、及格和不及格）。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 80px; text-align: left; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\"><span><span style=\"font-size: 12px;\">四、</span><span times=\"\" new=\"\">&nbsp;&nbsp;&nbsp;<span style=\"undefinedfont-size: 10px;\">&nbsp;</span></span></span></span></strong><strong><span style=\"font-family: 宋体; font-size: 13px;\">费用</span></strong></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">按照《哈尔滨工程大学研究生答辩及论文评阅业务专项经费管理实施细则（试行）》（<span style=\"undefinedfont-size: 12px;\">[2012]16</span>号）文件规定，硕士学位论文答辩及评阅等费用应由学校统一支付。</span></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 32px; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">五、<span style=\"undefinedfont-size: 12px;\">&nbsp;<span>&nbsp;</span></span>其它</span></strong></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">学生论文审查及答辩等手续中涉及指导教师签字应由导师本人签字，如本人确因出国、进修等特殊原因不能签字的，指导教师以书面或电子邮件形式报学院教务办，备案后方可代签。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">六、<span style=\"undefinedfont-size: 12px;\">2010</span>届硕士毕业生答辩工作参照本管理规定执行，经讨论决定后，自<span style=\"undefinedfont-size: 12px;\">2011</span>届硕士毕业生起试行。</span></p><p></p>', '2015-04-28 14:07:01', '人文学院硕士学位论文审查及答辩相关问题规定', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('53', 'admin', '2015-04-23', 'notice', '为推进学校国际化开放式办学进程，提升我校学生国际化意识和能力，提高我校学生的整体外语水平，调动我校学生进行海外交流的积极性，特制订本奖励办法。', '<p>&nbsp;</p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-size: 13px;font-family:宋体font-size:12px\">为推进学校国际化开放式办学进程，提升我校学生国际化意识和能力，提高我校学生的整体外语水平，调动我校学生进行海外交流的积极性，特制订本奖励办法。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">第一条 奖励对象</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">具有哈尔滨工程大学学籍的<span style=\"color: black;\">我校全日制非外语专业</span>的本科生（不包括国际合作教育学生）。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">第二条<span>&nbsp;</span><span style=\"color: black;\">奖励原则</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">根据学生在托福、雅思等外语水平考试中取得的成绩，按照部分或全部考试报名费用额度进行奖励。</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">第三条<span>&nbsp;</span><span style=\"color: black;\">奖励标准</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 38px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black;font-family:宋体font-size:12px\">（一）英语</span></p><p style=\"margin: 0px 0px 0px 58px; color: rgb(0, 0, 0); line-height: 24.7px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">1.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">考试成绩：托福（网考）成绩≥<span style=\"undefinedfont-size:12px\">110</span>，或雅思成绩≥<span style=\"undefinedfont-size:12px\">7.5</span>；奖励标准：考试费的<span style=\"undefinedfont-size:12px\">100%</span>。</span></span></p><p style=\"margin: 0px 0px 0px 58px; color: rgb(0, 0, 0); line-height: 24.7px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">2.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">考试成绩：<span style=\"undefinedfont-size:12px\">110</span></span><span style=\"font-size: 13px;\">＞<span style=\"color: black;font-size:12px\">托福（网考）成绩≥<span>102,</span>或<span>7.5</span></span>＞</span><span style=\"font-size:12px\"><span style=\"color: black;\">雅思成绩≥<span>7.0</span>；</span></span></span></p><p style=\"margin: 0px 0px 0px 68px; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black;font-family:宋体font-size:12px\">奖励标准：考试费的<span>80%</span>。</span></p><p style=\"margin: 0px 0px 0px 58px; color: rgb(0, 0, 0); line-height: 24.7px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">3.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">考试成绩：<span style=\"undefinedfont-size:12px\">102</span></span><span style=\"font-size: 13px;\">＞<span style=\"color: black;font-size:12px\">托福（网考）成绩≥<span>91,</span>或<span>7.0</span></span>＞</span><span style=\"font-size:12px\"><span style=\"color: black;\">雅思成绩≥<span>6.5</span>；</span></span></span></p><p style=\"margin: 0px 0px 0px 66px; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black;font-family:宋体font-size:12px\">奖励标准：考试费的<span>50%</span>。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black;font-size:12px\">&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">（二）其他语种</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-size: 13px;font-family:宋体font-size:12px\">其他语种的考试成绩参照国家留学基金委公派留学项目的非英语外语水平要求，奖励标准一律为考试费的<span>50%</span>。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">第四条<span>&nbsp;</span><span style=\"color: black;\">奖励方式</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">1.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">凡在<span style=\"font-size:12px\"><span>2013</span>年<span>3</span>月<span>1</span>日</span>以后获得相应托福、雅思等外语水平考试成绩，在成绩有效期内且符合奖励标准的本科生均可报名申请。</span></span></p><p style=\"font: 20px/24.7px 仿宋_GB2312; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">2.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">持考试费正规发票按照资助标准进行实报实销。</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体font-size:12px\">第五条<span>&nbsp;</span><span style=\"color: black;\">申请步骤</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 仿宋_GB2312; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">1.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">每年<span style=\"undefinedfont-size:12px\">3</span>月、<span style=\"undefinedfont-size:12px\">6</span>月、<span style=\"undefinedfont-size:12px\">9</span>月、<span style=\"undefinedfont-size:12px\">12</span>月的<span style=\"undefinedfont-size:12px\">1-10</span>日到国际交流与合作处进行申请。</span></span></p><p style=\"font: 20px/24.7px 仿宋_GB2312; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">2.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">申请时提交《哈尔滨工程大学本科生参加外语水平考试奖励申请表》（见附件），并同时出示成绩单作为佐证材料。</span></span></p><p style=\"font: 20px/24.7px 仿宋_GB2312; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">3.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">每名本科生只能享受<span style=\"undefinedfont-size:12px\">1</span>次奖励政策。</span></span></p><p style=\"font: 20px/24.7px 仿宋_GB2312; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:宋体\"><span style=\"color: black; font-size: 13px;\">4.<span style=\"undefinedfont-size:12px\">&nbsp;</span></span><span style=\"color: black; font-size: 13px;\">享受学校其他同类国（境）外交流资助或奖励的学生，不得申请此项奖励，或从该资助或奖励中扣除本奖励额度。</span></span></p><p style=\"font: 20px/24.7px 仿宋_GB2312; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-size: 13px;font-family:宋体font-size:12px\">第六条 本办法<span style=\"color: black;\">自公布之日起实施，由教务处、国际交流与合作处负责解释。</span></span></p><p></p>', '2015-04-23 14:09:31', '哈尔滨工程大学本科生参加外语水平考试奖励办法', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('54', 'admin', '2015-04-23', 'notice', '依据研究生院发布的“关于2013级硕士学位论文抽查及论文检测工作安排的通知”要求，我院对2013级和部分2012级延迟毕业的硕士研究生学位论文检测及盲审时间安排如下：我院对2013级和部分2012级延迟毕业的硕士研究生学位论文检测及盲审时间安排如下我院对2013级和部分2012级延迟毕业的硕士研究生学位论文检测及盲审时间安排如下', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 20px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">依据研究生院发布的“关于<span style=\"undefinedfont-size: 12px;\">2013</span>级硕士学位论文抽查及论文检测工作安排的通知”要求，我院对<span style=\"undefinedfont-size: 12px;\">2013</span>级和部分<span style=\"undefinedfont-size: 12px;\">2012</span>级延迟毕业的硕士研究生学位论文检测及盲审时间安排如下：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">一、论文检测：</span></strong></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">学院送交检测时间：第一批<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">20</span>日下午<span style=\"undefinedfont-size: 12px;\">15</span>：<span style=\"undefinedfont-size: 12px;\">00</span></span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></span><span style=\"font-family: 宋体; font-size: 13px;\">第二批<span style=\"font-size: 12px;\"><span>4</span>月<span>23</span>日</span>下午<span style=\"undefinedfont-size: 12px;\">15</span>：<span style=\"undefinedfont-size: 12px;\">00</span></span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">送交检测时学生需交以下材料：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">1.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"font-family: 宋体; font-size: 13px;\">装订好的学位论文<span style=\"undefinedfont-size: 12px;\">1</span>本（需在原创性声明和授权使用声明上签字；封皮上须注明学位论文主审人）；<span><br/><span style=\"font-size: 12px;\">2.<span>&nbsp;</span></span></span>学位论文电子版（命名规则“学号<span style=\"undefinedfont-size: 12px;\">+</span>姓名”；所有章节<span style=\"undefinedfont-size: 12px;\">(</span>含封皮、目录、扉页等<span style=\"undefinedfont-size: 12px;\">)</span>须放在同一个<span style=\"undefinedfont-size: 12px;\">word</span>文档中；内容、格式须与装订好的纸质论文完全一致。院系教务办对进行检测的论文纸质装订版本和电子版进行比对，确认一致后在论文封皮上加盖教务办公章。无教务办公章的论文检测不予受理）；<span><br/><span style=\"font-size: 12px;\">3.<span>&nbsp;</span></span></span>硕士学位论文检测承诺书。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 12px;\">&nbsp;</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">学位论文送交检测前需做工作：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">1.</span><span style=\"font-family: 宋体; font-size: 13px;\">学位论文主审人对论文进行审查，填写：《</span><span style=\"font-family: 宋体; font-size: 13px;\">硕士学位论文院内审查意见表</span><span style=\"font-family: 宋体; font-size: 13px;\">》；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">2.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"font-family: 宋体; font-size: 13px;\">学生填写《硕士学位论文答辩申请表》，需附已发表论文复印件或导师已认定达到发表水平但未发表的文章；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">3.</span><span style=\"font-family: 宋体; font-size: 13px;\">指导教师填写《硕士学位论文指导教师审查意见表》。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">以上材料送交检测时一并上交至教务办。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">&nbsp;</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">二、论文外审：</span></strong><span style=\"font-family: 宋体; font-size: 13px;\">学院送交外审时间统一定在<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">28</span>日下午<span style=\"undefinedfont-size: 12px;\">2</span>点钟之前。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">经学位论文学术不端行为检测系统检测合格（重复率低于<span style=\"undefinedfont-size: 12px;\">30%</span>）的抽查硕士学位论文，可准备送交外审，外审需提交以下材料：<span><br/><span style=\"font-size: 12px;\">1.</span></span>装订好的硕士学位论文<span style=\"undefinedfont-size: 12px;\">3</span>本，其中<span style=\"undefinedfont-size: 12px;\">2</span>本匿名，<span style=\"undefinedfont-size: 12px;\">1</span>本非匿名（非匿名论文需签字，封皮上应注明学位论文主审人）；<span><br/><span style=\"font-size: 12px;\">2.</span></span>硕士学位论文检测结果说明<span style=\"undefinedfont-size: 12px;\">1</span>份（需附检测报告单原件）；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">3.</span><span style=\"font-family: 宋体; font-size: 13px;\">硕士学位论文评阅申请书<span style=\"undefinedfont-size: 12px;\">1</span>份；<span><br/><span style=\"font-size: 12px;\">4.</span></span>成绩单<span style=\"undefinedfont-size: 12px;\">1</span>份。</span></p><p></p>', '2015-05-17 15:43:46', '硕士研究生学位论文检测及盲审时间安排', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('55', '教务办', '2015-04-23', 'regulation', '现将2015年“单独考试”硕士研究生复试成绩予以公示，如有异议，请于三个工作日内向人文学院招生工作小组反映，电话：0451-82569513。', '<p>&nbsp;</p><p style=\"background: white; font: 13px/24px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">各位考生：</span></p><p style=\"background: white; font: 13px/24px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体;\"><span style=\"color: black; font-family: ˎ̥; font-size: 13px;\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"color: black; font-size: 13px;\">&nbsp;</span></span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">现将</span><span style=\"color: black; font-family: Calibri; font-size: 12px;\">2015</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">年“单独考试”硕士研究生复试成绩予以公示，如有异议，请于三个工作日内向人文学院招生工作小组反映，电话：</span><span style=\"color: black; font-family: Calibri; font-size: 12px;\">0451-82569513</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">。</span></p><p><span style=\"font: 13px/24.7px 宋体; color: black; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"></span><table style=\"margin: auto auto auto 6px; padding: 0px; width: 671px; border-collapse: collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"671\"><tbody><tr style=\"height: 29px;\"><td style=\"padding: 0px 7px; border: 1px solid windowtext; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; background-color: transparent; border-image: none;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体; font-size: 11px;\">序号</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 104px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"104\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">考生编号</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">姓名</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">专业</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">外语</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">政治</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">专业课<span style=\"color: black;\">1</span></span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">专业课<span style=\"color: black;\">2</span></span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 31px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"31\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">初试总分</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">笔试</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 33px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"33\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">专业面试</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 32px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"32\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">外语面试</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 37px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"37\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">复试总分</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 56px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"56\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">总成绩</span></p></td><td style=\"border-color: windowtext windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 47px; height: 29px; line-height: 24.7px; font-family: 宋体; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"47\"><p style=\"text-align: center;\"><span style=\"font-family: 宋体;\">是否拟录取</span></p></td></tr><tr style=\"height: 29px;\"><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext; padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">1</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 104px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"104\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">102175777130001</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">张婷婷</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">法学</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">42</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">83</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">124</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">124</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 31px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"31\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">373</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">129</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 33px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"33\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">82</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 32px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"32\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">50</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 37px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"37\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">261</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 56px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"56\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">634</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 47px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"47\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">是</span></p></td></tr><tr style=\"height: 29px;\"><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext; padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">2</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 104px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"104\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">102175777130003</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">王云鹏</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">法学</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">37</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">68</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">117</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">121</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 31px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"31\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">343</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">110</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 33px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"33\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">70.3</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 32px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"32\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">48.7</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 37px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"37\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">229</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 56px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"56\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">572</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 47px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"47\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">是</span></p></td></tr><tr style=\"height: 29px;\"><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext; padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">3</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 104px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"104\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">102175777130002</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">靳宇曦</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 45px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"45\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">社会学</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">48</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">68</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">93</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 51px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"51\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">113</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 31px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"31\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">322</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 35px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"35\" nowrap=\"\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">138</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 33px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"33\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">68.5</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 32px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"32\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">45</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 37px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"37\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">251.5</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 56px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"56\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">573.5</span></p></td><td style=\"border-color: rgb(236, 233, 216) windowtext windowtext rgb(236, 233, 216); padding: 0px 7px; width: 47px; height: 29px; line-height: 24.7px; font-family: 宋体; font-size: 13px; border-right-width: 1px; border-bottom-width: 1px; border-right-style: solid; border-bottom-style: solid; background-color: transparent;\" width=\"47\"><p style=\"text-align: center;\"><span style=\"color: black; font-family: 宋体; font-size: 11px;\">是</span></p></td></tr></tbody></table><p>&nbsp;</p><p>&nbsp;</p><p><span style=\"font-family: 宋体; font-size: 16px;\"><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人文社会科学学院</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015年4月9日</p></span></p><p></p><p></p></p>', '2015-04-28 14:07:17', '2015年“单独考试”硕士研究生复试成绩公示', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('56', '综合办', '2015-04-23', 'course', '讲座嘉宾：孟庆龙\r\n讲座时间：2015年4月25日（周六）18：30—20:30 \r\n讲座地点：图书馆学术报告厅\r\n承办单位：人文社会科学学院、马克思主义学院', '<p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><br/></span><span style=\"font-family: 宋体; font-size: 13px;\">嘉宾简介：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 20px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">孟庆龙，中国社会科学院世界历史研究所研究员、所党委委员。中国美国史研究会副理事长、法人代表，中宣部马克思主义理论研究和建设工程重点项目《世界现代史》教材课题组首席专家，国家出版基金评审专家，国家社科基金评审专家。研究领域为美国外交史、世界现代史、国际关系史，近年来主要致力于中印边界问题及其对国际关系影响的研究。现主持国家社科基金重大招标项目《中英美印俄五国中印边界问题解密档案文献整理与研究》，社科院创新工程项目《印度和中国边界问题档案文献整理与研究》。发表多部学术著作（合著）及多篇论文。多次赴英国和印度进行学术访问。</span></p><p></p>', '2015-04-23 14:37:00', '第139期：英国与所谓的西藏“自治”及中印边界问题的缘起', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('57', '综合办', '2015-04-23', 'course', '主  题：谈谈慕课在线教育模式的知识产权问题\r\n主讲人：郑晓欣（2014级法学硕士生）\r\n评议人：张冬、陈福胜、陈斌\r\n时  间：2015年4月24日下午2：00-4：00\r\n地  点：41号楼403\r\n欢迎参加。', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">背景简介</span></strong><span style=\"font-family: 宋体; font-size: 13px;\">：作为在线教育的新生模式<span style=\"undefinedfont-size:12px\">&amp;shy;----</span>慕课（<span style=\"undefinedfont-size:12px\">MOOCs</span>），正带动国内外的开放教育事业进入一个全新的阶段，它有望改善传统教育模式，同时也会引发知识产权保护的诸多新问题。本次沙龙拟针对“慕课热的冷思考”、“科研成果的数字化保护”、“互联网<span style=\"undefinedfont-size:12px\">+</span>教育”等相关议题进行切磋，以期共同关注知识产权运营视角下的在线教育产业之健康发展。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"font-family: 宋体; font-size: 13px;\">互动式研讨的问题：</span></strong></p><p style=\"font: 13px/24.7px 宋体; margin: 0px 0px 0px 24px; color: rgb(0, 0, 0); letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"undefinedfont-size:12px\">1．</span><span style=\"font-size:10px\"><span new=\"\" times=\"\"><span>&nbsp;</span></span></span></span><span style=\"font-family: 宋体; font-size: 13px;\">慕课教育模式是否可成为我国高校教改的一种新模式？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">2.<span style=\"font-size:12px\">&nbsp;<span>&nbsp;</span></span></span><span style=\"font-family: 宋体; font-size: 13px;\">数字环境下科研成果推广的知识产权保护风险与控制？</span></p><p></p>', '2015-04-23 14:14:38', '2015年第2期知识产权法学术沙龙预告（总第10期）', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('58', '吴国邦', '2015-04-23', 'course', '读韦伯的《法律社会学》——聊斋书社第43期总结', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">4</span><span style=\"font-family: 宋体; font-size: 13px;\">月<span style=\"undefinedfont-size:12px\">3</span>日下午四点，人文学院社会学系第<span style=\"undefinedfont-size:12px\">43</span>期读书会如期开展。本次读书会的阅读书目是韦伯的《法律社会学》。主持人是张翠梅老师，主报告人吴国邦，主评论人为薛金城和张国锋。杨国庆、陈福胜、张翼飞、张辉、李雪等老师以及部分本科、研究生同学参与了讨论。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">本次读书会首先由法学专业<span style=\"undefinedfont-size:12px\">2012</span>级本科生吴国邦同学作主报告。报告由韦伯基于“法律社会学”的问题意识、韦伯《法律社会学》的方法论意涵和法律的现代性与法律的理性化三部分构成。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">问题意识开篇，吴国邦同学对法律社会学在韦伯诸多研究领域中的重要地位作了讲解，并以韦伯针对“法”本体论问题所建立的“纯粹法学”阵营及其对“理性化”与“现代性”间的关系认识彰显其问题意识。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">报告的第二部分介绍了韦伯法律社会学的方法论基础及其具体运用。针对韦伯法律社会学的方法论基础，吴国邦同学重点就韦伯价值实证化的运作机理、因果分析的一般思路及理想类型的构建模式三部分作了阐述。针对韦伯法律社会学方法论的具体运用，吴国邦同学则经由韦伯对法的本体论的回答、理想类型语境下的法制类型分析及不同法律制度的历史文化分析三个部分作了说明。吴国邦同学认为，当法律制度非理性时，法律技术可分为形式非理性的法律技术手段和实质非理性的法律技术手段，两者呈现互斥关系；而当法律制度理性时，法律技术又可分为形式理性的法律技术手段与实质理性的法律技术手段，两者间呈现互补关系。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">报告的最后，吴国邦就法律与现代性之间的关系、法律的理性化过程作了重点说明。首先，吴国邦同学以吉登斯和刘晓枫的现代化理论分析入手阐释现代性，并将法律与现代性间的关系共同体归纳为法律理性化的动力系统。之后，吴国邦同学就法律理性化的发展过程作了深入讲解。他认为，法律的理性化发展经历了由“形式非理性的法律与法律思想”到“实质非理性的法律与法律思想”、再到“实质理性的法律与法律思想”、最终发展成为“形式理性的法律与法律思想”的三阶段过程。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">主报告结束后，由社会学系研究生薛金成同学进行评论。评论亦采用了吉登斯关于现代性的定义，并明确法律之所以可能达成现代意义上的那种特殊专门的、法学上的提升纯化，便因为其具有形式的性格。随后，薛金成同学采用韦伯原文论述阐释形式理性法的构造，并将其运作模式形象比喻为“<span style=\"undefinedfont-size:12px\">I/O</span>”式的法律机器。在评论的第三部分，薛金成同学就主报告所提出的形塑法律理性化的动力来源作了补充，将教育因素纳入动力机制范畴并于韦伯原本寻求佐证。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">薛金成同学后由社会学系研究生张国锋同学进行评论。张国锋首先就《法律社会学》一书的逻辑脉络及理论内容进行了梳理，后又对形式理性与实质公道之间的张力进行了讨论，并以列联形式还原了韦伯意义上“形式非理性法”“实质非理性法”“实质理性法”“形式理性法”四种法律类型的本真意涵。在评论的最后，张国锋同学就外在表征的形式主义与逻辑抽象的形式主义与现代法系渊源及其法律思想、裁判规则、法制体系建构间的对应关系作了归纳。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">最后，由主持人张翠梅老师做评论和总结。首先，张翠梅老师就韦伯《法律社会学》书中的核心概念进行对比式阐发，并点明了法律理性化的三个特征：法律的通则化、法律的体系化和法律的形式化。随后，张翠梅老师就吴国邦同学所提出的“纯粹法学”作了质疑，即此处的“纯粹法学”与凯尔森的“纯粹法学”是否为同一，进而引入了单一判定标准与法律多元主义间的辨析。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">进入方法论问题的探讨，张翠梅老师首先对吴国邦同学所提出的“价值中立原则消解了实然与应然之间的对立格局”这一观点作出质疑，张翠梅老师认为，价值实证化并非旨在消解对立，而是将二者对立暂作搁置的策略。其次，张翠梅老师并不赞同吴国邦同学“形式非理性法律技术与实质非理性法律技术是互斥的，形式理性法律技术与实质理性法律技术是互补的”的论述，而是由“前者仅仅是不相干，共同点是非理性；后者则是既互补，又相斥的关系”作以反驳。最后，张翠梅老师就吴国邦同学“因果分析模型是一种近于经济学范式的方法论”这一观点进行发问，并由张翼飞老师解释经济学上的可计算性与因果分析的可预计性间的差异解决此难。</span></p><p><span style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 读书会最后，张翠梅老师以阐发形式理性与实质公道间的张力关系作总结发言：韦伯虽然认为逻辑形式理性法是一种典型意义上的形式理性法，但他同时也认识到以遵循先例、注重形式化程序为特征的英国普通法也是一种形式理性法。张翠梅老师指出，不同社会对不同法律制度安排方式的选择主要取决于该社会所特有的支撑法律正当性与有效性的资源，从而依此标准最大程度还原了韦伯界分法律类型并进行法域嵌套的原初样态。</span></p><p></p>', '2015-04-23 14:15:45', '读韦伯的《法律社会学》——聊斋书社第43期总结', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('59', '赵鑫', '2015-04-23', 'student', '人文学院传媒中心举行副部级以上会议', '<p></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4月22日中午12时50分，人文学院传媒中心于21B大厅举行副部级以上会议。人文学院传媒中心部长张安琪，传媒中心副部长刘畅、杨露等人参加此次会议。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042223191865.jpg\" border=\"0\" hspace=\"0\"/></p><p><span style=\"font: 10pt/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">本次会议旨在总结传媒中心本学期工作，并对换届前的下一步工作做出规划，加强副部工作互助协作机制的运行，提高工作效率，促进传媒中心自身建设，同时调动传媒中心成员的工作积极性和热情</span><br style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042223191832.jpg\" border=\"0\" hspace=\"0\"/></p><p><span style=\"font: 10pt/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span class=\"Apple-converted-space\" style=\"undefinedfont-size: 12px;\"></span>此次会议分为三个部分。首先，张安琪发表讲话，她对自接管传媒中心以来的工作整体提出表扬，并对一些不足的地方提出指导意见，为日后工作做准备。其次，张安琪安排下一个阶段传媒中心负责的活动，指出传媒中心新闻写作规范要继续加强，并对2014级学生进行新闻拍摄和写作技巧的培训人员做出安排。最后她强调到，要“站好最后一班岗”。在即将到来的学生会换届之前要做好每一件工作，争取顺利交接。</span><br style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width=\"600\" height=\"400\" style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042223191869.jpg\" border=\"0\" hspace=\"0\"/></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\"><span class=\"Apple-converted-space\" style=\"undefinedfont-size: 12px;\"></span>此次会议引导传媒中心成员树立强烈的责任感，提高自身的组织策划能力，增进各副部的沟通与交流，并对即将到来的换届工作提前打下良好基础。</span></p>', '2015-04-23 14:25:12', '人文学院传媒中心举行副部级以上会议', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('60', '张琳', '2015-04-23', 'student', '哈尔滨工程大学春季“跳绳”比赛成功举行', '<p>&nbsp;<span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">4月19日上午9时</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">春季校园“跳绳”比赛在军工操场东侧篮球场成功举办</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">。</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">该比赛由2014级学生</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">以</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">院系</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">为单位</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">组队参加，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">旨在增强学生体质，<span style=\"font-family: 宋体; font-size: 10pt;\">传递体育精神</span><span style=\"font-family: 宋体; font-size: 10pt;\">。<br class=\"Apple-interchange-newline\"/>&nbsp;&nbsp;&nbsp;&nbsp; <img style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042019362612.jpg\" border=\"0\" hspace=\"0\"/></span></span></p><p><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\"><br/></span></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; margin-right: 0px; margin-left: 0px; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">本次跳绳比赛共</span><span style=\"font-family: 宋体; font-size: 13px;\">有</span><span style=\"font-family: 宋体; font-size: 13px;\">两种类型：个人跳和团体跳。按照比赛顺序，首先进行的是个人移动跳，</span><span style=\"font-family: 宋体; font-size: 13px;\">其次</span><span style=\"font-family: 宋体; font-size: 13px;\">是10人</span><span style=\"font-family: 宋体; font-size: 13px;\">团体</span><span style=\"font-family: 宋体; font-size: 13px;\">跳。两种比赛类型的技巧不尽相同，其中个人移动跳讲究的是速度和灵敏度，而10人团体跳讲究的则是团结</span><span style=\"font-family: 宋体; font-size: 13px;\">与</span><span style=\"font-family: 宋体; font-size: 13px;\">配合。参赛队员按照各自院系组队参加比赛，其中人文学院第二个</span><span style=\"font-family: 宋体; font-size: 13px;\">进行</span><span style=\"font-family: 宋体; font-size: 13px;\">比赛</span>。<span style=\"font-family: 宋体; font-size: 13px;\"><br/></span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; <img onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042019362668.jpg\" border=\"0\" hspace=\"0\"/></p><p><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\"><br/></span></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; margin-right: 0px; margin-left: 0px; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">随着裁判员一声令下，只见</span><span style=\"font-family: 宋体; font-size: 13px;\">甩绳同学</span><span style=\"font-family: 宋体; font-size: 13px;\">飞快地挥动着绳子，参赛队员有条不紊地</span><span style=\"font-family: 宋体; font-size: 13px;\">以圆圈跑位的形式</span><span style=\"font-family: 宋体; font-size: 13px;\">跳着</span><span style=\"font-family: 宋体; font-size: 13px;\">。</span><span style=\"font-family: 宋体; font-size: 13px;\">随着甩绳极具节奏感的“啪”“啪”声，时间在迅速流逝，参赛选手始终保持着开始的节奏。</span><span style=\"font-family: 宋体; font-size: 13px;\">比赛激烈地进行着，选手们竭尽全力，争分夺秒，</span><span style=\"font-family: 宋体; font-size: 13px;\">力图</span><span style=\"font-family: 宋体; font-size: 13px;\">以最佳的表现为各自院系取得</span><span style=\"font-family: 宋体; font-size: 13px;\">最优异</span><span style=\"font-family: 宋体; font-size: 13px;\">的成绩。</span><br/><br/></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; <img onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015042019362684.jpg\" border=\"0\" hspace=\"0\"/></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">此次校园“跳绳”比赛加强了同学之间的交流</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">提高</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">了同学们的集体荣誉感和集体凝聚力</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">丰富了</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">同学们的课余</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">文化生活</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">为我们学校的校园文化增添了新的内容</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">。</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">此次活动有利于</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">增强学生的身体素质，让同学们</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">充分认识到集体活动的乐趣</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">，</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">同时也</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">延续了“我运动，我快乐”的体育精神，推</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">动</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">了我校体育</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">文化良好氛围的进一步形成</span><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">。</span></p><p><span style=\"font: 10pt/24.7px 宋体; text-align: justify; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 10pt;\"><br/></span></span></p>', '2015-04-23 14:27:26', '哈尔滨工程大学春季“跳绳”比赛成功举行', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('61', '李颖超', '2015-04-23', 'student', '人文学院举办启航杯第二次培训', '<p>&nbsp;</p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">4</span><span style=\"font-family: 宋体; font-size: 13px;\">月<span style=\"undefinedfont-size:12px\">16</span>日下午<span style=\"undefinedfont-size:12px\">4</span>时，人文学院于<span style=\"undefinedfont-size:12px\">11</span>号楼<span style=\"undefinedfont-size:12px\">112</span>教室举办启航杯第二次培训。此次培训由人文学院科协组织，刑法学老师陈斌担任主讲，科创导航员朱梦云、张雪、耿家臻、周莹担任嘉宾，人文学院全体大一学生参加培训。<br/></span><br/></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623291260.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623291260.jpg\" border=\"0\"/></a></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><br/></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">此次培训会旨在为大一学生介绍启航杯，鼓励大一学生积极参加启航杯，在比赛前丰富同学对于论文写作的相关知识，指导同学们选择参赛课题，规范论文写作格式，帮助同学们增加论文写作经验，在启航杯中取得更好的成绩。<br/></span><br/></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623293857.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623293857.jpg\" border=\"0\"/></a></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><br/></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">首先，陈斌以《婚内强奸的刑法分析》这一题目为例展开对选题的介绍。他通过提问同学的方式，了解同学们对这一选题的看法。接着，他分析课题重点，指出应先解释其中法律名词的概念，如<span style=\"undefinedfont-size:12px\">“</span>婚内强奸<span style=\"undefinedfont-size:12px\">”</span>的概念，并根据选题意义、国内外的研究现状、概念分析及问题限定、各国法律、各大法学派对该课题的研究、现有法律的不足之处和拟采用的研究方法等展开论文写作。最后他强调，研究前需要选择具体而明确的课题，以免论文无从下笔或内容过于空泛。<br/></span><br/></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623300962.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041623300962.jpg\" border=\"0\"/></a></span></p><p style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span><span style=\"font: 13.33px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-transform: none; text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">通过此次培训会，同学们表示对论文写作有了更全面的认识，对于参加启航杯有了更强的信心。</span></span></p><p></p>', '2015-04-23 14:28:46', '人文学院举办启航杯第二次培训', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('62', '袁媛', '2015-04-23', 'student', '人文学院举办“启航杯”宣讲会暨第一次“启航杯”培训', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family:;\" new=\"\" times=\"\"><span style=\"undefinedfont-size:12px\">&nbsp;</span>4</span><span style=\"font-family: 宋体; font-size: 13px;\">月</span><span style=\"font-family:;\" new=\"\" times=\"\">13</span><span style=\"font-family: 宋体; font-size: 13px;\">日晚</span><span style=\"font-family:;\" new=\"\" times=\"\">6</span><span style=\"font-family: 宋体; font-size: 13px;\">时</span><span style=\"font-family:;\" new=\"\" times=\"\">30</span><span style=\"font-family: 宋体; font-size: 13px;\">分，由校团委、校学生科技协会主办，人文学院承办的“启航杯”宣讲会暨第一次“启航杯”培训于</span><span style=\"font-family:;\" new=\"\" times=\"\">11</span><span style=\"font-family: 宋体; font-size: 13px;\">号楼</span><span style=\"font-family:;\" new=\"\" times=\"\">122</span><span style=\"font-family: 宋体; font-size: 13px;\">教室和</span><span style=\"font-family:;\" new=\"\" times=\"\">112</span><span style=\"font-family: 宋体; font-size: 13px;\">教室召开。本次宣讲会由科创导航员耿家臻、朱梦云、周莹、张雪担任主讲人，科协副部李金霄主持，全体大一同学参加会议。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422453877.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422453877.jpg\" border=\"0\"/><span style=\"font-size:12px\">&nbsp;</span></a></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\">&nbsp;&nbsp;&nbsp;&nbsp; 宣讲会旨在向大一同学介绍“启航杯”相关参赛事项，让他们了解具体的比赛流程和相关专业知识，以便根据自己的兴趣以及专业方向选择适合课题进行研究与讨论，为今后参加比赛撰写调研报告或论文奠定基础。同时激发同学创新意识，鼓励学生深入社会，更深一步挖掘社会问题或心理学问题，从实践中得到真知。</span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422464831.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422464831.jpg\" border=\"0\"/><span style=\"font-size:12px\">&nbsp;</span></a></span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family:;font-size:12px\" new=\"\" times=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></span><span style=\"font-family: 宋体; font-size: 13px;\">会议伊始，李金霄简单介绍“启航杯”比赛方案、要求、评分细则、奖励方式以及报名方式。并详细讲解了比赛作品分为论文和调研报告形式，以及由八位指导老师指定了的论文写作类和调查报告类的四十个题目。接着，分别由四位科创导航员进行调研报告和论文的具体指导。针对调研报告的撰写耿家臻尤其强调选题以及问卷设计的重要，并对其进行深入讲解。说明调查的重点在于搞清楚调查问题的现状，明确调查目的等。最后，李金霄进行会议总结，并布置相关作业。</span></span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422474560.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041422474560.jpg\" border=\"0\"/><span style=\"font-size:12px\">&nbsp;</span></a></span></span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 0px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span style=\"font-family: 宋体; font-size: 13px;\">&nbsp;&nbsp;&nbsp; 据悉，</span><span style=\"font-family:;\" new=\"\" times=\"\">4</span><span style=\"font-family: 宋体; font-size: 13px;\">月</span><span style=\"font-family:;\" new=\"\" times=\"\">17</span><span style=\"font-family: 宋体; font-size: 13px;\">日晚将进行第二次“启航杯”培训。</span></span></span></span></p><p></p>', '2015-04-23 14:29:41', '人文学院举办“启航杯”宣讲会暨第一次“启航杯”培训', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('63', '宣传中心', '2015-04-23', 'notice', '【时文】凝聚当代中国的价值公约数——论培育和践行社会主义核心价值观', '<p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（一）有些问题，越细想越觉得回味悠长。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">有人好动，有人好静。有人生性温和，有人脾气火爆。有人喜爱热闹，有人享受独处。有人烟酒不沾，有人无肉不欢……这个世界没有两片完全相同的树叶，人与人更是千差万别。是什么将这些个性不同的“原子”凝聚成有序的整体，拥而不挤？又是什么让你的思绪贯穿岁月，与不曾谋面的古人心意相通？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">价值观的力量，比生存的需要更崇高，比血浓于水的亲情更博大，它为人生赋值、为社会定规、给国家赋形。有什么样的核心价值观，就有什么样的国家、社会和公民，就有什么样的取向、路径和行动。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">也门纷飞的炮火中，中国外交官冒着危险奔波协调，中国海军舰艇编队穿梭在亚丁湾海域，将<span style=\"undefinedfont-size: 12px;\">613</span>名中国公民、<span style=\"undefinedfont-size: 12px;\">279</span>名外国公民安全撤离。“我们牵挂着每一个人”，那一刻中国的宣示，诠释了一个国家的价值底色。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">户籍制度改革试水、司法制度改革破冰、公共文化服务体系建设加快、乡村教师支持计划推进……两年多来，国家出台一系列改革举措，为的是增进人们的安全感、归属感和获得感。让每个人共享改革发展成果，折射着一个社会的价值取向。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“感动中国”人物刻画当代中国的价值年轮。“一句嘱托，许下了一生”的于敏，化名“炎黄”行善<span style=\"undefinedfont-size: 12px;\">27</span>年的张纪清，守望<span style=\"undefinedfont-size: 12px;\">39</span>年照顾困难邻居的郑州陇海大院爱心群体……人与人之间心心相印，让“共同体意识”渐渐回归。从对待自己到对待他人，体现了每个公民的价值选择。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这些新闻之所以让人有所感、有所思，正是因为它们直指我们心中的价值命题：什么样的中国，才是我们引以为豪的伟大国家？什么样的社会，才是令人向往的理想家园？什么样的人生，才有内心的安宁和恒久的幸福？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“倡导富强、民主、文明、和谐，倡导自由、平等、公正、法治，倡导爱国、敬业、诚信、友善，积极培育和践行社会主义核心价值观。”党的十八大勾绘出国家的价值内核、社会的共同理想、亿万人民的精神家园，成为当代中国精神世界的“价值公约数”。近日，中央宣传部、中央文明办印发《培育和践行社会主义核心价值观行动方案》，以<span style=\"undefinedfont-size: 12px;\">15</span>项重点活动举措，架起核心价值内化于心、外化于行、教化于众的桥梁。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">从倡导到践行，从理念到行动，十三亿中国人将在十二个词、二十四字划定的价值航标指引下，书写时代交给我们的考卷。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（二）历史从哪里开始，思想进程也应当从哪里开始。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这是一场激烈的竞争。“柏林墙倒塌之前，已被西方的电视和电影凿得千疮百孔”，提出“软实力”概念的学者曾如此描述价值观的较量。近年来，西亚、北非、中亚，一些国家动荡的背后，也正是意识形态的交锋。一个真正的大国，不是靠卖产品给世界就可以的，它更需要在思想理念、价值观念上，拥有影响这个世界的力量。面对复杂严峻的国际竞争，我们应该怎样锻造文化软实力，确立自己的“国家哲学”？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这是一个尴尬的现实。“发展的列车匆匆驶过精神的站台，现实的变化把心灵的地图抛在身外”，诗化的语言，道出令人痛心的“价值失落”。舌尖上的安全屡屡失守，腐败蔓延侵蚀社会信任，甚至连老人摔倒扶不扶都成了问题。辉煌成就与成堆问题共存、社会进步与社会弊病并生、社会和谐与精神失衡同在，我们需要确立怎样的价值航向，让亿万人民心往一处想、力往一处使？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这是一种纠结的处境。我们这个时代，既有郭明义的浓浓爱心，也有炫富女的空空灵魂；既有支教毕业生扎根基层的奉献精神，也有“宁在宝马里哭，不在自行车上笑”的价值错乱。生活的日渐富裕，并未自动引来幸福的敲门，却让一些人感到精神的空虚、思想的迷茫。面对消费主义、拜金主义、物质主义的冲击，我们该如何解开“口袋满当当、脑袋空荡荡”的困惑，在改造物质世界的激昂乐章中唱响精神之歌的主旋律？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">每个时代都有每个时代的精神，每个时代都有每个时代的价值。在当代中国，我们的民族、我们的国家应该坚守什么样的核心价值观？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（三）从“引导人们树立正确的世界观、人生观、价值观”，到“物质贫乏不是社会主义，精神空虚也不是社会主义”，精神文明建设、核心价值锻造，一直是我们党执政的重要内容、社会主义建设的根本取向。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">党的十八大以来，最大气磅礴的书写，源于精神；最令人振奋的变化，始自人心。作风建设与反腐倡廉双管齐下，深化改革与厉行法治两翼齐飞，不仅在现实中讲述了又一个“春天的故事”，更在精神上催动了又一次崭新的觉醒。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">从舆论对强力反腐的一致点赞，到三个国家纪念日的全民参与，国家的价值导航更加明确；从对暴恐活动同仇敌忾的打击，到对呼格案全面深刻的思考，社会的共识引领更加有力；从坚持公立医院公益性定位，到名牌高校降分特招农村娃，深化改革的各项举措，给予梦想更大的空间，也让个人的信仰驱动更加强劲。新的社会气质正在涵养，新的时代精神正在呈现，中国的价值重整迎来了一个关键性拐点。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">在中央政治局集体学习时强调“把培育和弘扬社会主义核心价值观作为凝魂聚气、强基固本的基础工程”，在北京大学提出青年要在勤学、修德、明辨、笃实上下功夫，在上海考察工作时强调“贵在坚持知行合一、坚持行胜于言”，在北京民族小学寄语孩子们记住要求、心有榜样、从小做起……习近平总书记把社会主义核心价值观的培育和践行，提升到了实现“两个一百年”奋斗目标和中华民族伟大复兴中国梦的高度，强调中国梦的一个重要内容是“中国人民和中华民族的价值体认和价值追求”。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">人生需要信仰驱动，社会需要共识引领，国家需要价值导航。二十四字社会主义核心价值观，勾画的正是人生奋斗的梦想之舵、中华民族的精神之钙、当代中国的兴国之魂。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（四）富强、民主、文明、和谐是国家层面的价值目标，自由、平等、公正、法治是社会层面的价值取向，爱国、敬业、诚信、友善是公民层面的价值要求。这个概括，实际上回答了我们要建设什么样的国家、建设什么样的社会、培育什么样的公民的重大问题。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">富强好比国之脊梁，挺起国家的腰杆，护卫民众的福祉。旧中国积贫积弱，备受列强欺凌，实现国家富强和人民富裕，成为近代以来中华儿女最强烈、最执着的愿望追求。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的富强，是人民共同富裕和国家繁荣强盛的有机统一，是和平发展与共享共赢的崭新模式。“贫穷不是社会主义”“两极分化也不是社会主义”，社会主义的优越性不仅体现在最终能够创造比资本主义更发达的生产力，更体现在让发展成果更多更公平地惠及全体人民。“中国现在不称霸，将来强盛起来也永远不称霸”。我们追求的富强，不崇尚弱肉强食的丛林法则，不认同“国强必霸”的陈旧逻辑，而是希望与世界各国和睦相处、和谐发展，共谋和平、共享和平。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">民主如同国之经络，疏通国家的肌体，协调政治的机能。作为一种政治实践、价值理念，人民民主是社会主义的生命，没有民主就没有社会主义，就没有社会主义现代化。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的民主，是真实的民主，没有门槛，不受财产、地位、民族、性别、宗教等因素限制，使每个人都享有平等的政治权利；是广泛的民主，绝不以牺牲多数人利益为代价来保护少数人的利益，同时又尊重和照顾少数人，充分反映和协调各方面的意愿和利益；是高效的民主，既真切全面地反映人民意愿，又致力于尽快形成统一意志、统一行动，以解决实际问题；是丰富的民主，不仅有选举民主，还有协商民主、基层民主，保证人民依法实行民主选举、民主决策、民主管理、民主监督。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">文明就像国之大厦，凝结民族的追求，铸就国家的强盛。“观乎人文，以化成天下”，正是薪火相传的文明火种，孕育了泱泱中华五千年文明古国。“国家是文明社会的概括”，文明折射国家发展的境界、社会进步的状态。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的文明，是以道路选择、理论指引、制度建构，追求全方位的发展与进步。坚持以人为本的核心理念，让物质文明、政治文明、精神文明、生态文明和制度文明有机统一；坚持开放包容的创新姿态，将古今中外一切优秀文明成果兼收并蓄。既不推崇“西方文明至上论”，也不搞“历史虚无主义”；既不妄自尊大，也不妄自菲薄。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">和谐好比国之气血，为社会补给能量，给国家增强活力。天人合一、协和万邦、和而不同，和谐蕴含了中国人的生存智慧，体现着中国人的精神基因，也昭示着中国人的社会理想。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的和谐，是人与人、人与社会、人与自然的有机统一。和谐的中国，是民主与法治相统一、公平与效率相统一、活力与秩序相统一、人与自然相统一的社会主义国家。和谐的中国，秉持世界持久和平的理想，心系人类共同繁荣的命运，担当永续发展的历史责任。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（五）如果说现代国家作为一种政治存在，更多以整体、宏观的形式体现其意志，那么社会便是以更为“民间”的方式结构着亿万民众、用众人“约定”的价值荫庇每一个人。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">自由是社会活力之源，也是社会主义的价值理想。人的自由全面发展，是社会主义区别于其他社会形态的本质属性。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的自由，不是少数人的、形式上的、虚伪的自由，而是绝大多数人的、实质上的、真实的自由；不是凌驾于社会利益之上的、绝对的个人自由，而是受到法律和规范制约、权利和义务对等的自由；不是超越发展阶段和现实承受能力的自由，而是与一定的经济社会发展条件相适应的自由。社会主义的自由，不只是追求物质生活的改善，更重要的是保证人民充分享有发展自我、实现自我的机会，使每个人都能人生出彩、梦想成真。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">平等是社会和谐稳定的压舱石，它标注了调整社会关系的基本尺度。“王侯将相，宁有种乎”？在中国这样一个曾经有过几千年封建专制制度的社会，对平等的渴望和呼唤，是人心深处最为激越的力量。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的平等，是兼顾效率与公平的平等，不是“不患寡而患不均”的绝对平均主义；是实实在在的平等，不是落在法律字面上的“形式上的平等”。是要让人人都能公平行使社会权利、履行社会义务、分享社会成果，政治上平等参与、经济上共同富裕、文化上共建共享，同祖国和时代一起成长进步。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">公正是捍卫权利的天平，它是衡量社会发展的价值准绳。古往今来，人类追求的幸福生活，只能建立在公平正义的基础之上。社会主义正是在资本主义不公正的废墟上诞生的，公正作为社会主义社会的内在要求，集中体现着社会主义的制度优越性和道义感召力。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的公正，不只是强调机会平等和程序正义的公正，而是兼顾结果正义，体现在社会生活各个领域、各个层次、各个方面的公正。社会主义社会的各项制度安排，是要将最广大人民的根本利益作为出发点和落脚点，在社会发展过程中尽最大努力实现人民的愿望、满足人民的需要、维护人民的根本利益。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">法治是社会保障之盾，也是现代政治文明的核心。只有当法治成为治国理政的基本方式，自由、平等、公正才会有安全的避风港。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的法治，不是片面强调司法独立、推行三权分立，更不是对资本主义法治理念的照抄照搬，而是立足中国的社会现实和文化传统，坚持党的领导、人民当家作主、依法治国的有机统一。社会主义法治，不是广场上的雕塑、橱窗里的花瓶，而是运用人民赋予的权力，体现人民意志、保护人民权益，让法治成为国家长治久安、社会安定有序、人民安居乐业的坚强柱石。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（六）公民作为社会和国家的细胞，一言一行，汇聚成大千世界的经纬；爱憎取舍，勾勒出大地山川的色调。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">爱国是民族精神的核心，它建立起公民与祖国最牢固的情感纽带。“谁不属于自己的祖国，那么他也就不属于人类。”中华民族有着深厚的爱国主义传统。对祖国的忠诚和热爱，是每一个公民的起码道德，也是中华民族最深沉的文化基因。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的爱国，就是把个人价值的实现同推动国家的繁荣发展对接，把人生意义的提升同增进最广大人民的福祉相连，不断加深对祖国悠久历史、灿烂文化的认同，不断增强做中国人的骨气和底气；就是让个人梦想与国家梦想紧密结合，把我们的国家建设好，把我们的民族发展好。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">敬业是职业道德的灵魂，它为个人安身立命奠定基础，为社会发展进步注入活力。正是依靠敬业奉献，中华民族创造了灿烂的文明。敬业乐业的民族，必定是令人肃然起敬的民族；缺乏敬业精神的社会，难免被人诟病和轻蔑。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的敬业，就是要增强事业心和责任感，追求崇高的职业理想，激发积极进取的奋斗热情，秉持认真负责的职业态度，锻造严谨细致的工作作风；就是要让敬业成为实现梦想的动力之源，以那么一股子干劲、拼劲、闯劲，续写中国奇迹，靠辛勤劳动、诚实劳动、创造性劳动，开创美好未来。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">诚信是公民道德的基石，既是做人做事的道德底线，也是社会运行的基本条件。现代社会不仅是物质丰裕的社会，也应是诚信有序的社会；市场经济不仅是法治经济，更应是信用经济。“人而无信，不知其可也”。失去诚信，个人就会失去立身之本，社会就会偏离运行之轨。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的诚信，就是要以诚待人、以信取人，说老实话、办老实事、做老实人。激发真诚的人格力量，以个人的遵信守诺，构建言行一致、诚信有序的社会；激活宝贵的无形资产，以良好的信用关系，营造“守信光荣、失信可耻”的风尚，增强社会的凝聚力和向心力。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">友善，是公民德行的阳光，它为人际关系注入正能量，为社会和谐提供润滑剂。现代社会与传统社会的显著区别，就是人与人的交往突破了血缘地域的限制，构建起一个“陌生人社会”。在这样的社会里，“人人为我、我为人人”的亲善、互助、友爱变得尤为珍贵。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我们倡导的友善，是爱心的外化，是与人为善、与物为善。善待亲人以构建和谐家庭关系，善待他人以构建和谐人际关系，善待万物以形成和谐自然生态。“己所不欲，勿施于人”“四海之内皆兄弟”，广聚爱心，乐善好施，让世界充满爱，是友善的理想境界。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">富强、民主、文明、和谐，自由、平等、公正、法治，爱国、敬业、诚信、友善——三个倡导，把涉及国家、社会、公民的价值要求融为一体，成为我们时代价值的最大公约数。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（七）这个公约数，有着几千年中华文化血脉的滋养。“苟利国家生死以”“留取丹心照汗青”，浓厚的爱国情感，昭示忠诚坚贞的理想信念；“天行健，君子以自强不息”“苟日新，日日新，又日新”，坚韧的意志品质，写照自强不息的进取精神；“仰不愧天、俯不愧人、内不愧心”，坦荡的情怀胸襟，彰显追求高尚的精神境界。不了解博大精深的中华传统文化，看不到跨越时空的精神传承，就无法把握社会主义核心价值观最深厚的文化基因。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这个公约数，有着上百年不懈追求的答案。突遇“三千年未有之大变局”，百余年的上下求索必然伴随精神的重塑。黄花岗下，“碧血横飞，浩气四塞”；五四运动，“德先生”“赛先生”启蒙中国；抗日救亡，“四万万人齐蹈厉，同心同德一戎衣”……多少仁人志士，呼唤的是国家富强、民族独立，期待的是人民自由、社会团结。看不到这样的沉沦与奋进、屈辱与反抗，就无法理解社会主义核心价值观最深沉的精神追求。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">这个公约数，有着<span style=\"undefinedfont-size: 12px;\">90</span>多年社会主义探索实践的结论。开天辟地，上海石库门点燃信仰的燎原火种；惊天动地，长征这一“人类历史上最伟大的进军”书写意志的豪迈史诗；艰苦奋斗，延安新风尚刻画共产党人的精神追求；解放思想，改革新征程书写当代中国的不朽传奇……看不到这样的追求和探索、苦难与辉煌，就无法理解萌芽于德国的共产主义思想种子，为何会在中国人的心灵中生根发芽，茁壮成长。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">恰似百川归海，一个时代的精神中，有着昨天的思考、今天的探求和明天的希冀。人类文明史上，可能再没有哪个国家像近代的中国一样，经历如此巨大的心灵冲击与精神变革；也再没有哪个民族像中华民族一样，在不断的挫折和磨砺中，锻造属于自己的价值理念与精神图景。在迈向民族复兴的伟大征程上，一个答案日渐清晰：社会主义核心价值观，标定了我们国家与民族的未来航向。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（八）然而，价值观建设树立的是理想信念，界定的是良莠是非，关涉的是世道人心，有其自身的特殊规律，不可能一蹴而就。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">历史地看，任何一种主流价值观念的确立，都是一个长期的过程。我们提出社会主义核心价值观的时间还不长，对社会主义核心价值观的所有描述，强调的都是“心向往之”的价值取向。实现“富强、民主、文明、和谐”的国家价值，还需要我们沿着经济、政治、文化、社会、生态五个向度孜孜以求、不懈奋斗；体现“自由、平等、公正、法治”的社会价值，需要我们针对社会基本原则、根本规则，推动与时俱进的制度设计和价值导引；践行“爱国、敬业、诚信、友善”的个人价值，需要我们不断校正人生坐标、付诸实际行动。在协调推进“四个全面”的过程中，核心价值观的培育与践行，需要贯穿始终。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">与改革前<span style=\"undefinedfont-size: 12px;\">30</span>年的物质重建一样，在“顶层设计”划定之后，精神的重塑需要亿万群众的参与。这难以按“计划”推进，难以靠“指令”完成，也无法靠“市场”实现，必须依靠从上到下的倡导、从点到面的践行。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">道不可坐论，德不能空谈。不在培育和践行之间建立可靠的联系，“三个倡导”很可能变成浮泛的口号。如果要发展不要环境、讲政绩不讲民生，公众会怎么理解富强文明？如果办事情都得找关系、打官司也要走后门，老百姓又从何感受平等公正？夯实“三个倡导”的社会基础，必须关切人们的利益诉求和价值愿望。只有把核心价值落实到经济发展和社会治理中，才能形成有利于弘扬核心价值观的政策导向、法治环境和体制机制，不断增强核心价值观的向心力和感召力。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">个人层面的价值实践，是核心价值观落地生根的前提。当我们扼腕于社会转型期的“人心不古”、喟叹市场经济对精神世界的巨大冲击之时，别忘了每个人都是文明的使者。公务员为群众办好的每一件实事，是敬业的诠释；商家为消费者提供的每一件商品，是诚信的代言；看见需要帮助的人热心上去搭把手，是友善的暖流……每个人担负起一分道德责任，社会的道德水准就因此而托起一分。让《培育和践行社会主义核心价值观行动方案》体现在每一次选择、每一个行动中，在“落细、落小、落实”上下功夫，才能塑造出理想的国家、和谐的社会、完善的个体。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“人民有信仰，民族有希望，国家有力量。”此言掷地有声，发人深省。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">（九）有三个问号，一直萦绕于国人的内心深处。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">一是梁启超之问：郑和下西洋乃“有史来最光焰之时代”，为什么“郑和之后，竟无第二之郑和”？二是李约瑟之问：为什么近现代科技与工业文明，没有诞生在当时世界科技与经济最发达的中国？三是黄炎培之问：如何找到一条新路，跳出“其兴也勃焉，其亡也忽焉”的周期律？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">三个问号，虽指向经济、文化、政治的不同维度，却有一个共同的内涵：在传统与现代、民族与世界的冲突与对撞、融合与再造中，中国人如何重建自己的精神世界？</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">中国的崛起——这个被称作“<span style=\"undefinedfont-size: 12px;\">21</span>世纪最激动人心的大事”，不仅是物质财富的积累、制度模式的创新，更是中华文化的弘扬、价值体系的重塑；不仅会书写举世瞩目的“中国故事”，更将铸造打动人心的“中国精神”。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">经历了一个多世纪的现代化探索，创造了<span style=\"undefinedfont-size: 12px;\">30</span>多年经济腾飞的奇迹，站立在<span style=\"undefinedfont-size: 12px;\">960</span>万平方公里的广袤土地上，一个富强民主文明和谐的国家，一个自由平等公正法治的社会，亿万爱国敬业诚信友善的公民，一定能让古老的中华民族踏上豪迈壮阔的征途，迎来伟大复兴的前景。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 167px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">&nbsp;作者：任仲平<span style=\"undefinedfont-size: 12px;\">&nbsp;<span>&nbsp;</span></span>信息来源：《人民日报》（<span style=\"undefinedfont-size: 12px;\"><span>&nbsp;</span>2015</span>年<span style=\"undefinedfont-size: 12px;\">04</span>月<span style=\"undefinedfont-size: 12px;\">20</span>日<span style=\"undefinedfont-size: 12px;\">02<span>&nbsp;</span></span>版）</span></p><p></p>', '2015-04-23 14:37:16', '凝聚当代中国的价值公约数——论培育和践行社会主义核心价值观', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('64', '宣传中心', '2015-04-23', 'notice', '张冬教授被评为黑龙江省首届中青年优秀法学专家', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">2015</span><span style=\"font-family: 宋体; font-size: 13px;\">年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">16</span>日，黑龙江省法学会第七次会员代表大会暨首届省中青年优秀法学专家颁奖典礼在和平邨会堂隆重举行。中国法学会副会长张鸣起、黑龙江省委副书记陈润儿、省政法委书记杨东奇、省法学会会长王东华、副会长、理事及会员代表<span style=\"undefinedfont-size: 12px;\">300</span>余人到会。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">我校党委副书记高晚欣教授被推选为省法学会副会长，罗猛教授、杨国庆副教授及刘沫茹副教授分别当选为常务理事和理事。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">会议期间，进行了黑龙江省首届十大中青年优秀法学专家的颁奖仪式。该活动由省法学会组织开展，</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">面向全省各高校、<span style=\"undefinedfont-size: 12px;\">21</span>个法学研究会、法院及检察院开展，经过初评、复评、公示及审核，历时半年，全省十位法学学者最后入围。我院张冬教授获此荣誉称号。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\"><span><img onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041710241933.jpg\" border=\"0\" hspace=\"0\"/><br/><br/><span style=\"font-size: 12px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>&nbsp;</span></span><img onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" alt=\"\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015041710241987.jpg\" border=\"0\" hspace=\"0\"/></span></span></p><p></p>', '2015-06-04 20:55:18', '张冬教授被评为黑龙江省首届中青年优秀法学专家', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('65', '宣传中心', '2015-04-23', 'notice', '【时文】全面从严治党，基层党组织必须强起来', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">基层党组织是我们党的执政根基，是整个党组织的“神经末梢”，是落实党的路线方针政策和各项工作任务的“毛细血管”。加强基层党建是落实全面从严治党的“牛鼻子”，把全面从严治党落实到基层，把每一个基层党组织都建设成为坚强战斗堡垒，密切党同人民群众的血肉联系才能落到实处。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">中共中央政治局常委、中央书记处书记刘云山近日在广西调研时强调，要把全面从严治党的要求落到实处、落到基层，强化基层党组织的政治引领和服务群众功能，更好地发挥党组织战斗堡垒作用和党员干部先锋模范作用，使基层党建工作进一步强起来，为推动改革发展稳定提供有力保证。云山同志还指出，全面从严治党说到底是个责任问题。各级党委要聚精会神抓党建，党委书记要落实好抓党建的第一责任，真正成为从严治党的书记。要健全党建工作考核评价机制，用责任制传导压力、激发动力。当前经济发展进入新常态，新常态就要有新状态，就需要党员干部有更强的责任担当。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">全面从严治党，是协调推进“四个全面”的根本保证。基层党组织是我们党的执政根基，是整个党组织的“神经末梢”，是落实党的路线方针政策和各项工作任务的“毛细血管”。把全面从严治党落实到基层，把每一个基层党组织都建设成为坚强战斗堡垒，密切党同人民群众的血肉联系才能落到实处。全面从严治党，是具体的不是抽象的。党的十八大以来，通过群众路线教育实践活动，通过持之以恒的作风建设，在从严管理监督干部、整顿软弱涣散基层党组织、加强党员队伍建设等方面久久为功，基层党建出现了可喜局面。人民群众发现，基层干部“葫芦式”漂在表面的少了，“秤砣式”沉到底层的多了，奢靡享乐的场所冷清了，田间地头热闹了，基层党组织的凝聚力增强了。协调推进“四个全面”，基层一线的党员干部要有更强的责任担当，化挑战为机遇，提振精气神、锤炼好作风、展现新作为，用党建工作的实际成效推动经济社会持续健康发展。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“喷泉的高度不会超过它的源头”，从严治党需要全党大气候，也需要基层小气候。我们也要看到，对照全面从严治党的要求，加强基层党建工作只有进行时没有完成时。基层党组织服务群众的表现，党员干部的一言一行，更直接地决定着人民群众对党的认识。如果自身不硬，说话就软；如果吃拿卡要，群众就不会跟你走；如果弄虚作假，就不会有威信。唯有坚持问题意识，“治之于未乱”，将从严治党的关口前移，抓长抓常、真管真严，在从严治党中实现基层党组织的自我净化、自我完善、自我革新、自我提高，才能夯实党的执政根基。可以说，加强基层党建是落实全面从严治党的“牛鼻子”。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">还要看到，权力任性、权力寻租现象，在基层表现得往往更直接；不守纪律、不讲规矩现象，在一些基层也更加普遍。究其实，都与基层党组织软弱涣散有关。因此，把全面从严治党的要求落到实处、落到基层，重在从严治吏，从基层党组织的每一个细胞入手，在思想教育、干部管理、组织建设、制度执行上都切实严起来，防止一阵风，防止雨过地皮湿。基层党建，要从党内政治生活严起，从党的组织生活正常化抓起，采取更严举措，让党员干部时时受组织的约束。从严治党真正落实到基层，全面深化改革才能打通“最后一公里”，全面建设小康才有领头雁，全面推进依法治国才能让人民群众在日常生产生活中感受公平正义。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">基层党建，要与时俱进，针对党在基层工作任务的变化，党员结构与活动方式的变化，在区域化党建、服务型党组织、学习型党组织等方面不断进行探索，通过组织形式、功能定位、工作方式、活动载体等方面的不断创新，真正发挥好基层党组织在广泛联系群众方面的作用，发挥好基层党组织在领导推进基层社会治理中的作用，使基层党组织有资源、有能力为群众搞好服务，密切党和人民的血肉联系。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“是不是各级党委、各部门党委<span style=\"undefinedfont-size: 12px;\">(</span>党组<span style=\"undefinedfont-size: 12px;\">)</span>都做到了聚精会神抓党建？是不是各级党委书记、各部门党委<span style=\"undefinedfont-size: 12px;\">(</span>党组<span style=\"undefinedfont-size: 12px;\">)</span>书记都成为了从严治党的书记？是不是各级各部门党委<span style=\"undefinedfont-size: 12px;\">(</span>党组<span style=\"undefinedfont-size: 12px;\">)</span>成员都履行了分管领域从严治党责任？”习近平总书记在党的群众路线教育实践活动总结大会上提出的党建“三问”，对落实从严治党责任作出明确要求，强调各级党委要把抓好党建作为最大的政绩，把从严治党责任承担好、落实好。云山同志反复强调的责任担当，提出了鲜明的问题导向。全面从严治党说到底是个责任问题。要从根子上解决失之于宽、失之于软的问题，使基层党组织进一步强起来，必须把党要管党落实到具体的工作中，让党委书记、支部书记成为从严治党的书记，理直气壮抓党建。同时，要健全党建工作考核评价机制，用责任制传导压力、激发动力，形成齐心协力抓党建的大格局，以强有力的党组织团结带领人民推进“四个全面”战略布局的落实。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 240px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">&nbsp;&nbsp;&nbsp;作者：慎海雄<span style=\"undefinedfont-size: 12px;\">&nbsp;<span>&nbsp;</span></span>信息来源：新华网（<span style=\"undefinedfont-size: 12px;\">2015</span>年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">16</span>日）</span></p><p></p>', '2015-04-28 14:02:02', '全面从严治党，基层党组织必须强起来', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('66', '综合办公室', '2015-04-23', 'notice', '学院召开机关作风能力建设研讨会', '<p>&nbsp;</p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">2015</span><span style=\"font-family: 宋体; font-size: 13px;\">年<span style=\"undefinedfont-size:12px\">4</span>月<span style=\"undefinedfont-size:12px\">9</span>日下午，学院召开教育教学专题研讨会，本次研讨会以机关作风能力建设为专题。会议由刘振宇书记主持召开，学院全体机关工作人员参加。</span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"><span><a style=\"color: rgb(51, 51, 51);\" href=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015040916343734.jpg\" target=\"_blank\"><img width=\"600\" height=\"400\" onload=\"resizepic(this)\" onmousewheel=\"return bbimg(this)\" src=\"http://shss.hrbeu.edu.cn/renwenxueyuan/UploadFiles_1884/201504/2015040916343734.jpg\" border=\"0\"/><span style=\"font-size:12px\">&nbsp;</span></a></span></span></p><p style=\"color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 28px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">刘振宇书记分别就各办公室工作职责、工作理念、工作思路、重点工作、工作举措等五个方面提出了要求，希望学院机关工作人员明确工作职责、转变工作理念、捋顺工作思路、抓住工作重点、积极有效的开展工作，为师生员工提供优质高效的服务。</span></p><p style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 28px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">郑莉院长强调，各机关工作人员要做到守土有责，做好分工合作。工作理念要由管理型向服务性转变，由被动向主动转变，增强工作主动性，提高工作效率，全体人员齐心协力，共谋学院发展。</span></p><p><span style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">&nbsp;&nbsp;&nbsp; 会议决定，形成《</span><span style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">人文社会科学学院关于进一步加强学院办公室作风建设的意见</span><span style=\"font: 13px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">》，发各部门遵照执行。</span></p><p></p>', '2015-04-23 14:37:57', '学院召开机关作风能力建设研讨会', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('68', '教务办公室', '2015-04-23', 'regulation', '人文学院2015年“单独考试”考生硕士研究生复试办法', '<p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">我院<span style=\"undefinedfont-size: 12px;\">2015</span>年“单独考试”及“强军计划”考生硕士研究生复试工作按教育部及学校有关文件精神执行。具体安排如下：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 12px;\">&nbsp;&nbsp;<span>&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">一、资格审查</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">1.</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">参加复试的考生须提供以下材料：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">1</span>）准考证；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">2</span>）身份证（或军官证）；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">3</span>）学历证书原件（应届本科毕业生交验学生证，毕业证书入学时交验）；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">4</span>）在校历年学习成绩表（须加盖教务或人事部门公章）；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">5</span>）《哈尔滨工程大学<span style=\"undefinedfont-size: 12px;\">2015</span>年硕士研究生复试政审表》；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">6</span>）学历（学籍）认证承诺书。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\"><span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">7</span>）2015年单独考试、强军计划考生专家推荐书。</span></span></span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\"><span></span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">8</span>）携带网上缴费成功打印件或缴费成功界面截图。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">2.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">以上材料均需提交复印件。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">3.</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\"><span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">除上述<span style=\"undefinedfont-size: 12px;\">1</span>中材料外，同等学力考生（包括大专毕业生、国家承认学历的成人高校应届本科毕业生或国家承认学历的本科结业生）需提供外语四级证书，其中高职高专考生要求提供与报考硕士研究生专业相近的本科专业主干课<span style=\"undefinedfont-size: 12px;\">8</span>门以上考试合格的成绩单。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">4.</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">资格审查时间、地点：</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">资格审查时间：<span style=\"undefinedfont-size: 12px;\">2015</span>年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">8</span>日（星期四）上午<span style=\"undefinedfont-size: 12px;\">8:00-8:30</span></span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">资格审查地点：<span style=\"undefinedfont-size: 12px;\">41</span>号楼<span style=\"undefinedfont-size: 12px;\">414</span>室</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">5.</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">按照教育部要求：不得将未通过或未完成学历（学籍）审核的考生列入拟录取名单公示和上报。在报名时学历认证未通过的考生，需在<span style=\"font-size: 12px;\"><span>2015</span>年<span>4</span>月<span>6</span>日</span>前向研究生院招生办公室提供教育部出具的学历认证报告，否则不予公示和拟录取。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">二、复试方式及内容</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">复试分笔试和面试两部分，面试包括综合素质面试和外语测试。复试总成绩满分为<span style=\"undefinedfont-size: 12px;\">350</span>分，其中，笔试总分为<span style=\"undefinedfont-size: 12px;\">180</span>分，外语测试总分为<span style=\"undefinedfont-size: 12px;\">70</span>分，综合素质面试总分为<span style=\"undefinedfont-size: 12px;\">100</span>分。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">复试总成绩的达标分数线为<span style=\"undefinedfont-size: 12px;\">210</span>分，笔试达标分数线为<span style=\"undefinedfont-size: 12px;\">108</span>分，外语测试<span style=\"undefinedfont-size: 12px;\">+</span>综合素质面试总分的达标分数线为<span style=\"undefinedfont-size: 12px;\">102</span>分。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">复试内容要求如下：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（一）笔试</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">笔试主要为专业知识测试，具体考核内容可参照研究生院发布的考试大纲，考试时间为<span style=\"undefinedfont-size: 12px;\">3</span>小时。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">笔试时间：<span style=\"undefinedfont-size: 12px;\">2015</span>年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">8</span>日（星期三）下午<span style=\"undefinedfont-size: 12px;\">14:00-17:00</span>；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">笔试地点：<span style=\"undefinedfont-size: 12px;\"><span>&nbsp;</span>41#437</span>室。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（二）面试</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">1</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">．综合素质面试</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">1</span>）综合素质面试的考核内容</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">综合素质面试主要考核考生的素质与能力，一般包括以下内容：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">①大学阶段学习情况及成绩；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">②全面考核考生对本学科理论知识和应用技能掌握程度，利用所学理论分析和解决问题的能力，对本学科发展动态的了解，在本专业领域发展的潜力以及其科研能力和水平，了解其科研成果，如已发表的论文、获奖等；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">③创新精神和创新能力；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">④本学科以外的学习、科研、社会实践（学生工作、社团活动、志愿服务等）或实际工作表现等方面的情况；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">⑤心理健康状况考核包括事业心、责任感、协作性和心理健康情况；具体考核办法由各院系自行确定；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">⑥思想政治品德考核主要考核考生的政治态度、思想表现、工作学习情况、职业道德、遵纪守法等内容；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">⑦人文素养；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">⑧举止、表达和礼仪等。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（<span style=\"undefinedfont-size: 12px;\">2</span>）综合素质面试考核的具体要求</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">所有专家复试小组成员当场独立为每位复试考生打分，每个考生的面试总时间不少于<span style=\"undefinedfont-size: 12px;\">20</span>分钟。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">2</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">．外语测试的内容及要求</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">外语测试主要包括听力测试和口语测试，根据统一的测试办法、要求和评分标准，评委当场给出分数。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">3.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">面试成绩<span style=\"undefinedfont-size: 12px;\">=</span>综合素质面试成绩<span style=\"undefinedfont-size: 12px;\">+</span>外语测试成绩</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">4.</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">面试时间及地点：</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">法学专业面试、外语面试时间：</span></strong></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">4</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">月<span style=\"undefinedfont-size: 12px;\">8</span>日</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（周三）上午<span style=\"undefinedfont-size: 12px;\">8:30</span>开始，地点：<span style=\"undefinedfont-size: 12px;\">41#402</span>室；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><strong><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">社会学专业面试、外语面试时间：</span></strong></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">4</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">月<span style=\"undefinedfont-size: 12px;\">8</span>日</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（周三）上午<span style=\"undefinedfont-size: 12px;\">8:30</span>开始，地点：<span style=\"undefinedfont-size: 12px;\">41#411</span>室；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">三、复试总成绩的计算</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">考生的复试总成绩（满分<span style=\"undefinedfont-size: 12px;\">350</span>分）<span style=\"undefinedfont-size: 12px;\">=</span>笔试成绩<span style=\"undefinedfont-size: 12px;\">+</span>面试成绩</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">四、拟录取工作</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（一）考生的总成绩计算公式为：总成绩<span style=\"undefinedfont-size: 12px;\">=</span>初试总成绩<span style=\"undefinedfont-size: 12px;\">+</span>复试总成绩。拟录取考生的名单应严格依据总成绩在专业的排名确定，按排序由高向低依次拟录取。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（二）根据教育部文件规定，对存在下列情况之一的考生不予拟录取。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">1</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">．未按规定时间到学校参加复试的考生视为弃权，不予拟录取；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">2</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">．凡考生的复试总成绩、笔试成绩和面试成绩中的任意一项低于达标分数线者不予拟录取；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">3.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">思想政治素质和道德品质考核不合格者不予拟录取；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">4.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">体检不合格者不予拟录取；</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">5.<span style=\"undefinedfont-size: 12px;\">&nbsp;</span></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">未通过或未完成学历（学籍）审核的考生不予拟录取。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（三）经复试合格确定的拟录取考生还需上报国家审核，最终录取结果将以教育部审核通过的考生名单为准。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（四）所有定向、委培考生均需签订《哈尔滨工程大学定向（委培）硕士研究生协议书》（一式三份），由研究生所在单位、考生、研究生院各执一份，由院系收齐后统一到研究生院综合处办理。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（五）申请保留资格者，必须填写《哈尔滨工程大学<span style=\"undefinedfont-size: 12px;\">2015</span>年硕士研究生保留入学资格申请表》。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（六）复试结束后，拟录取名单在人文学院网页上公示<span style=\"undefinedfont-size: 12px;\">3</span>天，举报电子信箱：</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\"><a style=\"color: rgb(51, 51, 51);\" href=\"http://mailto:27892431@qq.com\"><span style=\"line-height: 25.33px; font-family:;\" times=\"\" new=\"\"><span style=\"text-decoration: underline;\"><span style=\"color: rgb(0, 0, 255); font-size: 12px;\">jimingxia@hrbeu.edu.cn</span></span></span></a></span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">；</span><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">举报号码：<span style=\"undefinedfont-size: 12px;\">0451-82569513</span>；人文学院教务办公室受理举报事宜。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（七）复试加分项目</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">按照教育部规定，参加“大学生志愿服务西部计划”、“三支一扶计划”、“农村义务教育阶段学校教师特设岗位计划”、“赴外汉语教师志愿者”等项目服务期满、考核合格的考生和普通高等学校应届毕业生应征入伍服义务兵役退役后的考生，三年内参加全国硕士研究生招生考试，享受初试总分加<span style=\"undefinedfont-size: 12px;\">10</span>分并在同等条件下优先录取的政策。参加“选聘高校毕业生到村任职”项目服务期满、考核称职以上的考生，三年内参加全国硕士研究生招生考试，初试总分加<span style=\"undefinedfont-size: 12px;\">10</span>分，同等条件下优先录取，其中报考人文社科类专业研究生的，初试总分加<span style=\"undefinedfont-size: 12px;\">15</span>分。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">五、关于资助体系及学费</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">按照教育部规定，<span style=\"undefinedfont-size: 12px;\">2015</span>年研究生将实行全面收费。学校将继续加大对录取类别为非定向就业硕士生的资助力度，通过设立学业奖学金、增加助管、助教、助研岗位等措施建立健全多元奖助政策体系，提高硕士研究生待遇水平。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">六、其它要求</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（一）体检。所有参加复试的考生均需参加体检。体检具体安排见《哈尔滨工程大学<span style=\"undefinedfont-size: 12px;\">2015</span>年硕士生入学考试复试体检须知》（附件<span style=\"undefinedfont-size: 12px;\">9</span>）。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（二）符合教育部“大学生志愿服务西部计划”、“三支一扶计划”、“选聘高校毕业生到村任职”、“农村义务教育阶段学校教师特设岗位计划”等项目服务期满的考生和普通高校应届毕业生应征入伍服义务兵役退役后享受初试加分政策的考生，需在我校复试基本分数要求公布后两天内，持相关证明向研究生院提出申请。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（三）所有参加复试的考生需交纳考试费<span style=\"undefinedfont-size: 12px;\">100</span>元<span style=\"undefinedfont-size: 12px;\">/</span>人次，且须通过网银缴费（不收取现金）。网银缴费请登录中国建设银行（网址：<span style=\"undefinedfont-size: 12px;\">http://pay.hrbeu.edu.cn/payment/</span>，地区选择“哈尔滨”，学校请选择“哈尔滨工程大学”）。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">考试费收费起始时间：<span style=\"undefinedfont-size: 12px;\">2015</span>年<span style=\"undefinedfont-size: 12px;\">3</span>月<span style=\"undefinedfont-size: 12px;\">30</span>日<span style=\"undefinedfont-size: 12px;\">-4</span>月<span style=\"undefinedfont-size: 12px;\">10</span>日，逾期复试阶段收费系统将自动关闭。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">请缴费人务必确保所选择的参加复试院系名称、考生姓名、证件号码正确无误（缴费时，类型选择“身份证”，“姓名”填写参加复试考生姓名，证件号码填写考生本人的“身份证号”）。本校教工与本校学生须用工号、学号登录，其他考生须用身份证号注册登录。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">参加多个院系复试的考生，须按照复试次数分别缴纳考试费用。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（四）参加复试考生可以登录哈尔滨工程大学人文学院网站师资队伍<span style=\"undefinedfont-size: 12px;\">-</span>导师简介查看硕士研究生导师名单。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（五）拟录取名单由研究生院统一公示<span style=\"undefinedfont-size: 12px;\">10</span>个工作日。</span></p><p style=\"font: 13px/24.7px 宋体; text-align: left; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"line-height: 25.33px; font-family: 宋体; font-size: 13px;\">（六）复试笔试中的考场纪律严格按照教育部《国家教育考试违规处理办法》（教育部第<span style=\"undefinedfont-size: 12px;\">18</span>号令）执行。</span></p><p style=\"text-align: left; color: rgb(0, 0, 0); line-height: 24.7px; text-indent: 27px; letter-spacing: normal; font-family: 宋体; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; white-space: normal; widows: 1; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><br/></p><p></p>', '2015-06-04 20:26:59', '人文学院2015年“单独考试”考生硕士研究生复试办法', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('69', '综合办公室', '2015-04-23', 'regulation', '人文社会科学学院关于进一步加强学院办公室作风建设的意见', '<p>&nbsp;</p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">办公室是学院的基层办事窗口和职能科室，办公室在学院推进综合改革，推进转型升级工程，深化基层学术组织改革，提升教学、科研管理质量和管理水平，服务学院师生等方面发挥着不可替代的重要作用。为进一步提升办公室的工作效率与质量，充分发挥办公室在学院各项工作中的核心枢纽作用，以更佳的状态为学院师生提供优质服务。现就加强办公室作风建设提出如下意见：</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">一、工作职责</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">1.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">各办公室管理职能。综合办、教务办、学工办要根据学院基层学术组织改革和发展的需要，结合岗位竞聘职责和学院推进综合改革的新形势、新任务，明确制定各办工作职责，明晰管理职能和管理制度。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">2.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">办公室成员工作职责。各办公室根据管理职能，制定办公室主任和科员工作分工和工作职责，明确办公室各项管理工作的流程，做到各项管理的工作的规范化、制度化和程序化。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">二、工作理念</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">1.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">工作重点要从完成具体事务向善于抓大事、谋全局、当参谋转变；</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">2.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">工作目标从满足于做好当前工作向善于主动服务、超前谋划转变；</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">3.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">工作方式从被动应付向自觉思考、创造性开展工作转变，按照“精、细、严、实”的标准，参与政务，精于事务，理好财务，搞好服务。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">三、工作思</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">路</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">以科学发展观为指导，深入贯彻落实学校三次党代会精神，全面推进学院综合改革，认真履行岗位职责，进一步提高工作质量和效率，进一步加强管理意识和服务意识，为学院发展建设的各项工作提供有效服务。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">四、重点工作</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">1.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">做好政务工作。加强公文运转工作，提高办文的效率和质量，着力提升学院公文和有关文稿的质量；</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">加强文书档案管理，做到及时收发文件、报刊，准确无误地传递上级文件，并及时归档立卷；加强年鉴编撰工作，提供高质量学院年鉴稿件；严格保密制度，按规定处理文件，确保无失泄密案件；加强政务协调，加强信息报送和反馈工作，与有关方面保持密切联系；进一步完善学院党政联席会议制度和“三重一大”制度，建立学院机关联席会议制度，加强督办，对学院党政联席会议制度决定事项进行督促落实，并及时反馈。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">2.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">做好事务工作。加强教务管理，确保学院在全年教师在任课、出题、期末考试、成绩报送等环节不出现重大教学事故；加强学院办公用房、会议室、实验室、资料室、仓库等场所的管理，明晰管理职责和管理职能；加强考勤、请销假和节假日值班管理，完善考勤制度、流程和手续，完善值班管理制度，强化安全意识，强化安全责任，确保全年无重大安全事故；及时更新和维修办公设施，保持机关办公环境整洁。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">3.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">做好财务工作。进一步健全和完善财务管理制度，切实加强预算内资金、预算外资金、现金和固定资产的管理；保证学院年内重大会议和活动所需经费；完善教职工聘期与年度考核办法，做好教职工年终工作量计算、酬金发放、科研奖励、教学奖励、学生工作奖励的经费预算和管理工作。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">&nbsp;4.</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">做好服务工作。积极为教职工和学生服务；做好各项重要会议、活动和上级领导检查调研、兄弟单位来访的接待工作；做好学院领导外出考察和调研的勤务工作。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">五、工作措施</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">一是“想得到”。增强政治意识、责任意识，增强工作的主动性、预见性、创造性，站在学院全局的高度，把注意力集中在那些牵动全局、涉及长远的大事上，放在情况复杂、矛盾突出的热点、难点问题上，以较高的政策理论素养和业务工作能力为领导出谋划策、查漏补缺。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">二是“管得宽”。既要全面了解学院各方面工作情况，为学院领导们工作的顺利开展创造条件，又要协调各方，处理好上下左右的关系，确保政令畅通。对职责以外没有明确的工作，要义不容辞承</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">担起来，做到学院机关工作不留空档。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">三是“做得细”。工作中细心、细致，从小事抓起。对任何一件经办的工作，都严谨细致，一丝不苟，做到不让领导布置的工作在手中延误，不让需要办理的文电在手中积压，不让到办公室联系工作的同志（师生）受到冷落，不让学院的形象在办公室受到影响。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">四是“过得硬”。坚持讲原则，严肃办事纪律。一是按政策办事。把政策作为办公室的生命线，决不允许在政策问题上讲人情，“走后门”。二是依法办事。严格按照法律法规来开展工作。三是按组织原则</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">办事。坚持民主集中制原则，坚持一级对一级负责。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">五是“讲程序”。保持清醒的头脑，分清主次、分清轻重缓急、不怕麻烦。坚持逐级汇报的原则，以明确责任。通过建立一套科学规范的工作制度、工作程序、工作规则，使每项工作都有章可循。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">六是“抓落实”。加强执行力建设，据实情、讲实话、干实事、创实效，扎扎实实，不慕虚荣，不图虚名。努力做到实事求是干工作，实事求是向领导反映情况。工作中，一步一个脚印，不作表面文章</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">。</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 300px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 人文社会科学学院</span></p><p style=\"font: 13.33px/24.7px 宋体; color: rgb(0, 0, 0); text-indent: 307px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015</span><span style=\"color: black; font-family: 宋体; font-size: 13px;\">年<span style=\"undefinedfont-size: 12px;\">4</span>月<span style=\"undefinedfont-size: 12px;\">9</span>日</span></p><p></p>', '2015-04-28 14:06:31', '人文社会科学学院关于进一步加强学院办公室作风建设的意见', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('73', '11111', '2015-06-04', 'teacherExchange', '国际交流国际交流国际交流国际交流', '<p>&nbsp;国际交流国际交流国际交流国际交流国际交流国际交流国际交流</p>', '2015-06-04 20:15:21', '国际交流', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('75', '佚名', '2015-06-04', 'researchNotice', '此次公开招标40项课题，共有117个课题组投标。由省社科联课题专家组认真审定及18个省直厅局逐项核标遴选，最终确定共有60个课题组中标。我院教师杨国庆和刘辉申报的课题均中标。课题名称分别为《黑龙江省加快转变政府职能与优化政府组织结构对策研究》与《黑龙江省发挥社会组织在社会治理中的作用对策研究》。', '<p>&nbsp;<span style=\"font-size:12px\">此次公开招标<span>40</span>项课题，共有<span>117</span>个课题组投标。由省社科联课题专家组认真审定及<span>18</span>个省直厅局逐项核标遴选，最终确定共有<span>60</span>个课题组中标。我院教师杨国庆和刘辉申报的课题均中标。课题名称分别为《黑龙江省加快转变政府职能与优化政府组织结构对策研究》与</span><span style=\"font-family: 宋体; font-size: 13px;\">《黑龙江省发挥社会组织在<span style=\"font-size:12px\"><span style=\"letter-spacing: -1px;\">社会治理中的作用对策研究</span>》。</span></span></p>', '2015-06-04 22:07:06', '我院教师获2014年黑龙江省教育教学改革项目立项', null, null, null, null, null, '1');
INSERT INTO `bs_article` VALUES ('76', '周春英', '2015-06-04', 'researchNotice', '日前黑龙江省教育厅下发了《关于公布2014年黑龙江省高等教育教学改革项目的通知》（黑教高处函〔2014〕32号），我校共有31项课题获准立项，其中，我院刘军老师的《社会交换实验平台建设》项目获准立项。', '<p>&nbsp;日前黑龙江省教育厅下发了《关于公布2014年黑龙江省高等教育教学改革项目的通知》（黑教高处函〔2014〕32号），我校共有31项课题获准立项，其中，我院刘军老师的《社会交换实验平台建设》项目获准立项。</p>', '2015-06-04 22:07:46', '我院教师获2014年黑龙江省教育教学改革项目立项', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('77', '李雪', '2015-06-04', 'researchNotice', '我院赵德雷老师申报的“身份认同与共识性公平心态”课题获得第55批中国博士后科学基金面上项目，二等，经费5万元，指导教师为我院兼职教授杨宜音研究员。', '<p>&nbsp;<span style=\"font-size:12px\">我院赵德雷老师申报的<span>“</span>身份认同与共识性公平心态<span>”</span>课题获得第<span>55</span>批中国博士后科学基金面上项目，二等，经费<span>5</span></span><span style=\"font-size:12px\">万元，指导教师为我院兼职教授杨宜音研究员。</span></p>', '2015-06-04 22:08:22', '我院教师赵德雷申报课题获中国博士后科学基金面上项目', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('78', '李雪', '2015-06-04', 'teacherExchange', '近日黑龙江省教育科学规划领导小组下发了省教育科学“十二五”规划2013年度课题审批文件，我校14项课题获准立项，其中重点课题2项，规划课题7项，青年专项课题5项。我院教师杨国庆申报的《大学生核心能力培养模式研究》获黑龙江省教育科学“十二五”规划2013年度重点课题立项。 ', '<p>&nbsp;<span style=\"font-family: 宋体; font-size: 13px;\">近日黑龙江省教育科学规划领导小组下发了省教育科学“十二五”规划<span style=\"font-size:12px\"><span>2013</span>年度课题审批文件，我校</span><span style=\"font-size:12px\"><span>14</span>项课题获准立项，其中重点课题</span><span style=\"font-size:12px\"><span>2</span>项，规划课题</span><span style=\"font-size:12px\"><span>7</span>项，青年专项课题</span><span style=\"font-size:12px\"><span>5</span>项。我院教师杨国庆申报的《大学生核心能力培养模式研究》获黑龙江省教育科学</span><span style=\"font-size:12px\"><span>“</span>十二五</span><span style=\"font-size:12px\"><span>”</span>规划</span><span style=\"font-size:12px\"><span>2013</span>年度重点课题立项。 </span></span></p>', '2015-06-04 22:09:55', '我院教师获一项省教育科学“十二五”规划重点课题', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('79', '科学院', '2015-06-04', 'researchNotice', '各有关单位：\r\n　　全国社科规划办近日下发了《2013年度国家社会科学基金项目申报工作的通知》。通知对2013年度国家社科基金申报工作做出了安排和部署。为切实加强项目的组织申报管理，请各有关单位结合实际，抓好落实。', '<p>&nbsp;<br/>　　一、项目申报 <br/>　　1. 要切实加强对2013年度国家社会科学基金项目申报工作的组织领导，各单位、部门要高度重视，认真负责，切实做好组织动员工作，把项目申报工作落到实处。 <br/>　　2. 2013年度国家社科基金项目继续实行限额申报，申报课题的资助额度为：重点项目25—30万元，一般项目和青年项目15—18万元（具体内容详见指南）。各单位要以提高申报质量为重点，既要鼓励科研人员树立信心踊跃申报，又要注重提高论证质量，切实做好选题论证和质量把关工作。要认真做好申报数据代码信息的审核工作，确保数据信息的一致性和准确性。申报工作结束后黑龙江省哲学社会科学规划办公室将继续组织省内相关学科大评委专家对申报课题进行集中预评把关，对所申报项目提出修改意见，修改后集中报送。<br/>　　二、时间安排及具体要求<br/>　　1. 2013年1月18日，请各单位将审查合格的《申请书》（2012年12月版）和《活页》一式三份及申报清单报送学校科研院民品处，学校进行形式审查。<br/>　　2. 2013年2月19日，学校将审查意见反馈给各单位，2月21日各学院将修改后的材料上报科研院民品处，由学校统一报送省社科规划办，组织专家进行预评审。<br/>　　3.省社科规划办将专家评审意见反馈给学校后，各单位科技办务必3月5日前录入《国家社会科学基金项目申报管理信息系统》（2012年版）的申请书“数据表”数据汇总，并确保电子数据和申请书“数据表”一致。<br/>　　4. 2013年3月7日，各单位将修改完成、审查合格的申请书、论证活页一式7份（1份夹4份，5份活页集中夹在申请书内；2份单报存档），活页夹在申请书内；申请书和活页一律用A3纸双面印制、中缝装订，报送研院民品处。<br/>　　5. 申报所有材料不得涉及国家秘密，各单位要严格审查申报材料；材料集中申报，学校不受理个人申报。不申报国家社科基金项目申请人不得申报2013年黑龙江省自然科学基金项目。<br/>　　6. 《通知》、《课题指南》、《申请书》、《活页》及《代码表》见附件，也可从全国社科规划办网站下载（网址：http://www.npopss-cn.gov.cn）。</p>', '2015-06-04 22:10:53', '2013年度国家社会科学基金项目申报工作的通知', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('80', '田波', '2015-06-04', 'studentExchange', '各位老师： \r\n　　全国社科规划办近日下发了《关于征集和推荐2013年度国家社科基金重大招标项目选题的通知》（社科规划办通字【2012】42号）。《通知》对2013年度国家社科基金重大招标项目选题工作作出了安排部署。为切实做好本次招标工作，现将《通知》转发给你们，请各有关单位按照《公告》要求，以高度负责的精神认真做好本次国家社科基金重大招标选题工作。\r\n', '<p>&nbsp;<span style=\"font-size:12px\">各位老师请于<span>2012</span>年<span>12</span>月<span>28</span>日将加盖单位公章的《选题推荐表》和《选题建议汇总表》纸质文本一式</span><span style=\"font-size:12px\"><span>2</span>份报送学院综合办，同时将电子版（从全国规划办网站下载）发送至<span>tianbo@hrbeu.edu.cn</span>。</span><span><br/><span style=\"undefinedfont-size:12px\">&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size:12px\">学院联系人：田波</span><span style=\"font-size:12px\"><span><span>&nbsp; </span>82569608<br/></span>　　联系人：仲崇娜</span><span style=\"font-size:12px\"><span> <br/></span>　　联系电话：</span><span style=\"font-size:12px\"><span>82589625<br/></span>　　全国规划办网站：</span><span><span style=\"font-size:12px\">www.npopss-cn.gov.cn</span><br/></span></p>', '2015-06-04 22:12:58', '关于转发《关于征集和推荐2013年度国家社科基金重大招标项目选题的通知》的通知', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('81', '田波', '2015-06-04', 'studentExchange', '各位老师：\r\n　　“教育部哲学社会科学研究重大课题攻关项目”自2003年启动以来，产生了一批重要成果，影响广泛，成效显著。为进一步做好今年重大课题攻关项目的招标工作，根据《教育部哲学社会科学研究重大课题攻关项目管理办法（试行）》，现面向全校征集2013年度重大课题攻关项目选题，并将有关事项通知如下：\r\n', '<p>&nbsp;<span style=\"font-size:12px\">一、选题要求</span><span><br/></span><span style=\"font-size:12px\">　　<span>1.</span>围绕党的十八大提出的一系列新表述、新思想、新论断，深入推进中国特色社会主义道路、理论体系、制度研究，深入推进贯彻落实科学发展观的第一要义、核心立场、基本要求、根本方法等的研究，深入推进社会主义核心价值体系研究，深入推进传承中华优秀传统文化和弘扬民族精神、促进社会主义文化大发展大繁荣研究，深入推进学科建设中具有重大学术价值和体现学术前沿的研究。</span><span><br/></span><span style=\"font-size:12px\">　　<span>2.</span>围绕全面建成小康社会和全面深化改革开放的目标，深入研究中国特色社会主义经济建设、政治建设、文化建设、社会建设、生态文明建设、国防和军队建设、党的建设以及“一国两制”实践和推进祖国统一、人类和平与发展中的重大理论和实际问题，紧密服务国家战略需求。</span><span><br/></span><span style=\"font-size:12px\">　　<span>3.</span>所有选题都应具有明确的研究目标、主攻方向，体现有限规模和突出重点的原则，重视学科交叉与渗透，能够通过联合攻关形成集成优势，取得具有重大学术影响和社会影响的标志性成果。</span><span><br/></span><span style=\"font-size:12px\">　　<span>4.</span>选题应避免与已立项的教育部重大课题攻关项目和国家社科基金重大项目重复。</span><span><br/></span><span style=\"font-size:12px\">　　二、选题产生与报送</span><span><br/></span><span style=\"font-size:12px\">　　<span>1.</span>各单位要高度重视重大课题攻关项目选题的征集工作，严格按照选题要求，结合本单位的研究优势，组织专家充分论证，反复凝炼，使选题体现科学性、规范性和前瞻性，突出问题导向，淡化学科，避免因人设题。</span><span><br/></span><span style=\"font-size:12px\">　　<span>2.</span>应根据十八大报告提出的新提法、新要求，结合本学科的特点，对每个建议选题的国内外研究现状、主攻方向和需要重点解决的理论和现实问题作<span>300</span>字左右的简要说明。（《<span>2013</span>年度教育部哲学社会科学研究重大课题攻关项目推荐选题一览表》请在中国高校人文社会科学信息网<span>www.sinoss.net</span>下载）</span><span><br/></span><span style=\"font-size:12px\">　　请于<span>2012</span>年<span>11</span>月<span>28</span>日下班前，将选题和说明用<span>E-mail</span>发送至：<span><a href=\"http://mailto:tianbo@hrbeu.edu.cn。2012年11月30\"><span style=\"color:#000000\"><span style=\"text-decoration:underline;\"><span>tianbo@hrbeu.edu.cn</span><span><span>。2012</span></span><span><span>年11</span></span><span><span>月30</span></span></span></span></a></span>日报送科技处。</span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">学院联系人：田波<span style=\"undefinedfont-size:12px\"><span>&nbsp; </span>82569608</span></span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"color: black; font-family: 宋体; font-size: 13px;\">学校联系人：仲崇娜，电话：<span style=\"font-size:12px\"><span>82519625,82589625</span>。</span><span><br/></span>　　教育部社科司联系人：段洪波，电话<span style=\"font-size:12px\"><span>: 010-66096625</span>。</span></span></p><p></p>', '2015-06-04 22:13:45', '关于征集2013年度教育部哲学社会科学研究重大课题攻关项目选题的通知', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('82', '田波', '2015-06-04', 'teacherExchange', '各市（行署）科技局、国家级科技园区，各有关单位：\r\n\r\n　　根据科技部《关于组织申报2013年度国家级星火、火炬、重点新产品及软科学研究等计划项目的通知》国科发计〔2012〕911号要求，现就做好我省申报工作通知如下：\r\n', '<p>&nbsp;<span style=\"font-size:12pxfont-family:宋体\">一、请各有关单位按照《通知》及<span>2013</span>年度国家级星火、火炬、重点新产品及软科学研究等计划项目申报要求，认真做好项目的筛选、申报工作。</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　二、<span style=\"font-size:12px\"><span>2013</span>年度国家级星火、火炬、重点新产品及软科学研究等计划项目是限额申报，我厅将按照上述计划项目申报要求组织专家进行评审后，向科技部推荐申报项目，请各推荐单位</span><span style=\"font-size:12px\"><span>11</span>月</span><span style=\"font-size:12px\"><span>5</span>日前将申报材料一式</span><span style=\"font-size:12px\"><span>10</span>份报送到相关处室。</span></span></p><p style=\"text-align: left; text-indent: 28px;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">三、项目申报直接通过国家科技计划项目申报中心（域名</span><span style=\"font-family: 宋体; font-size: 13px;\"><a href=\"http://program.most.gov.cn/\"><span style=\"color: blue; text-underline: none;\"><span style=\"text-decoration:underline;\"><span style=\"font-size:12px\">http://program.most.gov.cn</span></span></span></a></span><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">）实行网上统一申报，并按照相关要求打印、报送纸件材料。各推荐单位在网上申报前，征求厅相关业务处室的意见。</span></p><p style=\"text-align: left; text-indent: 28px;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">四、纸质材料及电子版请于<span style=\"font-size:12px\"><span>2012</span>年</span><span style=\"font-size:12px\"><span>10</span>月</span><span style=\"font-size:12px\"><span>19</span>日上午</span><span style=\"font-size:12px\"><span>11</span>点前报送到人文学院综合办，学院审查后，</span><span style=\"font-size:12px\"><span>22</span>日报科技处。</span></span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">五、咨询电话：</span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">学院联系人：田波<span style=\"undefinedfont-size:12px\"><span>&nbsp;&nbsp; </span>82569608</span></span></p><p style=\"text-align: left; text-indent: 27px;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">学校联系人：仲崇娜<span style=\"undefinedfont-size:12px\"><span>&nbsp;&nbsp; </span>82519625</span></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　星火计划：农村科技处　刘淑艳<span style=\"undefinedfont-size:12px\"> 0451-82625077</span></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　火炬计划：高新技术发展及产业化处　荆树山</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　<span style=\"font-size:12px\"><span>0451-82628379</span>、</span><span style=\"undefinedfont-size:12px\">82634913</span></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　重点新产品计划：发展计划处　孙景波时泽远</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　<span style=\"undefinedfont-size:12px\">0451-82628529</span></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 13px;\">　　软科学研究计划：政策法规处　汪英华<span style=\"undefinedfont-size:12px\"> 0451-82634915</span></span></p><p></p>', '2015-06-04 22:14:29', '关于转发“黑龙江省科学技术厅关于组织申报2013年度国家级星火、火炬、重点新产品及软科学研究等计划项', null, null, null, null, null, '0');
INSERT INTO `bs_article` VALUES ('83', '田波', '2015-06-04', 'teacherExchange', '各位老师： \r\n　　全国社科规划办近日下发了《关于组织做好2012年度国家社科基金重大项目（第四批）投标工作的通知》。《通知》对2012年度第四批重大项目投标工作作出了安排部署。为切实做好本批投标工作，现将《通知》转发，请各有关单位按照《公告》要求，以高度负责的精神认真做好重大项目投标工作。\r\n', '<p>&nbsp;<span style=\"font-size:12px\">预申报者请于<span>2012</span>年<span>10</span>月<span>8</span>日<span>17:00</span>前将审查合格的纸质《投标书》一式<span>7</span>份（附件<span>3</span>）和《汇总清单》（附件<span>4</span>）一式<span>1</span>份报送学院综合办，同时将《投标书》和《汇总清单》电子文本发至邮箱<span>tianbo@hrbeu.edu.cn</span>。</span><span><br/><br/><span style=\"undefinedfont-size:12px\">&nbsp;&nbsp;&nbsp; </span></span><span style=\"font-size:12px\">学院联系人：田波</span><span style=\"font-size:12px\"><span><span>&nbsp;&nbsp; </span>82569608<br/></span>　　学校联系人：仲崇娜</span><span style=\"font-size:12px\"><span> <br/></span>　　联系电话：<span>0451</span>—</span><span style=\"font-size:12px\"><span>82589625<br/></span>　　电子邮箱：</span><span style=\"font-size:12px\"><span>zhongchongna@hrbeu.edu.cn<br/></span>　　省规划办联系人：邹国平 刘项旭</span><span style=\"font-size:12px\"><span> <br/></span>　　联系电话：<span>0451</span>—</span><span style=\"font-size:12px\"><span>53607195<br/></span>　　电子邮箱：</span><span style=\"font-size:12px\"><span>hljguihuaban@sina.com<br/></span>　　全国规划办网站：</span><span><span style=\"font-size:12px\">www.npopss-cn.gov.cn</span><br/></span></p>', '2015-06-04 22:15:04', '关于转发《关于组织做好2012年度国家社科基金重大项目（第四批）投标工作的通知》的通知', null, null, null, null, null, '0');
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
INSERT INTO `bs_menu` VALUES ('130', '课程管理', '3', 'Subject_index', '1', '116', 'closed');
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
INSERT INTO `bs_pagestatic` VALUES ('347', 'Article_regulationDetail_48.htm', 'http://127.0.0.1:8080/schnew/Article_regulationDetail?id=48', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('348', 'Article_teachDetail_27.htm', 'http://127.0.0.1:8080/schnew/Article_teachDetail?id=27', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('349', 'Article_regulationDetail_33.htm', 'http://127.0.0.1:8080/schnew/Article_regulationDetail?id=33', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('350', 'Article_regulationDetail_51.htm', 'http://127.0.0.1:8080/schnew/Article_regulationDetail?id=51', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('351', 'Article_regulationDetail_50.htm', 'http://127.0.0.1:8080/schnew/Article_regulationDetail?id=50', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('352', 'Download_downloaddetail_33.htm', 'http://127.0.0.1:8080/schnew/Download_downloaddetail?id=33', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('353', 'TrainingPlan_doQueryTeacher_8_faxue.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_doQueryTeacher?id=8&para=faxue', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('354', 'Download_downloaddetail_34.htm', 'http://127.0.0.1:8080/schnew/Download_downloaddetail?id=34', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('355', 'Article_trainingResultDetail_41.htm', 'http://127.0.0.1:8080/schnew/Article_trainingResultDetail?id=41', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('356', 'Article_trainingResultDetail_46.htm', 'http://127.0.0.1:8080/schnew/Article_trainingResultDetail?id=46', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('357', 'Teacher_teacherDetail_59.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=59', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('358', 'TrainingPlan_trainingPlanDetail_8.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_trainingPlanDetail?id=8', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('359', 'TrainingPlan_toTablePage_8.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toTablePage?id=8', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('360', 'TrainingPlan_subjectDetail_20.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_subjectDetail?id=20', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('361', 'Article_trainingResultDetail_40.htm', 'http://127.0.0.1:8080/schnew/Article_trainingResultDetail?id=40', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('362', 'TrainingPlan_toPlanPage_9.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toPlanPage?id=9', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('363', 'TrainingPlan_doQueryTeacher_9_yingyongxue.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_doQueryTeacher?id=9&para=yingyongxue', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('364', 'TrainingPlan_toPlanPage_8.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toPlanPage?id=8', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('365', 'Teacher_teacherDetail_51.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=51', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('366', 'Article_teachDetail_29.htm', 'http://127.0.0.1:8080/schnew/Article_teachDetail?id=29', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('367', 'TrainingPlan_subjectDetail_18.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_subjectDetail?id=18', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('368', 'Article_trainingResultDetail_21.htm', 'http://127.0.0.1:8080/schnew/Article_trainingResultDetail?id=21', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('369', 'Teacher_teacherDetail_55.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=55', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('370', 'Teacher_teacherDetail_57.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=57', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('371', 'TrainingPlan_subjectDetail_19.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_subjectDetail?id=19', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('372', 'Teacher_teacherDetail_60.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=60', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('373', 'Teacher_teacherDetail_61.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=61', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('374', 'Teacher_teacherDetail_62.htm', 'http://127.0.0.1:8080/schnew/Teacher_teacherDetail?id=62', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('375', 'TrainingPlan_trainingPlanDetail_10.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_trainingPlanDetail?id=10', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('376', 'TrainingPlan_toTablePage_10.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toTablePage?id=10', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('377', 'TrainingPlan_toTablePage_11.htm', 'http://127.0.0.1:8080/schnew/TrainingPlan_toTablePage?id=11', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\');
INSERT INTO `bs_pagestatic` VALUES ('378', 'index.htm', 'http://localhost:8080/sch/index', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('379', 'TrainingPlan_toPlanPage.htm', 'http://localhost:8080/sch/TrainingPlan_toPlanPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('380', 'TrainingPlan_toPlanPage.htm', 'http://localhost:8080/sch/TrainingPlan_toPlanPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('381', 'TrainingPlan_toTablePage_10.htm', 'http://localhost:8080/sch/TrainingPlan_toTablePage?id=10', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('382', 'TrainingPlan_trainingPlanDetail_10.htm', 'http://localhost:8080/sch/TrainingPlan_trainingPlanDetail?id=10', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('383', 'TrainingPlan_doQueryTeacher_10_faxue.htm', 'http://localhost:8080/sch/TrainingPlan_doQueryTeacher?id=10&para=faxue', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('384', 'Teacher_teacherDetail_3.htm', 'http://localhost:8080/sch/Teacher_teacherDetail?id=3', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('385', 'Teacher_teacherDetail_1.htm', 'http://localhost:8080/sch/Teacher_teacherDetail?id=1', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('386', 'Article_toNoticePage.htm', 'http://localhost:8080/sch/Article_toNoticePage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('387', 'Article_toNoticePage.htm', 'http://localhost:8080/sch/Article_toNoticePage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('388', 'Login_init.htm', 'http://localhost:8080/sch/Login_init', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('389', 'Article_toRegulationPage.htm', 'http://localhost:8080/sch/Article_toRegulationPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('390', 'Article_toRegulationPage.htm', 'http://localhost:8080/sch/Article_toRegulationPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('391', 'Article_toTrainingResultPage.htm', 'http://localhost:8080/sch/Article_toTrainingResultPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('392', 'Article_trainingResultDetail_70.htm', 'http://localhost:8080/sch/Article_trainingResultDetail?id=70', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('393', 'Article_toExchangePage.htm', 'http://localhost:8080/sch/Article_toExchangePage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('394', 'Teacher_toTeacherPage.htm', 'http://localhost:8080/sch/Teacher_toTeacherPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('395', 'Teacher_teacherDetail_8.htm', 'http://localhost:8080/sch/Teacher_teacherDetail?id=8', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('396', 'Teacher_toSRRPage.htm', 'http://localhost:8080/sch/Teacher_toSRRPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('397', 'Teacher_toSRRPage.htm', 'http://localhost:8080/sch/Teacher_toSRRPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('398', 'Article_teachDetail_54.htm', 'http://localhost:8080/sch/Article_teachDetail?id=54', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('399', 'Download_toDownloadPage.htm', 'http://localhost:8080/sch/Download_toDownloadPage', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('400', 'Article_exchangeDetail_73.htm', 'http://localhost:8080/sch/Article_exchangeDetail?id=73', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('401', 'index.htm', 'http://localhost:8080/sch/index', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('402', 'Teacher_toTeacherPage.htm', 'http://localhost:8080/sch/Teacher_toTeacherPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('403', 'Teacher_toTeacherPage.htm', 'http://localhost:8080/sch/Teacher_toTeacherPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('404', 'Article_toExchangePage.htm', 'http://localhost:8080/sch/Article_toExchangePage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('405', 'Article_toExchangePage.htm', 'http://localhost:8080/sch/Article_toExchangePage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('406', 'Login_init.htm', 'http://localhost:8080/sch/Login_init', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('407', 'Login_init.htm', 'http://localhost:8080/sch/Login_init', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('408', 'Article_toNoticePage.htm', 'http://localhost:8080/sch/Article_toNoticePage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('409', 'Teacher_toSRRPage.htm', 'http://localhost:8080/sch/Teacher_toSRRPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('410', 'Article_toRegulationPage.htm', 'http://localhost:8080/sch/Article_toRegulationPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('411', 'TrainingPlan_toPlanPage.htm', 'http://localhost:8080/sch/TrainingPlan_toPlanPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('412', 'TrainingPlan_toPlanPage.htm', 'http://localhost:8080/sch/TrainingPlan_toPlanPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('413', 'TrainingPlan_toTablePage_10.htm', 'http://localhost:8080/sch/TrainingPlan_toTablePage?id=10', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('414', 'Article_toTrainingResultPage.htm', 'http://localhost:8080/sch/Article_toTrainingResultPage', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('415', 'Teacher_teacherDetail_1.htm', 'http://localhost:8080/sch/Teacher_teacherDetail?id=1', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
INSERT INTO `bs_pagestatic` VALUES ('416', 'Article_exchangeDetail_78.htm', 'http://localhost:8080/sch/Article_exchangeDetail?id=78', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\');
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
INSERT INTO `bs_user` VALUES ('00000000029', '0604041918190', null, '111', 'www', '13333', null, '123123@qq.com', 'no', '1111');
INSERT INTO `bs_user_role` VALUES ('1', '1', '1');
INSERT INTO `bs_user_role` VALUES ('2', '0217101700846', '3');
INSERT INTO `bs_user_role` VALUES ('3', '2', '3');
INSERT INTO `bs_user_role` VALUES ('4', '0604041918190', '3');
INSERT INTO `jforum_bookmarks` VALUES ('1', '3', '3', '2', '1', '第一帖哦', '`12`12');
INSERT INTO `jforum_categories` VALUES ('1', '默认分区', '1', '0');
INSERT INTO `jforum_categories` VALUES ('2', '公共模块', '2', '0');
INSERT INTO `jforum_categories` VALUES ('3', '会员可见', '3', '0');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online', '3', '1');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online', '3', '2');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online.date', '1418722782531', '3');
INSERT INTO `jforum_config` VALUES ('most.users.ever.online.date', '1418722782531', '4');
INSERT INTO `jforum_forums` VALUES ('1', '1', '默认版块', '这是一个默认版块', '1', '1', '4', '0');
INSERT INTO `jforum_forums` VALUES ('2', '3', '灌水区', 'dfdfdfdfdfdf', '2', '3', '7', '0');
INSERT INTO `jforum_forums` VALUES ('3', '2', '公告区', 'asdfasdfasdfasdf', '3', '3', '10', '0');
INSERT INTO `jforum_forums` VALUES ('4', '3', '精华区', 'fffddasdfasdf', '4', '0', '0', '0');
INSERT INTO `jforum_groups` VALUES ('1', '游客', '游客', '0');
INSERT INTO `jforum_groups` VALUES ('2', '管理员', '管理员用户', '0');
INSERT INTO `jforum_groups` VALUES ('3', '一级会员', '1', '0');
INSERT INTO `jforum_groups` VALUES ('4', '二级', '2', '0');
INSERT INTO `jforum_groups` VALUES ('5', '灌水区版主', '123123', '2');
INSERT INTO `jforum_groups` VALUES ('6', '精华区版主', '123123', '2');
INSERT INTO `jforum_groups` VALUES ('7', '公告区版主', '', '2');
INSERT INTO `jforum_moderation_log` VALUES ('1', '3', '测试置顶成功！！！', '测试置顶测试置顶测试置顶测试置顶测试置顶', '2015-01-15 16:49:31', '2', '6', '5', '2');
INSERT INTO `jforum_posts` VALUES ('3', '3', '1', '3', '2014-12-16 17:16:02', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:16:02', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('4', '3', '1', '3', '2014-12-16 17:16:30', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:16:30', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('5', '4', '2', '2', '2014-12-16 17:28:05', '127.0.0.1', '1', '0', '1', '1', '2014-12-16 17:28:05', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('6', '5', '2', '2', '2015-01-15 16:47:58', '127.0.0.1', '1', '0', '1', '1', '2015-01-15 16:49:31', '1', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('7', '6', '2', '3', '2015-01-15 17:01:33', '127.0.0.1', '1', '0', '1', '1', '2015-01-15 17:01:34', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('8', '7', '3', '3', '2015-04-22 10:52:59', '127.0.0.1', '1', '0', '1', '1', '2015-04-22 10:52:59', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('9', '8', '3', '3', '2015-04-22 10:53:32', '127.0.0.1', '1', '0', '1', '1', '2015-04-22 10:53:32', '0', '1', '0', '0');
INSERT INTO `jforum_posts` VALUES ('10', '9', '3', '3', '2015-04-22 10:54:27', '127.0.0.1', '1', '0', '1', '1', '2015-04-22 10:54:27', '0', '1', '0', '0');
INSERT INTO `jforum_posts_text` VALUES ('3', '哈哈', '第一帖哦');
INSERT INTO `jforum_posts_text` VALUES ('4', '沙发我也抢了', '回复:第一帖哦');
INSERT INTO `jforum_posts_text` VALUES ('5', '3434', '232324234');
INSERT INTO `jforum_posts_text` VALUES ('6', '测试置顶测试置顶测试置顶测试置顶测试置顶', '测试置顶');
INSERT INTO `jforum_posts_text` VALUES ('7', '测试投票测试投票测试投票', '测试投票');
INSERT INTO `jforum_posts_text` VALUES ('8', '公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖公告区第一帖', '公告区第一帖');
INSERT INTO `jforum_posts_text` VALUES ('9', '公告区置顶1公告区置顶1公告区置顶1公告区置顶1公告区置顶1公告区置顶1', '公告区置顶1');
INSERT INTO `jforum_posts_text` VALUES ('10', '公告区投票1公告区投票1公告区投票1公告区投票1公告区投票1公告区投票1', '公告区投票1');
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
INSERT INTO `jforum_role_values` VALUES ('46', '2');
INSERT INTO `jforum_role_values` VALUES ('52', '2');
INSERT INTO `jforum_role_values` VALUES ('54', '2');
INSERT INTO `jforum_role_values` VALUES ('50', '2');
INSERT INTO `jforum_role_values` VALUES ('55', '2');
INSERT INTO `jforum_role_values` VALUES ('53', '2');
INSERT INTO `jforum_role_values` VALUES ('56', '2');
INSERT INTO `jforum_role_values` VALUES ('43', '2');
INSERT INTO `jforum_role_values` VALUES ('57', '2');
INSERT INTO `jforum_role_values` VALUES ('51', '2');
INSERT INTO `jforum_role_values` VALUES ('58', '2');
INSERT INTO `jforum_role_values` VALUES ('52', '3');
INSERT INTO `jforum_role_values` VALUES ('54', '3');
INSERT INTO `jforum_role_values` VALUES ('50', '3');
INSERT INTO `jforum_role_values` VALUES ('55', '3');
INSERT INTO `jforum_role_values` VALUES ('53', '3');
INSERT INTO `jforum_role_values` VALUES ('56', '3');
INSERT INTO `jforum_role_values` VALUES ('43', '3');
INSERT INTO `jforum_role_values` VALUES ('57', '3');
INSERT INTO `jforum_role_values` VALUES ('52', '4');
INSERT INTO `jforum_role_values` VALUES ('54', '4');
INSERT INTO `jforum_role_values` VALUES ('50', '4');
INSERT INTO `jforum_role_values` VALUES ('55', '4');
INSERT INTO `jforum_role_values` VALUES ('53', '4');
INSERT INTO `jforum_role_values` VALUES ('56', '4');
INSERT INTO `jforum_role_values` VALUES ('43', '4');
INSERT INTO `jforum_role_values` VALUES ('57', '4');
INSERT INTO `jforum_role_values` VALUES ('51', '4');
INSERT INTO `jforum_role_values` VALUES ('58', '4');
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
INSERT INTO `jforum_role_values` VALUES ('465', '3');
INSERT INTO `jforum_role_values` VALUES ('465', '2');
INSERT INTO `jforum_role_values` VALUES ('465', '4');
INSERT INTO `jforum_role_values` VALUES ('465', '1');
INSERT INTO `jforum_role_values` VALUES ('468', '2');
INSERT INTO `jforum_role_values` VALUES ('469', '1');
INSERT INTO `jforum_role_values` VALUES ('469', '2');
INSERT INTO `jforum_role_values` VALUES ('469', '3');
INSERT INTO `jforum_role_values` VALUES ('474', '3');
INSERT INTO `jforum_role_values` VALUES ('474', '2');
INSERT INTO `jforum_role_values` VALUES ('474', '4');
INSERT INTO `jforum_role_values` VALUES ('474', '1');
INSERT INTO `jforum_role_values` VALUES ('477', '3');
INSERT INTO `jforum_role_values` VALUES ('477', '4');
INSERT INTO `jforum_role_values` VALUES ('477', '1');
INSERT INTO `jforum_role_values` VALUES ('479', '3');
INSERT INTO `jforum_role_values` VALUES ('479', '2');
INSERT INTO `jforum_role_values` VALUES ('479', '4');
INSERT INTO `jforum_role_values` VALUES ('479', '1');
INSERT INTO `jforum_role_values` VALUES ('484', '3');
INSERT INTO `jforum_role_values` VALUES ('484', '2');
INSERT INTO `jforum_role_values` VALUES ('484', '4');
INSERT INTO `jforum_role_values` VALUES ('484', '1');
INSERT INTO `jforum_role_values` VALUES ('487', '4');
INSERT INTO `jforum_role_values` VALUES ('488', '1');
INSERT INTO `jforum_role_values` VALUES ('488', '2');
INSERT INTO `jforum_role_values` VALUES ('488', '3');
INSERT INTO `jforum_role_values` VALUES ('492', '3');
INSERT INTO `jforum_role_values` VALUES ('492', '2');
INSERT INTO `jforum_role_values` VALUES ('492', '4');
INSERT INTO `jforum_role_values` VALUES ('492', '1');
INSERT INTO `jforum_role_values` VALUES ('493', '3');
INSERT INTO `jforum_role_values` VALUES ('493', '2');
INSERT INTO `jforum_role_values` VALUES ('493', '4');
INSERT INTO `jforum_role_values` VALUES ('493', '1');
INSERT INTO `jforum_role_values` VALUES ('495', '3');
INSERT INTO `jforum_role_values` VALUES ('495', '2');
INSERT INTO `jforum_role_values` VALUES ('495', '4');
INSERT INTO `jforum_role_values` VALUES ('495', '1');
INSERT INTO `jforum_role_values` VALUES ('496', '3');
INSERT INTO `jforum_role_values` VALUES ('496', '2');
INSERT INTO `jforum_role_values` VALUES ('496', '4');
INSERT INTO `jforum_role_values` VALUES ('496', '1');
INSERT INTO `jforum_role_values` VALUES ('498', '3');
INSERT INTO `jforum_role_values` VALUES ('498', '2');
INSERT INTO `jforum_role_values` VALUES ('498', '4');
INSERT INTO `jforum_role_values` VALUES ('498', '1');
INSERT INTO `jforum_role_values` VALUES ('504', '3');
INSERT INTO `jforum_role_values` VALUES ('504', '2');
INSERT INTO `jforum_role_values` VALUES ('504', '4');
INSERT INTO `jforum_role_values` VALUES ('504', '1');
INSERT INTO `jforum_role_values` VALUES ('505', '1');
INSERT INTO `jforum_role_values` VALUES ('507', '1');
INSERT INTO `jforum_role_values` VALUES ('507', '2');
INSERT INTO `jforum_role_values` VALUES ('510', '1');
INSERT INTO `jforum_role_values` VALUES ('511', '3');
INSERT INTO `jforum_role_values` VALUES ('511', '2');
INSERT INTO `jforum_role_values` VALUES ('511', '4');
INSERT INTO `jforum_role_values` VALUES ('511', '1');
INSERT INTO `jforum_role_values` VALUES ('512', '3');
INSERT INTO `jforum_role_values` VALUES ('512', '2');
INSERT INTO `jforum_role_values` VALUES ('512', '4');
INSERT INTO `jforum_role_values` VALUES ('512', '1');
INSERT INTO `jforum_role_values` VALUES ('513', '3');
INSERT INTO `jforum_role_values` VALUES ('513', '2');
INSERT INTO `jforum_role_values` VALUES ('513', '4');
INSERT INTO `jforum_role_values` VALUES ('513', '1');
INSERT INTO `jforum_role_values` VALUES ('514', '3');
INSERT INTO `jforum_role_values` VALUES ('514', '2');
INSERT INTO `jforum_role_values` VALUES ('514', '4');
INSERT INTO `jforum_role_values` VALUES ('514', '1');
INSERT INTO `jforum_role_values` VALUES ('521', '3');
INSERT INTO `jforum_role_values` VALUES ('521', '2');
INSERT INTO `jforum_role_values` VALUES ('521', '4');
INSERT INTO `jforum_role_values` VALUES ('521', '1');
INSERT INTO `jforum_role_values` VALUES ('522', '3');
INSERT INTO `jforum_role_values` VALUES ('522', '2');
INSERT INTO `jforum_role_values` VALUES ('522', '4');
INSERT INTO `jforum_role_values` VALUES ('522', '1');
INSERT INTO `jforum_role_values` VALUES ('523', '3');
INSERT INTO `jforum_role_values` VALUES ('523', '2');
INSERT INTO `jforum_role_values` VALUES ('523', '4');
INSERT INTO `jforum_role_values` VALUES ('523', '1');
INSERT INTO `jforum_role_values` VALUES ('525', '3');
INSERT INTO `jforum_role_values` VALUES ('526', '1');
INSERT INTO `jforum_role_values` VALUES ('526', '2');
INSERT INTO `jforum_role_values` VALUES ('526', '3');
INSERT INTO `jforum_role_values` VALUES ('530', '3');
INSERT INTO `jforum_role_values` VALUES ('530', '2');
INSERT INTO `jforum_role_values` VALUES ('530', '4');
INSERT INTO `jforum_role_values` VALUES ('530', '1');
INSERT INTO `jforum_role_values` VALUES ('531', '3');
INSERT INTO `jforum_role_values` VALUES ('531', '2');
INSERT INTO `jforum_role_values` VALUES ('531', '4');
INSERT INTO `jforum_role_values` VALUES ('531', '1');
INSERT INTO `jforum_role_values` VALUES ('533', '3');
INSERT INTO `jforum_role_values` VALUES ('533', '2');
INSERT INTO `jforum_role_values` VALUES ('533', '4');
INSERT INTO `jforum_role_values` VALUES ('533', '1');
INSERT INTO `jforum_role_values` VALUES ('534', '3');
INSERT INTO `jforum_role_values` VALUES ('534', '2');
INSERT INTO `jforum_role_values` VALUES ('534', '4');
INSERT INTO `jforum_role_values` VALUES ('534', '1');
INSERT INTO `jforum_role_values` VALUES ('536', '3');
INSERT INTO `jforum_role_values` VALUES ('536', '2');
INSERT INTO `jforum_role_values` VALUES ('536', '4');
INSERT INTO `jforum_role_values` VALUES ('536', '1');
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
INSERT INTO `jforum_roles` VALUES ('459', '5', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('460', '5', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('461', '5', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('462', '5', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('463', '5', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('464', '5', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('465', '5', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('466', '5', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('467', '5', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('468', '5', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('469', '5', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('470', '5', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('471', '5', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('472', '5', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('473', '5', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('474', '5', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('475', '5', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('476', '5', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('477', '5', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('478', '5', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('479', '5', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('480', '6', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('481', '6', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('482', '6', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('483', '6', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('484', '6', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('485', '6', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('486', '6', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('487', '6', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('488', '6', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('489', '6', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('490', '6', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('491', '6', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('492', '6', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('493', '6', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('494', '6', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('495', '6', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('496', '6', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('497', '6', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('498', '6', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('499', '1', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('500', '1', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('501', '1', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('502', '1', 'perm_moderation_log');
INSERT INTO `jforum_roles` VALUES ('503', '1', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('504', '1', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('505', '1', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('506', '1', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('507', '1', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('508', '1', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('509', '1', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('510', '1', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('511', '1', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('512', '1', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('513', '1', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('514', '1', 'perm_read_only_forums');
INSERT INTO `jforum_roles` VALUES ('515', '7', 'perm_moderation');
INSERT INTO `jforum_roles` VALUES ('516', '7', 'perm_karma_enabled');
INSERT INTO `jforum_roles` VALUES ('517', '7', 'perm_moderation_topic_lockUnlock');
INSERT INTO `jforum_roles` VALUES ('518', '7', 'perm_vote');
INSERT INTO `jforum_roles` VALUES ('519', '7', 'perm_bookmarks_enabled');
INSERT INTO `jforum_roles` VALUES ('520', '7', 'perm_moderation_log');
INSERT INTO `jforum_roles` VALUES ('521', '7', 'perm_attachments_download');
INSERT INTO `jforum_roles` VALUES ('522', '7', 'perm_reply_only');
INSERT INTO `jforum_roles` VALUES ('523', '7', 'perm_attachments_enabled');
INSERT INTO `jforum_roles` VALUES ('524', '7', 'perm_moderation_post_remove');
INSERT INTO `jforum_roles` VALUES ('525', '7', 'perm_moderation_forums');
INSERT INTO `jforum_roles` VALUES ('526', '7', 'perm_category');
INSERT INTO `jforum_roles` VALUES ('527', '7', 'perm_create_sticky_announcement_topics');
INSERT INTO `jforum_roles` VALUES ('528', '7', 'perm_moderation_post_edit');
INSERT INTO `jforum_roles` VALUES ('529', '7', 'perm_create_poll');
INSERT INTO `jforum_roles` VALUES ('530', '7', 'perm_reply_without_moderation');
INSERT INTO `jforum_roles` VALUES ('531', '7', 'perm_anonymous_post');
INSERT INTO `jforum_roles` VALUES ('532', '7', 'perm_moderation_approve_messages');
INSERT INTO `jforum_roles` VALUES ('533', '7', 'perm_html_disabled');
INSERT INTO `jforum_roles` VALUES ('534', '7', 'perm_forum');
INSERT INTO `jforum_roles` VALUES ('535', '7', 'perm_moderation_topic_move');
INSERT INTO `jforum_roles` VALUES ('536', '7', 'perm_read_only_forums');
INSERT INTO `jforum_sessions` VALUES ('AAE7818E66DCFE229E6FE962B7DD1A20', '2', '2015-06-04 17:44:10', '8580331', '', '0', null);
INSERT INTO `jforum_sessions` VALUES ('72A51505512E53ED84CFCAC5B54C66C5', '3', '2015-04-22 10:46:32', '617630', '', '0', null);
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
INSERT INTO `jforum_topics` VALUES ('4', '2', '232324234', '2', '2014-12-16 17:28:05', '8', '0', '0', '0', '2', '5', '5', '0', '0');
INSERT INTO `jforum_topics` VALUES ('5', '2', '测试置顶', '2', '2015-01-15 16:47:58', '7', '0', '0', '0', '1', '6', '6', '0', '0');
INSERT INTO `jforum_topics` VALUES ('6', '2', '测试投票', '3', '2015-01-15 17:01:33', '14', '0', '0', '1', '0', '7', '7', '0', '0');
INSERT INTO `jforum_topics` VALUES ('7', '3', '公告区第一帖', '3', '2015-04-22 10:52:59', '4', '0', '0', '0', '0', '8', '8', '0', '0');
INSERT INTO `jforum_topics` VALUES ('8', '3', '公告区置顶1', '3', '2015-04-22 10:53:32', '3', '0', '0', '0', '1', '9', '9', '0', '0');
INSERT INTO `jforum_topics` VALUES ('9', '3', '公告区投票1', '3', '2015-04-22 10:54:27', '3', '0', '0', '2', '0', '10', '10', '0', '0');
INSERT INTO `jforum_topics_watch` VALUES ('3', '3', '1');
INSERT INTO `jforum_topics_watch` VALUES ('4', '2', '1');
INSERT INTO `jforum_topics_watch` VALUES ('5', '2', '1');
INSERT INTO `jforum_topics_watch` VALUES ('6', '3', '1');
INSERT INTO `jforum_topics_watch` VALUES ('7', '3', '1');
INSERT INTO `jforum_topics_watch` VALUES ('8', '3', '1');
INSERT INTO `jforum_topics_watch` VALUES ('9', '3', '1');
INSERT INTO `jforum_user_groups` VALUES ('2', '2');
INSERT INTO `jforum_user_groups` VALUES ('1', '1');
INSERT INTO `jforum_user_groups` VALUES ('7', '3');
INSERT INTO `jforum_user_groups` VALUES ('6', '4');
INSERT INTO `jforum_user_groups` VALUES ('5', '5');
INSERT INTO `jforum_users` VALUES ('1', null, '游客', 'nopass', '0', '0', null, '2014-12-16 17:03:30', null, '0', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null);
INSERT INTO `jforum_users` VALUES ('2', null, 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', '0', null, '2014-12-16 17:03:30', null, '4', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, 'c4b7541dc1f256957d20821448b28444');
INSERT INTO `jforum_users` VALUES ('3', '1', '版主-公告区', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', '2014-12-16 17:48:41', '2014-12-16 17:15:20', null, '6', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '-1', null, '0', 'wanglitao@qq.com', '', '', '', '', null, '', '', '', '', '', '', null, null, '0', null, '1', null, null, '7c96580ff33d7db90f3a4d1e7f6c870c');
INSERT INTO `jforum_users` VALUES ('4', '1', '版主-精华区', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', '2014-12-16 17:48:49', '2014-12-16 17:39:22', null, '0', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '-1', null, '0', '1111@qq.com', '', '', '', '', null, '', '', '', '', '', '', null, null, '0', null, '1', null, null, null);
INSERT INTO `jforum_users` VALUES ('5', '1', '版主-灌水区', 'c4ca4238a0b923820dcc509a6f75849b', '0', '0', null, '2015-04-22 10:44:14', null, '0', '', null, '', '%d/%M/%Y %H:%i', '0', '0', null, null, '0', '1', '0', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '0', null, '0', '111@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, null);
INSERT INTO `jforum_vote_desc` VALUES ('1', '6', '这个网站怎么样', '2015-01-15 17:01:33', '10');
INSERT INTO `jforum_vote_desc` VALUES ('2', '9', '这区好不好', '2015-04-22 10:54:27', '10');
INSERT INTO `jforum_vote_results` VALUES ('1', '1', '好用', '1');
INSERT INTO `jforum_vote_results` VALUES ('1', '2', '不好用', '1');
INSERT INTO `jforum_vote_results` VALUES ('1', '3', '不知道', '1');
INSERT INTO `jforum_vote_results` VALUES ('2', '1', '1.好', '0');
INSERT INTO `jforum_vote_results` VALUES ('2', '2', '2.很好', '0');
INSERT INTO `jforum_vote_results` VALUES ('2', '3', '3.非常好', '0');
INSERT INTO `jforum_vote_voters` VALUES ('1', '3', '127.0.0.1');
INSERT INTO `jforum_vote_voters` VALUES ('1', '2', '127.0.0.1');
INSERT INTO `jforum_vote_voters` VALUES ('1', '4', '127.0.0.1');
INSERT INTO `open_app` VALUES (null, '1', '12', '23', '333123', '402881e74bb43cf2014bb43cf21d0000', '2000', '1', '23', 'no');
INSERT INTO `t_department` VALUES ('10', 'faxue', '法学专业', '<p>法学专业始建于1986年。20余年来，伴随着中国教育体制的改革与发展，法学专业历经了专科到本科、本科到硕士研究生教育的历程。自1994年开始招收本科生，2002年开始招收经济法学硕士研究生，2010年获得法学硕士一级学科授予权，有经济法学、法理学、宪法与行政法学、民商法学四个研究生专业方向，一个法学本科专业。<br/>法学专业现有专职教师21人，其中教授3人、副教授8人、讲师10人，高职教师占全体教师的比例达到52.4%；博士11人,博士化率达到52.4%，45岁以下教师中具有博士学位（含在读博士）的比例达到72.2%。另外聘兼职法学教授5人，分别担任黑龙江省法学研究所所长副所长、黑龙江省法学会专职副会长、司法职业警官学院院长、中船重工集团常务副总法律顾问等教学研究机构和船舶行业重点企业的主要职务，主要承担研究生指导工作。<br/>法学专业每年高考录取分数均高于黑龙江省重点线20分左右，高考录取分数省内法学专业排名第三，校内文科专业排名第二。法学专业每年招生人数平均在40人左右。现有在校经济法学硕士研究生、法学本科生近250人。已为国家培养硕士研究生近千人，本科生2000余人，专科生500余人，毕业生毕业率100%，就业率近三年平均92.37%以上，考研率近三年平均55.2%，2010年法学本科学生司法考试通过率达到52%。已有相当一部分毕业学生成长为各行业的中坚力量，为我国法制建设和社会发展做出了突出贡献。<br/>法学专业教学科研成果丰硕，现有哈尔滨工程大学校级精品课程2门，获得国家级多媒体课件奖励1项。承担教学研究项目共16项，其中省部级4项。承担科研项目共41项，其中国家社会科学基金、国家软科学课题等国家级项目2项，省部级科研课题21项。近五年科研经费共161.9万元，年均32.38万元，人均8.095万元。发表学术论文共207篇，其中在CSSCI期刊(含扩展版)上发表学术论文70篇，出版学术著作11部。<br/>法学专业积极改善实践教学条件。学校投入建设了高标准模拟法庭实验室，具备实时记录、视频传输、模拟审判、交流互动和地方司法庭审等功能。实验开出率达到100%，仪器设备完好率达到100%，学生参与率达到100%。成立了哈尔滨工程大学法律援助中心；在道外区人民检察院、道外区人民法院等单位建立专业实习基地，在青岛船厂、大连船厂、山海关船厂、葫芦岛船厂等船舶生产企业建立特色实践基地，能够满足实践课程学习的需要，学生的实践能力和创新能力得到明显提升。</p>', '<p>&nbsp;法学专业始建于1986年。20余年来，伴随着中国教育体制的改革与发展，法学专业历经了专科到本科、本科到硕士研究生教育的历程。自1994年开始招收本科生，2002年开始招收经济法学硕士研究生，2010年获得法学硕士一级学科授予权，有经济法学、法理学、宪法与行政法学、民商法学四个研究生专业方向，一个法学本科专业。<br/>法学专业现有专职教师21人，其中教授3人、副教授8人、讲师10人，高职教师占全体教师的比例达到52.4%；博士11人,博士化率达到52.4%，45岁以下教师中具有博士学位（含在读博士）的比例达到72.2%。另外聘兼职法学教授5人，分别担任黑龙江省法学研究所所长副所长、黑龙江省法学会专职副会长、司法职业警官学院院长、中船重工集团常务副总法律顾问等教学研究机构和船舶行业重点企业的主要职务，主要承担研究生指导工作。<br/>法学专业每年高考录取分数均高于黑龙江省重点线20分左右，高考录取分数省内法学专业排名第三，校内文科专业排名第二。法学专业每年招生人数平均在40人左右。现有在校经济法学硕士研究生、法学本科生近250人。已为国家培养硕士研究生近千人，本科生2000余人，专科生500余人，毕业生毕业率100%，就业率近三年平均92.37%以上，考研率近三年平均55.2%，2010年法学本科学生司法考试通过率达到52%。已有相当一部分毕业学生成长为各行业的中坚力量，为我国法制建设和社会发展做出了突出贡献。<br/>法学专业教学科研成果丰硕，现有哈尔滨工程大学校级精品课程2门，获得国家级多媒体课件奖励1项。承担教学研究项目共16项，其中省部级4项。承担科研项目共41项，其中国家社会科学基金、国家软科学课题等国家级项目2项，省部级科研课题21项。近五年科研经费共161.9万元，年均32.38万元，人均8.095万元。发表学术论文共207篇，其中在CSSCI期刊(含扩展版)上发表学术论文70篇，出版学术著作11部。<br/>法学专业积极改善实践教学条件。学校投入建设了高标准模拟法庭实验室，具备实时记录、视频传输、模拟审判、交流互动和地方司法庭审等功能。实验开出率达到100%，仪器设备完好率达到100%，学生参与率达到100%。成立了哈尔滨工程大学法律援助中心；在道外区人民检察院、道外区人民法院等单位建立专业实习基地，在青岛船厂、大连船厂、山海关船厂、葫芦岛船厂等船舶生产企业建立特色实践基地，能够满足实践课程学习的需要，学生的实践能力和创新能力得到明显提升。</p>', null, null, null, null);
INSERT INTO `t_department` VALUES ('11', 'faxue', '社会学系', '<p>&nbsp;</p><p><span style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"color:#000000;font-family:Microsoft YaHei\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>人文社会科学学院应用心理学系自</span><span style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">2006</span><span style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 26.66px; letter-spacing: normal; word-spacing: 0px; float: none; display: inline !important; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\">年成立以来，努力打造符合我校办学方向、服务行业发展需求、有发展前景的特色学科和应用型专业。几年来，我们本着扬长避短、错位竞争与可持续发展策略，突出学科建设重点，凝聚研究合力，加大建设力度，已逐渐形成特色鲜明的学科优势、结构合理的教师队伍及较为完整的心理学人才培养、科学研究、社会服务体系。</span></p>', '<p style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\"></span></p><p style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">“十二五”期间，我系的主要科研方向定位于“职业心理学”，具体包括职业健康心理学、心理咨询与心理健康教育、思想政治教育心理学三个研究领域。目前，在职业健康心理学研究领域，已经对企业员工的职业倦怠、潜艇艇员的心理压力等进行了探索；在心理咨询与心理健康教育研究领域，对华人应对挫折的生活智慧、心理咨询理论与方法本土化、心理健康教育课程与教学、心理健康教育理论创新等方面，已形成了系列化研究成果；在思想政治教育心理学研究领域，对思想政治教育接受心理、心理教育与道德教育的有效结合等课题进行原创性研究。</span></p><p style=\"font: 13.33px/22.1px 宋体; text-align: left; color: rgb(62, 62, 62); text-indent: 27px; letter-spacing: normal; word-spacing: 0px; white-space: normal; widows: 1; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;\"><span style=\"font-family: 宋体; font-size: 13px;\">近几年来，应用心理学系教师已承担国家级、省部级、校级研究课题近<span style=\"undefinedfont-size:12px\">30</span>项，出版著作、教材<span style=\"undefinedfont-size:12px\">20</span>部，发表学术论文<span style=\"undefinedfont-size:12px\">50</span>篇。形成了稳定的研究方向和系列化的研究成果。</span></p><p></p>', null, null, null, null);
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
INSERT INTO `t_dictionary` VALUES ('15', 'regulation', '规章制度', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('16', 'notice', '教学通知', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('17', 'teach', '教学获奖', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('18', 'reform', '教改立项', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('19', 'construction', '教材建设', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('20', 'course', '精品课程', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('21', 'build_course', '国际共建课程', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('22', 'student', '学生展示', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('23', 'researchNotice', '科研通知', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('24', 'teacherExchange', '教师国际交流', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('25', 'studentExchange', '学生国际交流', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('26', 'studentPrize', '学生获奖', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('27', 'honor', '荣誉获奖', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('28', 'socialPractice', '社会实践', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('29', 'learning', '学术活动', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('30', 'bookClub', '读书会', 'articletype', '文章分类');
INSERT INTO `t_dictionary` VALUES ('31', '2014', '2014', 'grade', '年级');
INSERT INTO `t_dictionary` VALUES ('32', '2015', '2015', 'grade', '年级');
INSERT INTO `t_dictionary` VALUES ('33', '2016', '2016', 'grade', '年级');
INSERT INTO `t_download` VALUES ('1', '备案.rar', 'uploadFile\\teacher\\o_19jt0qv9v1t4k1qncvjs1mk8bv7v.rar', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19jt0qv9v1t4k1qncvjs1mk8bv7v.rar', '1', '2015-04-27 16:45:49', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('2', '流程.docx', 'uploadFile\\teacher\\o_19jt0rd5mdhq6aj13eg12gj15p114.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19jt0rd5mdhq6aj13eg12gj15p114.docx', '1', '2015-04-27 16:45:49', 'admin', null, 'paper', null);
INSERT INTO `t_download` VALUES ('3', '会议记录0424.docx', 'uploadFile\\teacher\\o_19jt9jtli14uci3pa801puk13fk16.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19jt9jtli14uci3pa801puk13fk16.docx', '1', '2015-04-27 19:18:57', 'admin', null, 'project', null);
INSERT INTO `t_download` VALUES ('4', '会议记录0424.docx', 'uploadFile\\teacher\\o_19k1jk8uu1t351avcfo0ettnq3q.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k1jk8uu1t351avcfo0ettnq3q.docx', '1', '2015-04-29 11:30:59', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('5', '会议记录0424.docx', 'uploadFile\\teacher\\o_19k1k60eb14euq181ifp1ggd10fkq.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k1k60eb14euq181ifp1ggd10fkq.docx', '1', '2015-04-29 11:40:41', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('6', '问题.docx', 'uploadFile\\teacher\\o_19k1k62p61sjleabkqjrpt1nlbr.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k1k62p61sjleabkqjrpt1nlbr.docx', '1', '2015-04-29 11:40:41', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('7', '流程.docx', 'uploadFile\\teacher\\o_19k1k658dhs21src1ovqou8hbls.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k1k658dhs21src1ovqou8hbls.docx', '1', '2015-04-29 11:40:41', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('8', '会议记录0424.docx', 'uploadFile\\teacher\\o_19k2csed088j3ap1pape7cao2q.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k2csed088j3ap1pape7cao2q.docx', '1', '2015-04-29 18:52:19', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('9', '问题.docx', 'uploadFile\\teacher\\o_19k2csgdl3sd13jr1m1gsipfogr.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k2csgdl3sd13jr1m1gsipfogr.docx', '1', '2015-04-29 18:52:19', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('10', '销管系统迁移方案(V0.2).docx', 'uploadFile\\teacher\\o_19k2csidjnuj1gedtvt1sj1161bs.docx', 'E:\\workspace_school\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp4\\wtpwebapps\\schnew\\uploadFile\\teacher\\o_19k2csidjnuj1gedtvt1sj1161bs.docx', '1', '2015-04-29 18:52:19', 'admin', null, 'subject', null);
INSERT INTO `t_download` VALUES ('11', '02 需求.zip', 'uploadFile\\teacher\\o_19le0nqb21no9mni4c06up1tv11s.zip', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\uploadFile\\teacher\\o_19le0nqb21no9mni4c06up1tv11s.zip', '1', '2015-05-16 17:27:21', 'admin', null, 'outline', null);
INSERT INTO `t_download` VALUES ('12', '02 需求.zip', 'uploadFile\\teacher\\o_19le0nsjs1c64f0tmscvfl1mc91u.zip', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\uploadFile\\teacher\\o_19le0nsjs1c64f0tmscvfl1mc91u.zip', '1', '2015-05-16 17:27:21', 'admin', null, 'schedule', null);
INSERT INTO `t_download` VALUES ('13', '02 需求.zip', 'uploadFile\\teacher\\o_19le0nvfh128sj661rfp17q1ee020.zip', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\uploadFile\\teacher\\o_19le0nvfh128sj661rfp17q1ee020.zip', '1', '2015-05-16 17:27:21', 'admin', null, 'subject', null);
INSERT INTO `t_paper` VALUES ('113', '论文111', '1', '文摘111', null, '11', null, '1', '1', '赵老师', '中国', '2015-06-02', '12', 'CSSCI扩展', '233333', '是', '840', '000002');
INSERT INTO `t_paper` VALUES ('114', '222233', '1', '', null, '', null, '1', '0', '赵老师', '', '', '', 'SCI', '', '是', '840', '');
INSERT INTO `t_paper` VALUES ('115', '33333', '2', '', null, '', null, '1', '0', '赵老师', '', '', '', 'SCI', '', '是', '840', '');
INSERT INTO `t_paper` VALUES ('116', '4444', '3', '', null, '', null, '1', '0', '赵老师', '', '', '', 'SCI', '', '是', '840', '');
INSERT INTO `t_paper` VALUES ('117', '5555', '1', '', null, '', null, '1', '0', '赵老师', '', '', '', 'SCI', '', '是', '840', '');
INSERT INTO `t_prize` VALUES ('7', '研究报告', '2015-06-02', '1', null, '赵老师', '1', '黑龙江省高校人文社会科学研究优秀成果奖', '获奖成果名称', '一等奖', '中国文化产业部', '000005');
INSERT INTO `t_research` VALUES ('85', '00001', '面上', '立项1', '0', '0', null, null, '2015-06-03', '2015-06-29', null, '1', '1', '赵老师', '1', '省哲学社会科学研究规划项目', '否', '合格');
INSERT INTO `t_research` VALUES ('86', '2', '重大', '1', '0', '0', null, null, '2015-06-02', '2015-06-09', null, '1', '0', '赵老师', '1', '教育部人文社科基金', '是', '优秀');
INSERT INTO `t_research` VALUES ('87', '3', '重大', '2', '0', '0', null, null, '2015-06-10', '2015-06-25', null, '1', '0', '赵老师', '1', '国家社会科学基金', '是', '优秀');
INSERT INTO `t_research` VALUES ('88', '4', '重大', '3', '0', '0', null, null, '', '', null, '1', '0', '赵老师', '1', '国家社会科学基金', '是', '优秀');
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
INSERT INTO `t_subject` VALUES ('6', '英语课', '英语课英语课英语课英语课英语课英语课英语课英语课英语课', 'comparter', '公共课', '0001', null, null, null, '1', null, null, 'faxue', '法学', '2015', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null);
INSERT INTO `t_subject` VALUES ('7', '法学课', '法学课法学课法学课法学课法学课', 'comparter', '公共课', '0002', null, null, null, '1', '方法', '12', 'faxue', '法学', '2015', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null);
INSERT INTO `t_subject` VALUES ('10', '国际法', '国际法国际法国际法国际法国际法', 'comparter', '公共课', '0003', '5', '6', '7', '1', '方法', '12', 'faxue', '法学', '2015', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null);
INSERT INTO `t_subject` VALUES ('11', '基本法', '123123', 'choose', '选修课', '0004', '8', '9', '10', '1', '方法', '12', 'yingyongxue', '应用学', '2014', '321321321', '3', '16', '1', '2', '12', '20', '1', '2', '3', '4', '5', '6', '7', null, null);
INSERT INTO `t_subject` VALUES ('12', '法学2', '123123', 'comparter', '公共课', '0001', '11', '12', '13', '1', null, null, 'faxue', '法学', '2015', '32131232123', '4', '5', '5', '', '', '5', '5', '', '', '', '', '', '', null, null);
INSERT INTO `t_teacher` VALUES ('1', '0', '赵老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-27', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29k4jm1ic2kb1a0ssqql203i.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('2', '0', '1', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-28', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29hq2oqti1um9bu1c2m11tl7.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('3', '0', '3', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-27', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29i2db1qgapt1fedfqq1gkhj.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('4', '0', '4', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-28', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29i917d431io6154gmkm1msrv.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('5', '0', '5', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-21', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29ig9j1k0aso3i7j9r12qr1b.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('6', '0', '6', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-20', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29imuc1j86ptshu3kk7hno1n.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('7', '0', '7', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-04-28', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29iub2uk1n11rqapes9nb23.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('8', '1', '王老师', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-05-31', 'xiaozhang', '1', '123123', 'E:\\workspace_checkDemo\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\sch\\uploadFile\\teacher\\o_19mhc7ap3iun1u953i11lgp2e17.gif', '教授', '校长', 'admin');
INSERT INTO `t_teacher` VALUES ('12', '0', '方法', 'jiaoshou', null, 'faxue', null, '法学', null, null, null, null, '2015-05-29', 'xiaozhang', '1', '', 'D:\\JAVA\\apache-tomcat-7.0.34show\\webapps\\sch\\uploadFile\\teacher\\o_19n29kdjio75psp1g46eafs693u.gif', '教授', '校长', 'admin');
INSERT INTO `t_trainingplan` VALUES ('21', '10', '1', '11,10', '基本法,国际法', null, null, null, null, null, null, '2014');
INSERT INTO `t_trainingplan` VALUES ('22', '10', '1', '11,10,7,6,12', '基本法,国际法,法学课,英语课,法学2', null, null, null, null, null, null, '2015');
INSERT INTO `t_work` VALUES ('121', '1', '著作111', '出版单位11', '编著', '大连', '2015-06-03', '', '否', '10', 'isbn111111', '820', '000003', '20000', '1', null, '赵老师');
INSERT INTO `t_work` VALUES ('122', '1', '轻轻轻轻', '2223', '专著', '', '', '', '是', '', '', '840', '', '', '1', null, '赵老师');
INSERT INTO `t_work` VALUES ('123', '2', '222www', '', '专著', '', '', '', '是', '', '', '840', '', '', '1', null, '赵老师');
INSERT INTO `t_work` VALUES ('124', '1', '334444455', '', '译著', '', '', '顶顶顶顶', '是', '', '', '840', '', '', '1', null, '赵老师');
