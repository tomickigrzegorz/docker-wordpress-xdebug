/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`, `comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE = InnoDB AUTO_INCREMENT = 322 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 44 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`, `post_status`, `post_date`, `ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE = InnoDB AUTO_INCREMENT = 33 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`, `taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE = InnoDB AUTO_INCREMENT = 21 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_commentmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_comments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_links
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_options
# ------------------------------------------------------------

INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (2, 'home', 'http://localhost', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (3, 'blogname', 'test', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    4,
    'blogdescription',
    'Kolejna witryna oparta na WordPressie',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (5, 'users_can_register', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (6, 'admin_email', 'test@test.pl', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (7, 'start_of_week', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (8, 'use_balanceTags', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (9, 'use_smilies', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (10, 'require_name_email', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (11, 'comments_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (12, 'posts_per_rss', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (17, 'mailserver_port', '110', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (18, 'default_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (19, 'default_comment_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (20, 'default_ping_status', 'open', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (22, 'posts_per_page', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (23, 'date_format', 'j F Y', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (24, 'time_format', 'H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (25, 'links_updated_date_format', 'j F Y H:i', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (26, 'comment_moderation', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (27, 'moderation_notify', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    28,
    'permalink_structure',
    '/%category%/%postname%/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    29,
    'rewrite_rules',
    'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (30, 'hack_file', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (32, 'moderation_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (33, 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (34, 'category_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    35,
    'ping_sites',
    'http://rpc.pingomatic.com/',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (36, 'comment_max_links', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (37, 'gmt_offset', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (38, 'default_email_category', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (39, 'recently_edited', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (40, 'template', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (41, 'stylesheet', 'newTemplate', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (44, 'comment_registration', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (45, 'html_type', 'text/html', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (46, 'use_trackback', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (47, 'default_role', 'subscriber', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (48, 'db_version', '49752', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (50, 'upload_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (51, 'blog_public', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (52, 'default_link_category', '2', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (53, 'show_on_front', 'posts', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (54, 'tag_base', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (55, 'show_avatars', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (56, 'avatar_rating', 'G', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (57, 'upload_url_path', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (61, 'medium_size_w', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (62, 'medium_size_h', '300', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (64, 'large_size_w', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (65, 'large_size_h', '1024', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (66, 'image_default_link_type', 'none', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (67, 'image_default_size', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (68, 'image_default_align', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (71, 'thread_comments', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (73, 'page_comments', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (74, 'comments_per_page', '50', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (76, 'comment_order', 'asc', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    78,
    'widget_categories',
    'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (82, 'timezone_string', 'Europe/Warsaw', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (84, 'page_on_front', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (85, 'default_post_format', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (88, 'site_icon', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (92, 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (93, 'initial_db_version', '38590', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    94,
    'wp_user_roles',
    'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (95, 'fresh_site', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (96, 'WPLANG', 'pl_PL', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    97,
    'widget_search',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    98,
    'widget_recent-posts',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    99,
    'widget_recent-comments',
    'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    100,
    'widget_archives',
    'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    101,
    'widget_meta',
    'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    102,
    'sidebars_widgets',
    'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    103,
    'widget_pages',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    104,
    'widget_calendar',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    105,
    'widget_media_audio',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    106,
    'widget_media_image',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    107,
    'widget_media_gallery',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    108,
    'widget_media_video',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    109,
    'widget_tag_cloud',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    110,
    'widget_nav_menu',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    111,
    'widget_custom_html',
    'a:1:{s:12:\"_multiwidget\";i:1;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    112,
    'cron',
    'a:8:{i:1618959026;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618987826;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618997636;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1619027441;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619031059;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619031073;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1619040836;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    113,
    'theme_mods_twentyseventeen',
    'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223189;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (144, 'current_theme', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    145,
    'theme_mods_newTemplate',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223393;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (146, 'theme_switched', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    152,
    'theme_mods_twentyfifteen',
    'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535223453;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    154,
    '_transient_twentyfifteen_categories',
    '1',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (158, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    176,
    'logged_in_key',
    '9m;et>$j$(QUtL<66l{e7wffJMR(n+Nm+S5*su8Z|+|OmH$r)$riGK:*I~(B`616',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    177,
    'logged_in_salt',
    '0ZVYX*h,##vZ,{82my]!w15- &5eMO[#nmco21<L`CmZ!d8eiNa8F0h:eRO<PnL<',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    178,
    'nonce_key',
    'a;~J:{2Cst20S@=IPz:bLi:?O%}i|k<oENjZ^4FrLJJO77Q^EkaXEIPcX>,-Lk;1',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    179,
    'nonce_salt',
    'T6>:^*MfU7@Y`.<.<B*yn}v92&rh}H:+j);l,RO]9z!3S5e;g,7]Kp$.#7~Mq-En',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    187,
    'auth_key',
    'B=QEiu%s{1Z+/{Q6fVpbU[h4?<A))tbi~Y1#NhD;`/FT&5-|kU90b.N&D-2J5Qa/',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    188,
    'auth_salt',
    's3g2bo]?%)7@(_{~OglPz_c& AOp*sDSe#Ur|x[07goE%Nn/}HHxH=Dy_uv 6dCR',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (189, 'db_upgraded', '', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    218,
    'auto_core_update_notified',
    'a:4:{s:4:\"type\";s:4:\"fail\";s:5:\"email\";s:12:\"test@test.pl\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1575049848;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (219, 'recovery_keys', 'a:0:{}', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    242,
    '_transient_health-check-site-status-result',
    '{\"good\":\"10\",\"recommended\":\"4\",\"critical\":\"1\"}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (245, 'page_for_posts', '0', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (253, 'admin_email_lifespan', '1619213031', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    272,
    '_site_transient_timeout_theme_roots',
    '1618957235',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    273,
    '_site_transient_theme_roots',
    'a:3:{s:11:\"newTemplate\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    279,
    '_site_transient_timeout_browser_43cb75c6ebdc32b138c2620e4d9863d1',
    '1619558632',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    280,
    '_site_transient_browser_43cb75c6ebdc32b138c2620e4d9863d1',
    'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.72\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    281,
    '_site_transient_timeout_php_check_7841c854be39099ac1d9b61bb411ecb0',
    '1619558633',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    282,
    '_site_transient_php_check_7841c854be39099ac1d9b61bb411ecb0',
    'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    283,
    '_site_transient_timeout_community-events-1de8873aa0984c1dbee47981d08b0def',
    '1618997036',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    284,
    '_site_transient_community-events-1de8873aa0984c1dbee47981d08b0def',
    'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.21.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:64:\"Demo + Discussion group: Creating and Registering Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/277669249/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-04-23 07:00:00\";s:8:\"end_date\";s:19:\"2021-04-23 08:00:00\";s:20:\"start_unix_timestamp\";i:1619186400;s:18:\"end_unix_timestamp\";i:1619190000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2021/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2021-06-07 00:00:00\";s:8:\"end_date\";s:19:\"2021-06-10 00:00:00\";s:20:\"start_unix_timestamp\";i:1623020400;s:18:\"end_unix_timestamp\";i:1623279600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1622022;s:9:\"longitude\";d:-8.6570588;}}}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    285,
    '_transient_timeout_plugin_slugs',
    '1619040237',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    286,
    '_transient_plugin_slugs',
    'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    287,
    '_transient_timeout_feed_a2a8f6ff8f129a81518b9f747f983e41',
    '1618997037',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    288,
    '_transient_feed_a2a8f6ff8f129a81518b9f747f983e41',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"Blog | WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 09:42:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50773\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Waclaw Jacek\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress 4.9.4 – Wydanie poprawiające ważny błąd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:25:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1539\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:489:\"WordPress 4.9.4 jest już dostępny. To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. Wymagane jest ręczne zaktualizowanie WordPressa do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu. Cztery lata temu, w wydaniu 3.7 &#8222;Basie&#8221; WordPressa wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2631:\"<p>WordPress 4.9.4 jest już dostępny.</p>\n<p>To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. <strong><span style=\"text-decoration: underline\">Wymagane jest ręczne zaktualizowanie WordPressa</span> do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu.</strong></p>\n<p><span id=\"more-1539\"></span></p>\n<p>Cztery lata temu, w wydaniu <a href=\"https://wordpress.org/news/2013/10/basie/\">3.7 &#8222;Basie&#8221; WordPressa</a> wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały się bezpieczniejsze i mniej awaryjne &#8211; nawet, jeśli samodzielnie nie miałeś możliwości ich aktualizować. Przez te 4 lata mechanizm ten pomógł milionom witryn, aktualizując je do bieżących wersji i naprawiając bardzo sporadyczne usterki. Niestety we wczorajszym <a href=\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\">wydaniu 4.9.3</a> znalazł się ważny błąd, który został wykryty dopiero po upublicznieniu nowej wersji systemu. Błąd ten powoduje, że WordPress nie zaktualizuje się automatycznie do wersji 4.9.4, co oznacza, że aktualizację taką trzeba przeprowadzić ręcznie z poziomu panelu administracyjnego lub z pomocą dostawcy serwera hostingowego.</p>\n<p><strong>Aby przeprowadzić ręczną aktualizację, udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Dopóki tego nie wykonasz, WordPress <span style=\"text-decoration: underline\">nie będzie aktualizował się automatycznie do kolejnych wersji</span>. Zalecamy, by zrobić to natychmiast.</strong></p>\n<p>Dostawcy hostingu, którzy aktualizują automatycznie WordPressa w imieniu swoich klientów, mogą przystąpić do aktualizacji w standardowym trybie. Będziemy ściśle współpracować z innymi dostawcami hostingu, by jak najwięcej ich klientów otrzymało tą aktualizację.</p>\n<p><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">Więcej szczegółów technicznych opublikowaliśmy na naszym blogu o tworzeniu rdzenia WordPressa</a>. Pełna lista zmian dostępna jest w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">spisie zamkniętych wątków</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.4</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.3 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 10:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"WordPress 4.9.3 jest już dostępny. To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz w liście zamkniętych wątków oraz liście przeprowadzonych zmian. Pobierz WordPressa 4.9.3 lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3596:\"<p>WordPress 4.9.3 jest już dostępny.</p>\n<p>To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz<span style=\"line-height: 1.5\"> w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">liście zamkniętych wątków</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">liście przeprowadzonych zmian</a>.</span></p>\n<p><span id=\"more-1536\"></span></p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 11:06:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1512\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"WordPress 4.9.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p>WordPress 4.9.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1512\"></span></p>\n<p>Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte z WordPressa.</p>\n<p>Biblioteka MediaElement została już udostępniona w nowej wersji, która naprawa problem. W repozytorium wtyczek WordPressa znajduje się nowa <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">wtyczka, przywracająca obsługę biblioteki MediaElement z poprawionymi plikami</a>.</p>\n<p>Dziękujemy zgłaszającym (<a href=\"https://opnsec.com\">Enguerran Gillier</a> i <a href=\"https://widiz.com/\">Widiz</a>) za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>W WordPressie 4.9.2 rozwiązano także 21 innych problemów, w tym:</p>\n<ul>\n<li>naprawiono błędy JavaScript, które uniemożliwiały zapisywanie wpisów w Firefoxie,</li>\n<li>przywrócono wcześniejsze, niezależne od taksonomii działanie <code>get_category_link()</code> i <code>category_description()</code>,</li>\n<li>od teraz zmiana motywu spowoduje podjęcie próby przywrócenia poprzednich przypisań widgetów &#8211; nawet, jeśli w ostatnio używanym motywie nie były dostępne żadne obszary na widgety.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.2\">więcej informacji na temat wszystkich rozwiązanych problemów w wersji 4.9.2</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.8.3 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 11:26:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1289\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"WordPress 4.8.3 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z $wpdb-&#62;prepare(), który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p>WordPress 4.8.3 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1289\"></span></p>\n<p>WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z <code>$wpdb-&gt;prepare()</code>, który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten problem, ale dodaliśmy dodatkowe zabezpieczenia, by wtyczki i motywy nie mogły go przypadkowo powodować. Problem zgłosił <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>To wydanie WordPressa zmienia zachowanie funkcji <code>esc_sql()</code>. Różnica nie będzie istotna dla większości programistów. Zachęcamy do <a href=\"https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/\">przeczytania informacji dla deweloperów</a>.</p>\n<p>Dziękujemy zgłaszającemu za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemu z bezpieczeństwem.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.8.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://pl.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n\thourly\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n\t1\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 20 Apr 2021 21:23:54 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sun, 08 Nov 2020 09:51:38 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:13:\"EXPIRED ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    289,
    '_transient_timeout_feed_mod_a2a8f6ff8f129a81518b9f747f983e41',
    '1618997037',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    290,
    '_transient_feed_mod_a2a8f6ff8f129a81518b9f747f983e41',
    '1618953837',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    291,
    '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9',
    '1618997038',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    292,
    '_transient_feed_a421d6f32723068ab074a40017a9e1f9',
    'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\t\n\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Nov 2019 09:42:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.8-alpha-50773\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"WordCamp Łódź 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 11:30:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=3981\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:454:\"Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja WordCamp Łódź 2019 skierowana jest właśnie do Ciebie. WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3116:\"\n<p>Prowadzisz stronę opartą na WordPressie? Jesteś deweloperem lub prowadzisz działalność opartą o usługi związane z WordPressem? A może jesteś blogerem lub zajmujesz się e-marketingiem? Niezależnie od stopnia znajomości i roli jaką odgrywa WordPress w Twoim życiu, konferencja <strong><a href=\"https://2019.lodz.wordcamp.org/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"WordCamp Łódź 2019 (opens in a new tab)\">WordCamp Łódź 2019</a></strong> skierowana jest właśnie do Ciebie.<br><br>WordCamp to ogólnopolska konferencja poświęcona pośrednio i bezpośrednio WordPressowi. To doskonała okazja na poszerzenie swojej wiedzy i zdobycie nowych kontaktów, które mogą zaowocować nowymi wyzwaniami w życiu zawodowym. To też doskonała okazja na podzielenie się swoją wiedzą i wymianę doświadczeń z innymi miłośnikami WordPressa. <br><br>WordCamp to trzy dni inspirujących prelekcji prowadzonych przez niesamowitych specjalistów. To warsztaty, dzięki którym zdobędziecie nowe umiejętności. To także Contributor Day &#8211; dzień stworzony specjalnie dla Was &#8211; twórców, deweloperów, tłumaczy, blogerów, projektantów. Tego dnia to Wy możecie podarować swoją pomoc i zaangażowanie w rozwój WordPressa.<br><br>To także spotkania ze sponsorami, dzięki którym WordCamp nie mógłby się odbyć. To oni i ich pomoc sprawia, że konferencja jest dostępna dla tak wielu osób w bardzo przystępnej cenie.<br>Pakiety sponsorskie dostosowane są do różnych potrzeb oraz możliwości. Sponsorami są zarówno duże, międzynarodowe marki, jak i lokalne biznesy działające w naszym regionie. Jeśli chcesz znaleźć się w zacnym gronie sponsorów tegorocznego WordCampa, wybierz odpowiedni pakiet pod tym adresem: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/?fbclid=IwAR0COkUojiqsrmCzYWLHvH0TSJ4cA3t8g_KkqzvT4wDT9Il_LH6cweKVTRo\">https://2019.lodz.wordcamp.org/zostan-sponsorem-wordcamp-lodz-2019/</a><br><br>WordCamp to również networking, czyli wspólna zabawa w trakcie Middle Party. <br><br>Tegoroczny WordCamp odbędzie się w Hotelu Ambasador Premium w Łodzi przy ulicy Kilińskiego 145. Dla Waszej wygody odbędzie się tutaj zarówno pierwszy dzień &#8211; Contributor Day oraz warsztaty, jak i dwa dni konferencyjne poświęcone prezentacjom. Na Middle Party też zapraszamy do Hotelu Ambasador Premium.<br><br>Bilety możecie kupić na naszej stronie internetowej: <a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://l.facebook.com/l.php?u=https%3A%2F%2F2019.lodz.wordcamp.org%2Fbilety%2F%3Ffbclid%3DIwAR3mM-avOgA5H501q0GD-Y1_VccHbsAkssRqSiL_-cVvTacnPeuDt-fpHq4&amp;h=AT0XqbIJMRrLiuvJ2dnl3grccZ5OTXPpgmZ7xc5ZdxRe7bKjUN28aGLo6T4YeRHgDnlj2YgcRtaEMkfTJHDGtFS5H_TVjTb998shqjeQS-8QAd-9ZBOK1ko--FQMcGz38J4O41U\">https://2019.lodz.wordcamp.org/bilety/</a><br><br>Przy rejestracji nie zapomnijcie wypełnić specjalnego pola z rozmiarem. Na każdego czeka oficjalny, wyjątkowy Swag! <br><br>Do zobaczenia 22 listopada w Hotelu Ambasador Premium w Łodzi! </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"10\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"Dołącz do grupy tłumaczeniowej na Slack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Jul 2018 07:46:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Polskie tłumaczenie i witryna\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=2025\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:429:\"Autorem tego wpisu jest Magdalena Stanek Tłumaczu porozmawiajmy! Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day. W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Waclaw Jacek\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1047:\"\n<p><em>Autorem tego wpisu jest Magdalena Stanek</em></p>\n\n\n\n<p>Tłumaczu porozmawiajmy!</p>\n\n\n\n<p>Podczas tegorocznego Contributor Day na WordCampie w Poznaniu w grupie tłumaczeniowej zebrała się zaangażowana ekipa, która stwierdziła, że fajnie by było tłumaczyć razem przez cały rok, a nie tylko podczas Contributor Day.</p>\n\n\n\n<p>W związku z tym założyliśmy kanał Slack dla polskich tłumaczy, gdzie będziemy prowadzić cotygodniowe spotkania w każdą środę o 20:00. Celem spotkań jest wspólne motywowanie się do  poświęcenia trochę więcej czasu na tłumaczenia, rozwiewanie wątpliwości, dyskutowanie na temat różnych spraw związanych z tłumaczeniami i i oczywiście pomaganie sobie nawzajem. </p>\n\n\n\n<p>Możesz się zalogować tutaj <a href=\"https://wordpresspopolsku.slack.com/signup\">https://wordpresspopolsku.slack.com/signup</a> (do logowania najlepiej użyć swoich danych z wordpress.org).</p>\n\n\n\n<p>Mamy nadzieję, że inicjatywa Cię zainteresuje i dołączysz do nas.<br>\nDo zobaczenia na Slacku!</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Jul 2018 14:18:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1945\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:463:\"WordPress 4.9.7 jest już dostępny. To wydanie poprawia bezpieczeństwo wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu uploads. Dziękujemy Slavco za zgłoszenie błędu, a także Mattowi [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4564:\"<p>WordPress 4.9.7 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> wszystkich wersji systemu począwszy od 3.7. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1945\"></span></p>\n<p>WordPress w wersji 4.9.6 i wcześniejszych zawiera błąd związany z obsługą mediów, który może pozwolić użytkownikom z pewnymi prawami dostępu na podjęcie próby usunięcia plików spoza katalogu <em>uploads</em>.</p>\n<p>Dziękujemy <a href=\"https://hackerone.com/slavco\">Slavco</a> za zgłoszenie błędu, a także <a href=\"https://www.wordfence.com/\">Mattowi Barry&#8217;emu</a> za zgłoszenie powiązanych z tą kwestią problemów.</p>\n<p>W WordPressie 4.9.7 naprawiono także 17 innych problemów, w szczególności:</p>\n<ul>\n<li>Taksonomie: Ulepszenie obsługi cache dla zapytań dotyczących terminów.</li>\n<li>Wpisy i inne Typy Treści: Usuwanie ciasteczka dotyczącego hasła dla podstrony, gdy użytkownik wyloguje się.</li>\n<li>Widgety: Dopuszczenie używania podstawowych znaczników HTML w opisach paneli bocznych w sekcji Widgety panelu administracyjnego.</li>\n<li>Kokpit wydarzeń społecznościowych: Zawsze pokazuj najbliższe spotkanie WordCamp, jeśli takowe się zbliża &#8211; nawet, gdy wcześniej planowane są spotkania w dalszych lokalizacjach.</li>\n<li>Prywatność: Upewnienie się, że domyślna treść polityki prywatności nie spowoduje wystąpienia krytycznego błędu podczas czyszczenia reguł przekształcania adresów poza kontekstem administracyjnym.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.7\">więcej informacji na temat wszystkich kwestii rozwiązanych w wersji 4.9.7</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.7</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Wcześniej zaplanowane wydanie 4.9.7 będzie od teraz nazywane 4.9.8 i zostanie <a href=\"https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/\">opublikowane zgodnie z planem</a>.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.7:</p>\n<p><a href=\"https://profiles.wordpress.org/1naveengiri/\">1naveengiri</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/alejandroxlopez/\">alejandroxlopez</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aryamaaru/\">Arun</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/bjornw/\">BjornW</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/kraftbj/\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/garetharnold/\">Gareth</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">ibelanger</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/joyously/\">Joy</a>, <a href=\"https://profiles.wordpress.org/khaihong/\">khaihong</a>, <a href=\"https://profiles.wordpress.org/lbenicio/\">lbenicio</a>, <a href=\"https://profiles.wordpress.org/leanderiversen/\">Leander Iversen</a>, <a href=\"https://profiles.wordpress.org/mermel/\">mermel</a>, <a href=\"https://profiles.wordpress.org/metalandcoffee/\">metalandcoffee</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Migrated to @jeffpaul</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/skoldin/\">skoldin</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence/\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/itowhid06/\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/warmlaundry/\">warmlaundry</a> oraz <a href=\"https://profiles.wordpress.org/yuriv/\">YuriV</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"Program WordCamp Poznań 2018 już tu jest!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 26 May 2018 08:28:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"wordcamp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1817\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:395:\"Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach 6-8 lipca w Poznaniu. WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko kup bilet na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2455:\"<p>Pewnie większość z was już wie, że w zeszłym tygodniu opublikowaliśmy program tegorocznego WordCampa, który odbędzie się w dniach <strong>6-8 lipca w Poznaniu</strong>.</p>\n<p>WordCamp Poznań 2018 zbliża się dużymi krokami! Jeśli nie masz jeszcze biletu, to nie zastanawiaj się już dłużej, tylko <a href=\"https://2018.poznan.wordcamp.org/bilety/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>kup bilet</strong></a> na najważniejsze WordPressowe wydarzenie 2018 roku! Zapraszamy do zapoznania się z <a href=\"https://2018.poznan.wordcamp.org/program/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>pełnym programem konferencji</strong></a> i do zapisywania się na warsztaty oraz Contributor Day.</p>\n<p>Startujemy 6 lipca! Pierwszego dnia konferencji po prostu nie można przegapić. Zaczniemy od bardziej praktycznych wyzwań. Każdy uczestnik będzie miał możliwość wzięcia udziału w ciekawych warsztatach, które będą świetną okazją, aby zdobyć nowe umiejętności i poznać ciekawych ludzi. W tym roku zaserwujemy aż 6 różnych warsztatów. Warto zapoznać się z tematami i już dziś zarezerwować sobie miejsce. Równolegle do warsztatów będzie odbywał się <a href=\"https://2018.poznan.wordcamp.org/czym-jest-contributor-day/\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Contributor Day</strong></a>, podczas którego będzie można dołączyć do innych entuzjastów i popracować nad kodem, tłumaczeniem lub zająć się odpowiadaniem na pytania na forum wsparcia. Z pewnością każdy znajdzie tutaj coś dla siebie!</p>\n<p>Kolejne dwa dni konferencji będą wypełnione ciekawymi prelekcjami, na których nie może cię zabraknąć! Tematy są podzielone na dwie ścieżki: ogólną i techniczną. Ścieżkę ogólną polecamy wszystkim, którzy są zainteresowani tematami związanymi z wykorzystaniem WordPressa, blogowaniem i innymi zagadnieniami. Będziecie mieli okazję dowiedzieć się więcej o dostępności, pracy zdalnej, wycenie projektów czy analityce. Z kolei ścieżkę techniczną polecamy uczestnikom poszukującym bardziej specjalistycznej wiedzy. Będzie to świetna okazja, żeby posłuchać prelekcji na temat backupu, automatyzacji zadań czy zabezpieczenia WordPressa. Tematyka zarówno ścieżki ogólnej, jak i technicznej, jest bardzo zróżnicowana. Bez wątpienia każdy znajdzie coś, co go zainteresuje!</p>\n<p>Do zobaczenia w Poznaniu!</p>\n<p>&nbsp;</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://pl.wordpress.org/2018/05/26/program-wordcamp-poznan-2018-juz-tu-jest/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress 4.9.4 – Wydanie poprawiające ważny błąd\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 18:25:48 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1539\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:489:\"WordPress 4.9.4 jest już dostępny. To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. Wymagane jest ręczne zaktualizowanie WordPressa do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu. Cztery lata temu, w wydaniu 3.7 &#8222;Basie&#8221; WordPressa wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2631:\"<p>WordPress 4.9.4 jest już dostępny.</p>\n<p>To wydanie rozwiązuje istotny problem wprowadzony w wersji 4.9.3, który powodował, że strony obsługujące automatyczne aktualizacje nie będą mogły ich przeprowadzić. <strong><span style=\"text-decoration: underline\">Wymagane jest ręczne zaktualizowanie WordPressa</span> do wersji 4.9.4 przez Ciebie lub Twojego dostawcę hostingu.</strong></p>\n<p><span id=\"more-1539\"></span></p>\n<p>Cztery lata temu, w wydaniu <a href=\"https://wordpress.org/news/2013/10/basie/\">3.7 &#8222;Basie&#8221; WordPressa</a> wprowadziliśmy możliwość automatycznej aktualizacji systemu, dzięki czemu strony stały się bezpieczniejsze i mniej awaryjne &#8211; nawet, jeśli samodzielnie nie miałeś możliwości ich aktualizować. Przez te 4 lata mechanizm ten pomógł milionom witryn, aktualizując je do bieżących wersji i naprawiając bardzo sporadyczne usterki. Niestety we wczorajszym <a href=\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\">wydaniu 4.9.3</a> znalazł się ważny błąd, który został wykryty dopiero po upublicznieniu nowej wersji systemu. Błąd ten powoduje, że WordPress nie zaktualizuje się automatycznie do wersji 4.9.4, co oznacza, że aktualizację taką trzeba przeprowadzić ręcznie z poziomu panelu administracyjnego lub z pomocą dostawcy serwera hostingowego.</p>\n<p><strong>Aby przeprowadzić ręczną aktualizację, udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Dopóki tego nie wykonasz, WordPress <span style=\"text-decoration: underline\">nie będzie aktualizował się automatycznie do kolejnych wersji</span>. Zalecamy, by zrobić to natychmiast.</strong></p>\n<p>Dostawcy hostingu, którzy aktualizują automatycznie WordPressa w imieniu swoich klientów, mogą przystąpić do aktualizacji w standardowym trybie. Będziemy ściśle współpracować z innymi dostawcami hostingu, by jak najwięcej ich klientów otrzymało tą aktualizację.</p>\n<p><a href=\"https://make.wordpress.org/core/2018/02/06/wordpress-4-9-4-release-the-technical-details/\">Więcej szczegółów technicznych opublikowaliśmy na naszym blogu o tworzeniu rdzenia WordPressa</a>. Pełna lista zmian dostępna jest w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.4&amp;group=component\">spisie zamkniętych wątków</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.4</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-4-wydanie-poprawiajace-wazny-blad/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.9.3 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 06 Feb 2018 10:50:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1536\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"WordPress 4.9.3 jest już dostępny. To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz w liście zamkniętych wątków oraz liście przeprowadzonych zmian. Pobierz WordPressa 4.9.3 lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3596:\"<p>WordPress 4.9.3 jest już dostępny.</p>\n<p>To wydanie zawiera poprawki 34 błędów obecnych w wersji 4.9 WordPressa, w tym dotyczących zestawów zmian na ekranie Personalizacji, widgetów, edytora wizualnego i kompatybilności z PHP 7.2.  Spis wszystkich zmian znajdziesz<span style=\"line-height: 1.5\"> w <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.9.3&amp;group=component\">liście zamkniętych wątków</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.9?rev=42630&amp;stop_rev=42521\">liście przeprowadzonych zmian</a>.</span></p>\n<p><span id=\"more-1536\"></span></p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.3:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/abdullahramzan/\">abdullahramzan</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreiglingeanu/\">andreiglingeanu</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/bpayton/\">Brandon Payton</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/coleh/\">coleh</a>, <a href=\"https://profiles.wordpress.org/darko-a7/\">Darko A7</a>, <a href=\"https://profiles.wordpress.org/desertsnowman/\">David Cramer</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/flixos90/\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/frank-klein/\">Frank Klein</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/lizkarkoski/\">lizkarkoski</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mattyrob/\">mattyrob</a>, <a href=\"https://profiles.wordpress.org/munyagu/\">munyagu</a>, <a href=\"https://profiles.wordpress.org/ndavison/\">ndavison</a>, <a href=\"https://profiles.wordpress.org/nickmomrik/\">Nick Momrik</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rishishah/\">rishishah</a>, <a href=\"https://profiles.wordpress.org/othellobloke/\">Ryan Paul</a>, <a href=\"https://profiles.wordpress.org/sasiddiqui/\">Sami Ahmed Siddiqui</a>, <a href=\"https://profiles.wordpress.org/sayedwp/\">Sayed Taqui</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shooper/\">Shawn Hooper</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/manikmist09/\">Sultan Nasir Uddin</a>, <a href=\"https://profiles.wordpress.org/tigertech/\">tigertech</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2018/02/06/wordpress-4-9-3-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.9.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jan 2018 11:06:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1512\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:467:\"WordPress 4.9.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4168:\"<p>WordPress 4.9.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1512\"></span></p>\n<p>Wykryto podatność na atak XSS w plikach Flash biblioteki MediaElement, która jest dołączana do WordPressa w celu zapewnienia kompatybilności ze starszym oprogramowaniem. Ponieważ pliki te nie są już potrzebne w zdecydowanej większości przypadków, zostały one usunięte z WordPressa.</p>\n<p>Biblioteka MediaElement została już udostępniona w nowej wersji, która naprawa problem. W repozytorium wtyczek WordPressa znajduje się nowa <a href=\"https://wordpress.org/plugins/mediaelement-flash-fallbacks/\">wtyczka, przywracająca obsługę biblioteki MediaElement z poprawionymi plikami</a>.</p>\n<p>Dziękujemy zgłaszającym (<a href=\"https://opnsec.com\">Enguerran Gillier</a> i <a href=\"https://widiz.com/\">Widiz</a>) za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>W WordPressie 4.9.2 rozwiązano także 21 innych problemów, w tym:</p>\n<ul>\n<li>naprawiono błędy JavaScript, które uniemożliwiały zapisywanie wpisów w Firefoxie,</li>\n<li>przywrócono wcześniejsze, niezależne od taksonomii działanie <code>get_category_link()</code> i <code>category_description()</code>,</li>\n<li>od teraz zmiana motywu spowoduje podjęcie próby przywrócenia poprzednich przypisań widgetów &#8211; nawet, jeśli w ostatnio używanym motywie nie były dostępne żadne obszary na widgety.</li>\n</ul>\n<p>W dokumentacji Codex znajdziesz <a href=\"https://codex.wordpress.org/Version_4.9.2\">więcej informacji na temat wszystkich rozwiązanych problemów w wersji 4.9.2</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.9.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.9.2:</p>\n<p><a href=\"https://profiles.wordpress.org/0x6f0/\">0x6f0</a>, <a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/icaleb/\">Caleb Burks</a>, <a href=\"https://profiles.wordpress.org/poena/\">Carolina Nymark</a>, <a href=\"https://profiles.wordpress.org/chasewg/\">chasewg</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara/\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/ionvv/\">ionvv</a>, <a href=\"https://profiles.wordpress.org/jaswrks/\">Jason Caldwell</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnschulz/\">johnschulz</a>, <a href=\"https://profiles.wordpress.org/juiiee8487/\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/markjaquith/\">Mark Jaquith</a>, <a href=\"https://profiles.wordpress.org/rabmalin/\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2018/01/17/wordpress-4-9-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.8.3 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 31 Oct 2017 11:26:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1289\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"WordPress 4.8.3 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z $wpdb-&#62;prepare(), który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"Chris Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1522:\"<p>WordPress 4.8.3 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-1289\"></span></p>\n<p>WordPress w wersji 4.8.2 i wcześniejszych jest podatny na problem z <code>$wpdb-&gt;prepare()</code>, który może prowadzić do tworzenia nieoczekiwanych i niebezpiecznych zapytań, umożliwiających potencjalny atak metodą SQL injection (SQLi). Rdzeń systemu nie jest bezpośrednio podatny na ten problem, ale dodaliśmy dodatkowe zabezpieczenia, by wtyczki i motywy nie mogły go przypadkowo powodować. Problem zgłosił <a href=\"https://twitter.com/ircmaxell\">Anthony Ferrara</a>.</p>\n<p>To wydanie WordPressa zmienia zachowanie funkcji <code>esc_sql()</code>. Różnica nie będzie istotna dla większości programistów. Zachęcamy do <a href=\"https://make.wordpress.org/core/2017/10/31/changed-behaviour-of-esc_sql-in-wordpress-4-8-3/\">przeczytania informacji dla deweloperów</a>.</p>\n<p>Dziękujemy zgłaszającemu za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemu z bezpieczeństwem.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.8.3</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/10/31/wordpress-4-8-3-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:73:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:76:\"\n\t\t\n\t\t\n\t\t\t\t\t\n\t\t\n\t\t\n\t\t\n\t\t\t\t\n\t\t\n\t\t\n\n\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\n\t\t\n\t\t\n\t\t\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://pl.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n\thourly\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n\t1\t\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 20 Apr 2021 21:23:54 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Fri, 06 Mar 2020 09:18:43 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130911040210\";}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    293,
    '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9',
    '1618997038',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    294,
    '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9',
    '1618953838',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    295,
    '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653',
    '1618997038',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    296,
    '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653',
    '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\'>WordCamp Łódź 2019</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2019/10/17/wordcamp-lodz-2019/\'>WordCamp Łódź 2019</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/31/dolacz-do-grupy-tlumaczeniowej-na-slack/\'>Dołącz do grupy tłumaczeniowej na Slack</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2018/07/07/wordpress-4-9-7-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\'>WordPress 4.9.7 – Wydanie poprawiające bezpieczeństwo i błędy</a></li></ul></div>',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    302,
    '_site_transient_update_plugins',
    'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1618954432;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (307, 'disallowed_keys', '', 'no');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (308, 'comment_previously_approved', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    309,
    'auto_plugin_theme_update_emails',
    'a:0:{}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (310, 'auto_update_core_dev', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (311, 'auto_update_core_minor', 'enabled', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (312, 'auto_update_core_major', 'unset', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (313, 'finished_updating_comment_type', '1', 'yes');
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    315,
    '_site_transient_update_core',
    'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.7.1.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.7.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.1\";s:7:\"version\";s:5:\"5.7.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618954434;s:15:\"version_checked\";s:5:\"5.7.1\";s:12:\"translations\";a:0:{}}',
    'no'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (
    317,
    'https_detection_errors',
    'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:35:\"Zapytanie HTTPS nie powiodło się.\";}}',
    'yes'
  );
INSERT INTO
  `wp_options` (
    `option_id`,
    `option_name`,
    `option_value`,
    `autoload`
  )
VALUES
  (318, 'can_compress_scripts', '1', 'no');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_postmeta
# ------------------------------------------------------------

INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (18, 13, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (19, 13, '_edit_lock', '1575051523:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (22, 15, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (23, 15, '_edit_lock', '1575051562:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (26, 17, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (27, 17, '_edit_lock', '1575051596:1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (30, 19, '_edit_last', '1');
INSERT INTO
  `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
  (31, 19, '_edit_lock', '1575051874:1');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_posts
# ------------------------------------------------------------

INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    13,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'publish',
    'open',
    'open',
    '',
    'pierwszy',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    0,
    'http://localhost/?p=13',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    14,
    1,
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    'Pierwszy',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2018-08-26 09:25:15',
    '2018-08-26 07:25:15',
    '',
    13,
    'http://localhost/2018/08/26/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    15,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'publish',
    'open',
    'open',
    '',
    'drugi',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    0,
    'http://localhost/?p=15',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    16,
    1,
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    'Drugi',
    'Drugi',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2018-08-26 09:25:29',
    '2018-08-26 07:25:29',
    '',
    15,
    'http://localhost/2018/08/26/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    17,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'publish',
    'open',
    'open',
    '',
    'trzecie',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    0,
    'http://localhost/?p=17',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    18,
    1,
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    'Trzecie',
    'Trzecie',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2018-08-26 09:25:40',
    '2018-08-26 07:25:40',
    '',
    17,
    'http://localhost/2018/08/26/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    19,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'publish',
    'open',
    'open',
    '',
    'czwarte',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    0,
    'http://localhost/?p=19',
    0,
    'post',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    20,
    1,
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    'Czwarte',
    'Czwarte',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2018-08-26 09:25:49',
    '2018-08-26 07:25:49',
    '',
    19,
    'http://localhost/2018/08/26/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    24,
    1,
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '<p>first</p>\n\n<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'Pierwszy',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:20:43',
    '2019-11-29 18:20:43',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    25,
    1,
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;jest tekstem stosowanym jako przykładowy wypełniacz w przemyśle poligraficznym. Został po raz pierwszy użyty w XV w. przez nieznanego drukarza do wypełnienia tekstem próbnej książki. Pięć wieków później zaczął być używany przemyśle elektronicznym, pozostając praktycznie niezmienionym. Spopularyzował się w latach 60. XX w. wraz z publikacją arkuszy Letrasetu, zawierających fragmenty Lorem Ipsum, a ostatnio z zawierającym różne wersje Lorem Ipsum oprogramowaniem przeznaczonym do realizacji druków na komputerach osobistych, jak Aldus PageMaker\n\n</p>\n<!-- /wp:paragraph -->',
    'first',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '13-revision-v1',
    '',
    '',
    '2019-11-29 19:21:05',
    '2019-11-29 18:21:05',
    '',
    13,
    'http://localhost/bez-kategorii/13-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    26,
    1,
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;ist ein einfacher Demo-Text für die Print- und Schriftindustrie. Lorem Ipsum ist in der Industrie bereits der Standard Demo-Text seit 1500, als ein unbekannter Schriftsteller eine Hand voll Wörter nahm und diese durcheinander warf um ein Musterbuch zu erstellen. Es hat nicht nur 5 Jahrhunderte überlebt, sondern auch in Spruch in die elektronische Schriftbearbeitung geschafft (bemerke, nahezu unverändert). Bekannt wurde es 1960, mit dem erscheinen von \"Letraset\", welches Passagen von Lorem Ipsum enhielt, so wie Desktop Software wie \"Aldus PageMaker\" - ebenfalls mit Lorem Ipsum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->',
    'second',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '15-revision-v1',
    '',
    '',
    '2019-11-29 19:21:42',
    '2019-11-29 18:21:42',
    '',
    15,
    'http://localhost/bez-kategorii/15-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    27,
    1,
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.\n\n</p>\n<!-- /wp:paragraph -->',
    'third',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '17-revision-v1',
    '',
    '',
    '2019-11-29 19:22:19',
    '2019-11-29 18:22:19',
    '',
    17,
    'http://localhost/bez-kategorii/17-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    28,
    1,
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\n\n</p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:22:52',
    '2019-11-29 18:22:52',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    29,
    1,
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-autosave-v1',
    '',
    '',
    '2019-11-29 19:24:51',
    '2019-11-29 18:24:51',
    '',
    19,
    'http://localhost/bez-kategorii/19-autosave-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    30,
    1,
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'Untitled Reusable Block',
    '',
    'publish',
    'closed',
    'closed',
    '',
    'untitled-reusable-block',
    '',
    '',
    '2019-11-29 19:26:34',
    '2019-11-29 18:26:34',
    '',
    0,
    'http://localhost/bez-kategorii/untitled-reusable-block/',
    0,
    'wp_block',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    31,
    1,
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker. </p>\n<!-- /wp:paragraph -->',
    'fourth',
    '',
    'inherit',
    'closed',
    'closed',
    '',
    '19-revision-v1',
    '',
    '',
    '2019-11-29 19:27:01',
    '2019-11-29 18:27:01',
    '',
    19,
    'http://localhost/bez-kategorii/19-revision-v1/',
    0,
    'revision',
    '',
    0
  );
INSERT INTO
  `wp_posts` (
    `ID`,
    `post_author`,
    `post_date`,
    `post_date_gmt`,
    `post_content`,
    `post_title`,
    `post_excerpt`,
    `post_status`,
    `comment_status`,
    `ping_status`,
    `post_password`,
    `post_name`,
    `to_ping`,
    `pinged`,
    `post_modified`,
    `post_modified_gmt`,
    `post_content_filtered`,
    `post_parent`,
    `guid`,
    `menu_order`,
    `post_type`,
    `post_mime_type`,
    `comment_count`
  )
VALUES
  (
    32,
    1,
    '2021-04-20 23:23:53',
    '0000-00-00 00:00:00',
    '',
    'Automatycznie zapisany szkic',
    '',
    'auto-draft',
    'open',
    'open',
    '',
    '',
    '',
    '',
    '2021-04-20 23:23:53',
    '0000-00-00 00:00:00',
    '',
    0,
    'http://localhost/?p=32',
    0,
    'post',
    '',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_relationships
# ------------------------------------------------------------

INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (13, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (15, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (17, 1, 0);
INSERT INTO
  `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
  (19, 1, 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_term_taxonomy
# ------------------------------------------------------------

INSERT INTO
  `wp_term_taxonomy` (
    `term_taxonomy_id`,
    `term_id`,
    `taxonomy`,
    `description`,
    `parent`,
    `count`
  )
VALUES
  (1, 1, 'category', '', 0, 4);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_termmeta
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_terms
# ------------------------------------------------------------

INSERT INTO
  `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
  (1, 'Bez kategorii', 'bez-kategorii', 0);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_usermeta
# ------------------------------------------------------------

INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (1, 1, 'nickname', 'test');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (2, 1, 'first_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (3, 1, 'last_name', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (4, 1, 'description', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (5, 1, 'rich_editing', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (6, 1, 'syntax_highlighting', 'true');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (7, 1, 'comment_shortcuts', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (8, 1, 'admin_color', 'fresh');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (9, 1, 'use_ssl', '0');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (10, 1, 'show_admin_bar_front', 'false');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (11, 1, 'locale', '');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    12,
    1,
    'wp_capabilities',
    'a:1:{s:13:\"administrator\";b:1;}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (13, 1, 'wp_user_level', '10');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (14, 1, 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (15, 1, 'show_welcome_panel', '1');
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    16,
    1,
    'session_tokens',
    'a:1:{s:64:\"7ea7f7e5c3a35a9aefcd5ac5f49e26b3c8564b422b111a75cc6e07904d676e6d\";a:4:{s:10:\"expiration\";i:1619126625;s:2:\"ip\";s:10:\"172.21.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36\";s:5:\"login\";i:1618953825;}}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    17,
    1,
    'wp_dashboard_quick_press_last_post_id',
    '32'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    18,
    1,
    'community-events-location',
    'a:1:{s:2:\"ip\";s:10:\"172.21.0.0\";}'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (
    19,
    1,
    'wp_user-settings',
    'mfold=o&unfold=1&libraryContent=browse&editor=html'
  );
INSERT INTO
  `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
  (20, 1, 'wp_user-settings-time', '1618953828');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: wp_users
# ------------------------------------------------------------

INSERT INTO
  `wp_users` (
    `ID`,
    `user_login`,
    `user_pass`,
    `user_nicename`,
    `user_email`,
    `user_url`,
    `user_registered`,
    `user_activation_key`,
    `user_status`,
    `display_name`
  )
VALUES
  (
    1,
    'test',
    '$P$B/nIptzjky0uL8dAEoktZY/GRIvkPc.',
    'test',
    'test@test.pl',
    '',
    '2018-08-25 18:50:25',
    '',
    0,
    'test'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
