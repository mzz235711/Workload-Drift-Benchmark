/*+ MergeJoin(title movie_companies cast_info movie_keyword movie_info)
 MergeJoin(title movie_companies cast_info movie_keyword)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<75103 and title.production_year>99 and title.season_nr>0;

