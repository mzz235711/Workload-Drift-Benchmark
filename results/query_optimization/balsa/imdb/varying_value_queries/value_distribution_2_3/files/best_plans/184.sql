/*+ NestLoop(movie_info movie_info_idx title cast_info)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 Leading(((movie_info (movie_info_idx title)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>41 AND title.production_year<65 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>19 AND movie_info.info_type_id<63;

