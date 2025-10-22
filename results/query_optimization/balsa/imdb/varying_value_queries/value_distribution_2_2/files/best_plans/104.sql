/*+ NestLoop(title cast_info movie_info movie_info_idx)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading((((title cast_info) movie_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>46 AND title.production_year<70 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>18 AND movie_info.info_type_id<37;

