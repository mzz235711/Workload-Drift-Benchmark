/*+ HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.kind_id<4 AND title.imdb_index<8 AND title.episode_nr<14642;

