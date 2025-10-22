/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>261 and title.imdb_index>0 and title.episode_nr<7;

