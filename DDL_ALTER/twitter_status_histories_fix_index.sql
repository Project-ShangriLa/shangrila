ALTER TABLE twitter_status_histories DROP INDEX index_twitter_status_histories_on_bases_id_and_get_date;
ALTER TABLE twitter_status_histories ADD INDEX index_twitter_status_histories_on_bases_id(bases_id);