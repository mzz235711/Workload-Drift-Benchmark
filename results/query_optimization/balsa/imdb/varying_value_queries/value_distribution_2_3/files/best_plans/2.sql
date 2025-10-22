/*+ HashJoin(movie_info cast_info title movie_info_idx)
 NestLoop(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info ((cast_info title) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<43 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>41 AND movie_info.info_type_id<44;

