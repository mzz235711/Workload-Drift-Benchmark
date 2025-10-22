/*+ HashJoin(movie_info_idx movie_info title cast_info)
 NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((movie_info_idx ((movie_info title) cast_info))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<117 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>55 AND movie_info.info_type_id<83;

