/*+ HashJoin(cast_info movie_info_idx title movie_keyword)
 HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading(((cast_info (movie_info_idx title)) movie_keyword)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=1 and title.kind_id=7;

