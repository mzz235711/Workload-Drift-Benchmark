/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>261 and movie_companies.company_type_id>1 and cast_info.nr_order>0 and movie_info.info_type_id>5 and title.series_years>0;

