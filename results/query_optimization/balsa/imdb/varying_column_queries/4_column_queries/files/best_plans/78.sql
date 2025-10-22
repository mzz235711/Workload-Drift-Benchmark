/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0 and title.production_year>35 and title.kind_id=7 and title.imdb_index=0;

