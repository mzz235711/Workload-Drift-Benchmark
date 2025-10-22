/*+ HashJoin(movie_info movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (title cast_info)))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<53544 and movie_info.info_type_id>2 and title.imdb_index>0;

