/*+ HashJoin(title movie_companies cast_info movie_keyword movie_info)
 NestLoop(title movie_companies cast_info movie_keyword)
 HashJoin(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) cast_info) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>348 and movie_companies.company_type_id>1 and cast_info.nr_order<46 and title.imdb_index=0 and title.season_nr=0 and title.kind_id>1;

