/*+ HashJoin(movie_companies title movie_info cast_info movie_keyword)
 NestLoop(movie_companies title movie_info cast_info)
 NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and movie_companies.company_type_id=2 and title.phonetic_code>679 and title.series_years>0;

