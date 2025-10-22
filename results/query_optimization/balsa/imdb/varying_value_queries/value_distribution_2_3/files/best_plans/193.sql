/*+ NestLoop(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_info_idx)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>60 AND title.production_year<84 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>25 AND movie_info.info_type_id<41;

