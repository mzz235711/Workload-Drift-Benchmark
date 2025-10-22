/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.episode_nr<51 and title.production_year>31 and title.series_years>0;

