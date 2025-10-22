/*+ HashJoin(title movie_info movie_companies)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.season_nr>0;

