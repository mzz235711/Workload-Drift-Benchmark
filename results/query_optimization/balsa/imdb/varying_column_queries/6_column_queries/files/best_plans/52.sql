/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and movie_companies.company_type_id>1 and title.kind_id<7 and title.production_year>98 and title.series_years>0 and title.episode_nr<58;

