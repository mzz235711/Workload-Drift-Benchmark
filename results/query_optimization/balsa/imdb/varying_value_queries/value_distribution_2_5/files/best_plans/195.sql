/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>29 AND title.production_year<32 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>8 AND movie_info.info_type_id<29;

