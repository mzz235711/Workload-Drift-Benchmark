/*+ HashJoin(cast_info title movie_info movie_info_idx)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading((cast_info ((title movie_info) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<109 AND cast_info.role_id>3 AND cast_info.role_id<10 AND movie_info.info_type_id>46 AND movie_info.info_type_id<50;

