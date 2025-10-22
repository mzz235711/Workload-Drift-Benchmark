/*+ HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.role_id=3 and title.phonetic_code<18097;

