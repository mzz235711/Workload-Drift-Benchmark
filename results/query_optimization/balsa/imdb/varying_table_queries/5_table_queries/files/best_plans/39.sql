/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_companies.company_type_id>1 and title.phonetic_code>62 and title.episode_nr<22 and title.series_years>0;

