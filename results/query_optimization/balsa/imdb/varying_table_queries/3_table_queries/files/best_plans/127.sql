/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.series_years>0;

