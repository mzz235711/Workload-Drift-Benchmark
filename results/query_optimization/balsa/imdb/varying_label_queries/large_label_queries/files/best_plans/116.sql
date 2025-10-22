/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND movie_companies.company_type_id>1 AND title.imdb_index<4 AND title.phonetic_code<1913;

