/*+ HashJoin(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<96975 and title.production_year<119 and title.imdb_index=0 and title.kind_id>1;

