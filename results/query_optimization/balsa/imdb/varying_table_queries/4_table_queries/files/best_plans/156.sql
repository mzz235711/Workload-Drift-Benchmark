/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>1 and title.episode_nr>0;

