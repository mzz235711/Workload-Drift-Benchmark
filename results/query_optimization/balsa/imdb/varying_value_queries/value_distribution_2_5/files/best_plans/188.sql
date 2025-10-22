/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<41 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>9 AND movie_info.info_type_id<37;

