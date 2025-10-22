/*+ HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<62602 and title.episode_nr>0;

