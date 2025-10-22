/*+ NestLoop(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<45 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<15;

