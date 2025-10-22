/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<74 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>43 AND movie_info.info_type_id<53;

