/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.series_years>0 and title.production_year>76 and title.kind_id<7 and title.imdb_index=0;

