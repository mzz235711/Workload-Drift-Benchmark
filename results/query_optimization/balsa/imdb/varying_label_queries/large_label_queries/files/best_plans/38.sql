/*+ HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.series_years<1100 AND title.episode_nr<5292 AND movie_info_idx.info_type_id<108 AND title.imdb_index<21;

