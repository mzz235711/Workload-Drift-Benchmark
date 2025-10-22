/*+ HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info_idx (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_info_idx,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_info_idx.movie_id AND title.phonetic_code>15504 AND movie_companies.company_type_id=2 AND title.imdb_index<10 AND title.series_years<788 AND movie_info_idx.info_type_id<105;

