/*+ HashJoin(cast_info title movie_info_idx movie_info)
 MergeJoin(cast_info title movie_info_idx)
 MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((cast_info title) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>56 AND title.production_year<72 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>11 AND movie_info.info_type_id<19;

