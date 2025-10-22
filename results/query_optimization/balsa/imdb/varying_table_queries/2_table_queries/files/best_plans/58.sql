/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.season_nr<2 and title.phonetic_code<19380 and title.imdb_index=0;

