/*+ NestLoop(title movie_info movie_info_idx cast_info)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<95 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>41 AND movie_info.info_type_id<62;

