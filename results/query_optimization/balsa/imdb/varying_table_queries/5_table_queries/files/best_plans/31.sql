/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 HashJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>335 and movie_companies.company_type_id=2 and title.kind_id=7;

