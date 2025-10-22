/*+ HashJoin(movie_info_idx movie_info title cast_info)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info_idx ((movie_info title) cast_info))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>37 AND title.production_year<72 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>63 AND movie_info.info_type_id<73;

