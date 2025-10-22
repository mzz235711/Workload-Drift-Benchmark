/*+ NestLoop(title movie_companies movie_keyword cast_info movie_info)
 HashJoin(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<98 and movie_companies.company_type_id<2 and title.phonetic_code>1460 and title.season_nr<3 and title.series_years>0 and title.kind_id<7;

