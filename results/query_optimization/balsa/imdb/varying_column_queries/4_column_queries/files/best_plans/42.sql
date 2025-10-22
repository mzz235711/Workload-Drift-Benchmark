/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info_idx.info_type_id=101 and title.phonetic_code>13473 and title.kind_id=1;

