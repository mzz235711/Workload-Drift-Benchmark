/*+ HashJoin(movie_info title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_info_idx) cast_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<94 and title.phonetic_code>10194 and title.season_nr>0 and title.production_year<126 and title.episode_nr>0;

