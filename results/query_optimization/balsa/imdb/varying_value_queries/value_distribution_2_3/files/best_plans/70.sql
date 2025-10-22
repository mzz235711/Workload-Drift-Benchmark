/*+ HashJoin(cast_info title movie_info movie_info_idx)
 NestLoop(cast_info title movie_info)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading((((cast_info title) movie_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>43 AND title.production_year<92 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>9 AND movie_info.info_type_id<48;

