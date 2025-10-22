/*+ HashJoin(title cast_info movie_info_idx movie_info)
 HashJoin(title cast_info movie_info_idx)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<29 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>3 AND movie_info.info_type_id<7;

