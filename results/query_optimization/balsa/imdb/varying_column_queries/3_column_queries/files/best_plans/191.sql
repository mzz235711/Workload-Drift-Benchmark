/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr<140 and title.imdb_index=0 and title.kind_id>1;

