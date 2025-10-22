/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id<2 and title.season_nr=0 and title.kind_id>1;

