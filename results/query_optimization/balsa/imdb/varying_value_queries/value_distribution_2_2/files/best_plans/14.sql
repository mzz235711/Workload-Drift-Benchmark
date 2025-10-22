/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((cast_info (movie_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>4 AND title.production_year<39 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>23 AND movie_info.info_type_id<41;

