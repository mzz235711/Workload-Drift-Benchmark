/*+ HashJoin(cast_info movie_keyword title movie_info)
 HashJoin(movie_keyword title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((cast_info (movie_keyword (title movie_info)))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr>0;

