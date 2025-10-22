/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<98 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>63 AND movie_info.info_type_id<93;

