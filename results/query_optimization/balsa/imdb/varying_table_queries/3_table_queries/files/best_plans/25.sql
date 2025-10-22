/*+ NestLoop(movie_companies title movie_info)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((movie_companies title) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.episode_nr<3;

