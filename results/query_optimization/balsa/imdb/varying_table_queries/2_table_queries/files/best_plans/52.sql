/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.series_years<1387 and title.season_nr>0 and title.kind_id>1;

