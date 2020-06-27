DROP INDEX index_bases_on_title ON bases;
ALTER TABLE bases ADD INDEX bases_title_index(title);
ALTER TABLE bases ADD INDEX bases_cours_id_index(cours_id);
