/*+ HashJoin(title movie_companies movie_info)
 NestLoop(movie_companies movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((title (movie_companies movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<6638 AND movie_companies.company_type_id=2 AND title.season_nr=36 AND title.imdb_index<5;

