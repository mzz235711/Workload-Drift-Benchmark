/*+ HashJoin(movie_info movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (title cast_info)))) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.production_year<111 and title.episode_nr<12;

