/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.series_years>396 AND title.imdb_index<8 AND movie_companies.company_type_id<2 AND title.episode_nr<2678;

