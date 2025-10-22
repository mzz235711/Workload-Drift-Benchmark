/*+ HashJoin(movie_info title cast_info movie_info_idx)
 HashJoin(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>57 AND title.production_year<131 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>6 AND movie_info.info_type_id<30;

