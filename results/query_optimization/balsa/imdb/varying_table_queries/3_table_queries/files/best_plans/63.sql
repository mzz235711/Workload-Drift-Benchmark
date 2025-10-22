/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id>1 and title.season_nr>1;

