/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<34 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>23 AND movie_info.info_type_id<50;

