/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<16 and cast_info.role_id<9 and title.production_year<121 and title.kind_id>4;

