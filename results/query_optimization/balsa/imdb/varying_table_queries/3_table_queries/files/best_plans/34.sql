/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.series_years>0;

