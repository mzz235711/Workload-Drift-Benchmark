/*+ MergeJoin(title movie_info_idx cast_info movie_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading((((title movie_info_idx) cast_info) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>35 AND title.production_year<42 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>7 AND movie_info.info_type_id<16;

