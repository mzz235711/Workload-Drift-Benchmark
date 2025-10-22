/*+ HashJoin(cast_info title movie_info_idx movie_info)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((cast_info title) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<70 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>73 AND movie_info.info_type_id<86;

