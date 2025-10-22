/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.season_nr>0 and title.series_years<1381 and title.phonetic_code<20029 and title.kind_id=7;

