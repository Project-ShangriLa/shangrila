CREATE TABLE `site_meta_data_histories` (
  `bases_id` int(11) DEFAULT NULL,
  `public_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `get_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `index_site_meta_data_histories_on_bases_id` (`bases_id`),
  KEY `site_meta_data_histories_id_get_date` (`bases_id`,`get_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;