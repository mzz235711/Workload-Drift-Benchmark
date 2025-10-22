/*+ HashJoin(cast_info movie_info_idx movie_info title)
 HashJoin(movie_info_idx movie_info title)
 NestLoop(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 Leading((cast_info (movie_info_idx (movie_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<96 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>44 AND movie_info.info_type_id<56;

