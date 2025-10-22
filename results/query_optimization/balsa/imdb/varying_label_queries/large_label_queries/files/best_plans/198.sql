/*+ HashJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.episode_nr<6607 AND title.imdb_index<16 AND movie_info_idx.info_type_id=99;

