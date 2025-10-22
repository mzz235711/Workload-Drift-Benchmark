/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.imdb_index=0 and title.kind_id>6;

