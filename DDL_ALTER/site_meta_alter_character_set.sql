ALTER TABLE `site_meta_data` DEFAULT CHARACTER SET utf8mb4;
ALTER TABLE `site_meta_data_histories` DEFAULT CHARACTER SET utf8mb4;
ALTER TABLE `site_meta_data` modify `description` varchar(1024) CHARACTER SET utf8mb4;
ALTER TABLE `site_meta_data` modify `og_description` varchar(1024) CHARACTER SET utf8mb4;
ALTER TABLE `site_meta_data_histories` modify `og_description` varchar(1024) CHARACTER SET utf8mb4;
ALTER TABLE `site_meta_data_histories` modify `description` varchar(1024) CHARACTER SET utf8mb4;

