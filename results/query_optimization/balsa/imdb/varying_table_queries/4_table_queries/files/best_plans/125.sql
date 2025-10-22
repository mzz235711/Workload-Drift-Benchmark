/*+ HashJoin(cast_info title movie_keyword movie_info)
 MergeJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_keyword)) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>11 and cast_info.role_id=2 and title.production_year<94;

