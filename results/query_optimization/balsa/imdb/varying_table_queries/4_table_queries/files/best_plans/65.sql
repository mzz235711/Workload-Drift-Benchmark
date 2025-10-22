/*+ MergeJoin(cast_info movie_info_idx title movie_info)
 NestLoop(movie_info_idx title movie_info)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((cast_info ((movie_info_idx title) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.phonetic_code>0 and title.episode_nr>0 and title.season_nr>0 and title.production_year>75;

