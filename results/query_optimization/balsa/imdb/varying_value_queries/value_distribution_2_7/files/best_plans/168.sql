/*+ NestLoop(movie_info_idx title movie_info cast_info)
 HashJoin(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading((((movie_info_idx title) movie_info) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<32 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>2 AND movie_info.info_type_id<28;

