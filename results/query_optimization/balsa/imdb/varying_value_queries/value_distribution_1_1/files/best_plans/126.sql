/*+ HashJoin(cast_info title movie_info movie_info_idx)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading((cast_info ((title movie_info) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<76 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>12 AND movie_info.info_type_id<16;

