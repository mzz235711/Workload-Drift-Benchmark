/*+ HashJoin(cast_info movie_info_idx title movie_info)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 Leading((cast_info (movie_info_idx (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<100 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>28 AND movie_info.info_type_id<81;

