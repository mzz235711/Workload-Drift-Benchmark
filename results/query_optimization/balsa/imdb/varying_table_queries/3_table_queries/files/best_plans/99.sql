/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.episode_nr<123;

