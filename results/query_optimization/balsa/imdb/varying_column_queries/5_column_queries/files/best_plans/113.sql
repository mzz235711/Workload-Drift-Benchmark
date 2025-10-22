/*+ NestLoop(movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((movie_info (title movie_keyword)) movie_companies)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>103 and movie_companies.company_type_id=2 and title.imdb_index=0 and title.production_year<51 and title.series_years>0;

