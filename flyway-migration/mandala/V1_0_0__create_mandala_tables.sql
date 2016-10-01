CREATE TABLE `manga` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '漫画ID',
  `title` VARCHAR(50) NOT NULL COMMENT 'タイトル',
  `title_short` VARCHAR(20) DEFAULT NULL COMMENT 'タイトル略称',
  `author` VARCHAR(50) NOT NULL COMMENT '作者',
  `author_id` INT(11) UNSIGNED DEFAULT NULL COMMENT '作者ID',
  `original_author` VARCHAR(50) DEFAULT NULL COMMENT '原作',
  `original_author_id` INT(11) UNSIGNED DEFAULT NULL COMMENT '原作ID',
  `support_author` VARCHAR(50) DEFAULT NULL COMMENT 'サポート作者',
  `support_author_id` INT(11) UNSIGNED DEFAULT NULL COMMENT 'サポート作者ID',
  `magazine_id` INT(11) UNSIGNED DEFAULT NULL COMMENT '雑誌ID',
  `public_url` VARCHAR(200) DEFAULT NULL COMMENT '公式URL',
  `twitter_account` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterアカウント',
  `twitter_hash_tag` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterハッシュタグ',
  `target_sex` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '対象性別',
  `release_status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '連載状況',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP '更新日時',
  PRIMARY KEY (`id`),
  INDEX `idx_manga_01` (`title`),
  INDEX `idx_manga_02` (`author_id`),
  INDEX `idx_manga_03` (`original_author_id`),
  INDEX `idx_manga_04` (`magazine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci COMMENT='漫画';

CREATE TABLE `author` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '作者ID',
  `name` VARCHAR(50) NOT NULL COMMENT '名前',
  `site_url` VARCHAR(200) DEFAULT NULL COMMENT 'サイトURL',
  `twitter_account` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterアカウント',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci COMMENT='作者';

CREATE TABLE `magazine` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '雑誌ID',
  `title` VARCHAR(50) NOT NULL COMMENT 'タイトル',
  `title_path` VARCHAR(20) NOT NULL COMMENT 'タイトルパス',
  `publisher_id` INT(11) UNSIGNED NOT NULL COMMENT '出版社ID',
  `public_url` VARCHAR(200) DEFAULT NULL COMMENT '公式URL',
  `twitter_account` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterアカウント',
  `twitter_hash_tag` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterハッシュタグ',
  `kind` TINYINT(1) NOT NULL DEFAULT 0 COMMENT '分類',
  `release_timing` TINYINT(2) NOT NULL DEFAULT 0 COMMENT 'リリースタイミング',
  `status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'ステータス',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP '更新日時',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_magazine_01` (`title_path`),
  INDEX `idx_magazine_01` (`title_path`, `release_timing`),
  INDEX `idx_magazine_02` (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci COMMENT='雑誌';

CREATE TABLE `publisher` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '出版社ID',
  `name` VARCHAR(50) NOT NULL COMMENT '名前',
  `short_name` VARCHAR(20) NOT NULL COMMENT '略称',
  `site_url` VARCHAR(200) DEFAULT NULL COMMENT 'サイトURL',
  `twitter_account` VARCHAR(20) DEFAULT NULL COMMENT 'Twitterアカウント',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci COMMENT='出版社';

CREATE TABLE `retension_info` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '保持データID',
  `magazine_id` INT(11) UNSIGNED NOT NULL COMMENT '雑誌ID',
  `year` SMALLINT(3) NOT NULL COMMENT '年',
  `month` TINYINT(2) NOT NULL COMMENT '月',
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP '更新日時',
  PRIMARY KEY (`id`),
  INDEX `idx_retension_info_01` (`magazine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='保持データの情報';

CREATE TABLE `code` (
  `id` INT(11) UNSIGNED NOT NULL COMMENT 'コードマスタID',
  `type` VARCHAR(50) NOT NULL COMMENT 'コード分類',
  `key` VARCHAR(20) NOT NULL COMMENT 'Key',
  `value` VARCHAR(50) NOT NULL COMMENT 'Value',
  `description` VARCHAR(100) DEFAULT NULL COMMENT '説明',
  `status` TINYINT(1) NOT NULL DEFAULT 0 COMMENT 'ステータス',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_code_01` (`type`, `key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_unicode_ci COMMENT='コードマスタ';
