/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>245 and movie_companies.company_type_id>1 and title.production_year<48;

