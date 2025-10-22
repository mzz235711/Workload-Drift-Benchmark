/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id>333 and title.production_year>123 and title.kind_id>1;

