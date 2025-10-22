/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<97871 and title.imdb_index>0;

