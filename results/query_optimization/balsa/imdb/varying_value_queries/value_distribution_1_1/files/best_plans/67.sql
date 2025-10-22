/*+ HashJoin(cast_info movie_info_idx movie_info title)
 HashJoin(movie_info_idx movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 Leading((cast_info (movie_info_idx (movie_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>67 AND title.production_year<84 AND cast_info.role_id>4 AND cast_info.role_id<10 AND movie_info.info_type_id>12 AND movie_info.info_type_id<103;

