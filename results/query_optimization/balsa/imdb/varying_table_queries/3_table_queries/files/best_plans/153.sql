/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>232 and title.kind_id>1 and title.imdb_index=0;

