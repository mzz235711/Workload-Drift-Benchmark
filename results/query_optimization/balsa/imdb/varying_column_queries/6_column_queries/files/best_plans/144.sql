/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<107 and title.series_years>0 and title.production_year<121 and title.phonetic_code>8047 and title.season_nr=0;

