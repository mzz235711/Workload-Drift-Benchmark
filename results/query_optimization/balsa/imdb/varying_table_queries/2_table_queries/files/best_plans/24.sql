/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>331 and title.phonetic_code<1445 and title.series_years>0 and title.episode_nr>0;

