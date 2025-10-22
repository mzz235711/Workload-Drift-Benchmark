/*+ NestLoop(title movie_companies movie_keyword cast_info movie_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<28 and movie_companies.company_type_id=2 and movie_keyword.keyword_id>359 and movie_info.info_type_id<104 and title.series_years>0 and title.production_year>88;

