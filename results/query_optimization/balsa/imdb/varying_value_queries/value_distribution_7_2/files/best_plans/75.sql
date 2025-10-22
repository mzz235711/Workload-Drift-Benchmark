/*+ HashJoin(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading((((movie_info title) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>90 AND title.production_year<110 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>95 AND movie_info.info_type_id<99;

