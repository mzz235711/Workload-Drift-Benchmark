/*+ NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<44 and movie_companies.company_type_id>1 and title.kind_id=7 and title.series_years>0;

