/*+ NestLoop(title movie_info cast_info movie_info_idx)
 NestLoop(title movie_info cast_info)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((((title movie_info) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>97 AND title.production_year<115 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>51 AND movie_info.info_type_id<95;

