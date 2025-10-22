/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.kind_id=7;

