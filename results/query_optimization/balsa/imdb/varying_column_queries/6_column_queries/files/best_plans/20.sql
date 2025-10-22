/*+ NestLoop(title movie_keyword movie_companies cast_info movie_info)
 NestLoop(title movie_keyword movie_companies cast_info)
 HashJoin(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_keyword) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and cast_info.role_id=3 and title.episode_nr<33 and title.series_years>0 and title.kind_id<7 and title.phonetic_code>20654;

