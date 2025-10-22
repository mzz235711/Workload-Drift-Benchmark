/*+ NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id<11504 and title.season_nr<5 and title.series_years>0 and title.production_year<122;

