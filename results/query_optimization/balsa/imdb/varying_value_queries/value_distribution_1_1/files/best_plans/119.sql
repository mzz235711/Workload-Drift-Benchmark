/*+ NestLoop(title movie_info cast_info movie_info_idx)
 NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((((title movie_info) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>26 AND title.production_year<49 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>46 AND movie_info.info_type_id<97;

