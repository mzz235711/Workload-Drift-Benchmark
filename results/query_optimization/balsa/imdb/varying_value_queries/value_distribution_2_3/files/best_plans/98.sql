/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (movie_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<68 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>51 AND movie_info.info_type_id<58;

