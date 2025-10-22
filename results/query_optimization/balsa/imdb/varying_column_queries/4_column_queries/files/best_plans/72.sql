/*+ HashJoin(cast_info movie_info_idx movie_info title)
 HashJoin(movie_info_idx movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_info title)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and cast_info.role_id<10 and title.kind_id=1;

