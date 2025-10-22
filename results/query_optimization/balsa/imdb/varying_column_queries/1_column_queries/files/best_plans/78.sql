/*+ HashJoin(movie_info cast_info movie_keyword title)
 HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_keyword title)))) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.imdb_index>0;

