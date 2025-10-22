/*+ NestLoop(title movie_info movie_keyword)
 MergeJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_info.info_type_id=95 AND title.imdb_index=0 AND title.production_year=101;

