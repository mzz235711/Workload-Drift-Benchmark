/*+ HashJoin(cast_info movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_keyword title)))) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.production_year<125 and title.season_nr=2;

