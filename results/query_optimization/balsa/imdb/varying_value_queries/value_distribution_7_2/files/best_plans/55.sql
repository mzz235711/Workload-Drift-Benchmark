/*+ HashJoin(movie_info_idx movie_info title cast_info)
 HashJoin(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(cast_info)
 Leading((movie_info_idx ((movie_info title) cast_info))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>93 AND title.production_year<128 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>85 AND movie_info.info_type_id<93;

