/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.kind_id>1;

