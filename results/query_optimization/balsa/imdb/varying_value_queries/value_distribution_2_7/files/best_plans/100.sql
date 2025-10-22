/*+ NestLoop(movie_info title movie_info_idx cast_info)
 NestLoop(movie_info title movie_info_idx)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((movie_info title) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>12 AND title.production_year<41 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>39 AND movie_info.info_type_id<41;

