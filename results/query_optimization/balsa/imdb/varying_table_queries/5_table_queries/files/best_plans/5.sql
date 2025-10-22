/*+ HashJoin(movie_info title cast_info movie_companies movie_keyword)
 NestLoop(movie_info title cast_info movie_companies)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info title) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id<14528 and cast_info.role_id>1 and title.imdb_index=1;

