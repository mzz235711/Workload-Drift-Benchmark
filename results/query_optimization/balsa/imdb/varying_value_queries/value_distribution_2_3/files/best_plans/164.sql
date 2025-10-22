/*+ NestLoop(movie_info movie_info_idx title cast_info)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 Leading(((movie_info (movie_info_idx title)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<52 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>62 AND movie_info.info_type_id<75;

