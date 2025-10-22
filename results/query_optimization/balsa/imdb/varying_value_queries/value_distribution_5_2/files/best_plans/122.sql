/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<95 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>74 AND movie_info.info_type_id<80;

