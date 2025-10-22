/*+ HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.imdb_index=0;

