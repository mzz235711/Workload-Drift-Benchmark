/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<92 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>66 AND movie_info.info_type_id<91;

