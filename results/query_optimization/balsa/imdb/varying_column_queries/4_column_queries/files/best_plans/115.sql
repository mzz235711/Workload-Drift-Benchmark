/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.production_year<97 and title.kind_id>1 and title.season_nr>0;

