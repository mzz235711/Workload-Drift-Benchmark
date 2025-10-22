/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<34 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>70 AND movie_info.info_type_id<78;

