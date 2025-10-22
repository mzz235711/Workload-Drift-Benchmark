/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading(((movie_info title) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND movie_info.info_type_id>78 AND title.imdb_index=3;

