/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<6102 and title.phonetic_code<17102 and title.season_nr>0;

