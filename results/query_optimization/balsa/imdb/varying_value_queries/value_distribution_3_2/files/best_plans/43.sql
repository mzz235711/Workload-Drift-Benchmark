/*+ HashJoin(movie_info_idx cast_info movie_info title)
 HashJoin(cast_info movie_info title)
 NestLoop(movie_info title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 Leading((movie_info_idx (cast_info (movie_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>82 AND title.production_year<104 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>52 AND movie_info.info_type_id<82;

