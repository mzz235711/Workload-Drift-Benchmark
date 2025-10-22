/*+ HashJoin(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>108 AND title.production_year<119 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>80 AND movie_info.info_type_id<99;

