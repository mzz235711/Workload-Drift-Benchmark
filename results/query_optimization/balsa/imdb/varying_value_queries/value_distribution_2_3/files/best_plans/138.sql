/*+ NestLoop(cast_info title movie_info_idx movie_info)
 NestLoop(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((cast_info title) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<69 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>7 AND movie_info.info_type_id<72;

