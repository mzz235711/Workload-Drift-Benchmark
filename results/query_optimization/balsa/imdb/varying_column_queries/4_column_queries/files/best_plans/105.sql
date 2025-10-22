/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=3 and title.imdb_index=0 and title.episode_nr>0 and title.season_nr<14;

