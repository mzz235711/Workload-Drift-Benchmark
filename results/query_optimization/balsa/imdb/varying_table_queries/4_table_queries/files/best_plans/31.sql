/*+ HashJoin(title movie_companies cast_info movie_keyword)
 HashJoin(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 Leading((((title movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.imdb_index=0 and title.production_year>78;

