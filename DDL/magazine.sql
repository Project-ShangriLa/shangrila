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
