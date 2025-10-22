/*+ HashJoin(cast_info movie_info title movie_info_idx)
 NestLoop(movie_info title movie_info_idx)
 NestLoop(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info ((movie_info title) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>71 AND title.production_year<83 AND cast_info.role_id>4 AND cast_info.role_id<10 AND movie_info.info_type_id>65 AND movie_info.info_type_id<88;

