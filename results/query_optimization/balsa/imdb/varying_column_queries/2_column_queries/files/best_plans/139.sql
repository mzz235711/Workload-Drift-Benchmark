/*+ HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>2 and title.season_nr=0;

