/*+ MergeJoin(cast_info title movie_info_idx movie_info)
 MergeJoin(cast_info title movie_info_idx)
 MergeJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((cast_info title) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<27 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>17 AND movie_info.info_type_id<32;

