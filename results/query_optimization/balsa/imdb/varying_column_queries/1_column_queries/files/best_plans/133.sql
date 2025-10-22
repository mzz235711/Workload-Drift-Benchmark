/*+ HashJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr>0;

