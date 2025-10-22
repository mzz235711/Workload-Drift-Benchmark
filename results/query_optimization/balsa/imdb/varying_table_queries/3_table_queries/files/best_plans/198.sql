/*+ HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<29 and title.kind_id<7;

