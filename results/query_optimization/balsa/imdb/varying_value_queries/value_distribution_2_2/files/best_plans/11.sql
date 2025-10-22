/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(cast_info title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx ((cast_info title) movie_info))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>66 AND title.production_year<90 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>46 AND movie_info.info_type_id<60;

