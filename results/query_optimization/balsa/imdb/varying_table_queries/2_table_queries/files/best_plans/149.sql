/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.production_year>69 and title.phonetic_code<20984 and title.episode_nr>0;

