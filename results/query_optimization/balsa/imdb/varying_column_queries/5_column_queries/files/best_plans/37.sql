/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year>122 and title.series_years>0 and title.phonetic_code<510 and title.kind_id<7;

