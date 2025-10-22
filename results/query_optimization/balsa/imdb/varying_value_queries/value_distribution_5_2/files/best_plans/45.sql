/*+ HashJoin(title movie_info cast_info movie_info_idx)
 HashJoin(title movie_info cast_info)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((title movie_info) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>94 AND title.production_year<123 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>64 AND movie_info.info_type_id<105;

