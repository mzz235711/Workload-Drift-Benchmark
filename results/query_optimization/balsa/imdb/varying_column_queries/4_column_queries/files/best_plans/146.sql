/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<16954 and title.production_year>0 and title.season_nr=1 and title.series_years<1400;

