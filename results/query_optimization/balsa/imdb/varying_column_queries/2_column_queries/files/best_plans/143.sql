/*+ HashJoin(title movie_info movie_companies)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and title.production_year<54;

