/*+ HashJoin(movie_keyword title cast_info)
 NestLoop(movie_keyword title)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(cast_info)
 Leading(((movie_keyword title) cast_info)) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.season_nr<52 AND title.imdb_index=7 AND title.kind_id<2;

