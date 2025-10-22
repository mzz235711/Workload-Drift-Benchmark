/*+ NestLoop(movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((movie_info (title movie_keyword)) movie_companies)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id>356 and title.kind_id>1 and title.imdb_index>0 and title.season_nr=0;

