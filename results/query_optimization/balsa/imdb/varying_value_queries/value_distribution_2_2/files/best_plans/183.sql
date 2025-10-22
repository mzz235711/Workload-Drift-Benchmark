/*+ HashJoin(cast_info title movie_info movie_info_idx)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 Leading((((cast_info title) movie_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<33 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>68 AND movie_info.info_type_id<82;

