/*+ HashJoin(cast_info title movie_info movie_info_idx)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading((cast_info ((title movie_info) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<96 AND cast_info.role_id>1 AND cast_info.role_id<8 AND movie_info.info_type_id>29 AND movie_info.info_type_id<76;

