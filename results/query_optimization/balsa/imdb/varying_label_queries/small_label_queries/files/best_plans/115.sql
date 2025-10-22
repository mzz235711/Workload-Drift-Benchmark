/*+ HashJoin(title movie_companies movie_info)
 NestLoop(movie_companies movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((title (movie_companies movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.season_nr<22 AND title.imdb_index>10 AND title.production_year<62 AND title.episode_nr<12435 AND movie_companies.company_type_id=2;

