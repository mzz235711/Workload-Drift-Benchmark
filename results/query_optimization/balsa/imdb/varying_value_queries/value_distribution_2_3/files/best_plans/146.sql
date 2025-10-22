/*+ NestLoop(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_info_idx)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>59 AND title.production_year<87 AND cast_info.role_id>3 AND cast_info.role_id<8 AND movie_info.info_type_id>21 AND movie_info.info_type_id<64;

