/*+ HashJoin(cast_info title movie_info_idx movie_info)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_info_idx)) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id<16 and title.phonetic_code<20834;

