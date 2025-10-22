/*+ HashJoin(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading((((movie_info title) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<123 AND cast_info.role_id>3 AND cast_info.role_id<9 AND movie_info.info_type_id>7 AND movie_info.info_type_id<95;

