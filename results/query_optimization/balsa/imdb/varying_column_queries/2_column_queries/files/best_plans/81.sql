/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.episode_nr>0 and title.season_nr>0;

