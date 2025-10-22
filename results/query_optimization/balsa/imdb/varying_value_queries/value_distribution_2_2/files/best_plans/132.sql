/*+ HashJoin(movie_info title cast_info movie_info_idx)
 HashJoin(movie_info title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_info)
 SeqScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading(((movie_info (title cast_info)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>35 AND title.production_year<69 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>40 AND movie_info.info_type_id<50;

