/*+ HashJoin(movie_keyword title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_keyword (title movie_info))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.kind_id=2 AND movie_keyword.keyword_id<2767081 AND title.phonetic_code>13613 AND title.imdb_index<1;

