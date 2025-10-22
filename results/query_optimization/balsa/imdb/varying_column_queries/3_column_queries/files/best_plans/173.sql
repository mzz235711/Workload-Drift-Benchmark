/*+ HashJoin(movie_info movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (title cast_info)))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>3 and title.kind_id<7 and title.production_year>81;

