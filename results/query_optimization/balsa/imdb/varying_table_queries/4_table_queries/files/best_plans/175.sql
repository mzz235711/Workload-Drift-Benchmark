/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.season_nr=9;

