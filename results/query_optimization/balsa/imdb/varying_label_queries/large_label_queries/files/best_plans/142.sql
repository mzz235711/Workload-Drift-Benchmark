/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.production_year>22;

