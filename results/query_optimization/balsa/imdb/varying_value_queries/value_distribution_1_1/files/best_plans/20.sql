/*+ HashJoin(cast_info movie_info_idx title movie_info)
 HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((cast_info (movie_info_idx title)) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<99 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>3 AND movie_info.info_type_id<49;

