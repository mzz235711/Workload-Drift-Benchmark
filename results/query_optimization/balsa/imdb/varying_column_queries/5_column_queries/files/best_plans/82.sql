/*+ NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>4553 and title.production_year>107 and title.season_nr=0 and title.series_years>0;

