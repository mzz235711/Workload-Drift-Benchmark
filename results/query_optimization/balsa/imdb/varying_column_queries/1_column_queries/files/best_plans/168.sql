/*+ HashJoin(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.production_year<126;

