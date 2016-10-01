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
