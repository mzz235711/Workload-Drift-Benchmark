/*+ HashJoin(title movie_info movie_keyword)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id<3 AND movie_keyword.keyword_id<1405799 AND title.phonetic_code<15170 AND title.imdb_index<14;

