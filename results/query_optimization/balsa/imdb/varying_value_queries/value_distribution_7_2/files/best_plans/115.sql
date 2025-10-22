/*+ HashJoin(movie_info title cast_info movie_info_idx)
 HashJoin(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<111 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>55 AND movie_info.info_type_id<100;

